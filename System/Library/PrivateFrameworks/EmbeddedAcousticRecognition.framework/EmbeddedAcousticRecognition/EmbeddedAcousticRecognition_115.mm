uint64_t quasar::PDecOptions::options@<X0>(quasar::PDecOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 320;
  v3[3] = this + 480;
  v3[4] = this + 640;
  v3[5] = this + 784;
  v3[6] = this + 944;
  v3[7] = this + 1088;
  v3[8] = this + 1248;
  v3[9] = this + 1408;
  v3[10] = this + 1696;
  v3[11] = this + 1552;
  v3[12] = this + 1856;
  v3[13] = this + 2016;
  v3[14] = this + 2176;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 0xFuLL);
}

void quasar::PDecEngineBlockMixin::createDecoder(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>, char a12, uint64_t a13, char a14)
{
  v49 = a6;
  v48 = a10;
  v47 = a7;
  v46 = a11;
  v45 = a8;
  v44 = a12;
  *a9 = 0;
  a9[1] = 0;
  memset(v43, 0, sizeof(v43));
  std::vector<std::string>::push_back[abi:ne200100](v43, a4);
  v19 = quasar::OptionValue<std::string>::value(a3 + 60);
  std::vector<std::string>::push_back[abi:ne200100](v43, v19);
  v20 = quasar::OptionValue<std::string>::value(a3 + 98);
  std::vector<std::string>::push_back[abi:ne200100](v43, v20);
  std::vector<std::string>::push_back[abi:ne200100](v43, a5);
  v21 = quasar::OptionValue<std::string>::value(a3 + 136);
  std::vector<std::string>::push_back[abi:ne200100](v43, v21);
  if (!a2)
  {
    goto LABEL_9;
  }

  v22 = std::__tree<std::vector<std::string>>::find<std::vector<std::string>>(a2, v43);
  v23 = v22;
  if (a2 + 8 == v22)
  {
    goto LABEL_9;
  }

  v24 = *(v22 + 64);
  if (!v24 || (v25 = std::__shared_weak_count::lock(v24)) == 0)
  {
    *a9 = 0;
    a9[1] = 0;
    goto LABEL_9;
  }

  v26 = *(v23 + 56);
  *a9 = v26;
  a9[1] = v25;
  if (!v26)
  {
LABEL_9:
    v27 = quasar::OptionValue<std::string>::value(a3 + 2);
    v28 = *(v27 + 23);
    if (v28 < 0)
    {
      if (*(v27 + 8) != 5)
      {
        goto LABEL_18;
      }

      v27 = *v27;
    }

    else if (v28 != 5)
    {
      goto LABEL_18;
    }

    if (*v27 == 1684824427 && *(v27 + 4) == 105)
    {
      operator new();
    }

LABEL_18:
    v30 = quasar::OptionValue<std::string>::value(a3 + 2);
    v31 = *(v30 + 23);
    if (v31 < 0)
    {
      if (*(v30 + 8) != 8)
      {
        goto LABEL_30;
      }

      v30 = *v30;
    }

    else if (v31 != 8)
    {
      goto LABEL_30;
    }

    if (*v30 == 0x6F73736572707365)
    {
      operator new();
    }

LABEL_30:
    memset(v42, 0, sizeof(v42));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v42);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Unknown 'model-type': ", 22);
    v38 = quasar::OptionValue<std::string>::value(a3 + 2);
    v39 = *(v38 + 23);
    if (v39 >= 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = *v38;
    }

    if (v39 >= 0)
    {
      v41 = *(v38 + 23);
    }

    else
    {
      v41 = *(v38 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v40, v41);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v42);
  }

  v32 = *a9;
  v33 = quasar::OptionValue<std::string>::value(a3 + 312);
  v34 = quasar::OptionValue<std::string>::value(a3 + 272);
  kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SelectModel(v32, v33, v34, a13, a14);
  v35 = v42[0];
  v42[0] = 0uLL;
  v36 = *(a1 + 64);
  *(a1 + 56) = v35;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    if (*(&v42[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42[0] + 1));
    }
  }

  *&v42[0] = v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
}

void sub_1B58A9A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v18 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  v20 = *(v17 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::Read(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v6 = a6[1];
  v14 = *a6;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 5888);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v16 = &v10;
  v8 = (off_1F2D37288[v7])(&v16, a1);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v8;
}

void sub_1B58A9B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::ReadPronunciationModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 5888);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = v5;
  return (off_1F2D37298[v3])(&v6, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SetICUScripts(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 5888);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_1F2D372A8[v2])(&v5, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::ReadConfidenceModel(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v4 = *(a1 + 5888);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = &v6;
  return (off_1F2D372B8[v4])(&v9, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::ReadInputHammer(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 5888);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_1F2D372C8[v2])(&v5, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SelectModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v8 = a5;
  v5 = *(a1 + 5888);
  if (v5 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = v7;
  return (off_1F2D372D8[v5])(&v9, a1);
}

uint64_t quasar::PDecEngineBlockMixin::replaceDegenerateTranslation(uint64_t result, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) != *a2)
  {
    v6 = *a3;
    if (*(a3 + 8) != *a3)
    {
      v8 = *(v6 + 25);
      v9 = *(v6 + 26);
      if (v8 == v9)
      {
LABEL_24:
        if (quasar::gLogLevel >= 4)
        {
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
          memset(v37, 0, sizeof(v37));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Degenerate translation <", 24);
          quasar::TranslationPhraseInternal::convertTokensToString(v34, *a3);
          if ((v35 & 0x80u) == 0)
          {
            v19 = v34;
          }

          else
          {
            v19 = v34[0];
          }

          if ((v35 & 0x80u) == 0)
          {
            v20 = v35;
          }

          else
          {
            v20 = v34[1];
          }

          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "> from <", 8);
          quasar::TranslationPhraseInternal::convertTokensToString(&__p, *a2);
          if (v30.__r_.__value_.__s.__data_[15] >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v30.__r_.__value_.__s.__data_[15] >= 0)
          {
            v24 = v30.__r_.__value_.__s.__data_[15];
          }

          else
          {
            v24 = v30.__r_.__value_.__r.__words[0];
          }

          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ">. Copying the input sequence to the output.", 44);
          if (v30.__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(__p);
          }

          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          quasar::QuasarInfoMessage::~QuasarInfoMessage(v37);
        }

        quasar::TranslationPhraseInternal::TranslationPhraseInternal(v37, *a2);
        std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(a3, v37, (&v50 + 8), 1uLL);
        quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v37);
        v26 = *a2;
        quasar::PTree::PTree(&__p);
        std::ostringstream::basic_ostringstream[abi:ne200100](v37);
        std::ostream::operator<<();
        std::stringbuf::str();
        if ((a4 & 1) == 0)
        {
          v27 = quasar::MetaInfo::get((v26 + 256));
          LODWORD(__p) = *v27;
          std::string::operator=(&v30, (v27 + 8));
          if (v27 != &__p)
          {
            std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v31, *(v27 + 32), *(v27 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v27 + 40) - *(v27 + 32)) >> 3));
          }

          v31[24] = *(v27 + 56);
        }

        std::string::basic_string[abi:ne200100]<0>(&v36, "source");
        std::string::basic_string[abi:ne200100]<0>(v32, "decoder");
        quasar::PTree::PTree(v34, v32);
        quasar::PTree::putChild(&__p, &v36, v34, 1);
        quasar::PTree::~PTree(v34);
        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v36, "prefilter input");
        quasar::PTree::getStringOptional(&__p, &v36);
      }

      v11 = result;
      while (1)
      {
        if (a5)
        {
          v12 = *(v8 + 16);
          v13 = kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::OutputSymbols(*v11);
          result = (*(*v13 + 104))(v13, "▁");
          if (result != v12)
          {
            v14 = *(v8 + 16);
            v15 = kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::OutputSymbols(*v11);
            result = (*(*v15 + 104))(v15, "");
            if (result != v14)
            {
              return result;
            }
          }
        }

        else if (*(v8 + 23) < 0)
        {
          if (v8[1] != 3 || (**v8 == 38626 ? (v17 = *(*v8 + 2) == 129) : (v17 = 0), !v17))
          {
            if (v8[1])
            {
              return result;
            }
          }
        }

        else if (*(v8 + 23))
        {
          if (*(v8 + 23) != 3)
          {
            return result;
          }

          if (*v8 != 38626 || *(v8 + 2) != 129)
          {
            return result;
          }
        }

        v8 += 17;
        if (v8 == v9)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

void sub_1B58AA734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  quasar::PTree::~PTree(&a34);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  std::ostringstream::~ostringstream(&a57);
  quasar::PTree::~PTree(&a11);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::OutputSymbols(uint64_t a1)
{
  v1 = *(a1 + 5888);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F2D372E8[v1])(&v4, a1);
}

void quasar::addTrimmedSegmentsToResult(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v42 = a5;
    v46 = vdupq_n_s64(4uLL);
    v41 = a3;
    do
    {
      v8 = *a2;
      std::vector<float>::vector[abi:ne200100](&v57, v42);
      v9 = (v8 + (v6 << 6));
      v11 = v9[2];
      v10 = v9[3];
      v12 = v10 - v11;
      if (v10 != v11)
      {
        v13 = 1.0 / (v12 >> 2);
        *&v13 = v13;
        if ((v12 >> 2) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 >> 2;
        }

        v15 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v16 = vdupq_n_s64(v14 - 1);
        v17 = &v57[4 * v7 + 8];
        v18 = xmmword_1B5AE0060;
        v19 = xmmword_1B5AE0050;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v16, v18));
          if (vuzp1_s16(v20, *&v13).u8[0])
          {
            *(v17 - 2) = LODWORD(v13);
          }

          if (vuzp1_s16(v20, *&v13).i8[2])
          {
            *(v17 - 1) = LODWORD(v13);
          }

          if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v16, *&v19))).i32[1])
          {
            *v17 = LODWORD(v13);
            *(v17 + 1) = LODWORD(v13);
          }

          v19 = vaddq_s64(v19, v46);
          v18 = vaddq_s64(v18, v46);
          v17 += 16;
          v15 -= 4;
        }

        while (v15);
      }

      v44 = v12;
      v45 = v7;
      v21 = v9[5];
      v22 = v9[6];
      while (v21 != v22)
      {
        v23 = *v21;
        *v49 = 0u;
        v50 = 0u;
        *v47 = 0u;
        v48 = 0u;
        DWORD2(v50) = -1082130432;
        v51 = 0xFFFFFFFFLL;
        v52 = 0u;
        v53 = 0u;
        *__p = 0u;
        v55 = 0;
        v56 = -1;
        v24 = v60;
        if (v60 >= v61)
        {
          v60 = std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal>(&v59, v47);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          *(v60 + 1) = 0;
          *(v24 + 2) = 0;
          *v24 = 0;
          v47[1] = 0;
          *&v48 = 0;
          v47[0] = 0;
          *(v24 + 12) = WORD4(v48);
          *(v24 + 5) = 0;
          *(v24 + 6) = 0;
          *(v24 + 4) = 0;
          *(v24 + 2) = *v49;
          *(v24 + 6) = v50;
          v49[0] = 0;
          v49[1] = 0;
          *&v50 = 0;
          v25 = *(&v50 + 1);
          *(v24 + 16) = v51;
          *(v24 + 7) = v25;
          v26 = v52;
          *(v24 + 11) = v53;
          *(v24 + 72) = v26;
          *&v53 = 0;
          v52 = 0uLL;
          *(v24 + 12) = *(&v53 + 1);
          *(v24 + 13) = 0;
          *(v24 + 14) = 0;
          *(v24 + 15) = 0;
          *(v24 + 104) = *__p;
          *(v24 + 15) = v55;
          __p[0] = 0;
          __p[1] = 0;
          v55 = 0;
          *(v24 + 16) = v56;
          v60 = (v24 + 136);
        }

        if (SBYTE7(v53) < 0)
        {
          operator delete(v52);
        }

        if (v49[0])
        {
          v49[1] = v49[0];
          operator delete(v49[0]);
        }

        if (SBYTE7(v48) < 0)
        {
          operator delete(v47[0]);
        }

        v27 = v60;
        *(v60 - 18) = v23;
        *(v27 - 20) = 1148829696;
        if ((v27 - 32) != &v57)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v27 - 4, v57, v58, (v58 - v57) >> 2);
        }

        ++v21;
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      v7 = v45 + (v44 >> 2);
      ++v6;
    }

    while (v6 != v41);
  }

  v28 = *a1;
  v29 = a1[1];
  if (*a1 != v29)
  {
    do
    {
      v30 = (v28 + 200);
      std::vector<quasar::TranslationTokenInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::TranslationTokenInternal*>,std::__wrap_iter<quasar::TranslationTokenInternal*>>((v28 + 200), *(v28 + 200), v59, v60, 0xF0F0F0F0F0F0F0F1 * ((v60 - v59) >> 3));
      v32 = -252645135 * ((v60 - v59) >> 3);
      v33 = *(v28 + 200);
      if (0xF0F0F0F0F0F0F0F1 * ((*(v28 + 208) - v33) >> 3) > v32)
      {
        v34 = v32;
        do
        {
          v35 = v33 + 136 * v34;
          v36 = *(v35 + 104);
          LODWORD(v47[0]) = 0;
          std::vector<float>::insert((v35 + 104), v36, a4, v47, v31);
          v33 = *v30;
          v37 = *v30 + 136 * v34;
          v38 = *(v37 + 32);
          v39 = *(v37 + 40);
          while (v38 != v39)
          {
            *v38++ += a4;
          }

          ++v34;
        }

        while (0xF0F0F0F0F0F0F0F1 * ((*(v28 + 208) - v33) >> 3) > v34);
      }

      v28 += 264;
    }

    while (v28 != v29);
  }

  v47[0] = &v59;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](v47);
}

void sub_1B58AAD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = (v23 - 128);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

char *std::vector<float>::insert(void *a1, char *__src, unint64_t a3, char *a4, int16x4_t a5)
{
  if (!a3)
  {
    return __src;
  }

  v6 = a4;
  v9 = a1[1];
  v10 = a1[2];
  if (a3 <= (v10 - v9) >> 2)
  {
    v16 = v9 - __src;
    v17 = a1[1];
    v18 = a3;
    if (a3 <= (v9 - __src) >> 2)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v18 = v16 >> 2;
    v17 = &v9[4 * (a3 - (v16 >> 2))];
    a5.i32[0] = *a4;
    v20 = (4 * a3 - v16 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = v9 + 8;
    do
    {
      v24 = vdupq_n_s64(v19);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1B5AE0060)));
      if (vuzp1_s16(v25, a5).u8[0])
      {
        *(v23 - 2) = a5.i32[0];
      }

      if (vuzp1_s16(v25, a5).i8[2])
      {
        *(v23 - 1) = a5.i32[0];
      }

      if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1B5AE0050)))).i32[1])
      {
        *v23 = a5.i32[0];
        v23[1] = a5.i32[0];
      }

      v19 += 4;
      v23 += 4;
    }

    while (v21 != v19);
    a1[1] = v17;
    if (v9 != __src)
    {
LABEL_21:
      v26 = &__src[4 * a3];
      v27 = &v17[-4 * a3];
      v28 = v17;
      if (v27 < v9)
      {
        v28 = v17;
        do
        {
          v29 = *v27;
          v27 += 4;
          *v28 = v29;
          v28 += 4;
        }

        while (v27 < v9);
      }

      a1[1] = v28;
      if (v17 != v26)
      {
        memmove(&__src[4 * a3], __src, v17 - v26);
      }

      if (__src <= v6)
      {
        if (a1[1] <= v6)
        {
          v30 = 0;
        }

        else
        {
          v30 = a3;
        }

        v6 += 4 * v30;
      }

      v31 = 0;
      a5.i32[0] = *v6;
      v32 = vdupq_n_s64(v18 - 1);
      v33 = __src + 8;
      do
      {
        v34 = vdupq_n_s64(v31);
        v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_1B5AE0060)));
        if (vuzp1_s16(v35, a5).u8[0])
        {
          *(v33 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v35, a5).i8[2])
        {
          *(v33 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_1B5AE0050)))).i32[1])
        {
          *v33 = a5.i32[0];
          v33[1] = a5.i32[0];
        }

        v31 += 4;
        v33 += 4;
      }

      while (((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __src;
  }

  v11 = *a1;
  v12 = a3 + (&v9[-*a1] >> 2);
  if (v12 >> 62)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
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

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
  }

  v37 = 0;
  v36 = 4 * (v13 >> 2);
  a5.i32[0] = *a4;
  v38 = (v36 + 4 * a3);
  v39 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v40 = vdupq_n_s64(v39);
  v41 = v39 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v42 = (v36 + 8);
  do
  {
    v43 = vdupq_n_s64(v37);
    v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1B5AE0060)));
    if (vuzp1_s16(v44, a5).u8[0])
    {
      *(v42 - 2) = a5.i32[0];
    }

    if (vuzp1_s16(v44, a5).i8[2])
    {
      *(v42 - 1) = a5.i32[0];
    }

    if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1B5AE0050)))).i32[1])
    {
      *v42 = a5.i32[0];
      v42[1] = a5.i32[0];
    }

    v37 += 4;
    v42 += 4;
  }

  while (v41 != v37);
  memcpy(v38, __src, a1[1] - __src);
  v45 = *a1;
  v46 = &v38[a1[1] - __src];
  a1[1] = __src;
  v47 = (__src - v45);
  v48 = (v36 - (__src - v45));
  memcpy(v48, v45, v47);
  v49 = *a1;
  *a1 = v48;
  a1[1] = v46;
  a1[2] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  return v36;
}

void quasar::PDecEngineBlockMixin::processImplementation(uint64_t *a1@<X0>, const quasar::TranslationPhraseInternal **a2@<X1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v124 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 25) == *(*a2 + 26) && *(v10 + 144) == 1)
  {
    quasar::TranslationPhraseInternal::TranslationPhraseInternal(v111, *a2);
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(a6, v111, &v123 + 8, 1uLL);
    quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v111);
    *(*a6 + 4) = 1148829696;
    return;
  }

  quasar::TranslationPhraseInternal::convertTokensToString(v109, *a2);
  v107[1] = 0;
  v107[0] = 0;
  v108 = 0;
  if (*(a1[2] + 307) == 1)
  {
    if ((*(v10 + 145) & 1) == 0)
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      v113 = 0u;
      memset(v114, 0, sizeof(v114));
      *__dst = 0u;
      memset(v111, 0, sizeof(v111));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v111);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Decoding require valid SentencePiece IDs in input", 49);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v111);
    }

    v11 = *(v10 + 25);
    v12 = *(v10 + 26);
    while (v11 != v12)
    {
      std::vector<int>::push_back[abi:ne200100](v107, (v11 + 64));
      v11 += 136;
    }
  }

  __p[1] = 0;
  __p[0] = 0;
  v106 = 0;
  if (a4)
  {
    kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::GetPartialBiasIds(*a1);
    *__p = *v111;
    v106 = *&v111[16];
    kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SetPartialBiasIds(*a1, v10 + 152);
  }

  if (!a5 || *(v10 + 22) == *(v10 + 23))
  {
    LODWORD(v81) = 0;
    v78 = 0;
  }

  else
  {
    kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::GetPartialBiasIds(*a1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v111;
    v106 = *&v111[16];
    v14 = *(v10 + 22);
    v13 = *(v10 + 23);
    if (v13 == v14)
    {
      LODWORD(v81) = 0;
      v15 = 0;
    }

    else
    {
      LODWORD(v81) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0uLL;
      while (1)
      {
        v19 = v14 + (v16 << 6);
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v20 != v21)
        {
          break;
        }

LABEL_23:
        if (*(v19 + 8) == 1 && *(v19 + 10) == 1)
        {
          v81 = (v16 + 1);
          if (quasar::gLogLevel < 6)
          {
            v15 = v17;
          }

          else
          {
            v122 = v18;
            v123 = v18;
            v120 = v18;
            v121 = v18;
            v118 = v18;
            v119 = v18;
            v116 = v18;
            v117 = v18;
            *&v114[6] = v18;
            v115 = v18;
            *&v114[2] = v18;
            *&v114[4] = v18;
            v113 = v18;
            *v114 = v18;
            *&v111[16] = v18;
            *__dst = v18;
            *v111 = v18;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v111);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Full matching segment #seg_num / #token: ", 41);
            v27 = MEMORY[0x1B8C84C00](v26, v81);
            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " / ", 3);
            MEMORY[0x1B8C84C00](v28, v17);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(v111);
            v14 = *(v10 + 22);
            v13 = *(v10 + 23);
            v15 = v17;
            v18 = 0uLL;
          }
        }

        if (++v16 >= ((v13 - v14) >> 6))
        {
          goto LABEL_32;
        }
      }

      v22 = *(v10 + 25);
      v23 = 0xF0F0F0F0F0F0F0F1 * ((*(v10 + 26) - v22) >> 3);
      v24 = (v22 + 136 * v17 + 64);
      v25 = v23 - v17;
      if (v23 < v17)
      {
        v25 = 0;
      }

      while (v25 && *v20 == *v24)
      {
        ++v20;
        v17 = (v17 + 1);
        v24 += 34;
        --v25;
        if (v20 == v21)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_32:
    v78 = v15;
    memset(v111, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v111, v107[0] + 4 * v15, v107[1], (v107[1] - (v107[0] + 4 * v15)) >> 2);
    if (v107[0])
    {
      v107[1] = v107[0];
      operator delete(v107[0]);
    }

    *v107 = *v111;
    v108 = *&v111[16];
    memset(v111, 0, 24);
    v29 = v81;
    v31 = *(v10 + 22);
    v30 = *(v10 + 23);
    while (v29 < (v30 - v31) >> 6)
    {
      v32 = v31 + (v29 << 6);
      if (*(v32 + 8) == 1)
      {
        v34 = *(v32 + 40);
        v33 = *(v32 + 48);
        if (v34 != v33)
        {
          do
          {
            std::vector<int>::push_back[abi:ne200100](v111, v34++);
          }

          while (v34 != v33);
          v31 = *(v10 + 22);
          v30 = *(v10 + 23);
        }
      }

      ++v29;
    }

    kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SetPartialBiasIds(*a1, v111);
    if (*v111)
    {
      *&v111[8] = *v111;
      operator delete(*v111);
    }
  }

  v103 = 0;
  v102 = 0;
  v104 = 0;
  v35.n128_f64[0] = quasar::PTree::PTree(&v99);
  if ((a3 & 1) == 0)
  {
    v36 = quasar::MetaInfo::get((v10 + 256));
    LODWORD(v99) = *v36;
    std::string::operator=(&v100, (v36 + 8));
    if (&v99 != v36)
    {
      std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v101, *(v36 + 32), *(v36 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v36 + 40) - *(v36 + 32)) >> 3));
    }

    v101[24] = *(v36 + 56);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v37 = a1[2];
  v85 = v10;
  if (*(v37 + 300))
  {
    if (*(v37 + 307) != 1)
    {
      operator new();
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v113 = 0u;
    memset(v114, 0, sizeof(v114));
    *__dst = 0u;
    memset(v111, 0, sizeof(v111));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v111);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Streaming decoding not compatible with 'use-sentencepiece-ids'", 62);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v111);
  }

  if ((*(v10 + 144) & 1) != 0 || (v38 = a1[3]) == 0)
  {
    *(v37 + 306) = *(v10 + 144);
    v68 = *a1;
    if (*(v37 + 307) == 1)
    {
      *v111 = v107;
      *&v111[8] = v37;
      *&v111[16] = &v102;
      v69 = *(v68 + 5888);
      if (v69 == -1)
      {
        goto LABEL_151;
      }

      v89 = v111;
      (off_1F2D37358[v69])(&v89, v35);
      v70 = a1[4];
      if (!v70 || v102 == v103 || v102[7].i32[0] != 4)
      {
        goto LABEL_55;
      }

      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v111);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Repetitions detected, re-decoding with changed parameters.", 58);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v111);
        v70 = a1[4];
      }

      v71 = *a1;
      *v111 = v107;
      *&v111[8] = v70;
      *&v111[16] = &v102;
      v72 = *(v71 + 5888);
      if (v72 == -1)
      {
        goto LABEL_151;
      }

      v89 = v111;
      (off_1F2D37358[v72])(&v89);
    }

    else
    {
      *v111 = v109;
      *&v111[8] = v37;
      *&v111[16] = &v102;
      v73 = *(v68 + 5888);
      if (v73 == -1)
      {
        goto LABEL_151;
      }

      v89 = v111;
      (off_1F2D37368[v73])(&v89, v35);
      v74 = a1[4];
      if (!v74 || v102 == v103 || v102[7].i32[0] != 4)
      {
        goto LABEL_55;
      }

      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v111);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Repetitions detected, re-decoding with changed parameters.", 58);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v111);
        v74 = a1[4];
      }

      v75 = *a1;
      *v111 = v109;
      *&v111[8] = v74;
      *&v111[16] = &v102;
      v76 = *(v75 + 5888);
      if (v76 == -1)
      {
        goto LABEL_151;
      }

      v89 = v111;
      (off_1F2D37368[v76])(&v89);
    }
  }

  else
  {
    *(v38 + 306) = 0;
    v39 = *a1;
    if (*(v37 + 307) == 1)
    {
      *v111 = v107;
      *&v111[8] = v38;
      *&v111[16] = &v102;
      v40 = *(v39 + 5888);
      if (v40 != -1)
      {
        v89 = v111;
        (off_1F2D37358[v40])(&v89, v35);
        goto LABEL_55;
      }

LABEL_151:
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *v111 = v109;
    *&v111[8] = v38;
    *&v111[16] = &v102;
    v77 = *(v39 + 5888);
    if (v77 == -1)
    {
      goto LABEL_151;
    }

    v89 = v111;
    (off_1F2D37368[v77])(&v89, v35);
  }

LABEL_55:
  if ((a4 & 1) != 0 || a5)
  {
    kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SetPartialBiasIds(*a1, __p);
  }

  v80 = a3;
  v41 = v102;
  v83 = v103;
  if (v102 == v103)
  {
    goto LABEL_112;
  }

  v42 = a4 & a5;
  if (&v89 == v10)
  {
    v42 = 1;
  }

  v82 = v42;
  do
  {
    v43 = v41[5].i32[0];
    quasar::TranslationPhraseInternal::TranslationPhraseInternal(&v89);
    v44 = *v41;
    v45 = v41[1];
    while (*&v44 != *&v45)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      *&v113 = 0;
      memset(v111, 0, 26);
      *(&v113 + 1) = 3212836864;
      LODWORD(v114[0]) = -1;
      memset(&v114[1], 0, 56);
      *&v115 = -1;
      std::string::operator=(v111, *&v44);
      LODWORD(v114[0]) = *(*&v44 + 24);
      v46 = *(*&v44 + 84);
      *&v47 = *(*&v44 + 80) + v46;
      HIDWORD(v114[4]) = *(*&v44 + 80);
      *&v114[4] = v46;
      *(&v113 + 1) = __PAIR64__(v47, *(*&v44 + 232));
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, __dst[1], *(*&v44 + 88), *(*&v44 + 96), (*(*&v44 + 96) - *(*&v44 + 88)) >> 2);
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v114[5], v114[6], *(*&v44 + 136), *(*&v44 + 144), (*(*&v44 + 144) - *(*&v44 + 136)) >> 2);
      v111[24] = 1;
      std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v95, v111);
      if (v114[5])
      {
        v114[6] = v114[5];
        operator delete(v114[5]);
      }

      if (SHIBYTE(v114[3]) < 0)
      {
        operator delete(v114[1]);
      }

      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }

      if ((v111[23] & 0x80000000) != 0)
      {
        operator delete(*v111);
      }

      *&v44 += 240;
    }

    v10 = v85;
    if (v95 == v96 && (*(v85 + 144) & 1) != 0)
    {
      goto LABEL_111;
    }

    LODWORD(v89) = v43;
    v97 = vrev64_s32(v41[3]);
    v49 = *v41;
    v48 = v41[1];
    if (*&v48 == *v41)
    {
      v51 = 0.0;
    }

    else
    {
      LODWORD(v50) = 0;
      do
      {
        v50 = *(*&v49 + 232) + v50;
        *&v49 += 240;
      }

      while (*&v49 != *&v48);
      v51 = (v50 / (0xEEEEEEEEEEEEEEEFLL * ((*&v48 - *v41) >> 4)));
    }

    *(&v89 + 1) = v51;
    v90 = *(a1[2] + 176) > v51;
    if (v95 != v96)
    {
      *(v96 - 112) = 0;
    }

    kaldi::quasar::TranslationUtil::NbestElement::GetMetaInfo(v41, &v87);
    quasar::PTree::PTree(&v86);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v87.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_88;
      }

      v52 = v87.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_88;
      }

      v52 = &v87;
    }

    if (LOWORD(v52->__r_.__value_.__l.__data_) != 32123)
    {
LABEL_88:
      if (quasar::gLogLevel >= 4)
      {
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v113 = 0u;
        memset(v114, 0, sizeof(v114));
        *__dst = 0u;
        memset(v111, 0, sizeof(v111));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v111);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "Using meta data from phrasebook loaded inside of PDec - deprecated in MT production!", 84);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v111);
      }

      std::istringstream::basic_istringstream[abi:ne200100](v111, &v87, 8);
      quasar::PTree::readJson();
    }

    v53 = v88[0];
    v54 = v88[1];
    while (v53 != v54)
    {
      quasar::PTree::PTree(v111, v53 + 24);
      quasar::PTree::putChild(&v86, v53, v111, 1);
      quasar::PTree::~PTree(v111);
      v53 += 48;
    }

    v55 = quasar::PTree::begin(&v86);
    v56 = quasar::PTree::end(&v86);
    while (v55 != v56)
    {
      v57 = *(v55 + 23);
      if (v57 < 0)
      {
        if (*(v55 + 8) != 15)
        {
          goto LABEL_105;
        }

        v58 = *v55;
      }

      else
      {
        v58 = v55;
        if (v57 != 15)
        {
          goto LABEL_105;
        }
      }

      v59 = *v58;
      v60 = *(v58 + 7);
      if (v59 == 0x65746C6966657270 && v60 == 0x7475706E69207265)
      {
        std::string::basic_string[abi:ne200100]<0>(v111, "prefilter input");
        quasar::PTree::getChildOptional(&v99, v111);
      }

LABEL_105:
      quasar::PTree::putChild(&v99, v55, v55 + 24, 1);
      v55 += 88;
    }

    quasar::MetaInfo::update(&v98, &v99);
    v10 = v85;
    v92 = *(a1[2] + 307);
    v91 = *(v85 + 144);
    if ((v82 & 1) == 0)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v93, *(v85 + 19), *(v85 + 20), (*(v85 + 20) - *(v85 + 19)) >> 2);
      std::vector<quasar::TranslationPhrase::SegmentInfo>::__assign_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(v94, *(v85 + 22), *(v85 + 23), (*(v85 + 23) - *(v85 + 22)) >> 6);
    }

    std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](a6, &v89);
    quasar::PTree::~PTree(&v86);
    *v111 = v88;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v111);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

LABEL_111:
    quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&v89);
    v41 += 34;
  }

  while (v41 != v83);
LABEL_112:
  if (a5 && v81)
  {
    quasar::addTrimmedSegmentsToResult(a6, v10 + 22, v81, v78, -252645135 * ((*(v10 + 26) - *(v10 + 25)) >> 3));
  }

  if (*(v10 + 144) == 1)
  {
    quasar::PDecEngineBlockMixin::replaceDegenerateTranslation(a1, a2, a6, v80, *(a1[2] + 307));
  }

  v62 = a6[1];
  if (*a6 != v62)
  {
    v63 = (*a6 + 256);
    do
    {
      v64 = quasar::MetaInfo::inputTokensNumber((v10 + 256));
      if (v65)
      {
        v66 = v64;
      }

      else
      {
        v66 = (v107[1] - v107[0]) >> 2;
      }

      quasar::MetaInfo::setInputTokensNumber(v63, v66);
      quasar::MetaInfo::setOutputTokensNumber(v63, 0xF0F0F0F0F0F0F0F1 * ((*(v63 - 6) - *(v63 - 7)) >> 3));
      v67 = v63 + 1;
      v63 += 33;
    }

    while (v67 != v62);
  }

  quasar::PTree::~PTree(&v99);
  *v111 = &v102;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](v111);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v107[0])
  {
    v107[1] = v107[0];
    operator delete(v107[0]);
  }

  if (v110 < 0)
  {
    operator delete(v109[0]);
  }
}

void sub_1B58AC26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1B8C85350](v72, 0xA1C40BD48D6D6);
  a25 = a20;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a25);
  quasar::PTree::~PTree(&a72);
  a72 = &STACK[0x238];
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a72);
  v74 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v75;
    operator delete(v75);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  _Unwind_Resume(a1);
}

void sub_1B58AC2A0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58AC49CLL);
}

void sub_1B58AC2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&a39);
  STACK[0x2A0] = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A0]);
  STACK[0x2A0] = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A0]);
  a25 = a20;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a25);
  quasar::PTree::~PTree(&a72);
  a72 = &STACK[0x238];
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a72);
  v73 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v74;
    operator delete(v74);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  _Unwind_Resume(a1);
}

void sub_1B58AC31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&STACK[0x2A0]);
  quasar::PTree::~PTree(&a25);
  std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::~pair(&a33);
  quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&a39);
  JUMPOUT(0x1B58AC444);
}

void sub_1B58AC374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::istringstream::~istringstream(&STACK[0x2A0], MEMORY[0x1E69E54E0]);
  MEMORY[0x1B8C85200](v33 + 120);
  quasar::PTree::~PTree(&a25);
  std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::~pair(&a33);
  JUMPOUT(0x1B58AC43CLL);
}

void sub_1B58AC3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a25 = a20;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a25);
  quasar::PTree::~PTree(&a72);
  a72 = &STACK[0x238];
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a72);
  v73 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v74;
    operator delete(v74);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  _Unwind_Resume(a1);
}

void sub_1B58AC3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  quasar::PTree::~PTree(&a25);
  std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::~pair(&a33);
  JUMPOUT(0x1B58AC43CLL);
}

void sub_1B58AC3E0()
{
  v0 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x1B58AC46CLL);
}

void sub_1B58AC3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  quasar::PTree::~PTree(&a25);
  std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::~pair(&a33);
  JUMPOUT(0x1B58AC43CLL);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::GetPartialBiasIds(uint64_t a1)
{
  v1 = *(a1 + 5888);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F2D372F8[v1])(&v4, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::SetPartialBiasIds(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 5888);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_1F2D37308[v2])(&v5, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::NumActiveHyps(uint64_t a1)
{
  v1 = *(a1 + 5888);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F2D37318[v1])(&v4, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::Init<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 5888);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = v5;
  return (off_1F2D37328[v3])(&v6, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::StaticReadWrite<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v8 = a5;
  v5 = *(a1 + 5888);
  if (v5 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = v7;
  return (off_1F2D37338[v5])(&v9, a1);
}

uint64_t kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::GetRawNbest<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 5888);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = v5;
  return (off_1F2D37348[v3])(&v6, a1);
}

void kaldi::quasar::TranslationUtil::NbestElement::GetMetaInfo(kaldi::quasar::TranslationUtil::NbestElement *this@<X0>, std::string *a2@<X8>)
{
  memset(v24, 0, sizeof(v24));
  if ((*(this + 14) - 5) >= 2)
  {
    std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[8],0>(&v22, "source", "decoder");
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(this + 15), *(this + 16));
  }

  else
  {
    v22 = *(this + 5);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v22.__r_.__value_.__l.__size_;
    operator delete(v22.__r_.__value_.__l.__data_);
    if (!size)
    {
      goto LABEL_22;
    }
  }

  else if (!*(&v22.__r_.__value_.__s + 23))
  {
    goto LABEL_22;
  }

  if (*(this + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(this + 15), *(this + 16));
  }

  else
  {
    v21 = *(this + 5);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "prefilter input");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_22:
  if (*(this + 167) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(this + 18), *(this + 19));
  }

  else
  {
    v21 = *(this + 6);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "input");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::TranslationUtil::NbestElement::OutputWordString(this, &v21);
  std::string::basic_string[abi:ne200100]<0>(&v22, "output");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v20 = *(this + 3);
  kaldi::quasar::TranslationUtil::NbestElement::NumToString<fst::LatticeWeightTpl<float>>(this, &v20);
  std::string::basic_string[abi:ne200100]<0>(&v22, "cost");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::TranslationUtil::NbestElement::NumToString<float>();
  std::string::basic_string[abi:ne200100]<0>(&v22, "norm_cost");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v5 = *(this + 14);
  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[7],0>(&v22, "status", "vetoed");
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
      goto LABEL_61;
    }

    if (v5 == 3)
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[8],0>(&v22, "status", "stopped");
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
      goto LABEL_61;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[8],0>(&v22, "status", "aborted");
        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
        goto LABEL_61;
      case 5:
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[17],0>(&v22, "status", "phrasebook_exact");
        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
        goto LABEL_61;
      case 6:
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[17],0>(&v22, "status", "phrasebook_fuzzy");
        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
        goto LABEL_61;
    }
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[5],0>(&v22, "status", "fine");
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
LABEL_61:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v6 = *(this + 87);
  if (v6 < 0)
  {
    v7 = *(this + 8);
    v6 = *(this + 9);
  }

  else
  {
    v7 = this + 64;
  }

  if (v6 >= 14)
  {
    v8 = &v7[v6];
    v9 = v7;
    do
    {
      v10 = memchr(v9, 34, v6 - 13);
      if (!v10)
      {
        break;
      }

      v11 = *v10 == 0x7A696E616D6F7222 && *(v10 + 6) == 0x226E6F6974617A69;
      if (v11)
      {
        if (v10 != v8 && v10 - v7 != -1)
        {
          goto LABEL_87;
        }

        break;
      }

      v9 = v10 + 1;
      v6 = v8 - v9;
    }

    while (v8 - v9 >= 14);
  }

  if ((*(this + 119) & 0x8000000000000000) != 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_87;
    }
  }

  else if (!*(this + 119))
  {
    goto LABEL_87;
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[13],std::string const&,0>(&v22, "romanization", this + 6);
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

LABEL_87:
  kaldi::quasar::TranslationUtil::NbestElement::ConfidenceString(this, &v21);
  std::string::basic_string[abi:ne200100]<0>(&v22, "word confidences");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (*(this + 28) != *(this + 27) && *(this + 88) == 1)
  {
    kaldi::quasar::TranslationUtil::NbestElement::RawConfidenceString(this, &v21);
    std::string::basic_string[abi:ne200100]<0>(&v22, "subword confidences");
    __p = v21;
    memset(&v21, 0, sizeof(v21));
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v13 = *this;
  v12 = *(this + 1);
  if (v12 == *this)
  {
    v15 = 0;
  }

  else
  {
    LODWORD(v14) = 0;
    do
    {
      v14 = *(v13 + 232) + v14;
      v13 += 240;
    }

    while (v13 != v12);
    v15 = v14 / (0xEEEEEEEEEEEEEEEFLL * ((v12 - *this) >> 4));
  }

  kaldi::quasar::TranslationUtil::NbestElement::NumToString<int>(this, v15);
  std::string::basic_string[abi:ne200100]<0>(&v22, "sentence confidence");
  __p = v21;
  memset(&v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v16 = "false";
  if (*(this + 240))
  {
    v16 = "true";
  }

  v21.__r_.__value_.__r.__words[0] = v16;
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const*,0>(&v22, "low confidence", &v21.__r_.__value_.__l.__data_);
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (*(this + 88) == 1)
  {
    kaldi::quasar::TranslationUtil::NbestElement::RawSubWordString(&v21, this);
    std::string::basic_string[abi:ne200100]<0>(&v22, "subword string");
    __p = v21;
    memset(&v21, 0, sizeof(v21));
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v17 = *(this + 31);
  if (v17 != (this + 256))
  {
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NumToString<double>(*(v17 + 7) * 1000.0);
      if (*(v17 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *(v17 + 4), *(v17 + 5));
      }

      else
      {
        v22 = *(v17 + 32);
      }

      __p = v21;
      memset(&v21, 0, sizeof(v21));
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v24, &v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      v18 = *(v17 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v17 + 2);
          v11 = *v19 == v17;
          v17 = v19;
        }

        while (!v11);
      }

      v17 = v19;
    }

    while (v19 != (this + 256));
  }

  std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::pair[abi:ne200100]<std::string const&,std::vector<std::pair<std::string,std::string>>&,0>(a2, this + 4, v24);
  v22.__r_.__value_.__r.__words[0] = v24;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1B58ACFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::pair<std::string,std::string>::~pair(&a18);
  a18 = &a25;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t quasar::PDecEngineBlockMixin::setGlobalMapPtrs(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

void quasar::PDecEngineBlockMixin::createPhrasebookList(void *a1@<X0>, const std::string *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v38 = a3;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  kaldi::SplitStringToVector(a2, ",", 1, &v35);
  v6 = v35;
  for (i = v36; v6 != i; v6 += 24)
  {
    v34 = 0uLL;
    if (!a1)
    {
      goto LABEL_20;
    }

    v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, v6);
    v9 = v8;
    if (v8)
    {
      v10 = v8[6];
      if (v10 && (v10 = std::__shared_weak_count::lock(v10)) != 0)
      {
        v11 = v9[5];
      }

      else
      {
        v11 = 0;
      }

      v12 = *(&v34 + 1);
      *&v34 = v11;
      *(&v34 + 1) = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v11 = v34;
      }

      if (v11)
      {
        std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](a4, &v34);
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
          v18 = 0u;
          v19 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "use shared phrasebook: ", 23);
          v14 = *(v6 + 23);
          if (v14 >= 0)
          {
            v15 = v6;
          }

          else
          {
            v15 = *v6;
          }

          if (v14 >= 0)
          {
            v16 = *(v6 + 23);
          }

          else
          {
            v16 = *(v6 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }
      }
    }

    if (!v34)
    {
LABEL_20:
      std::allocate_shared[abi:ne200100]<kaldi::quasar::PhraseBook,std::allocator<kaldi::quasar::PhraseBook>,BOOL &,0>();
    }

    if (*(&v34 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
    }
  }

  __p[0] = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B58AD460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::TranslatorOptions::~TranslatorOptions(quasar::TranslatorOptions *this)
{
  v2 = this + 8247;
  *this = &unk_1F2D36EB0;
  *(this + 1100) = &unk_1F2D0B940;
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 8936, *(this + 1118));
  v41 = (this + 8904);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  *(this + 1100) = &unk_1F2D08890;
  v3 = *(this + 1112);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2[632] < 0)
  {
    operator delete(*(this + 1107));
  }

  if (v2[608] < 0)
  {
    operator delete(*(this + 1104));
  }

  if (v2[584] < 0)
  {
    operator delete(*(this + 1101));
  }

  *(this + 1075) = &unk_1F2CFB018;
  std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(this + 8776, *(this + 1098));
  quasar::PTree::~PTree((this + 8704));
  *(this + 1075) = &unk_1F2D08890;
  v4 = *(this + 1087);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v2[432] < 0)
  {
    operator delete(*(this + 1082));
  }

  if (v2[408] < 0)
  {
    operator delete(*(this + 1079));
  }

  if (v2[384] < 0)
  {
    operator delete(*(this + 1076));
  }

  *(this + 1057) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 8576, *(this + 1073));
  *(this + 1057) = &unk_1F2D08890;
  v5 = *(this + 1069);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v2[288] < 0)
  {
    operator delete(*(this + 1064));
  }

  if (v2[264] < 0)
  {
    operator delete(*(this + 1061));
  }

  if (v2[240] < 0)
  {
    operator delete(*(this + 1058));
  }

  *(this + 1039) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 8432, *(this + 1055));
  *(this + 1039) = &unk_1F2D08890;
  v6 = *(this + 1051);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v2[144] < 0)
  {
    operator delete(*(this + 1046));
  }

  if (v2[120] < 0)
  {
    operator delete(*(this + 1043));
  }

  if (v2[96] < 0)
  {
    operator delete(*(this + 1040));
  }

  *(this + 1021) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 8288, *(this + 1037));
  *(this + 1021) = &unk_1F2D08890;
  v7 = *(this + 1033);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*v2 < 0)
  {
    operator delete(*(this + 1028));
  }

  if (*(this + 8223) < 0)
  {
    operator delete(*(this + 1025));
  }

  if (*(this + 8199) < 0)
  {
    operator delete(*(this + 1022));
  }

  *(this + 1003) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 8144, *(this + 1019));
  *(this + 1003) = &unk_1F2D08890;
  v8 = *(this + 1015);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 8103) < 0)
  {
    operator delete(*(this + 1010));
  }

  if (*(this + 8079) < 0)
  {
    operator delete(*(this + 1007));
  }

  if (*(this + 8055) < 0)
  {
    operator delete(*(this + 1004));
  }

  *(this + 978) = &unk_1F2CFB018;
  std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(this + 8000, *(this + 1001));
  quasar::PTree::~PTree((this + 7928));
  *(this + 978) = &unk_1F2D08890;
  v9 = *(this + 990);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 7903) < 0)
  {
    operator delete(*(this + 985));
  }

  if (*(this + 7879) < 0)
  {
    operator delete(*(this + 982));
  }

  if (*(this + 7855) < 0)
  {
    operator delete(*(this + 979));
  }

  *(this + 960) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 7800, *(this + 976));
  *(this + 960) = &unk_1F2D08890;
  v10 = *(this + 972);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 7759) < 0)
  {
    operator delete(*(this + 967));
  }

  if (*(this + 7735) < 0)
  {
    operator delete(*(this + 964));
  }

  if (*(this + 7711) < 0)
  {
    operator delete(*(this + 961));
  }

  *(this + 942) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 7656, *(this + 958));
  *(this + 942) = &unk_1F2D08890;
  v11 = *(this + 954);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 7615) < 0)
  {
    operator delete(*(this + 949));
  }

  if (*(this + 7591) < 0)
  {
    operator delete(*(this + 946));
  }

  if (*(this + 7567) < 0)
  {
    operator delete(*(this + 943));
  }

  *(this + 924) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 7512, *(this + 940));
  *(this + 924) = &unk_1F2D08890;
  v12 = *(this + 936);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 7471) < 0)
  {
    operator delete(*(this + 931));
  }

  if (*(this + 7447) < 0)
  {
    operator delete(*(this + 928));
  }

  if (*(this + 7423) < 0)
  {
    operator delete(*(this + 925));
  }

  *(this + 906) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 7368, *(this + 922));
  *(this + 906) = &unk_1F2D08890;
  v13 = *(this + 918);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(this + 7327) < 0)
  {
    operator delete(*(this + 913));
  }

  if (*(this + 7303) < 0)
  {
    operator delete(*(this + 910));
  }

  if (*(this + 7279) < 0)
  {
    operator delete(*(this + 907));
  }

  *(this + 888) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 7224, *(this + 904));
  *(this + 888) = &unk_1F2D08890;
  v14 = *(this + 900);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 7183) < 0)
  {
    operator delete(*(this + 895));
  }

  if (*(this + 7159) < 0)
  {
    operator delete(*(this + 892));
  }

  if (*(this + 7135) < 0)
  {
    operator delete(*(this + 889));
  }

  *(this + 870) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 7080, *(this + 886));
  *(this + 870) = &unk_1F2D08890;
  v15 = *(this + 882);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(this + 7039) < 0)
  {
    operator delete(*(this + 877));
  }

  if (*(this + 7015) < 0)
  {
    operator delete(*(this + 874));
  }

  if (*(this + 6991) < 0)
  {
    operator delete(*(this + 871));
  }

  *(this + 852) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 6936, *(this + 868));
  *(this + 852) = &unk_1F2D08890;
  v16 = *(this + 864);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(this + 6895) < 0)
  {
    operator delete(*(this + 859));
  }

  if (*(this + 6871) < 0)
  {
    operator delete(*(this + 856));
  }

  if (*(this + 6847) < 0)
  {
    operator delete(*(this + 853));
  }

  *(this + 832) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 6792, *(this + 850));
  if (*(this + 6783) < 0)
  {
    operator delete(*(this + 845));
  }

  *(this + 832) = &unk_1F2D08890;
  v17 = *(this + 844);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(this + 6735) < 0)
  {
    operator delete(*(this + 839));
  }

  if (*(this + 6711) < 0)
  {
    operator delete(*(this + 836));
  }

  if (*(this + 6687) < 0)
  {
    operator delete(*(this + 833));
  }

  *(this + 812) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 6632, *(this + 830));
  if (*(this + 6623) < 0)
  {
    operator delete(*(this + 825));
  }

  *(this + 812) = &unk_1F2D08890;
  v18 = *(this + 824);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (*(this + 6575) < 0)
  {
    operator delete(*(this + 819));
  }

  if (*(this + 6551) < 0)
  {
    operator delete(*(this + 816));
  }

  if (*(this + 6527) < 0)
  {
    operator delete(*(this + 813));
  }

  *(this + 792) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 6472, *(this + 810));
  if (*(this + 6463) < 0)
  {
    operator delete(*(this + 805));
  }

  *(this + 792) = &unk_1F2D08890;
  v19 = *(this + 804);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (*(this + 6415) < 0)
  {
    operator delete(*(this + 799));
  }

  if (*(this + 6391) < 0)
  {
    operator delete(*(this + 796));
  }

  if (*(this + 6367) < 0)
  {
    operator delete(*(this + 793));
  }

  *(this + 772) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 6312, *(this + 790));
  if (*(this + 6303) < 0)
  {
    operator delete(*(this + 785));
  }

  *(this + 772) = &unk_1F2D08890;
  v20 = *(this + 784);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(this + 6255) < 0)
  {
    operator delete(*(this + 779));
  }

  if (*(this + 6231) < 0)
  {
    operator delete(*(this + 776));
  }

  if (*(this + 6207) < 0)
  {
    operator delete(*(this + 773));
  }

  *(this + 752) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 6152, *(this + 770));
  if (*(this + 6143) < 0)
  {
    operator delete(*(this + 765));
  }

  *(this + 752) = &unk_1F2D08890;
  v21 = *(this + 764);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(this + 6095) < 0)
  {
    operator delete(*(this + 759));
  }

  if (*(this + 6071) < 0)
  {
    operator delete(*(this + 756));
  }

  if (*(this + 6047) < 0)
  {
    operator delete(*(this + 753));
  }

  *(this + 734) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 5992, *(this + 750));
  *(this + 734) = &unk_1F2D08890;
  v22 = *(this + 746);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(this + 5951) < 0)
  {
    operator delete(*(this + 741));
  }

  if (*(this + 5927) < 0)
  {
    operator delete(*(this + 738));
  }

  if (*(this + 5903) < 0)
  {
    operator delete(*(this + 735));
  }

  *(this + 716) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 5848, *(this + 732));
  *(this + 716) = &unk_1F2D08890;
  v23 = *(this + 728);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(this + 5807) < 0)
  {
    operator delete(*(this + 723));
  }

  if (*(this + 5783) < 0)
  {
    operator delete(*(this + 720));
  }

  if (*(this + 5759) < 0)
  {
    operator delete(*(this + 717));
  }

  *(this + 698) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 5704, *(this + 714));
  *(this + 698) = &unk_1F2D08890;
  v24 = *(this + 710);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(this + 5663) < 0)
  {
    operator delete(*(this + 705));
  }

  if (*(this + 5639) < 0)
  {
    operator delete(*(this + 702));
  }

  if (*(this + 5615) < 0)
  {
    operator delete(*(this + 699));
  }

  *(this + 680) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 5560, *(this + 696));
  *(this + 680) = &unk_1F2D08890;
  v25 = *(this + 692);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (*(this + 5519) < 0)
  {
    operator delete(*(this + 687));
  }

  if (*(this + 5495) < 0)
  {
    operator delete(*(this + 684));
  }

  if (*(this + 5471) < 0)
  {
    operator delete(*(this + 681));
  }

  *(this + 662) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 5416, *(this + 678));
  *(this + 662) = &unk_1F2D08890;
  v26 = *(this + 674);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (*(this + 5375) < 0)
  {
    operator delete(*(this + 669));
  }

  if (*(this + 5351) < 0)
  {
    operator delete(*(this + 666));
  }

  if (*(this + 5327) < 0)
  {
    operator delete(*(this + 663));
  }

  *(this + 644) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 5272, *(this + 660));
  *(this + 644) = &unk_1F2D08890;
  v27 = *(this + 656);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (*(this + 5231) < 0)
  {
    operator delete(*(this + 651));
  }

  if (*(this + 5207) < 0)
  {
    operator delete(*(this + 648));
  }

  if (*(this + 5183) < 0)
  {
    operator delete(*(this + 645));
  }

  *(this + 624) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 5128, *(this + 642));
  if (*(this + 5119) < 0)
  {
    operator delete(*(this + 637));
  }

  *(this + 624) = &unk_1F2D08890;
  v28 = *(this + 636);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(this + 5071) < 0)
  {
    operator delete(*(this + 631));
  }

  if (*(this + 5047) < 0)
  {
    operator delete(*(this + 628));
  }

  if (*(this + 5023) < 0)
  {
    operator delete(*(this + 625));
  }

  *(this + 606) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 4968, *(this + 622));
  *(this + 606) = &unk_1F2D08890;
  v29 = *(this + 618);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (*(this + 4927) < 0)
  {
    operator delete(*(this + 613));
  }

  if (*(this + 4903) < 0)
  {
    operator delete(*(this + 610));
  }

  if (*(this + 4879) < 0)
  {
    operator delete(*(this + 607));
  }

  *(this + 588) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 4824, *(this + 604));
  *(this + 588) = &unk_1F2D08890;
  v30 = *(this + 600);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(this + 4783) < 0)
  {
    operator delete(*(this + 595));
  }

  if (*(this + 4759) < 0)
  {
    operator delete(*(this + 592));
  }

  if (*(this + 4735) < 0)
  {
    operator delete(*(this + 589));
  }

  *(this + 570) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 4680, *(this + 586));
  *(this + 570) = &unk_1F2D08890;
  v31 = *(this + 582);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (*(this + 4639) < 0)
  {
    operator delete(*(this + 577));
  }

  if (*(this + 4615) < 0)
  {
    operator delete(*(this + 574));
  }

  if (*(this + 4591) < 0)
  {
    operator delete(*(this + 571));
  }

  *(this + 552) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 4536, *(this + 568));
  *(this + 552) = &unk_1F2D08890;
  v32 = *(this + 564);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (*(this + 4495) < 0)
  {
    operator delete(*(this + 559));
  }

  if (*(this + 4471) < 0)
  {
    operator delete(*(this + 556));
  }

  if (*(this + 4447) < 0)
  {
    operator delete(*(this + 553));
  }

  *(this + 534) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 4392, *(this + 550));
  *(this + 534) = &unk_1F2D08890;
  v33 = *(this + 546);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(this + 4351) < 0)
  {
    operator delete(*(this + 541));
  }

  if (*(this + 4327) < 0)
  {
    operator delete(*(this + 538));
  }

  if (*(this + 4303) < 0)
  {
    operator delete(*(this + 535));
  }

  *(this + 514) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 4248, *(this + 532));
  if (*(this + 4239) < 0)
  {
    operator delete(*(this + 527));
  }

  *(this + 514) = &unk_1F2D08890;
  v34 = *(this + 526);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (*(this + 4191) < 0)
  {
    operator delete(*(this + 521));
  }

  if (*(this + 4167) < 0)
  {
    operator delete(*(this + 518));
  }

  if (*(this + 4143) < 0)
  {
    operator delete(*(this + 515));
  }

  *(this + 496) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 4088, *(this + 512));
  *(this + 496) = &unk_1F2D08890;
  v35 = *(this + 508);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (*(this + 4047) < 0)
  {
    operator delete(*(this + 503));
  }

  if (*(this + 4023) < 0)
  {
    operator delete(*(this + 500));
  }

  if (*(this + 3999) < 0)
  {
    operator delete(*(this + 497));
  }

  *(this + 478) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 3944, *(this + 494));
  *(this + 478) = &unk_1F2D08890;
  v36 = *(this + 490);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(this + 3903) < 0)
  {
    operator delete(*(this + 485));
  }

  if (*(this + 3879) < 0)
  {
    operator delete(*(this + 482));
  }

  if (*(this + 3855) < 0)
  {
    operator delete(*(this + 479));
  }

  *(this + 460) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 3800, *(this + 476));
  *(this + 460) = &unk_1F2D08890;
  v37 = *(this + 472);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (*(this + 3759) < 0)
  {
    operator delete(*(this + 467));
  }

  if (*(this + 3735) < 0)
  {
    operator delete(*(this + 464));
  }

  if (*(this + 3711) < 0)
  {
    operator delete(*(this + 461));
  }

  *(this + 442) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 3656, *(this + 458));
  *(this + 442) = &unk_1F2D08890;
  v38 = *(this + 454);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(this + 3615) < 0)
  {
    operator delete(*(this + 449));
  }

  if (*(this + 3591) < 0)
  {
    operator delete(*(this + 446));
  }

  if (*(this + 3567) < 0)
  {
    operator delete(*(this + 443));
  }

  *(this + 424) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 3512, *(this + 440));
  *(this + 424) = &unk_1F2D08890;
  v39 = *(this + 436);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (*(this + 3471) < 0)
  {
    operator delete(*(this + 431));
  }

  if (*(this + 3447) < 0)
  {
    operator delete(*(this + 428));
  }

  if (*(this + 3423) < 0)
  {
    operator delete(*(this + 425));
  }

  *(this + 404) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 3368, *(this + 422));
  if (*(this + 3359) < 0)
  {
    operator delete(*(this + 417));
  }

  *(this + 404) = &unk_1F2D08890;
  v40 = *(this + 416);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (*(this + 3311) < 0)
  {
    operator delete(*(this + 411));
  }

  if (*(this + 3287) < 0)
  {
    operator delete(*(this + 408));
  }

  if (*(this + 3263) < 0)
  {
    operator delete(*(this + 405));
  }

  quasar::PDecOptions::~PDecOptions(this);
}

{
  quasar::TranslatorOptions::~TranslatorOptions(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::TranslatorOptions::TranslatorOptions(void *a1, uint64_t a2, uint64_t a3)
{
  *quasar::PDecOptions::PDecOptions(a1) = &unk_1F2D36EB0;
  std::string::basic_string[abi:ne200100]<0>(v8, "model-file");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "mt model file name");
  quasar::OptionValue<std::string>::OptionValue((a1 + 404), v8, &v10, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "beam");
  LODWORD(__p.__r_.__value_.__l.__data_) = 4;
  std::string::basic_string[abi:ne200100]<0>(&v10, "maximum number of active beams in pruning");
  v7 = a1 + 424;
  quasar::OptionValue<int>::OptionValue((a1 + 424), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "as-beam");
  __p.__r_.__value_.__r.__words[0] = 0x41E0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v10, "as_beam pruning value");
  quasar::OptionValue<double>::OptionValue((a1 + 442), v8, &__p, &v10, 96);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "rs-beam");
  __p.__r_.__value_.__r.__words[0] = 0x41E0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v10, "rs_beam pruning value");
  quasar::OptionValue<double>::OptionValue((a1 + 460), v8, &__p, &v10, 96);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "beam-batch");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "beam batch size for (espresso) decoder model (0 = off, -1 = any)");
  quasar::OptionValue<int>::OptionValue((a1 + 478), v8, &__p, &v10, 213);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "confidence-threshold");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "confidence threshold");
  quasar::OptionValue<double>::OptionValue((a1 + 496), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "lm-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "path to language model file");
  quasar::OptionValue<std::string>::OptionValue((a1 + 514), v8, &v10, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "lm-weight");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "language model weight");
  quasar::OptionValue<double>::OptionValue((a1 + 534), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "veto-factor");
  __p.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v10, "MT defcoding veto factor");
  quasar::OptionValue<double>::OptionValue((a1 + 552), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "veto-factor-exclude-input-tags");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "MT decoding, exclude input tags in  veto factor computation");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 570), v8, &__p, &v10, 138);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "veto-factor-num-external-input-tags");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "MT decoding, num externally provided tags to exclude for veto factor");
  quasar::OptionValue<int>::OptionValue((a1 + 588), v8, &__p, &v10, 138);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "norm-costs");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "normalize costs in mt decoding? (backward compatible version)");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 606), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "norm-mode");
  std::string::basic_string[abi:ne200100]<0>(&v10, "off");
  std::string::basic_string[abi:ne200100]<0>(&__p, "normalize costs in mt decoding? (off|length|gnmt)");
  quasar::OptionValue<std::string>::OptionValue((a1 + 624), v8, &v10, &__p, 97);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "norm-alpha");
  __p.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v10, "normalization alpha parameter");
  quasar::OptionValue<double>::OptionValue((a1 + 644), v8, &__p, &v10, 97);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "norm-sigma");
  __p.__r_.__value_.__r.__words[0] = 0x4014000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v10, "normalization sigma parameter");
  quasar::OptionValue<double>::OptionValue((a1 + 662), v8, &__p, &v10, 97);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "unk-replace");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "oov");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 680), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "max-seq-length");
  LODWORD(__p.__r_.__value_.__l.__data_) = 100;
  std::string::basic_string[abi:ne200100]<0>(&v10, "maximum decoding sequence length");
  quasar::OptionValue<int>::OptionValue((a1 + 698), v8, &__p, &v10, 35);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "max-seq-length-relative");
  __p.__r_.__value_.__r.__words[0] = 0xBFF0000000000000;
  std::string::basic_string[abi:ne200100]<0>(&v10, "maximum decoding sequence length as factor of input length");
  quasar::OptionValue<double>::OptionValue((a1 + 716), v8, &__p, &v10, 160);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "max-seq-length-floor");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "maximum decoding sequence length floor (used with input length factor)");
  quasar::OptionValue<int>::OptionValue((a1 + 734), v8, &__p, &v10, 160);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "lm-mode");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "lm mode");
  quasar::OptionValue<std::string>::OptionValue((a1 + 752), v8, &v10, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "confidence-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "confidence model file");
  quasar::OptionValue<std::string>::OptionValue((a1 + 772), v8, &v10, &__p, 35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "stop-mode");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "stop mode in mt decoding (nbeam|best|finished_score)");
  quasar::OptionValue<std::string>::OptionValue((a1 + 792), v8, &v10, &__p, 99);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "block-control");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "flow control for block sequence (<empty>|optional|optional_stop_on_success)");
  quasar::OptionValue<std::string>::OptionValue((a1 + 812), v8, &v10, &__p, 106);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "shortlist-lang-pair");
  std::string::basic_string[abi:ne200100]<0>(&v10, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "language pair used for shortlist");
  quasar::OptionValue<std::string>::OptionValue((a1 + 832), v8, &v10, &__p, 121);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "shortlist-cond-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "top n in condition table used for shortlist");
  quasar::OptionValue<int>::OptionValue((a1 + 852), v8, &__p, &v10, 121);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "shortlist-freq-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "top n in freq words used for shortlist");
  quasar::OptionValue<int>::OptionValue((a1 + 870), v8, &__p, &v10, 121);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "nbest");
  std::string::basic_string[abi:ne200100]<0>(&v10, "maximum entries in nbest list to produce (default to same as 'beam'}");
  v4 = quasar::OptionValue<int>::value(v7);
  quasar::OptionValue<int>::OptionValue((a1 + 888), v8, v4, &v10, 35);
  a1[902] = v7;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "stop-mode-finished-score-beam");
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v10, "number of finished hypotheses considered for finished score stop mode (default: 1)");
  quasar::OptionValue<int>::OptionValue((a1 + 906), v8, &__p, &v10, 99);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "stream-buffer-n");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "stream decoding initial read length (effective read buffer)");
  quasar::OptionValue<int>::OptionValue((a1 + 924), v8, &__p, &v10, 129);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "stream-block-m");
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "stream decoding read/write length (block size for looped read/write calls)");
  quasar::OptionValue<int>::OptionValue((a1 + 942), v8, &__p, &v10, 129);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "stream-stabilize");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "stabilize partial stream decoding results after each read/write block");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 960), v8, &__p, &v10, 129);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "partial-input-override");
  quasar::PTree::PTree(v8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "optional override parameter block to change parameter settings for partial-input processing");
  quasar::OptionValue<quasar::PTree>::OptionValue((a1 + 978), &v10, v8, &__p, 229);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::PTree::~PTree(v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "timing-meta-info");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "include decoder timing information in meta info json");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 1003), v8, &__p, &v10, 240);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "repetition-threshold");
  __p.__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "probility threshold for detecting repetitions");
  quasar::OptionValue<double>::OptionValue((a1 + 1021), v8, &__p, &v10, 269);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "abort-on-repetitions");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "abort decoding on detecting repetitions");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 1039), v8, &__p, &v10, 269);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "redecode-on-repetitions");
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "retry decoding without shortlist on detecting repetitions");
  quasar::OptionValue<BOOL>::OptionValue((a1 + 1057), v8, &__p, &v10, 269);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "redecode-override");
  quasar::PTree::PTree(v8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "optional override parameter block to change parameter settings for redecode");
  quasar::OptionValue<quasar::PTree>::OptionValue((a1 + 1075), &v10, v8, &__p, 269);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::PTree::~PTree(v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "shortlist-suppress-tokens");
  memset(&v10, 0, sizeof(v10));
  quasar::OptionValue<std::vector<std::string>>::OptionValue((a1 + 1100), v8, &v10, &__p, 121);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8[0].__r_.__value_.__l.__data_);
  }

  quasar::OptionsBase::update(a1, a2, a3);
}

void sub_1B58AFABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  quasar::OptionValue<std::vector<std::string>>::~OptionValue(v29 + v30);
  quasar::OptionValue<quasar::PTree>::~OptionValue(v29 + v37);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + v32);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + v31);
  quasar::OptionValue<double>::~OptionValue(v29 + v36);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + v35);
  quasar::OptionValue<quasar::PTree>::~OptionValue(v29 + v34);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + v33);
  quasar::OptionValue<int>::~OptionValue(v29 + v38);
  quasar::OptionValue<int>::~OptionValue(v29 + 7392);
  quasar::OptionValue<int>::~OptionValue(v29 + 7248);
  quasar::OptionValue<int>::~OptionValue(v29 + 7104);
  quasar::OptionValue<int>::~OptionValue(v29 + 6960);
  quasar::OptionValue<int>::~OptionValue(v29 + 6816);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 6656);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 6496);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 6336);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 6176);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 6016);
  quasar::OptionValue<int>::~OptionValue(v29 + 5872);
  quasar::OptionValue<double>::~OptionValue(v29 + 5728);
  quasar::OptionValue<int>::~OptionValue(v29 + 5584);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + 5440);
  quasar::OptionValue<double>::~OptionValue(v29 + 5296);
  quasar::OptionValue<double>::~OptionValue(v29 + 5152);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 4992);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + 4848);
  quasar::OptionValue<int>::~OptionValue(v29 + 4704);
  quasar::OptionValue<BOOL>::~OptionValue(v29 + 4560);
  quasar::OptionValue<double>::~OptionValue(v29 + 4416);
  quasar::OptionValue<double>::~OptionValue(v29 + 4272);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 4112);
  quasar::OptionValue<double>::~OptionValue(v29 + 3968);
  quasar::OptionValue<int>::~OptionValue(v29 + 3824);
  quasar::OptionValue<double>::~OptionValue(v29 + 3680);
  quasar::OptionValue<double>::~OptionValue(v29 + 3536);
  quasar::OptionValue<int>::~OptionValue(a12);
  quasar::OptionValue<std::string>::~OptionValue(v29 + 3232);
  quasar::PDecOptions::~PDecOptions(v29);
  _Unwind_Resume(a1);
}

void sub_1B58AFCEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFB68);
}

void sub_1B58AFD24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFB70);
}

void sub_1B58AFD5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFB78);
}

void sub_1B58AFD94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFB80);
}

void sub_1B58AFDCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a13);
  if (*(v26 - 81) < 0)
  {
    operator delete(*(v26 - 104));
  }

  JUMPOUT(0x1B58AFB88);
}

void sub_1B58AFE14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFB90);
}

void sub_1B58AFE4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFB98);
}

void sub_1B58AFE84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFBA4);
}

void sub_1B58AFEBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 81) < 0)
  {
    operator delete(*(v18 - 104));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFBB0);
}

void sub_1B58AFEF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58AFBBCLL);
}

uint64_t quasar::TranslatorOptions::options@<X0>(quasar::TranslatorOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 3232;
  v3[2] = this + 3392;
  v3[3] = this + 3536;
  v3[4] = this + 3680;
  v3[5] = this + 3824;
  v3[6] = this + 7104;
  v3[7] = this + 3968;
  v3[8] = this + 4112;
  v3[9] = this + 4272;
  v3[10] = this + 4416;
  v3[11] = this + 4560;
  v3[12] = this + 4704;
  v3[13] = this + 4848;
  v3[14] = this + 4992;
  v3[15] = this + 5152;
  v3[16] = this + 5296;
  v3[17] = this + 5440;
  v3[18] = this + 5584;
  v3[19] = this + 5728;
  v3[20] = this + 5872;
  v3[21] = this + 176;
  v3[22] = this + 320;
  v3[23] = this + 6016;
  v3[24] = this + 480;
  v3[25] = this + 640;
  v3[26] = this + 784;
  v3[27] = this + 944;
  v3[28] = this + 6176;
  v3[29] = this + 1088;
  v3[30] = this + 1248;
  v3[31] = this + 1552;
  v3[32] = this + 2016;
  v3[33] = this + 2176;
  v3[34] = this + 1696;
  v3[35] = this + 1856;
  v3[36] = this + 6336;
  v3[37] = this + 7248;
  v3[38] = this + 6496;
  v3[39] = this + 6656;
  v3[40] = this + 6816;
  v3[41] = this + 6960;
  v3[42] = this + 7392;
  v3[43] = this + 7536;
  v3[44] = this + 7680;
  v3[45] = this + 2656;
  v3[46] = this + 2800;
  v3[47] = this + 2944;
  v3[48] = this + 3088;
  v3[49] = this + 7824;
  v3[50] = this + 8024;
  v3[51] = this + 2336;
  v3[52] = this + 8168;
  v3[53] = this + 8312;
  v3[54] = this + 8456;
  v3[55] = this + 8600;
  v3[56] = this + 8800;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 0x39uLL);
}

void quasar::TranslatorOptions::setLocales(uint64_t a1, const std::string *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "<constructor argument>");
  std::string::operator=((a1 + 1800), a2);
  std::string::operator=((a1 + 1728), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "<constructor argument>");
  std::string::operator=((a1 + 1960), a3);
  std::string::operator=((a1 + 1888), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B58B0894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PDecTranslatorBlock::~PDecTranslatorBlock(quasar::PDecTranslatorBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  v5 = *(this + 3374);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  quasar::TranslatorOptions::~TranslatorOptions((this + 18024));
  quasar::TranslatorOptions::~TranslatorOptions((this + 9064));
  v6 = *(this + 1132);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 1130);
  *(this + 1130) = 0;
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  v8 = *(this + 1129);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 1125, 0);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 1124, 0);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 1123, 0);
  v9 = *(this + 1122);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = a2[1];
  *this = v10;
  *(this + *(v10 - 24)) = a2[2];
  quasar::TranslatorOptions::~TranslatorOptions((this + 8));
}

void quasar::PDecTranslatorBlock::~PDecTranslatorBlock(quasar::PDecTranslatorBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 27000));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 27000));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::PDecTranslatorBlock::~PDecTranslatorBlock(quasar::PDecTranslatorBlock *this)
{
  v2 = (v1 + 27000);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  quasar::PDecTranslatorBlock::~PDecTranslatorBlock((this + *(*this - 24)));
}

void quasar::PDecTranslatorBlock::updateConfiguration(uint64_t a1, quasar::SystemConfig *a2, uint64_t a3, uint64_t a4)
{
  quasar::ProcessingBlock::updateConfiguration(a1 + *(*a1 - 24), a2, a3, a4);
  ModelLoaderPtr = quasar::SystemConfig::getModelLoaderPtr(a2);
  v10 = *ModelLoaderPtr;
  v9 = ModelLoaderPtr[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 9048) = v10;
  v11 = *(a1 + 9056);
  *(a1 + 9056) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  quasar::OptionsBase::update((a1 + 9064), a3, a4);
}

void quasar::PDecTranslatorBlock::createDecodeOptions(quasar::PDecTranslatorBlock *this, quasar::TranslatorOptions *a2)
{
  v3 = quasar::OptionValue<std::string>::value(a2 + 624);
  v4 = quasar::OptionValue<BOOL>::value(a2 + 606);
  quasar::PDecEngineBlockMixin::getNormalizationMode(v3, *v4);
  operator new();
}

void quasar::PDecTranslatorBlock::init(quasar::PDecTranslatorBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 515);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (v3)
  {
    v4 = quasar::OptionValue<std::string>::value(this + 515);
    quasar::PDecTranslatorBlock::createDeterminizedLm(this, v4);
  }

  quasar::PDecTranslatorBlock::createDecodeOptions(this, (this + 8));
}

void quasar::PDecTranslatorBlock::createDeterminizedLm(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 9048) + 16))(&v24);
  if (v24)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v8 = 0;
    operator new();
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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to read lm fst from: ", 28);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B58B17E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 - 40);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PDecTranslatorBlock::createDecoder(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v22 = quasar::OptionValue<std::string>::value(a3 + 404);
  v11 = quasar::OptionValue<std::string>::value(a3 + 772);
  v12 = *quasar::OptionValue<int>::value(a3 + 698);
  v13 = *quasar::OptionValue<double>::value(a3 + 716);
  v14 = *quasar::OptionValue<int>::value(a3 + 734);
  v15 = *quasar::OptionValue<double>::value(a3 + 552);
  v16 = quasar::OptionValue<std::string>::value(a3 + 624);
  v17 = quasar::OptionValue<BOOL>::value(a3 + 606);
  NormalizationMode = quasar::PDecEngineBlockMixin::getNormalizationMode(v16, *v17);
  v19 = *quasar::OptionValue<BOOL>::value(a3 + 680);
  v20 = quasar::OptionValue<std::string>::value(a3 + 832);
  v21 = *(a4 + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::PDecEngineBlockMixin::createDecoder(a1 + 8968, a2, a3, v22, v11, v12, v14, NormalizationMode, a6, v13, v15, v19, v20, a5);
  if (v21)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1B58B19E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58B1B6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PDecTranslatorBlock::process(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == *(a3 + 8))
  {
    if (quasar::gLogLevel >= 2)
    {
      memset(v9, 0, sizeof(v9));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Empty token received", 20);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(v9);
    }

    quasar::ProcessingBlock::send(a1 + *(*a1 - 24), a3, 0);
  }

  else
  {
    v5 = *(*a1 - 24);
    v6 = *quasar::OptionValue<BOOL>::value(a1 + 195);
    if (*quasar::OptionValue<BOOL>::value(a1 + 369) == 1)
    {
      v7 = *quasar::OptionValue<BOOL>::value(a1 + 387) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = quasar::OptionValue<BOOL>::value(a1 + 387);
    quasar::PDecEngineBlockMixin::processImplementation(a1 + 1121, a3, v6, v7 & 1, *v8, v9);
    quasar::ProcessingBlock::send(a1 + v5, v9, 0);
    v10 = v9;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v10);
  }
}

void quasar::PDecTranslatorBlock::compilationSpecs(quasar::PDecTranslatorBlock *this@<X0>, void *a2@<X8>)
{
  if (*(this + *(*this - 24) + 56) == 1)
  {
    quasar::PDecTranslatorBlock::initCompilationSpecs(this);
  }

  v4 = *(this + 1121);
  if (*(v4 + 5888) == 1)
  {
    if (quasar::gLogLevel >= 5)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Getting compilation specs", 25);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v5);
      v4 = *(this + 1121);
      if (*(v4 + 5888) != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }
    }

    kaldi::quasar::Encdec::CompilationSpecs(*(v4 + 136), a2);
    if (quasar::gLogLevel >= 5)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Got compilation specs", 21);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v5);
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_1B58B1EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(v9, *(v9 + 8));
  _Unwind_Resume(a1);
}

void *kaldi::quasar::Encdec::CompilationSpecs@<X0>(kaldi::quasar::Encdec *this@<X0>, void *a2@<X8>)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Returning compilation spec from kaldi...", 40);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
  }

  return std::set<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::set[abi:ne200100](a2, this + 1104);
}

void quasar::PDecTranslatorBlock::setContextProvider(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ConfiguredProcessingBlock<quasar::TranslatorOptions>::setContextProvider(a1, &v8);
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

  *(a1 + 26984) = v6;
  v7 = *(a1 + 26992);
  *(a1 + 26992) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B58B2008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ConfiguredProcessingBlock<quasar::TranslatorOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B58B20F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void *std::pair<std::vector<std::string>,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>::pair[abi:ne200100]<std::vector<std::string>&,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>&,0>(void *a1, uint64_t *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v5 = a3[1];
  a1[3] = *a3;
  a1[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t std::pair<std::vector<std::string>,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::OutputWordString@<X0>(kaldi::quasar::TranslationUtil::NbestElement *this@<X0>, std::string *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4 + v5;
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
      ++v6;
      v4 = *this;
      v5 += 240;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((*(this + 1) - *this) >> 4) > v6);
  }

  std::stringbuf::str();
  kaldi::Trim(a2);
  v14[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v12;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v19);
}

void sub_1B58B2448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::NumToString<fst::LatticeWeightTpl<float>>(uint64_t a1, float *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  fst::operator<<<float>(&v6, a2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6 = v3;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B58B2604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::NumToString<float>()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v2);
  std::ostream::operator<<();
  std::stringbuf::str();
  v2[0] = *MEMORY[0x1E69E54D8];
  v0 = *(MEMORY[0x1E69E54D8] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v2[2] = v0;
  v3 = MEMORY[0x1E69E5548] + 16;
  if (v5 < 0)
  {
    operator delete(v4[7].__locale_);
  }

  v3 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v4);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v6);
}

void sub_1B58B27AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationUtil::NbestElement::ConfidenceString(kaldi::quasar::TranslationUtil::NbestElement *this@<X0>, void *a2@<X8>)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = *this;
  v4 = *(this + 1);
  while (v3 != v4)
  {
    std::vector<int>::push_back[abi:ne200100](&__p, (v3 + 232));
    v3 += 240;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  kaldi::JoinVectorToString<int>(&__p, " ", a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1B58B2844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::RawConfidenceString@<X0>(kaldi::quasar::TranslationUtil::NbestElement *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return kaldi::JoinVectorToString<float>(this + 27, " ", a2);
}

void sub_1B58B28B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::NumToString<int>(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  MEMORY[0x1B8C84C00](&v6, a2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6 = v3;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B58B2A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::RawSubWordString(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v2 = *this;
  if (*(this + 1) != *this)
  {
    v3 = 0;
    v4 = 160;
    do
    {
      __p = 0;
      v14 = 0;
      v15 = 0;
      kaldi::JoinVectorToString<std::string>((v2 + v4 - 128), " ", &__p);
      if (v15 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v15 >= 0)
      {
        v6 = HIBYTE(v15);
      }

      else
      {
        v6 = v14;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v6);
      kaldi::JoinVectorToString<int>((*this + v4), " ", &__p);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "(", 1);
      if (v15 >= 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = __p;
      }

      if (v15 >= 0)
      {
        v9 = HIBYTE(v15);
      }

      else
      {
        v9 = v14;
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
      if (0xEEEEEEEEEEEEEEEFLL * ((*(this + 1) - *this) >> 4) - 1 > v3)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " ", 1);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p);
      }

      ++v3;
      v2 = *this;
      v4 += 240;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((*(this + 1) - *this) >> 4) > v3);
  }

  std::stringbuf::str();
  v16[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v17 = v11;
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v21);
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::NumToString<double>(double a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  MEMORY[0x1B8C84BE0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v5 = v2;
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v9);
}

void sub_1B58B2EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58B2F28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58B2F7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[17],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58B2FD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58B3024(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[13],std::string const&,0>(std::string *a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_1B58B3094(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::JoinVectorToString<float>(void *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      std::ostream::operator<<();
      ++v6;
      v7 = a1[1] - *a1;
      if (v6 < v7 >> 2)
      {
        v8 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, a2, v8);
        v7 = a1[1] - *a1;
      }
    }

    while (v6 < v7 >> 2);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  v9 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v13;
  v14[0] = *v9;
  v10 = v9[9];
  *(v14 + *(v14[0] - 24)) = v9[8];
  v15 = v10;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v19);
}

void sub_1B58B32B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const*,0>(_BYTE *a1, char *a2, char **a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, *a3);
  return a1;
}

void sub_1B58B3300(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::pair[abi:ne200100]<std::string const&,std::vector<std::pair<std::string,std::string>>&,0>(std::string *this, __int128 *a2, uint64_t *a3)
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
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  return this;
}

void sub_1B58B3398(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::vector<std::pair<std::string,std::string>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::quasar::PhraseBook::ReadRaw(uint64_t a1, uint64_t a2, char a3)
{
  v41[19] = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::clear(a1);
  }

  std::ifstream::basic_ifstream(v39);
  if (v40[15])
  {
    *(a1 + 64) = 0;
    memset(&v37, 0, sizeof(v37));
    v4 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v39 + *(v39[0] - 24)));
      v5 = std::locale::use_facet(&v20, v4);
      v6 = (v5->__vftable[2].~facet_0)(v5, 10);
      std::locale::~locale(&v20);
      v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v39, &v37, v6);
      if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
      {
        break;
      }

      kaldi::Trim(&v37);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      kaldi::SplitStringOnString(&v37, (a1 + 40), &v34);
      if (((0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3)) & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Invalid entry terminating ReadRaw : ", 36);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v37;
          }

          else
          {
            v16 = v37.__r_.__value_.__r.__words[0];
          }

          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v37.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, size);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v20);
        }

        *(a1 + 64) = 0;
        std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::clear(a1);
        v20.__r_.__value_.__r.__words[0] = &v34;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        goto LABEL_57;
      }

      kaldi::Trim(v34);
      v8 = v34;
      if (*(v34 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *v34, v34[1]);
        v8 = v34;
      }

      else
      {
        v9 = *v34;
        v33.__r_.__value_.__r.__words[2] = v34[2];
        *&v33.__r_.__value_.__l.__data_ = v9;
      }

      kaldi::quasar::PhraseBook::PreProcess(a1, v8, &v32);
      kaldi::Trim(v34 + 1);
      v10 = v34;
      if (*(v34 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, v34[3], v34[4]);
        v10 = v34;
      }

      else
      {
        v31 = *(v34 + 1);
      }

      memset(&v30, 0, sizeof(v30));
      if (v35 - v10 == 72)
      {
        kaldi::Trim(v10 + 2);
        std::string::operator=(&v30, v34 + 2);
      }

      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v32.__r_.__value_.__l.__data_))
      {
        memset(&v20, 0, sizeof(v20));
        v38 = &v32;
        v11 = std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32.__r_.__value_.__l.__data_);
        std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__vdeallocate(v11 + 5);
        *(v11 + 5) = v20;
        memset(&v20, 0, sizeof(v20));
        v29.__r_.__value_.__r.__words[0] = &v20;
        std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&v29);
      }

      if (v35 - v34 == 72)
      {
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
        }

        else
        {
          v29 = v30;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v29, "");
      }

      kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(&v20, &v32, &v33, &v31, &v29);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v29.__r_.__value_.__r.__words[0] = &v32;
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32.__r_.__value_.__l.__data_);
      std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::push_back[abi:ne200100]((v12 + 5), &v20);
      ++*(a1 + 64);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v20.__r_.__value_.__r.__words[0] = &v34;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Read ", 5);
      v14 = MEMORY[0x1B8C84C00](v13, *(a1 + 64));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " phrasebook entries", 19);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v20);
    }

    v18 = 1;
  }

  else
  {
LABEL_57:
    v18 = 0;
  }

  v39[0] = *MEMORY[0x1E69E54C8];
  *(v39 + *(v39[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v40);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v41);
  return v18;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__emplace_back_slow_path<kaldi::quasar::PhraseBook::PhraseBookEntry const&>(uint64_t a1, const kaldi::quasar::PhraseBook::PhraseBookEntry *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry((120 * v2), a2);
  v15 = 120 * v2 + 120;
  v7 = *(a1 + 8);
  v8 = (120 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::~__split_buffer(&v13);
  return v12;
}

void sub_1B58B3CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::OptionValue<std::vector<std::string>>::~OptionValue(uint64_t a1)
{
  *a1 = &unk_1F2D0B940;
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1 + 136, *(a1 + 144));
  v4 = (a1 + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  *a1 = &unk_1F2D08890;
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *std::set<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,std::__tree_node<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void std::__variant_detail::__alt<0ul,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>>::__alt[abi:ne200100]<int &,float &,kaldi::quasar::NormalizationMode &,BOOL &,kaldi::quasar::PhraseBookMode &,kaldi::quasar::BPEMode &,kaldi::quasar::BPEMode &,quasar::OptionValue<BOOL> const&,quasar::OptionValue<BOOL> const&,float &,int &,quasar::OptionValue<BOOL> const&>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  v13 = *a2;
  v19 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  v18 = *quasar::OptionValue<BOOL>::value(a9);
  quasar::OptionValue<BOOL>::value(a10);
  quasar::OptionValue<BOOL>::value(a13);

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TranslationBeamSearch(a1, v13, v19, v14, v15, v16, v17, v18);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TranslationBeamSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = a8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_1F2D371E0;
  *(a1 + 40) = 1065353216;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0x400000003;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "UNK");
  kaldi::quasar::BPE::BPE(a1 + 152, 1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::allocate_shared[abi:ne200100]<kaldi::quasar::PhraseBook,std::allocator<kaldi::quasar::PhraseBook>,BOOL &,0>();
}

void sub_1B58B42D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiLogMessage::~KaldiLogMessage(&a16);
  v24 = *(v16 + 5864);
  if (v24)
  {
    *(v16 + 5872) = v24;
    operator delete(v24);
  }

  v25 = *(v16 + 5840);
  if (v25)
  {
    *(v16 + 5848) = v25;
    operator delete(v25);
  }

  v26 = *(v16 + 5808);
  if (v26)
  {
    *(v16 + 5816) = v26;
    operator delete(v26);
  }

  v27 = *v22;
  if (*v22)
  {
    *(v16 + 5792) = v27;
    operator delete(v27);
  }

  v28 = *(v16 + v21);
  if (v28)
  {
    *(v16 + 5744) = v28;
    operator delete(v28);
  }

  kaldi::Matrix<float>::~Matrix(v16 + v20);
  kaldi::nnet1::Nnet::~Nnet((v16 + 5256));
  a16 = v16 + 5152;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = v16 + 5128;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v29 = *(v16 + 5120);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  kaldi::Matrix<float>::~Matrix(v16 + 5072);
  kaldi::CuMatrix<float>::~CuMatrix(v19);
  kaldi::CuMatrix<float>::~CuMatrix(a9);
  a16 = v16 + 4952;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v30 = *(v16 + 4944);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(v18 + 831) < 0)
  {
    operator delete(*(v16 + 4904));
  }

  kaldi::quasar::NNMTTransliterator::~NNMTTransliterator((v16 + 408));
  v31 = *(v16 + 400);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  kaldi::quasar::BPE::~BPE((v16 + 152));
  v32 = *(v16 + 144);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  kaldi::quasar::InputHammer::~InputHammer(v17);
  _Unwind_Resume(a1);
}

void sub_1B58B4460(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B58B4434);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::~TranslationBeamSearch(uint64_t a1)
{
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::~TranslationBeamSearch(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::~TranslationBeamSearch(uint64_t a1)
{
  *a1 = &unk_1F2D371E0;
  v2 = *(a1 + 5864);
  if (v2)
  {
    *(a1 + 5872) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 5840);
  if (v3)
  {
    *(a1 + 5848) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 5808);
  if (v4)
  {
    *(a1 + 5816) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 5784);
  if (v5)
  {
    *(a1 + 5792) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 5736);
  if (v6)
  {
    *(a1 + 5744) = v6;
    operator delete(v6);
  }

  kaldi::Matrix<float>::~Matrix(a1 + 5632);
  kaldi::nnet1::Nnet::~Nnet((a1 + 5256));
  v12 = (a1 + 5152);
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 5128);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 5120);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  kaldi::Matrix<float>::~Matrix(a1 + 5072);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 5024);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 4976);
  v12 = (a1 + 4952);
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(a1 + 4944);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 4927) < 0)
  {
    operator delete(*(a1 + 4904));
  }

  kaldi::quasar::NNMTTransliterator::~NNMTTransliterator((a1 + 408));
  v9 = *(a1 + 400);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  kaldi::quasar::BPE::~BPE((a1 + 152));
  v10 = *(a1 + 144);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = (a1 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(a1 + 48);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);
  return a1;
}

void std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>::shared_ptr[abi:ne200100]<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1B58B46C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
    MEMORY[0x1B8C85350](v2, 0x10B2C403A6CCAF3);
  }

  return a1;
}

void std::__shared_ptr_pointer<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>> *,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>::__shared_ptr_default_delete<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>,std::allocator<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>> *,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>::__shared_ptr_default_delete<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>,std::allocator<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*(result + 24));

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>> *,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>::__shared_ptr_default_delete<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>,std::allocator<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 5888);
  if (v2 != -1)
  {
    result = (off_1F2D37250[v2])(&v3, result);
  }

  *(v1 + 5888) = -1;
  return result;
}

void std::__variant_detail::__alt<1ul,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>::__alt[abi:ne200100]<int &,float &,kaldi::quasar::NormalizationMode &,BOOL &,kaldi::quasar::PhraseBookMode &,kaldi::quasar::BPEMode &,kaldi::quasar::BPEMode &,quasar::OptionValue<BOOL> const&,quasar::OptionValue<BOOL> const&,float &,int &,quasar::OptionValue<BOOL> const&>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  v13 = *a2;
  v19 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  v18 = *quasar::OptionValue<BOOL>::value(a9);
  quasar::OptionValue<BOOL>::value(a10);
  quasar::OptionValue<BOOL>::value(a13);

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::TranslationBeamSearch(a1, v13, v19, v14, v15, v16, v17, v18);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE4ReadERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbbbNS_10shared_ptrINS9_7TMTools12ModelSharingEEEEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcST_DpT0_(const std::string ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6 = *(*a1 + 10);
  v7 = (*a1)[3];
  v8[0] = (*a1)[2];
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read(a2, v3, v4, v5, v6, v8);
}

void sub_1B58B49C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE4ReadERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbbbNS_10shared_ptrINS9_7TMTools12ModelSharingEEEEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcST_DpT0_(const std::string ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6 = *(*a1 + 10);
  v7 = (*a1)[3];
  v8[0] = (*a1)[2];
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read(a2, v3, v4, v5, v6, v8);
}

void sub_1B58B4A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read(uint64_t a1, const std::string *a2, int a3, char a4, char a5, uint64_t *a6)
{
  v12 = a1 + 4096;
  std::string::operator=((a1 + 4904), a2);
  *(v12 + 832) = a4;
  *(v12 + 833) = a5;
  v14 = *a6;
  v13 = a6[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 4936) = v14;
  v15 = *(a1 + 4944);
  *(a1 + 4944) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a3)
  {
    fst::FstReadOptions::FstReadOptions(__p, a2, 0, 0, 0);
    v19 = 2;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ReadMapped(a1, __p);
  }

  v21 = 0;
  v16 = kaldi::Input::Input(v20, a2, &v21);
  v17 = kaldi::Input::Stream(v16);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read(a1, v17, v21, 0);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ReadMapped(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 5112))
  {
    kaldi::ReadMapped<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>>(a2);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Already mapped from a file");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void sub_1B58B4D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 4928);
  v5 = *(a1 + 4929);
  v6 = *(a1 + 4944);
  v7[0] = *(a1 + 4936);
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::TMTools::GetModel<kaldi::quasar::TorchEncoderDecoder>((a1 + 4904), a2, a3, a4, v4, v5, v7);
}

void sub_1B58B512C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadMapped<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>>(uint64_t a1)
{
  v18[34] = *MEMORY[0x1E69E9840];
  v8 = 0;
  kaldi::Input::Input(v7, a1, &v8);
  if (v8)
  {
    v2 = kaldi::Input::Stream(v7);
    std::istream::seekg();
    std::istream::tellg();
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    std::istream::seekg();
    fst::MappedFile::Map(v2, a1, v18[16]);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Memory mapping failed. Not a valid Kaldi binary file: ", 54);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
}

void sub_1B58B5448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TMTools::GetModel<kaldi::quasar::TorchEncoderDecoder>(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  if (*a7)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>();
  }

  v9 = kaldi::quasar::TorchEncoderDecoder::ModelFileMap(0);
  if (a5)
  {
    v10 = *(std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9, a1) + 64);
    if (v10)
    {
      std::__shared_weak_count::lock(v10);
    }
  }

  operator new();
}

void sub_1B58B57D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  v14 = *(v12 - 104);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE19ReadConfidenceModelERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbbEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcSP_DpT0_(const std::string ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6[0] = 0;
  v6[1] = 0;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read(a2, v3, v4, v5, 0, v6);
}

void sub_1B58B5904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE19ReadConfidenceModelERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbbEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcSP_DpT0_(const std::string ***a1, uint64_t a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6[0] = 0;
  v6[1] = 0;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read(a2, v3, v4, v5, 0, v6);
}

void sub_1B58B597C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ReadInputHammer(uint64_t a1, uint64_t a2)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Reading tag filters from : ", 27);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
  }

  return kaldi::quasar::InputHammer::ReadRaw(a1 + 8);
}

uint64_t kaldi::quasar::InputHammer::ReadRaw(uint64_t a1)
{
  v6[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v4);
  if (v5[15])
  {
    Raw = kaldi::quasar::InputHammer::ReadRaw(a1, v4);
  }

  else
  {
    Raw = 0;
  }

  v4[0] = *MEMORY[0x1E69E54C8];
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v5);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v6);
  return Raw;
}

void sub_1B58B5BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ifstream::~ifstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::InputHammer::ReadRaw(uint64_t a1, uint64_t *a2)
{
  kaldi::quasar::InputHammer::Info(&v69, a1);
  if (v70 < 0)
  {
    operator delete(v69);
  }

  memset(&v68, 0, sizeof(v68));
  if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
  {
    goto LABEL_28;
  }

  kaldi::ReadToken(a2, 0, &v68);
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v68.__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_13;
    }

    v4 = v68.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_13;
    }

    v4 = &v68;
  }

  v5 = v4->__r_.__value_.__r.__words[0];
  v6 = v4->__r_.__value_.__s.__data_[8];
  if (v5 != 0x7473694C464E443CLL || v6 != 62)
  {
LABEL_13:
    v8 = MEMORY[0x1E69E5318];
    do
    {
      kaldi::Trim(&v68);
      memset(&v67, 0, sizeof(v67));
      kaldi::SplitStringToVector(&v68, "\", 1, &v67);
      if (v67.__r_.__value_.__l.__size_ - v67.__r_.__value_.__r.__words[0] == 24)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v67.__r_.__value_.__l.__data_);
      }

      else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Skipping tag ", 13);
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v68;
        }

        else
        {
          v10 = v68.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v68.__r_.__value_.__l.__size_;
        }

        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, size);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
        MEMORY[0x1B8C84C30](v13, 0xAAAAAAAAAAAAAAABLL * ((v67.__r_.__value_.__l.__size_ - v67.__r_.__value_.__r.__words[0]) >> 3));
        kaldi::KaldiLogMessage::~KaldiLogMessage(v64);
      }

      v64[0].__locale_ = &v67;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v14 = std::locale::use_facet(v64, v8);
      v15 = (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(v64);
      v16 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v68, v15);
    }

    while ((*(v16 + *(*v16 - 24) + 32) & 5) == 0);
    if (kaldi::g_kaldi_verbose_level < 0)
    {
      goto LABEL_28;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Input hammer has ", 17);
    v18 = MEMORY[0x1B8C84C30](v17, *(a1 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " known entries it will remove", 29);
LABEL_27:
    kaldi::KaldiLogMessage::~KaldiLogMessage(v64);
LABEL_28:
    v19 = 1;
    goto LABEL_29;
  }

  if (kaldi::quasar::InputHammer::ReadHeader(a1, a2, 0))
  {
    *(a1 + 105) = 1;
    v21 = *(a1 + 80);
    for (i = *(a1 + 88); v21 != i; v21 += 24)
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 40), v21))
      {
        *&v64[0].__locale_ = 0u;
        v65 = 0u;
        v66 = 1065353216;
        v67.__r_.__value_.__r.__words[0] = v21;
        v23 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), v21);
        std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign((v23 + 5), v64);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v64);
      }

      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Add tag ", 8);
        v25 = *(v21 + 23);
        if (v25 >= 0)
        {
          v26 = v21;
        }

        else
        {
          v26 = *v21;
        }

        if (v25 >= 0)
        {
          v27 = *(v21 + 23);
        }

        else
        {
          v27 = *(v21 + 8);
        }

        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " to pass lists", 14);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v64);
      }
    }

    memset(&v67, 0, sizeof(v67));
    v29 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v30 = std::locale::use_facet(v64, v29);
      v31 = (v30->__vftable[2].~facet_0)(v30, 10);
      std::locale::~locale(v64);
      v32 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v67, v31);
      if ((*(v32 + *(*v32 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v67;
        }

        else
        {
          v33 = v67.__r_.__value_.__r.__words[0];
        }

        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v67.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v33, v34);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v64);
      }

      kaldi::Trim(&v67);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      std::string::basic_string[abi:ne200100]<0>(v64, "|||");
      kaldi::SplitStringOnString(&v67, v64, &v61);
      if (SBYTE7(v65) < 0)
      {
        operator delete(v64[0].__locale_);
      }

      v35 = v61;
      if (v62 - v61 == 48)
      {
        if (*(v61 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, *v61, v61[1]);
          v35 = v61;
        }

        else
        {
          v36 = *v61;
          v60.__r_.__value_.__r.__words[2] = v61[2];
          *&v60.__r_.__value_.__l.__data_ = v36;
        }

        if (*(v35 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v35[3], v35[4]);
        }

        else
        {
          __p = *(v35 + 1);
        }

        kaldi::Trim(&v60);
        kaldi::Trim(&__p);
        v42 = v60.__r_.__value_.__l.__size_;
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (v42)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = __p.__r_.__value_.__l.__size_;
          }

          if (v43)
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 40), &__p.__r_.__value_.__l.__data_))
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
              v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Not configured for locale : ", 28);
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
                v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v54 = __p.__r_.__value_.__l.__size_;
              }

              v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, p_p, v54);
              v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " on line ", 9);
              if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v57 = &v67;
              }

              else
              {
                v57 = v67.__r_.__value_.__r.__words[0];
              }

              if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v58 = v67.__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v64);
            }

            v71 = &__p;
            v45 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), &__p.__r_.__value_.__l.__data_);
            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v45 + 5, &v60.__r_.__value_.__l.__data_);
            v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }
        }

        if (v44 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Skipping tag ", 13);
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v67;
        }

        else
        {
          v38 = v67.__r_.__value_.__r.__words[0];
        }

        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v39 = v67.__r_.__value_.__l.__size_;
        }

        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
        MEMORY[0x1B8C84C30](v41, 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 3));
        kaldi::KaldiLogMessage::~KaldiLogMessage(v64);
      }

      v64[0].__locale_ = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (kaldi::g_kaldi_verbose_level < 0)
    {
      goto LABEL_28;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v64);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Input hammer has DNF ", 21);
    v47 = *(a1 + 56);
    if (v47)
    {
      LODWORD(v48) = 0;
      do
      {
        v48 = (v48 + *(v47 + 16));
        v47 = *v47;
      }

      while (v47);
    }

    else
    {
      v48 = 0;
    }

    v49 = MEMORY[0x1B8C84C00](v46, v48);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " known entries across ", 22);
    v51 = MEMORY[0x1B8C84C00](v50, *(a1 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " locales it will leave in place", 31);
    goto LABEL_27;
  }

  v19 = 0;
LABEL_29:
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  return v19;
}

void sub_1B58B6370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a25);
  if (*(v30 - 129) < 0)
  {
    operator delete(*(v30 - 152));
  }

  _Unwind_Resume(a1);
}

void sub_1B58B63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  JUMPOUT(0x1B58B6424);
}

void sub_1B58B6464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  JUMPOUT(0x1B58B6478);
}

void sub_1B58B6474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  JUMPOUT(0x1B58B64A0);
}

uint64_t kaldi::quasar::InputHammer::Info(kaldi::quasar::InputHammer *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "RemoveUnderScores = ", 20);
  v3 = MEMORY[0x1B8C84BD0](v2, *(this + 104));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", StripTokenLocales = ", 22);
  v4 = *(this + 10);
  for (i = *(this + 11); v4 != i; v4 += 24)
  {
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *v4;
    }

    if (v6 >= 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = *(v4 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", # of entries ", 15);
  v11 = *(this + 7);
  if (v11)
  {
    LODWORD(v12) = 0;
    do
    {
      v12 = (v12 + *(v11 + 16));
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1B8C84C00](v10, v12);
  std::stringbuf::str();
  v15[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v13;
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

void sub_1B58B66F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::InputHammer::ReadHeader(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = 0x5565766F6D65523CLL;
  v7 = 0x3E7365726F635372;
  v39 = -1;
  v8 = a2 + 4;
  v9 = ",";
  while ((*(v8 + *(*a2 - 24)) & 2) == 0)
  {
    memset(&v38, 0, sizeof(v38));
    kaldi::ReadToken(a2, a3, &v38);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v38.__r_.__value_.__l.__size_ != 10 || (*v38.__r_.__value_.__l.__data_ == 0x73694C464E442F3CLL ? (v15 = *(v38.__r_.__value_.__r.__words[0] + 8) == 15988) : (v15 = 0), !v15))
      {
        if (v38.__r_.__value_.__l.__size_ == 19)
        {
          v16 = *v38.__r_.__value_.__l.__data_ == v6 && *(v38.__r_.__value_.__r.__words[0] + 8) == 0x726F63537265646ELL;
          if (v16 && *(v38.__r_.__value_.__r.__words[0] + 11) == v7)
          {
            goto LABEL_66;
          }
        }

        size = v38.__r_.__value_.__l.__size_;
        if (v38.__r_.__value_.__l.__size_ != 19)
        {
          goto LABEL_45;
        }

        if (*v38.__r_.__value_.__l.__data_ == 0x6F5470697274533CLL && *(v38.__r_.__value_.__r.__words[0] + 8) == 0x6C61636F4C6E656BLL && *(v38.__r_.__value_.__r.__words[0] + 11) == 0x3E73656C61636F4CLL)
        {
LABEL_68:
          kaldi::ReadToken(a2, a3, &v38);
          v29 = v7;
          v30 = v6;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v31 = v9;
          kaldi::SplitStringToVector(&v38, v9, 1, &v35);
          v32 = v35;
          v33 = v36;
          while (v32 != v33)
          {
            std::vector<std::string>::push_back[abi:ne200100](a1 + 80, v32);
            v32 = (v32 + 24);
          }

          v40 = &v35;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
          v9 = v31;
          v6 = v30;
          v7 = v29;
        }

        else
        {
          size = v38.__r_.__value_.__l.__size_;
LABEL_45:
          if (size != 9)
          {
            goto LABEL_57;
          }

          v14 = v38.__r_.__value_.__r.__words[0];
LABEL_47:
          v21 = v14->__r_.__value_.__r.__words[0];
          v22 = v14->__r_.__value_.__s.__data_[8];
          if (v21 != 0x6E6F69737265563CLL || v22 != 62)
          {
LABEL_57:
            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
              v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Unknown token ", 14);
              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = &v38;
              }

              else
              {
                v26 = v38.__r_.__value_.__r.__words[0];
              }

              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v27 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v27 = v38.__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
              kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v35);
            }

            v28 = 1;
            goto LABEL_73;
          }

          kaldi::ReadBasicType<int>(a2, a3, &v39);
        }

LABEL_72:
        std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
        v28 = 0;
        goto LABEL_73;
      }
    }

    else
    {
      if (HIBYTE(v38.__r_.__value_.__r.__words[2]) == 9)
      {
        v14 = &v38;
        goto LABEL_47;
      }

      if (HIBYTE(v38.__r_.__value_.__r.__words[2]) != 10)
      {
        if (HIBYTE(v38.__r_.__value_.__r.__words[2]) != 19)
        {
          goto LABEL_57;
        }

        if (v38.__r_.__value_.__r.__words[0] != v6 || v38.__r_.__value_.__l.__size_ != 0x726F63537265646ELL || *(&v38.__r_.__value_.__r.__words[1] + 3) != v7)
        {
          if (v38.__r_.__value_.__r.__words[0] != 0x6F5470697274533CLL || v38.__r_.__value_.__l.__size_ != 0x6C61636F4C6E656BLL || *(&v38.__r_.__value_.__r.__words[1] + 3) != 0x3E73656C61636F4CLL)
          {
            goto LABEL_57;
          }

          goto LABEL_68;
        }

LABEL_66:
        kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 104));
        goto LABEL_72;
      }

      if (v38.__r_.__value_.__r.__words[0] != 0x73694C464E442F3CLL || LOWORD(v38.__r_.__value_.__r.__words[1]) != 15988)
      {
        goto LABEL_57;
      }
    }

    v28 = 3;
LABEL_73:
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
      if (v28)
      {
        return v28 == 3;
      }
    }

    else if (v28)
    {
      return v28 == 3;
    }
  }

  return 1;
}

void sub_1B58B6AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 96) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v9 - 96));
  if (*(v9 - 105) < 0)
  {
    operator delete(*(v9 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ReadInputHammer(uint64_t a1, uint64_t a2)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Reading tag filters from : ", 27);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
  }

  return kaldi::quasar::InputHammer::ReadRaw(a1 + 8);
}

uint64_t std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::__emplace_unique_key_args<std::vector<std::string>,std::pair<std::vector<std::string>,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>(uint64_t a1, const void ***a2)
{
  v2 = *std::__tree<std::vector<std::string>>::__find_equal<std::vector<std::string>>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::__construct_node<std::pair<std::vector<std::string>,std::shared_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<std::string> const,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void _ZNKSt3__116__variant_detail12__visitation9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS5_21TranslationBeamSearchINS5_19TorchEncoderDecoderEEENS7_INS5_6EncdecEEEEE11SelectModelERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESK_SK_bEUlOT_E_EclB8ne200100IJRNS0_5__altILm0ES9_EEEEEDcDpOT_(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 4896) == 1)
  {
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel((a2 + 136), **a1, (*a1)[1], a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void _ZNKSt3__116__variant_detail12__visitation9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS5_21TranslationBeamSearchINS5_19TorchEncoderDecoderEEENS7_INS5_6EncdecEEEEE11SelectModelERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESK_SK_bEUlOT_E_EclB8ne200100IJRNS0_5__altILm1ESB_EEEEEDcDpOT_(std::string::size_type **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 4896) == 1)
  {
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel((a2 + 136), **a1, (*a1)[1], *(*a1 + 24), a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void std::vector<quasar::TranslationPhraseInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(uint64_t *a1, uint64_t *a2, quasar::TranslationPhraseInternal *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(a1);
    if (a4 <= 0xF83E0F83E0F83ELL)
    {
      v9 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
      {
        v10 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::TranslationPhraseInternal>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xF83E0F83E0F83E1 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        quasar::TranslationPhraseInternal::operator=(v8, v6);
        v6 += 33;
        v8 += 264;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v11 = (v11 - 264);
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v11);
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        quasar::TranslationPhraseInternal::operator=(v8, v14);
        v14 += 33;
        v8 += 264;
        v13 -= 264;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal*>(a1, &v12[v6], a3, v11);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE17GetPartialBiasIdsEvEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcSH_DpT0_@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *(a1 + 5840), *(a1 + 5848), (*(a1 + 5848) - *(a1 + 5840)) >> 2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE17GetPartialBiasIdsEvEUlOT_E_EEJRNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcSH_DpT0_@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *(a1 + 5840), *(a1 + 5848), (*(a1 + 5848) - *(a1 + 5840)) >> 2);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SetPartialBiasIds(uint64_t a1, char **a2)
{
  v3 = (a1 + 5840);
  if (v3 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v5, 5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Setting partial bias IDs, length: ", 34);
    MEMORY[0x1B8C84C30](v4, (a2[1] - *a2) >> 2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v5);
  }
}

void sub_1B58B7060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE13NumActiveHypsEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 5836))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 5872) == *(a2 + 5864);
  }

  if (v2)
  {
    return ((*(a2 + 5792) - *(a2 + 5784)) >> 3);
  }

  else
  {
    return 1;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK5kaldi6quasar17TranslationEngineIJNS9_21TranslationBeamSearchINS9_19TorchEncoderDecoderEEENSB_INS9_6EncdecEEEEE13NumActiveHypsEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_SF_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 5836))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 5872) == *(a2 + 5864);
  }

  if (v2)
  {
    return ((*(a2 + 5792) - *(a2 + 5784)) >> 3);
  }

  else
  {
    return 1;
  }
}

double kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Init<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v22, 3);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "entered Init with #ActiveHyps: ", 31);
    if (*(a1 + 5872) == *(a1 + 5864) || *(a1 + 5836))
    {
      v7 = (*(a1 + 5792) - *(a1 + 5784)) >> 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = MEMORY[0x1B8C84C00](v6, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " at decoding-position: ", 23);
    MEMORY[0x1B8C84C00](v9, *(a1 + 5836));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v22);
  }

  *(a1 + 5712) = a3;
  kaldi::quasar::TorchEncoderDecoder::Start(*(a1 + 136), *(a2 + 312), a2 + 112);
  (*(**(a1 + 5712) + 224))(*(a1 + 5712));
  v10 = (*(*a3 + 200))(a3);
  (*(**(a1 + 5712) + 176))(*(a1 + 5712), v10);
  *(a1 + 5720) = -1;
  *(a1 + 5728) = vneg_f32(0x7F0000007FLL);
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 5736), 0, 0, 0);
  v11 = *(a2 + 184);
  *(a1 + 5760) = 0x3F8000004F000000;
  if (v11 == 1)
  {
    *(a1 + 5764) = 1.0 - *(a2 + 180);
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::NbestCompare(&v22, *(a2 + 216), *(a2 + 220), *(a2 + 224));
  *(a1 + 5768) = v22;
  *(a1 + 5776) = v23;
  *(a1 + 5792) = *(a1 + 5784);
  std::vector<kaldi::Matrix<float>>::resize((a1 + 4952), 1uLL);
  kaldi::Matrix<float>::Resize(*(a1 + 4952), 0, 0, 0, 0);
  v12 = *(a1 + 5136);
  v13 = *(a1 + 5128);
  if (v12 != v13)
  {
    v14 = v12 - 6;
    v15 = v12 - 6;
    v16 = v12 - 6;
    do
    {
      v17 = *v16;
      v16 -= 6;
      (*(v17 + 16))(v15);
      v14 -= 6;
      v18 = v15 == v13;
      v15 = v16;
    }

    while (!v18);
  }

  *(a1 + 5136) = v13;
  v19 = *(a1 + 5160);
  v20 = *(a1 + 5152);
  while (v19 != v20)
  {
    v19 = kaldi::Matrix<float>::~Matrix(v19 - 40);
  }

  *(a1 + 5160) = v20;
  result = 0.0;
  *(a1 + 5832) = 0;
  *(a1 + 5872) = *(a1 + 5864);
  return result;
}

void sub_1B58B7378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::NbestCompare(uint64_t a1, int a2, float a3, float a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v7, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Initializing NbestCompare. alpha: ", 34);
    v5 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", sigma: ", 9);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v7);
  }

  return a1;
}

void sub_1B58B741C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::StaticReadWrite<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
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
  memset(&v61, 0, sizeof(v61));
  v16 = *a3;
  if (a3[1] == *a3)
  {
    v20.__i_ = 0;
    end = 0;
  }

  else
  {
    v17 = a5;
    v18 = 0;
    v19 = 0;
    do
    {
      memset(&__p, 0, sizeof(__p));
      kaldi::quasar::InputHammer::FilterTags(a1 + 8, v16 + v18, &__p, a2 + 64);
      v64 = 0;
      v65 = 0;
      v66 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v63 = __p;
      }

      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TokenizeInputString(a1, &v63, &v64);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v61, v61.__end_, v64, v65, 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3));
      v59[0] = &v64;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v59);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v19;
      v16 = *a3;
      v18 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v19);
    v20.__i_ = v61.__begin_;
    end = v61.__end_;
    LODWORD(a5) = v17;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((end - v20.__i_) >> 3) > v15 || (a5 & 1) != 0)
  {
    *(a1 + 5872) = *(a1 + 5864);
    if (v15 >= 1)
    {
      v26.__i_ = &v20.__i_[v15];
      std::vector<std::string>::erase(&v61, v20, v26);
      v20.__i_ = v61.__begin_;
    }

    memset(v62, 0, sizeof(v62));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v62, v20.__i_, v61.__end_, 0xAAAAAAAAAAAAAAABLL * ((v61.__end_ - v20.__i_) >> 3));
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Symbolize(a1, v62, (a1 + 5864), 0);
    __p.__r_.__value_.__r.__words[0] = v62;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p.__r_.__value_.__r.__words[0] = &v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (a5)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = kaldi::quasar::TorchEncoderDecoder::EosSourceId(*(a1 + 136)) - 1;
      std::vector<int>::push_back[abi:ne200100]((a1 + 5864), &__p);
    }

    if (*(a1 + 5836))
    {
      v27 = 0;
    }

    else
    {
      v27 = *(a2 + 296);
    }

    LODWORD(v28) = *(a2 + 300);
    if (v28 + v27 <= ((*(a1 + 5872) - *(a1 + 5864)) >> 2) || a5)
    {
      v56 = *MEMORY[0x1E69E54D8];
      v54 = *(MEMORY[0x1E69E54D8] + 72);
      v55 = *(MEMORY[0x1E69E54D8] + 64);
      v58 = a5;
      do
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        if (v28 + v27 >= 1)
        {
          v33 = 0;
          v34 = 0;
          while (1)
          {
            v35 = *(a1 + 5864);
            if (v34 >= ((*(a1 + 5872) - v35) >> 2))
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](&v64, &v35[v33]);
            ++v34;
            v33 += 4;
            if (v34 >= *(a2 + 300) + v27)
            {
              v35 = *(a1 + 5864);
              break;
            }
          }

          if (v34)
          {
            v36 = &v35[4 * v34];
            v37 = *(a1 + 5872);
            v38 = v37 - v36;
            if (v37 != v36)
            {
              memmove(v35, v36, v37 - v36);
            }

            *(a1 + 5872) = &v35[v38];
          }
        }

        v39 = kaldi::g_kaldi_verbose_level;
        if (kaldi::g_kaldi_verbose_level >= 5)
        {
          v40 = kaldi::quasar::TorchEncoderDecoder::InputSymbols(*(a1 + 136));
          if (v40)
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
            v42 = v64;
            v41 = v65;
            while (v42 != v41)
            {
              v43 = *v42;
              v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], " ", 1);
              (*(*v40 + 88))(&v61, v40, v43 + 1);
              if (SHIBYTE(v61.__end_cap_.__value_) >= 0)
              {
                begin = &v61;
              }

              else
              {
                begin = v61.__begin_;
              }

              if (SHIBYTE(v61.__end_cap_.__value_) >= 0)
              {
                value_high = HIBYTE(v61.__end_cap_.__value_);
              }

              else
              {
                value_high = v61.__end_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, begin, value_high);
              if (SHIBYTE(v61.__end_cap_.__value_) < 0)
              {
                operator delete(v61.__begin_);
              }

              v42 = (v42 + 4);
            }

            if (kaldi::g_kaldi_verbose_level > 4)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v61, 5);
              v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "partial_input_addition:", 23);
              std::stringbuf::str();
              if ((v60 & 0x80u) == 0)
              {
                v48 = v59;
              }

              else
              {
                v48 = v59[0];
              }

              if ((v60 & 0x80u) == 0)
              {
                v49 = v60;
              }

              else
              {
                v49 = v59[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
              if (v60 < 0)
              {
                operator delete(v59[0]);
              }

              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v61);
            }

            __p.__r_.__value_.__r.__words[0] = v56;
            *(__p.__r_.__value_.__r.__words + *(v56 - 24)) = v55;
            __p.__r_.__value_.__r.__words[2] = v54;
            v68 = MEMORY[0x1E69E5548] + 16;
            if (v70 < 0)
            {
              operator delete(v69[7].__locale_);
            }

            v68 = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(v69);
            std::iostream::~basic_iostream();
            MEMORY[0x1B8C85200](&v71);
          }

          v39 = kaldi::g_kaldi_verbose_level;
        }

        if ((v39 & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "src_input_host_[0].NumRows(): ", 30);
          v51 = kaldi::MatrixBase<float>::NumRows(*(a1 + 4952));
          MEMORY[0x1B8C84C00](v50, v51);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
        }

        kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, &v64, 0);
        if (v58 && *(a1 + 5872) == *(a1 + 5864))
        {
          v52 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Write<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a1 + 5188) - *(a1 + 5836), 1);
        }

        else
        {
          v52 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Write<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, *(a2 + 300), 0);
        }

        v25 = v52;
        if (*(a2 + 304) == 1)
        {
          kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::PruneCurrentHyps(a1, 1);
        }

        v53 = !v58 || *(a1 + 5872) != *(a1 + 5864);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        if (!v53)
        {
          break;
        }

        v27 = 0;
        v28 = *(a2 + 300);
      }

      while (v28 <= (*(a1 + 5872) - *(a1 + 5864)) >> 2 || v58);
    }

    else
    {
      v25 = 2147500000.0;
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::GetCurrentBestWords(a1, a4);
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      memset(&v61, 0, sizeof(v61));
      kaldi::JoinVectorToString<std::string>(a4, " ", &v61);
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "partial_output: ", 16);
        if (SHIBYTE(v61.__end_cap_.__value_) >= 0)
        {
          v30 = &v61;
        }

        else
        {
          v30 = v61.__begin_;
        }

        if (SHIBYTE(v61.__end_cap_.__value_) >= 0)
        {
          v31 = HIBYTE(v61.__end_cap_.__value_);
        }

        else
        {
          v31 = v61.__end_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
      }

      if (SHIBYTE(v61.__end_cap_.__value_) < 0)
      {
        operator delete(v61.__begin_);
      }
    }
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input stream did not grow. Previously processed: ", 49);
      v23 = MEMORY[0x1B8C84C00](v22, v15);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " provided: ", 11);
      MEMORY[0x1B8C84C30](v24, 0xAAAAAAAAAAAAAAABLL * ((v61.__end_ - v61.__begin_) >> 3));
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::GetCurrentBestWords(a1, a4);
    __p.__r_.__value_.__r.__words[0] = &v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    return 2147500000.0;
  }

  return v25;
}

void sub_1B58B7D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::InputHammer::FilterTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 105) == 1)
  {
    return kaldi::quasar::InputHammer::PassSpecifiedTags(a1, a2, a3, a4);
  }

  else
  {
    return kaldi::quasar::InputHammer::RemoveSpecifiedTags(a1, a2, a3);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TokenizeInputString(uint64_t a1, const std::string *a2, uint64_t *a3)
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

void sub_1B58B7FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 - 57) < 0)
  {
    operator delete(*(v9 - 80));
  }

  a9 = (v9 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

__n128 kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::GetCurrentBestWords(uint64_t a1, uint64_t a2)
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
        v7 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a1 + 136));
        (*(*v7 + 88))(v18);
        if (kaldi::quasar::BPE::IsIntraWord(a1 + 152, v18))
        {
          kaldi::quasar::BPE::StripSeparator(a1 + 152, v18, &__p);
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

          std::vector<std::string>::push_back[abi:ne200100](a2, v18);
        }
      }

      else
      {
        v9 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a1 + 136));
        (*(*v9 + 88))(v18);
        std::vector<std::string>::push_back[abi:ne200100](a2, v18);
      }

      if (SHIBYTE(v18[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18[0].__r_.__value_.__l.__data_);
      }

      LODWORD(v6) = *(*(a1 + 5808) + 8 * v6);
    }

    while (v6 > 0);
    v11 = *a2;
    v10 = *(a2 + 8);
    if (*a2 != v10)
    {
      v12 = v10 - 24;
      if (v12 > v11)
      {
        v13 = v11 + 3;
        do
        {
          v14 = *(v13 - 1);
          result = *(v13 - 3);
          v15 = *(v12 + 16);
          *(v13 - 3) = *v12;
          *(v13 - 1) = v15;
          *v12 = result;
          *(v12 + 16) = v14;
          v12 -= 24;
          v16 = v13 >= v12;
          v13 += 3;
        }

        while (!v16);
      }
    }
  }

  return result;
}

void sub_1B58B8200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Symbolize(uint64_t a1, uint64_t *a2, const void **a3, const void **a4)
{
  v8 = kaldi::quasar::TorchEncoderDecoder::InputSymbols(*(a1 + 136));
  v9 = kaldi::quasar::TorchEncoderDecoder::UnkSourceId(*(a1 + 136));
  if (a2[1] != *a2)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = -1;
    do
    {
      v14 = kaldi::quasar::TorchEncoderDecoder::Reverse(*(a1 + 136));
      v15 = *a2;
      LODWORD(v16) = v12;
      if (v14)
      {
        v16 = v13 - 0x5555555555555555 * ((a2[1] - v15) >> 3);
      }

      v17 = (*(*v8 + 96))(v8, v15 + 24 * v16);
      if (v17 == -1)
      {
        if (a4)
        {
          LODWORD(v24[0]) = v12;
          std::vector<int>::push_back[abi:ne200100](a4, v24);
        }

        v17 = v10;
        if (v10 == -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Couldn't find symbol ", 21);
          v19 = *a2 + v11;
          v20 = *(v19 + 23);
          if (v20 >= 0)
          {
            v21 = *a2 + v11;
          }

          else
          {
            v21 = *v19;
          }

          if (v20 >= 0)
          {
            v22 = *(v19 + 23);
          }

          else
          {
            v22 = *(v19 + 8);
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v21, v22);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, " or <unk> UNK symbol");
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
        }
      }

      LODWORD(v24[0]) = v17 - 1;
      std::vector<int>::push_back[abi:ne200100](a3, v24);
      ++v12;
      v11 += 24;
      --v13;
    }

    while (v12 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v30, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "entered Read to process #tokens: ", 33);
    MEMORY[0x1B8C84C30](v8, (*(a3 + 8) - *a3) >> 2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v30);
  }

  v9 = *(a1 + 4952);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4960) - v9) >> 3) <= a4)
  {
    std::vector<kaldi::Matrix<float>>::resize((a1 + 4952), a4 + 1);
    v9 = *(a1 + 4952);
  }

  v27 = 0u;
  v28 = 0u;
  v26 = &unk_1F2D0EE38;
  v29 = 0;
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

  kaldi::SubMatrix<float>::SubMatrix(v30, v12 + 40 * a4, v10, v13 >> 2, 0, v16);
  kaldi::CuMatrix<float>::operator=(&v26, v30);
  quasar::Bitmap::~Bitmap(v30);
  if (!v10)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v30, 1);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "shortlist with biasing #tokens: ", 32);
      MEMORY[0x1B8C84C30](v20, (*(a1 + 5848) - *(a1 + 5840)) >> 2);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v30);
    }

    v21 = *(a1 + 136);
    v22 = *(a2 + 288);
    v23 = *(a2 + 292);
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SuppressedIds(a1, a2 + 64, a2 + 88, (a2 + 328), v30);
    kaldi::quasar::TorchEncoderDecoder::ConstrainSoftmax(v21, a2 + 264, v22, v23, a3, (a1 + 5840), v30);
    std::__tree<int>::destroy(v30, v30[1].__locale_);
    kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(*(a1 + 136), 1);
    v24 = *(a1 + 136);
    if (*(a2 + 300))
    {
      kaldi::quasar::TorchEncoderDecoder::EncFeedforward(v24, &v26, a4);
    }

    else
    {
      kaldi::quasar::TorchEncoderDecoder::StartFeedforward(v24, &v26, a4, 0);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AddInitialHypToCurrent<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2);
  }

  kaldi::quasar::TorchEncoderDecoder::EncFeedforward(*(a1 + 136), &v26, a4);
  return kaldi::CuMatrix<float>::~CuMatrix(&v26);
}

void sub_1B58B86D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Write<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v270 = *MEMORY[0x1E69E9840];
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "entered Write with #ActiveHyps: ", 32);
    if (*(a1 + 5872) == *(a1 + 5864) || *(a1 + 5836))
    {
      v8 = (*(a1 + 5792) - *(a1 + 5784)) >> 3;
    }

    else
    {
      v8 = 1;
    }

    v9 = MEMORY[0x1B8C84C00](v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " at decoding-position: ", 23);
    MEMORY[0x1B8C84C00](v10, *(a1 + 5836));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  v261 = 0;
  __src = 0;
  v262 = 0;
  v258 = 0;
  v257 = 0;
  v259 = 0;
  v267 = 0;
  v268 = 0;
  v269 = 0;
  std::vector<float>::push_back[abi:ne200100](&v267, kaldi::quasar::kMaxCost);
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v267, v268, &v224, v268 - v267);
  if (*(a2 + 320) != 0.0)
  {
    v12 = *(a1 + 136);
    if (*(v12 + 3922) != 1 || (*(v12 + 3923) & 1) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Decoder repetition detection requires an alignment model with shifted alignments!", 81);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }
  }

  v214 = (*(a2 + 200) || *(a2 + 208)) && (*(a2 + 184) - 1) < 2;
  v215 = a2;
  if (a3 < 1)
  {
    v173 = 1;
    LODWORD(v17) = 1325400064;
  }

  else
  {
    v13 = *(a2 + 188);
    v14 = *(a1 + 5836);
    v207 = v14 + a3;
    v208 = 0;
    v15 = 1.0;
    v16 = 0x4F0000004F000000;
    v204 = 2147500000.0;
    v17 = 0x4F0000004F000000;
    v205 = v13;
    v206 = (a1 + 5784);
    do
    {
      v18 = *(a1 + 5784);
      v19 = *(a1 + 5792);
      if (v18 == v19)
      {
        break;
      }

      if ((v13 != 1) | BYTE4(v208) & 1)
      {
        if (v13 == 2)
        {
          if (*v267 < v204)
          {
            break;
          }
        }

        else if (v13 || v208 >= *(a2 + 160))
        {
          break;
        }
      }

      if (*(a2 + 320) != 0.0 && (*(*v18 + 200) & 1) != 0)
      {
        break;
      }

      v20 = v258;
      v21 = v257;
      if (v258 != v257)
      {
        do
        {
          v22 = *(v20 - 5);
          if (v22)
          {
            *(v20 - 4) = v22;
            operator delete(v22);
          }

          v20 = (v20 - 56);
        }

        while (v20 != v21);
        v19 = *(a1 + 5792);
        v18 = *(a1 + 5784);
      }

      v258 = v21;
      *v254 = 0u;
      v255 = 0u;
      v256 = 1065353216;
      *__p = 0;
      v211 = v14;
      if (v19 != v18)
      {
        v23 = 0;
        do
        {
          LODWORD(v246[0]) = **(v18 + 8 * v23);
          v224 = v246;
          v24 = std::__hash_table<std::__hash_value_type<int,std::vector<unsigned long>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<unsigned long>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<unsigned long>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<unsigned long>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v254, v246);
          std::vector<long long>::push_back[abi:ne200100](v24 + 3, __p);
          v23 = *__p + 1;
          *__p = v23;
          v18 = *(a1 + 5784);
        }

        while (v23 < (*(a1 + 5792) - v18) >> 3);
        v25 = v255;
        if (v255)
        {
LABEL_33:
          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "input_batch_idx: ", 17);
            MEMORY[0x1B8C84C00](v26, *(v25 + 16));
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
          }

          kaldi::CuMatrix<float>::Resize((a1 + 4976), (*(v25 + 32) - *(v25 + 24)) >> 3, 1, 0, 0);
          v27 = *(v25 + 24);
          v28 = *(v25 + 32);
          if (v27 != v28)
          {
            v29 = 0;
            do
            {
              if (kaldi::g_kaldi_verbose_level >= 5)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
                v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "hyp_idx: ", 9);
                MEMORY[0x1B8C84C30](v30, *v27);
                kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
              }

              v31 = *(*(a1 + 5784) + 8 * *v27);
              if (v14 >= 1 && *(v31 + 40) == *(a1 + 5180))
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Final word in hyp list", 22);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
              }

              v32 = *(v31 + 56);
              v33 = *(v31 + 64);
              v34 = v33 - v32;
              if (v33 != v32)
              {
                v35 = 0;
                v36 = v34 >> 2;
                if (v36 <= 1)
                {
                  v36 = 1;
                }

                v37 = *(a1 + 4984) + 4 * *(a1 + 5000) * v29;
                do
                {
                  *(v37 + 4 * v35) = *(v32 + 4 * v35);
                  ++v35;
                }

                while (v36 != v35);
              }

              kaldi::quasar::TorchEncoderDecoder::SetHistoryState(*(a1 + 136), (v31 + 8), v29, (*(v25 + 32) - *(v25 + 24)) >> 3);
              v29 = (v29 + 1);
              ++v27;
            }

            while (v27 != v28);
          }

          kaldi::quasar::TorchEncoderDecoder::Feedforward(*(a1 + 136), (a1 + 4976), (a1 + 5024), 0);
          v216 = *(a1 + 5040);
          kaldi::Matrix<float>::Resize(a1 + 5072, (*(v25 + 32) - *(v25 + 24)) >> 3, v216, 0, 0);
          kaldi::CuMatrixBase<float>::CopyToMat<float>(a1 + 5024, (a1 + 5072), 111);
          v38 = v25;
          v39 = *(v25 + 24);
          v209 = v38;
          v212 = v38[4];
          if (v39 == v212)
          {
            goto LABEL_153;
          }

          v40 = 0;
          while (1)
          {
            v41 = *(*(a1 + 5784) + 8 * *v39);
            kaldi::quasar::TorchEncoderDecoder::GetHistoryState(*(a1 + 136), v41 + 1, v40);
            ++*(a1 + 5216);
            v233[0] = 0;
            v233[1] = 0;
            *&v234 = 0;
            kaldi::quasar::TorchEncoderDecoder::GetCurrentAlignment(*(a1 + 136), v233, v40);
            std::vector<kaldi::Vector<float>>::push_back[abi:ne200100](v41 + 26, v233);
            v251 = 0;
            v252 = 0;
            v253 = 0;
            LODWORD(v42) = kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(*(a1 + 136), v40);
            v248 = 0;
            v249 = 0;
            v250 = 0;
            kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(*(a1 + 136), &v248, v40);
            if (kaldi::quasar::TorchEncoderDecoder::Reverse(*(a1 + 136)))
            {
              LODWORD(v42) = kaldi::MatrixBase<float>::NumRows(*(a1 + 4952) + 40 * *v41) + ~v42;
            }

            if (*(a2 + 320) != 0.0)
            {
              v224 = (v41 + 10);
              v43 = std::__hash_table<std::__hash_value_type<int,std::vector<unsigned long>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<unsigned long>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<unsigned long>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<unsigned long>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v41 + 10, v41 + 10);
              v44 = v43 + 1;
              v45 = (v43[1].__end_ - v43[1].__begin_) >> 2;
              if (v42 + 1 > v45)
              {
                LODWORD(v45) = v42 + 1;
              }

              std::vector<int>::resize(v43 + 1, v45);
              if (v44->__begin_[v42] >= 1)
              {
                v224 = (v41 + 10);
                v46 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v41 + 20, v41 + 10);
                ++*(v46 + 5);
              }

              v224 = (v41 + 10);
              v47 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v41 + 15, v41 + 10);
              ++*(v47 + 5);
              ++v44->__begin_[v42];
              a2 = v215;
            }

            if (*(a1 + 5673) == 1)
            {
              memset(&__p[8], 0, 32);
              *__p = &unk_1F2D0EE38;
              LOBYTE(v264) = 0;
              v48 = *(a1 + 5136);
              v49 = *(a1 + 5128);
              std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a1 + 5128, __p);
              kaldi::SubMatrix<float>::SubMatrix(v246, a1 + 5072, v40, 1, 0, *(a1 + 5080));
              kaldi::Matrix<float>::Matrix(&v224, v246, 111);
              std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100]((a1 + 5152), &v224);
              v42 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v49) >> 4);
              kaldi::Matrix<float>::~Matrix(&v224);
              quasar::Bitmap::~Bitmap(v246);
              kaldi::quasar::TorchEncoderDecoder::CopyDecoderHiddenState(*(a1 + 136), (*(a1 + 5128) + 48 * v42));
              kaldi::CuMatrix<float>::~CuMatrix(__p);
            }

            if (*(a2 + 184) != 2)
            {
              break;
            }

            v50 = *(a2 + 208);
            v51 = v41[9];
            v228 = 0;
            (*(*v50 + 136))(v50, v51, &v224);
            v52 = -1;
            while (1)
            {
              if (!v224)
              {
                if (v228 >= v226)
                {
                  goto LABEL_123;
                }

LABEL_68:
                v53 = (*(v225 + 4 * v228) - 1);
LABEL_69:
                v52 = *(v225 + 4 * v228 + 3);
                goto LABEL_70;
              }

              if ((*(*v224 + 3))(v224))
              {
                break;
              }

              if (!v224)
              {
                goto LABEL_68;
              }

              v53 = (*(*(*v224 + 4))() - 1);
              if (!v224)
              {
                goto LABEL_69;
              }

              v52 = *((*(*v224 + 4))(v224) + 12);
              if (v224)
              {
                v54 = (*(*v224 + 4))(v224);
                goto LABEL_71;
              }

LABEL_70:
              v54 = (v225 + 16 * v228);
LABEL_71:
              v55 = v54[2];
              VocabWordIdx = kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(*(a1 + 136), v53);
              *__p = *(*(a1 + 5072) + 4 * *(a1 + 5088) * v40 + 4 * v53);
              memset(&__p[8], 0, 24);
              *&__p[32] = VocabWordIdx;
              *&__p[36] = v52;
              v264 = v55;
              std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::push_back[abi:ne200100](&v251, __p);
              if (*&__p[8])
              {
                *&__p[16] = *&__p[8];
                operator delete(*&__p[8]);
              }

              if (v224)
              {
                (*(*v224 + 5))(v224);
              }

              else
              {
                ++v228;
              }
            }

            if (v224)
            {
              (*(*v224 + 1))();
              goto LABEL_125;
            }

LABEL_123:
            if (v227)
            {
              --*v227;
            }

LABEL_125:
            *__p = (*(**(a2 + 208) + 32))(*(a2 + 208), v41[9]);
            LODWORD(v224) = 2139095040;
            if (*__p != INFINITY)
            {
              v81 = (*(**(a2 + 208) + 32))(*(a2 + 208), v41[9]);
              SoftmaxEosId = kaldi::quasar::TorchEncoderDecoder::GetSoftmaxEosId(*(a1 + 136));
              v83 = *(a1 + 5180);
              *__p = *(*(a1 + 5072) + 4 * *(a1 + 5088) * v40 + 4 * SoftmaxEosId);
              memset(&__p[8], 0, 24);
              *&__p[32] = v83;
              *&__p[36] = v52;
              v264 = v81;
              std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::push_back[abi:ne200100](&v251, __p);
              if (*&__p[8])
              {
                *&__p[16] = *&__p[8];
                operator delete(*&__p[8]);
              }
            }

            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(v251, v252, &v224, 0xAAAAAAAAAAAAAAABLL * ((v252 - v251) >> 4));
LABEL_129:
            v84 = v251;
            v85 = v252;
            if (*(a1 + 5239))
            {
              a2 = v215;
            }

            else
            {
              v86 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v252 - v251) >> 4));
              if (v252 == v251)
              {
                v87 = 0;
              }

              else
              {
                v87 = v86;
              }

              std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *,false>(v251, v252, &v224, v87, 1);
              a2 = v215;
              std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::erase(&v251, &v251[6 * *(v215 + 160)], v252);
              v84 = v251;
              v85 = v252;
            }

            if (v85 == v84 && kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Nothing left in heap", 20);
              kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
            }

            if (*(a2 + 184) == 5)
            {
              v88 = *(a1 + 5840);
              v89 = *(a1 + 5836);
              v90 = v251;
              v91 = v252;
              if (v89 < (*(a1 + 5848) - v88) >> 2 && v252 != v251 && *(v251 + 8) != *(v88 + 4 * v89))
              {
                *(a1 + 5848) = v88;
              }
            }

            else
            {
              v90 = v251;
              v91 = v252;
            }

            while (v90 != v91)
            {
              v92 = *(a1 + 5764);
              v93 = *(a1 + 5238);
              v94 = *v90;
              v95 = logf(*v90);
              if (!v93)
              {
                v95 = v94;
              }

              v96 = -(v92 * v95);
              v97 = *(a2 + 180) * *(v90 + 10);
              v98 = *(v90 + 8);
              *__p = v97 + (v96 + (*(v41 + 11) + *(v41 + 12)));
              *&__p[4] = v96;
              *&__p[8] = v97;
              *&__p[12] = v42;
              memset(&__p[16], 0, 24);
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[16], v248, v249, (v249 - v248) >> 2);
              v264 = v98;
              v265 = *(v90 + 9);
              v266 = *v39;
              std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>>::push_back[abi:ne200100](&v257, __p);
              if (*&__p[16])
              {
                *&__p[24] = *&__p[16];
                operator delete(*&__p[16]);
              }

              v90 += 6;
            }

            if (v248)
            {
              v249 = v248;
              operator delete(v248);
            }

            *__p = &v251;
            std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__destroy_vector::operator()[abi:ne200100](__p);
            kaldi::Vector<float>::Destroy(v233);
            v40 = (v40 + 1);
            if (++v39 == v212)
            {
LABEL_153:
              v25 = *v209;
              v14 = v211;
              if (!*v209)
              {
                goto LABEL_154;
              }

              goto LABEL_33;
            }
          }

          v57 = kaldi::MatrixBase<float>::NumRows(*(a1 + 4952) + 40 * *v41);
          if (!v216)
          {
            goto LABEL_129;
          }

          v58 = 0;
          LODWORD(v59) = (*(a1 + 5200) * (v57 - (*(a1 + 5204) + *(v215 + 236))));
          if (v59 <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = v59;
          }

          if (v211 >= v59)
          {
            v60 = a4;
          }

          else
          {
            v60 = 0;
          }

          while (2)
          {
            v61 = *(*(a1 + 5072) + 4 * v40 * *(a1 + 5088) + 4 * v58);
            v62 = kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(*(a1 + 136), v58);
            v63 = v62;
            if ((v62 != *(a1 + 5180)) | v60 & 1)
            {
              if (v62 == *(a1 + 5184) && (kaldi::quasar::TorchEncoderDecoder::HasBpeModel(*(a1 + 136)) & 1) != 0)
              {
                goto LABEL_119;
              }

              if (!v214)
              {
                v65 = -1;
                v64 = 0.0;
                goto LABEL_101;
              }

              if (v63 == *(a1 + 5180))
              {
                *__p = (*(**(v215 + 200) + 16))(*(v215 + 200), v41[9]);
                LODWORD(v224) = 2139095040;
                if (*__p != INFINITY)
                {
                  v64 = (*(**(v215 + 200) + 16))(*(v215 + 200), v41[9]);
                  v65 = -1;
LABEL_101:
                  if (*(v215 + 184) != 5)
                  {
                    goto LABEL_106;
                  }

                  v70 = *(a1 + 5840);
                  v71 = *(a1 + 5836);
                  if (v71 >= (*(a1 + 5848) - v70) >> 2)
                  {
                    goto LABEL_106;
                  }

                  v72 = *(v215 + 180);
                  v61 = (1.0 - v72) * v61;
                  if (*(v70 + 4 * v71) == v63)
                  {
                    v61 = v72 + v61;
                    goto LABEL_106;
                  }

                  if (v72 != v15)
                  {
LABEL_106:
                    if (*(a1 + 5239))
                    {
                      v73 = 0xAAAAAAAAAAAAAAABLL * ((v252 - v251) >> 4);
                      v74 = *(v215 + 160);
                      if (v73 == v74 && v61 > *v251)
                      {
                        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *>>(v251, v252, &v224, v73);
                        v75 = v252;
                        v76 = *(v252 - 5);
                        if (v76)
                        {
                          *(v252 - 4) = v76;
                          operator delete(v76);
                        }

                        v252 = v75 - 6;
                        v74 = *(v215 + 160);
                        v73 = 0xAAAAAAAAAAAAAAABLL * (((v75 - 6) - v251) >> 4);
                      }

                      if (v73 >= v74)
                      {
                        goto LABEL_119;
                      }

                      *__p = v61;
                      memset(&__p[8], 0, 24);
                      *&__p[32] = v63;
                      *&__p[36] = v65;
                      v264 = v64;
                      std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::push_back[abi:ne200100](&v251, __p);
                      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(v251, v252, &v224, 0xAAAAAAAAAAAAAAABLL * ((v252 - v251) >> 4));
                      v77 = *&__p[8];
                      if (!*&__p[8])
                      {
                        goto LABEL_119;
                      }

LABEL_118:
                      *&__p[16] = v77;
                      operator delete(v77);
                      goto LABEL_119;
                    }

                    *__p = v61;
                    memset(&__p[8], 0, 24);
                    *&__p[32] = v63;
                    *&__p[36] = v65;
                    v264 = v64;
                    v78 = v252;
                    if (v252 < v253)
                    {
                      *v252 = *__p;
                      v78[1] = 0;
                      v78[2] = 0;
                      v78[3] = 0;
                      *(v78 + 1) = *&__p[8];
                      v78[3] = *&__p[24];
                      memset(&__p[8], 0, 24);
                      v79 = v264;
                      v78[4] = *&__p[32];
                      *(v78 + 10) = v79;
                      v252 = v78 + 6;
                      goto LABEL_119;
                    }

                    v80 = std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>(&v251, __p);
                    v77 = *&__p[8];
                    v252 = v80;
                    if (*&__p[8])
                    {
                      goto LABEL_118;
                    }
                  }
                }
              }

              else if ((*(**(v215 + 200) + 32))(*(v215 + 200), v41[9], (v63 + 1), __p) & 1) != 0 || (v69 = *(a1 + 5184), (v69 & 0x80000000) == 0) && ((*(**(v215 + 200) + 32))(*(v215 + 200), v41[9], (v69 + 1), __p))
              {
                v65 = *&__p[12];
                v64 = *&__p[8];
                goto LABEL_101;
              }
            }

            else
            {
              if (!*v39)
              {
                v66 = *(a1 + 5764);
                v67 = *(a1 + 5238);
                v68 = logf(v61);
                if (!v67)
                {
                  v68 = v61;
                }

                *(a1 + 5760) = -(v66 * v68);
                *(a1 + 5720) = v41[8];
              }

              if (kaldi::g_kaldi_verbose_level >= 5)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skipping target eos symbol", 26);
                kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
              }
            }

LABEL_119:
            if (v216 == ++v58)
            {
              goto LABEL_129;
            }

            continue;
          }
        }
      }

LABEL_154:
      if (v14 == v207 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Beam decoder hit maximum sequence length", 40);
        kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
      }

      if (v258 == v257)
      {
        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Pruned all hyps, nothing left to expand", 39);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
        }
      }

      else
      {
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *,false>(v257, v258, &v224, 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v258 - v257) >> 3)), 1);
        LODWORD(v16) = *v257;
        v99 = *(a1 + 5768);
        if (v99 == 2)
        {
          v101 = *(a1 + 5776);
          v102 = *(a1 + 5772);
          v103 = powf(v101 + (v14 + 1), v102);
          v100 = v103 / powf(v101 + v15, v102);
        }

        else
        {
          v100 = (v14 + 2);
          if (v99 != 1)
          {
            v100 = v15;
          }
        }

        v204 = *&v16 / v100;
      }

      memset(v246, 0, sizeof(v246));
      v247 = 1065353216;
      v104 = *(a2 + 164) < 2147500000.0 || *(a2 + 168) < 2147500000.0;
      v213 = v14 + 1;
      if (*(a2 + 160) >= 1)
      {
        v105 = 0;
        v106 = (v14 + 1);
        v217 = !v104;
        do
        {
          if (0x6DB6DB6DB6DB6DB7 * ((v258 - v257) >> 3) <= v105)
          {
            break;
          }

          v107 = v217;
          if (!v105)
          {
            v107 = 1;
          }

          if ((v107 & 1) == 0)
          {
            v108 = *(v257 + 14 * v105);
            if ((*&v16 + *(a2 + 164)) < v108 || (*&v16 * (*(a2 + 168) + v15)) < v108)
            {
              break;
            }
          }

          v109 = v257 + 56 * v105;
          v110 = *(*(a1 + 5784) + 8 * *(v109 + 6));
          v112 = (v109 + 40);
          v111 = *(v109 + 10);
          if (v111 != *(a1 + 5180))
          {
            v114 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4960) - *(a1 + 4952)) >> 3);
            if (v114 > 1)
            {
              v116 = v110[8];
              v117 = __OFSUB__(v116, 1);
              v118 = (v116 - 1);
              if (((v118 & 0x80000000) != 0) != v117)
              {
                v119 = 0;
              }

              else
              {
                v119 = (v118 / v114) << 32;
              }

              v233[0] = (v119 + v111);
              v127 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v246, v233);
              v128 = *(a1 + 4960);
              v129 = *(a1 + 4952);
              if (v127)
              {
                v224 = v233;
                v130 = std::__hash_table<std::__hash_value_type<long long,std::pair<float,int>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::pair<float,int>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v246, v233);
              }

              else
              {
                if (v128 == v129)
                {
                  v133 = 0xCCCCCCCCCCCCCCCDLL * ((v128 - v129) >> 3);
                  v134 = -2;
                }

                else
                {
                  v131 = 0;
                  do
                  {
                    v132 = (*(**(a1 + 5712) + 200))(*(a1 + 5712));
                    ++v131;
                    v133 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4960) - *(a1 + 4952)) >> 3);
                  }

                  while (v131 < v133);
                  v134 = v132 - 1;
                }

                v157 = *v109;
                v224 = v233;
                v158 = std::__hash_table<std::__hash_value_type<long long,std::pair<float,int>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::pair<float,int>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v246, v233);
                v158[6] = v157;
                *(v158 + 7) = v134 / v133;
                v128 = *(a1 + 4960);
                v129 = *(a1 + 4952);
                v224 = v233;
                v130 = std::__hash_table<std::__hash_value_type<long long,std::pair<float,int>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::pair<float,int>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v246, v233);
              }

              v115 = *v110 - 858993459 * ((v128 - v129) >> 3) * *(v130 + 7) + 1;
              if (kaldi::g_kaldi_verbose_level >= 5)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
                v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "using lattice state:", 20);
                MEMORY[0x1B8C84C00](v159, v115);
                kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
              }
            }

            else
            {
              LODWORD(v115) = (*(**(a1 + 5712) + 200))(*(a1 + 5712));
            }

            v231 = 0;
            v232 = 0;
            v230 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v230, *(v109 + 2), *(v109 + 3), (*(v109 + 3) - *(v109 + 2)) >> 2);
            *v233 = 0u;
            v234 = 0u;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v233[1], v230, v231, (v231 - v230) >> 2);
            if (v230)
            {
              v231 = v230;
              operator delete(v230);
            }

            v233[0] = vrev64_s32(*(v109 + 4));
            if (*(v109 + 3) < (kaldi::MatrixBase<float>::NumRows(*(a1 + 4952) + 40 * *v110) + *(*(a1 + 136) + 3918)))
            {
              v160 = *v112 + 1;
              LODWORD(v224) = *(v109 + 3);
              HIDWORD(v224) = v160;
              v225 = v233[0];
              v227 = 0;
              v228 = 0;
              v226 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v226, v233[1], v234, (v234 - v233[1]) >> 2);
              v229 = v115;
              (*(**(a1 + 5712) + 208))(*(a1 + 5712), v110[8], &v224);
              std::vector<double>::resize((a1 + 5808), v115 + 1);
              v161 = *v112;
              v162 = (*(a1 + 5808) + 8 * v115);
              *v162 = v110[8];
              v162[1] = v161;
              if (*(v215 + 320) != 0.0 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v110 + 20, v112))
              {
                v251 = (v109 + 40);
                v163 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v110 + 20, v112) + 5);
                v251 = (v109 + 40);
                if ((v163 / *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v110 + 15, v112) + 5)) > *(v215 + 316) && kaldi::g_kaldi_verbose_level >= 1)
                {
                  kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 1);
                  v165 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Repeating token in beam: ", 25);
                  MEMORY[0x1B8C84C00](v165, *v112);
                  kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
                }
              }

              operator new();
            }

            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v196 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adding invalid arc ", 19);
            v197 = MEMORY[0x1B8C84C00](v196, *v112);
            v198 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, " ", 1);
            v199 = MEMORY[0x1B8C84C00](v198, *(a1 + 5184));
            v200 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v199, " ", 1);
            v201 = MEMORY[0x1B8C84C00](v200, *(v109 + 3));
            v202 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v201, " ", 1);
            v203 = kaldi::MatrixBase<float>::NumRows(*(a1 + 4952) + 40 * *v110);
            MEMORY[0x1B8C84C00](v202, v203);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          LODWORD(v113) = (*(a1 + 5200) * (kaldi::MatrixBase<float>::NumRows(*(a1 + 4952) + 40 * *v110) - (*(a1 + 5204) + *(a2 + 236))));
          v113 = v113 <= 1 ? 1 : v113;
          if (v211 >= v113)
          {
            v120 = v110[8];
            v225 = 0;
            v226 = 0;
            v227 = 0;
            if (*(a1 + 5704) == 1)
            {
              v244 = 0;
              v245 = 0;
              v243 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v243, *(v109 + 2), *(v109 + 3), (*(v109 + 3) - *(v109 + 2)) >> 2);
              memset(__p, 0, 32);
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[8], v243, v244, (v244 - v243) >> 2);
              v224 = *__p;
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v225, *&__p[8], *&__p[16], (*&__p[16] - *&__p[8]) >> 2);
              if (*&__p[8])
              {
                *&__p[16] = *&__p[8];
                operator delete(*&__p[8]);
              }

              if (v243)
              {
                v244 = v243;
                operator delete(v243);
              }

              v120 = (*(**(a1 + 5712) + 200))(*(a1 + 5712));
              v121 = *(v109 + 10) + 1;
              *__p = *(v109 + 3);
              *&__p[4] = v121;
              *&__p[8] = v224;
              memset(&__p[16], 0, 24);
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[16], v225, v226, (v226 - v225) >> 2);
              v264 = *&v120;
              (*(**(a1 + 5712) + 208))(*(a1 + 5712), v110[8], __p);
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v225, 0, 0, 0);
              if (*&__p[16])
              {
                *&__p[24] = *&__p[16];
                operator delete(*&__p[16]);
              }
            }

            v122 = *(v109 + 1);
            v123 = *(v109 + 2);
            v224 = __PAIR64__(v122, v123);
            v124 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4960) - *(a1 + 4952)) >> 3);
            if (v124 > 1)
            {
              v126 = (v120 - 1) / v124;
              v251 = (*v112 + (v126 << 32));
              if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v246, &v251))
              {
                if (kaldi::g_kaldi_verbose_level >= 5)
                {
                  kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "dropping worse identical hyp; score-diff: ", 42);
                  v233[0] = &v251;
                  std::__hash_table<std::__hash_value_type<long long,std::pair<float,int>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::pair<float,int>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v246, &v251);
                  std::ostream::operator<<();
                  kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
                }
              }

              else
              {
                v135 = *(a1 + 5712);
                v235 = v224;
                v237 = 0;
                v238 = 0;
                v236 = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v236, v225, v226, (v226 - v225) >> 2);
                (*(*v135 + 184))(v135, v120, &v235);
                if (v236)
                {
                  v237 = v236;
                  operator delete(v236);
                }

                v136 = *v109;
                v233[0] = &v251;
                v137 = std::__hash_table<std::__hash_value_type<long long,std::pair<float,int>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::pair<float,int>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::pair<float,int>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v246, &v251);
                *(v137 + 6) = v136;
                *(v137 + 7) = v126;
              }
            }

            else
            {
              v125 = *(a1 + 5712);
              v239[0] = v123;
              v239[1] = v122;
              v241 = 0;
              v242 = 0;
              v240 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v240, v225, v226, (v226 - v225) >> 2);
              (*(*v125 + 184))(v125, v120, v239);
              if (v240)
              {
                v241 = v240;
                operator delete(v240);
              }
            }

            v138 = *v109;
            if (*v109 <= *&v17)
            {
              *(a1 + 5832) = v120;
              *&v17 = v138;
            }

            v139 = *(a1 + 5768);
            if (v139 == 2)
            {
              v141 = *(a1 + 5776);
              v142 = *(a1 + 5772);
              v143 = v16;
              v144 = v17;
              v145 = v106;
              v146 = powf(v141 + v106, v142);
              v140 = v146 / powf(v141 + 1.0, v142);
              v106 = v145;
              v17 = v144;
              v16 = v143;
              v15 = 1.0;
              a2 = v215;
            }

            else
            {
              v140 = 1.0;
              a2 = v215;
              if (v139 == 1)
              {
                v140 = (v14 + 2);
              }
            }

            *__p = v138 / v140;
            std::vector<float>::push_back[abi:ne200100](&v267, __p);
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v267, v268, v233, v268 - v267);
            v147 = v267;
            v148 = v268;
            v149 = v268 - v267;
            if (v149 > *(a2 + 192))
            {
              if (v149 >= 2)
              {
                v150 = 0;
                v151 = *v267;
                v152 = v267;
                do
                {
                  v153 = v152;
                  v152 += v150 + 1;
                  v154 = 2 * v150;
                  v150 = (2 * v150) | 1;
                  v155 = v154 + 2;
                  if (v155 < v149 && *v152 < v152[1])
                  {
                    ++v152;
                    v150 = v155;
                  }

                  *v153 = *v152;
                }

                while (v150 <= ((v149 - 2) >> 1));
                v156 = v148 - 1;
                if (v152 == v148 - 1)
                {
                  *v152 = v151;
                }

                else
                {
                  *v152 = *v156;
                  *v156 = v151;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v147, (v152 + 1), v233, v152 + 1 - v147);
                  v148 = v268;
                  a2 = v215;
                }
              }

              v268 = v148 - 1;
            }

            if (v225)
            {
              v226 = v225;
              operator delete(v225);
            }

            LODWORD(v208) = v208 + 1;
            BYTE4(v208) |= v105 == 0;
          }

          else
          {
            *(a1 + 5728) = vrev64_s32(vadd_f32(*(v110 + 11), *(v109 + 4)));
            *(a1 + 5720) = v110[8];
            *(a1 + 5760) = *v109;
          }

          ++v105;
        }

        while (v105 < *(a2 + 160));
      }

      if (kaldi::g_kaldi_verbose_level > 4)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
        v166 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "At output position ", 19);
        v167 = MEMORY[0x1B8C84C00](v166, v211);
        v168 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v167, ", # surviving hypotheses: ", 26);
        MEMORY[0x1B8C84C30](v168, (v261 - __src) >> 3);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
      }

      v169 = *(a1 + 5784);
      v170 = *(a1 + 5792);
      while (v169 != v170)
      {
        if (*v169)
        {
          v171 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Hyp::~Hyp(*v169);
          MEMORY[0x1B8C85350](v171, 0x10B0C406F3D429DLL);
        }

        ++v169;
      }

      v172 = __src;
      if (v206 == &__src)
      {
        v13 = v205;
      }

      else
      {
        std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(v206, __src, v261, (v261 - __src) >> 3);
        v13 = v205;
        v172 = __src;
      }

      v261 = v172;
      ++*(a1 + 5836);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v246);
      std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(v254);
      ++v14;
    }

    while (v213 < v207);
    v173 = v208 == 0;
  }

  if (a4)
  {
    if (kaldi::g_kaldi_verbose_level >= 0 && v173)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v175 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No hyps finished, setting ", 26);
      v176 = MEMORY[0x1B8C84C30](v175, (*(a1 + 5792) - *(a1 + 5784)) >> 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v176, " partial hyps to final", 22);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    v177 = *(a1 + 5784);
    v178 = *(a1 + 5792);
    if (v177 != v178)
    {
      while (1)
      {
        if (v173)
        {
          v179 = (*(**(a1 + 5712) + 200))(*(a1 + 5712));
          v180 = *v177;
          if (*(*v177 + 200) == 1)
          {
            v181 = *(a2 + 320);
            if (v181 == 0.0)
            {
              v182 = -3;
            }

            else
            {
              v182 = -4;
            }

            if (v181 != 0.0 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Repetitions detected, beam search aborted.", 42);
              kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
              v180 = *v177;
            }
          }

          else
          {
            v182 = -3;
          }

          v184 = *(a1 + 5712);
          v185 = *(v180 + 32);
          *__p = v182;
          memset(&__p[4], 0, 36);
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[16], 0, 0, 0);
          v264 = *&v179;
          (*(*v184 + 208))(v184, v185, __p);
          a2 = v215;
          if (*&__p[16])
          {
            *&__p[24] = *&__p[16];
            operator delete(*&__p[16]);
          }

          v186 = *(a1 + 5712);
          *v222 = 0u;
          v223 = 0u;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v222[1], 0, 0, 0);
          (*(*v186 + 184))(v186, v179, v222);
          if (v222[1])
          {
            *&v223 = v222[1];
            operator delete(v222[1]);
          }

          v183 = *v177;
          v187 = *(*v177 + 48);
          if ((*(*v177 + 44) + v187) < *&v17)
          {
            *&v17 = *(*v177 + 44) + v187;
          }

          ++*(a1 + 5212);
        }

        else
        {
          v183 = *v177;
          if (!*v177)
          {
            goto LABEL_285;
          }
        }

        v188 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Hyp::~Hyp(v183);
        MEMORY[0x1B8C85350](v188, 0x10B0C406F3D429DLL);
LABEL_285:
        if (++v177 == v178)
        {
          v177 = *(a1 + 5784);
          break;
        }
      }
    }

    *(a1 + 5792) = v177;
    *(a1 + 5836) = 0;
    if (v173 && *(a1 + 5720) != -1)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v189 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Setting longest vetoted translation as best ", 44);
        MEMORY[0x1B8C84C00](v189, *(a1 + 5720));
        kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
      }

      v190 = (*(**(a1 + 5712) + 200))(*(a1 + 5712));
      v191 = *(a1 + 5712);
      v192 = *(a1 + 5720);
      memset(&__p[4], 0, 36);
      *__p = -2;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[16], 0, 0, 0);
      v264 = *&v190;
      (*(*v191 + 208))(v191, v192, __p);
      if (*&__p[16])
      {
        *&__p[24] = *&__p[16];
        operator delete(*&__p[16]);
      }

      v193 = *(a1 + 5712);
      v218 = *(a1 + 5728);
      v220 = 0;
      v221 = 0;
      v219 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v219, *(a1 + 5736), *(a1 + 5744), (*(a1 + 5744) - *(a1 + 5736)) >> 2);
      (*(*v193 + 184))(v193, v190, &v218);
      if (v219)
      {
        v220 = v219;
        operator delete(v219);
      }

      LODWORD(v17) = *(a1 + 5760);
      ++*(a1 + 5208);
    }

    kaldi::quasar::TorchEncoderDecoder::Finish(*(a1 + 136), v11);
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
      v194 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# of cached states ", 19);
      MEMORY[0x1B8C84C30](v194, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 5136) - *(a1 + 5128)) >> 4));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if (*(a2 + 184) == 5)
    {
      *(a1 + 5848) = *(a1 + 5840);
      if (*(a2 + 180) > 0.0 && (*(a2 + 306) & 1) == 0)
      {
        fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
      }
    }
  }

  if (v267)
  {
    v268 = v267;
    operator delete(v267);
  }

  *__p = &v257;
  std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (__src)
  {
    v261 = __src;
    operator delete(__src);
  }

  return *&v17;
}

void sub_1B58BB104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v70;
    operator delete(v70);
  }

  if (__p)
  {
    a68 = __p;
    operator delete(__p);
  }

  STACK[0x260] = &a70;
  std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  kaldi::Vector<float>::Destroy(&a45);
  JUMPOUT(0x1B58BB1D8);
}

void sub_1B58BB214()
{
  if (STACK[0x270])
  {
    STACK[0x278] = STACK[0x270];
    JUMPOUT(0x1B58BB224);
  }

  JUMPOUT(0x1B58BB1B0);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::PruneCurrentHyps(uint64_t a1, int a2)
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
        v9 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Hyp::~Hyp(v8);
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

uint64_t kaldi::quasar::InputHammer::PassSpecifiedTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 40), a4))
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    memset(v45, 0, sizeof(v45));
    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    kaldi::SplitStringOnString(a2, &__p, &v46);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p);
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

    p_p = a4;
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a4);
    v13 = v46;
    v14 = v47;
    if (v46 != v47)
    {
      v15 = v12;
      while (1)
      {
        v16 = *(v13 + 23);
        if ((v16 & 0x8000000000000000) != 0)
        {
          v17 = *v13;
          v16 = v13[1];
        }

        else
        {
          v17 = v13;
        }

        v18 = v17 - 1;
        do
        {
          if (!v16)
          {
            goto LABEL_30;
          }

          v19 = v18[v16--];
        }

        while (v19 != 92);
        if (v16 == -1)
        {
LABEL_30:
          std::vector<std::string>::push_back[abi:ne200100](v45, v13);
          goto LABEL_34;
        }

        __p = 0;
        v43 = 0;
        v44 = 0;
        kaldi::SplitStringToVector(v13, "\", 0, &__p);
        if (v43 - __p != 48)
        {
          goto LABEL_33;
        }

        v20 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v15 + 5, __p + 3);
        v21 = v13;
        if (v20)
        {
          goto LABEL_32;
        }

        v21 = __p;
        if ((*(__p + 23) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(__p + 23))
        {
          goto LABEL_32;
        }

LABEL_33:
        p_p = &__p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
LABEL_34:
        v13 += 3;
        if (v13 == v14)
        {
          goto LABEL_35;
        }
      }

      if (!*(__p + 1))
      {
        goto LABEL_33;
      }

LABEL_32:
      std::vector<std::string>::push_back[abi:ne200100](v45, v21);
      goto LABEL_33;
    }

LABEL_35:
    kaldi::JoinVectorToString<std::string>(v45, " ", a3);
    v22 = *(a3 + 23);
    v23 = *(a3 + 23);
    if (*(a1 + 104) == 1)
    {
      if (v22 < 0)
      {
        v24 = *a3;
        v22 = *(a3 + 8);
        if (!v22)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v24 = a3;
        if (!*(a3 + 23))
        {
          goto LABEL_44;
        }
      }

      do
      {
        if (*v24 == 95)
        {
          *v24 = 32;
        }

        ++v24;
        --v22;
      }

      while (v22);
      v23 = *(a3 + 23);
    }

LABEL_44:
    v25 = v23;
    if ((v23 & 0x80u) == 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = *(a3 + 8);
    }

    v27 = *(a2 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(a2 + 8);
    }

    if (v26 == v27 && (v25 >= 0 ? (v29 = a3) : (v29 = *a3), v28 >= 0 ? (v30 = a2) : (v30 = *a2), !memcmp(v29, v30, v26)))
    {
      if (kaldi::g_kaldi_verbose_level < 1)
      {
        goto LABEL_71;
      }

      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input hammer did not change anything ", 37);
      v41 = *(a2 + 23);
      if (v41 >= 0)
      {
        v38 = a2;
      }

      else
      {
        v38 = *a2;
      }

      if (v41 >= 0)
      {
        v39 = *(a2 + 23);
      }

      else
      {
        v39 = *(a2 + 8);
      }
    }

    else
    {
      if (kaldi::g_kaldi_verbose_level < 1)
      {
LABEL_71:
        __p = v45;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v46;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        return 0;
      }

      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input hammer removed tags ", 26);
      v32 = *(a2 + 23);
      if (v32 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= 0)
      {
        v34 = *(a2 + 23);
      }

      else
      {
        v34 = *(a2 + 8);
      }

      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " -> ", 4);
      v37 = *(a3 + 23);
      if (v37 >= 0)
      {
        v38 = a3;
      }

      else
      {
        v38 = *a3;
      }

      if (v37 >= 0)
      {
        v39 = *(a3 + 23);
      }

      else
      {
        v39 = *(a3 + 8);
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    goto LABEL_71;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Locale not in pass list ", 24);
    v9 = *(a4 + 23);
    if (v9 >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    if (v9 >= 0)
    {
      v11 = *(a4 + 23);
    }

    else
    {
      v11 = *(a4 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

  std::string::operator=(a3, a2);
  return 0;
}

void sub_1B58BB6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __p = (v15 - 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v15 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::InputHammer::RemoveSpecifiedTags(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  memset(v34, 0, sizeof(v34));
  std::string::basic_string[abi:ne200100]<0>(&__p, " ");
  kaldi::SplitStringOnString(a2, &__p, &v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
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

  v6 = v35;
  v7 = v36;
  if (v35 != v36)
  {
    while (1)
    {
      v8 = *(v6 + 23);
      if ((v8 & 0x8000000000000000) != 0)
      {
        v9 = *v6;
        v8 = v6[1];
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 1;
      do
      {
        if (!v8)
        {
          goto LABEL_19;
        }

        v11 = v10[v8--];
      }

      while (v11 != 92);
      if (v8 == -1)
      {
LABEL_19:
        std::vector<std::string>::push_back[abi:ne200100](v34, v6);
        goto LABEL_23;
      }

      __p = 0;
      v32 = 0;
      v33 = 0;
      kaldi::SplitStringToVector(v6, "\", 0, &__p);
      if (v32 - __p != 48)
      {
        goto LABEL_22;
      }

      v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, __p + 3);
      v13 = v6;
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = __p;
      if ((*(__p + 23) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(__p + 23))
      {
        goto LABEL_21;
      }

LABEL_22:
      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
LABEL_23:
      v6 += 3;
      if (v6 == v7)
      {
        goto LABEL_24;
      }
    }

    if (!*(__p + 1))
    {
      goto LABEL_22;
    }

LABEL_21:
    std::vector<std::string>::push_back[abi:ne200100](v34, v13);
    goto LABEL_22;
  }

LABEL_24:
  kaldi::JoinVectorToString<std::string>(v34, " ", a3);
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  v16 = *(a2 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v15 == v16)
  {
    v18 = v14 >= 0 ? a3 : *a3;
    v19 = v17 >= 0 ? a2 : *a2;
    if (!memcmp(v18, v19, v15))
    {
      if (kaldi::g_kaldi_verbose_level < 1)
      {
        goto LABEL_51;
      }

      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input hammer did not change anything ", 37);
      v30 = *(a2 + 23);
      if (v30 >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      if (v30 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      goto LABEL_50;
    }
  }

  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input hammer removed tags ", 26);
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

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " -> ", 4);
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

LABEL_50:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

LABEL_51:
  __p = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 0;
}