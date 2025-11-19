void quasar::WordPronCache::getPronCache(quasar::WordPronCache *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      quasar::LmePackedWord::unpacked((v3 + 32), (this + 8), v9);
      std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__emplace_unique_key_args<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::Word>(a2, v9);
      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v13, v13[1]);
      if (v12 < 0)
      {
        operator delete(__p);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }
}

void quasar::AmFusionEncoderFe::getLmeContextEmbeddings(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, int a5)
{
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    do
    {
      v10 = *(v5 + 16 * v9);
      v27 = v10;
      if (*(&v10 + 1))
      {
        atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
        v30 = v10;
        atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        v30 = v10;
      }

      v11 = quasar::AmFusionEncoderFe::readAndCheckLmeData(a1, &v30, v9, a5);
      if (*(&v27 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
      }

      if ((v11 & 0xFFFFFFFD) == 1)
      {
        v12 = *v27;
        v13 = *(v27 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        quasar::WordPronCache::getPronCache((v12 + 88), &v28);
        v14 = v28;
        if (v28 == v29)
        {
LABEL_27:
          v24 = 0;
        }

        else
        {
          while (1)
          {
            quasar::Bitmap::~Bitmap((v14 + 88));
            v17 = v15 + 1;
            v16 = *v15;
            if (*v15 != v15 + 1)
            {
              break;
            }

LABEL_21:
            v22 = *(v14 + 1);
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = *(v14 + 2);
                v21 = *v23 == v14;
                v14 = v23;
              }

              while (!v21);
            }

            v14 = v23;
            if (v23 == v29)
            {
              goto LABEL_27;
            }
          }

          while (1)
          {
            if (quasar::PronChoice::pronToEmbeddingVector(*(v16 + 8), (v16 + 5), (*(a3 + 8) + 4 * *(a3 + 24) * *a4), *(a3 + 16)))
            {
              v18 = *a4 + 1;
              *a4 = v18;
              if (v18 >= *(a3 + 20))
              {
                break;
              }
            }

            v19 = v16[1];
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = v16[2];
                v21 = *v20 == v16;
                v16 = v20;
              }

              while (!v21);
            }

            v16 = v20;
            if (v20 == v17)
            {
              goto LABEL_21;
            }
          }

          v24 = 1;
        }

        std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(&v28, v29[0]);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      else
      {
        v24 = 4;
      }

      if (*(&v27 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
      }

      if ((v24 | 4) != 4)
      {
        break;
      }

      ++v9;
      v5 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 4);
  }
}

void sub_1B565ADA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::AmFusionEncoderFe::preflightCheck(kaldi::quasar::CEFusedAcousticEncoder **this)
{
  result = kaldi::quasar::CEFusedAcousticEncoder::PreflightCheck(this[6]);
  if (result)
  {
    v3 = this[8];
    if (v3)
    {

      return kaldi::quasar::CEFusedAcousticEncoder::PreflightCheck(v3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void quasar::AmFusionEncoderFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  if (!*a3)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    memset(v104, 0, sizeof(v104));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "'", 1);
    v79 = *(a1 + 8);
    v78 = a1 + 8;
    v77 = v79;
    v80 = *(v78 + 23);
    if (v80 >= 0)
    {
      v81 = v78;
    }

    else
    {
      v81 = v77;
    }

    if (v80 >= 0)
    {
      v82 = *(v78 + 23);
    }

    else
    {
      v82 = *(v78 + 8);
    }

    v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v81, v82);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v83, "' cannot occur at the first stage of feature-extract");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v104);
  }

  v6 = a3;
  v102 = 0u;
  *v101 = 0u;
  v100 = &unk_1F2D0EE38;
  v103 = 0;
  v8 = (a1 + 48);
  v7 = *(a1 + 48);
  v99 = *(a1 + 724);
  if (kaldi::quasar::CEFusedAcousticEncoder::HasContextualBiasing(v7) && (*(a4 + 120) & 1) == 0)
  {
    ContextEmbeddingDim = kaldi::quasar::CEFusedAcousticEncoder::GetContextEmbeddingDim(*v8);
    NumLmeContextEmbeddings = quasar::AmFusionEncoderFe::getNumLmeContextEmbeddings(a1, (a4 + 72), ContextEmbeddingDim, *(a4 + 112));
    v36 = *(a4 + 96);
    if (v36 && *(v36 + 16) == ContextEmbeddingDim)
    {
      NumLmeContextEmbeddings += *(v36 + 20);
    }

    v37 = *(a1 + 96);
    if (v37 && *(v37 + 20) >= 1)
    {
      if (*(v37 + 16) == ContextEmbeddingDim)
      {
        v38 = *(v37 + 20);
      }

      else
      {
        v38 = 1;
      }
    }

    else
    {
      v38 = 1;
    }

    v56 = (v38 + NumLmeContextEmbeddings);
    if (quasar::gLogLevel >= 4)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      memset(v104, 0, sizeof(v104));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Total number of context embeddings ", 35);
      MEMORY[0x1B8C84C00](v57, v56);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v104);
    }

    ContextEmbeddingMaskDim = kaldi::quasar::CEFusedAcousticEncoder::GetContextEmbeddingMaskDim(*v8);
    if (v56 >= ContextEmbeddingMaskDim)
    {
      v59 = ContextEmbeddingMaskDim;
    }

    else
    {
      v59 = v56;
    }

    if (ContextEmbeddingMaskDim <= 0)
    {
      v56 = v56;
    }

    else
    {
      v56 = v59;
    }

    kaldi::CuMatrix<float>::Resize(&v100, v56, ContextEmbeddingDim, 1, 0);
    v60 = *(a1 + 96);
    if (v60 && *(v60 + 20) >= 1 && *(v60 + 16) == ContextEmbeddingDim)
    {
      if (v56 < 1)
      {
        v64 = 0;
      }

      else
      {
        v61 = 1;
        do
        {
          memcpy(v101[0] + 4 * v102 * (v61 - 1), (*(v60 + 8) + 4 * *(v60 + 24) * (v61 - 1)), 4 * ContextEmbeddingDim);
          v60 = *(a1 + 96);
          v62 = v61 + 1;
          v63 = v61 < *(v60 + 20) && v61 < v56;
          ++v61;
        }

        while (v63);
        v64 = (v62 - 1);
      }
    }

    else
    {
      bzero(v101[0], 4 * ContextEmbeddingDim);
      v64 = 1;
    }

    LODWORD(v95) = v64;
    if (v64 < v56)
    {
      quasar::AmFusionEncoderFe::getLmeContextEmbeddings(a1, (a4 + 72), &v100, &v95, *(a4 + 112));
      v64 = v95;
    }

    if (v64 < v56)
    {
      v65 = *(a4 + 96);
      if (v65)
      {
        if (*(v65 + 16) == ContextEmbeddingDim)
        {
          if (*(v65 + 20) >= 1)
          {
            v66 = 4 * ContextEmbeddingDim;
            v67 = 1;
            do
            {
              memcpy(v101[0] + 4 * v102 * (v64 + v67 - 1), (*(v65 + 8) + 4 * *(v65 + 24) * (v67 - 1)), v66);
              v65 = *(a4 + 96);
              v68 = v67 + 1;
              v69 = v67 < *(v65 + 20) && v64 + v67 < v56;
              ++v67;
            }

            while (v69);
            v64 = (v64 + v68 - 1);
          }

          LODWORD(v95) = v64;
        }
      }
    }

    if (v64 != v56)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      memset(v104, 0, sizeof(v104));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
      v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Error in populating context embeddings. Expected ", 49);
      v89 = MEMORY[0x1B8C84C00](v88, v56);
      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, " embeddings. But only populated ", 32);
      v91 = MEMORY[0x1B8C84C00](v90, v64);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, " embeddings", 11);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v104);
    }

    if (SHIDWORD(v101[1]) < 1)
    {
      if (quasar::gLogLevel >= 4)
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        memset(v104, 0, sizeof(v104));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "No context embeddings", 21);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v104);
      }
    }

    else
    {
      v70 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 752, (a4 + 144));
      if (a1 + 760 != v70)
      {
        v71 = *(v70 + 56);
        v99 = v71;
      }

      if (quasar::gLogLevel >= 4)
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        memset(v104, 0, sizeof(v104));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Use number of context embeddings: ", 34);
        v73 = MEMORY[0x1B8C84C00](v72, v56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", gating threshold: ", 20);
        std::ostream::operator<<();
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v104);
      }

      v74 = *(a4 + 128);
      if (v74)
      {
        std::string::basic_string[abi:ne200100]<0>(v104, "numContextualBiasingEmbeddings");
        *__p = v56;
        quasar::SpeechRequestResultData::addAA(v74, v104, __p, 1);
        if ((v104[23] & 0x80000000) != 0)
        {
          operator delete(*v104);
        }
      }
    }
  }

  memset(__p, 0, sizeof(__p));
  if (kaldi::quasar::CEFusedAcousticEncoder::TaskBiasingDim(*v8) >= 1)
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v9 = *(a4 + 223);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a4 + 208);
    }

    v92 = v6;
    if (v9)
    {
      kaldi::SplitStringToVector((a4 + 200), ",", 1, &v95);
      v11 = v95;
      v10 = v96;
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3) != kaldi::quasar::CEFusedAcousticEncoder::TaskBiasingDim(*v8))
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        memset(v104, 0, sizeof(v104));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "The number of task biasing override symbols doesn't match the model: ", 69);
        v85 = MEMORY[0x1B8C84C30](v84, 0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3));
        v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " : ", 3);
        v87 = kaldi::quasar::CEFusedAcousticEncoder::TaskBiasingDim(*v8);
        MEMORY[0x1B8C84C00](v86, v87);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v104);
      }
    }

    else
    {
      v39 = *(a1 + 376);
      if (*(a1 + 384) != v39)
      {
        v40 = 0;
        v41 = (a4 + 144);
        v42 = (a4 + 176);
        do
        {
          v43 = *(v39 + 4 * v40);
          v44 = v41;
          if (v43 == 2 || (v44 = v42, v43 == 1))
          {
            std::vector<std::string>::push_back[abi:ne200100](&v95, v44);
          }

          else
          {
            if (v43)
            {
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              memset(v104, 0, sizeof(v104));
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
              v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Unsupported task biasing signal: ", 33);
              MEMORY[0x1B8C84C00](v75, *(*(a1 + 376) + 4 * v40));
              quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v104);
            }

            std::string::basic_string[abi:ne200100]<0>(v93, "");
            v45 = v96;
            if (v96 >= v97)
            {
              v47 = 0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3);
              v48 = v47 + 1;
              if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v97 - v95) >> 3) > v48)
              {
                v48 = 0x5555555555555556 * ((v97 - v95) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v97 - v95) >> 3) >= 0x555555555555555)
              {
                v49 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v49 = v48;
              }

              *&v104[32] = &v95;
              if (v49)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v95, v49);
              }

              v50 = 8 * ((v96 - v95) >> 3);
              v51 = *v93;
              *(v50 + 16) = v94;
              *v50 = v51;
              v93[1] = 0;
              v94 = 0;
              v93[0] = 0;
              v52 = 24 * v47 + 24;
              v53 = (24 * v47 - (v96 - v95));
              memcpy((v50 - (v96 - v95)), v95, v96 - v95);
              v54 = v95;
              v55 = v97;
              v95 = v53;
              v96 = v52;
              v97 = 0;
              *&v104[16] = v54;
              *&v104[24] = v55;
              *v104 = v54;
              *&v104[8] = v54;
              std::__split_buffer<std::string>::~__split_buffer(v104);
              v96 = v52;
              if (SHIBYTE(v94) < 0)
              {
                operator delete(v93[0]);
              }
            }

            else
            {
              v46 = *v93;
              *(v96 + 2) = v94;
              *v45 = v46;
              v96 = v45 + 24;
            }
          }

          ++v40;
          v39 = *(a1 + 376);
        }

        while (v40 < (*(a1 + 384) - v39) >> 2);
      }
    }

    v12 = v95;
    if (v96 != v95)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        LODWORD(v93[0]) = *(*(a1 + 328) + 4 * v15);
        v16 = &v12[v14];
        v17 = v12[v14 + 23];
        if (v17 < 0)
        {
          if (*(v16 + 1))
          {
LABEL_15:
            LODWORD(v93[0]) = (*(**(*(a1 + 280) + v13) + 96))(*(*(a1 + 280) + v13));
            if (LODWORD(v93[0]) == -1)
            {
              if (quasar::gLogLevel >= 2)
              {
                v117 = 0u;
                v118 = 0u;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                memset(v104, 0, sizeof(v104));
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
                v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Biasing symbol [", 16);
                v19 = v95[v14 + 23];
                if (v19 >= 0)
                {
                  v20 = &v95[v14];
                }

                else
                {
                  v20 = *&v95[v14];
                }

                if (v19 >= 0)
                {
                  v21 = v95[v14 + 23];
                }

                else
                {
                  v21 = *&v95[v14 + 8];
                }

                v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
                v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "] is not found in task biasing table ", 37);
                v24 = MEMORY[0x1B8C84C00](v23, v15);
                v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ".  Use ", 7);
                MEMORY[0x1B8C84C00](v25, *(*(a1 + 328) + 4 * v15));
                quasar::QuasarWarnMessage::~QuasarWarnMessage(v104);
              }

              LODWORD(v93[0]) = *(*(a1 + 328) + 4 * v15);
            }
          }
        }

        else if (v17)
        {
          goto LABEL_15;
        }

        std::vector<int>::push_back[abi:ne200100](__p, v93);
        if (quasar::gLogLevel >= 4)
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          memset(v104, 0, sizeof(v104));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v104);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Biasing symbol ", 15);
          v27 = MEMORY[0x1B8C84C00](v26, v15);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": [", 3);
          v29 = v95[v14 + 23];
          if (v29 >= 0)
          {
            v30 = &v95[v14];
          }

          else
          {
            v30 = *&v95[v14];
          }

          if (v29 >= 0)
          {
            v31 = v95[v14 + 23];
          }

          else
          {
            v31 = *&v95[v14 + 8];
          }

          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "]. Index: ", 10);
          MEMORY[0x1B8C84C00](v33, LODWORD(v93[0]));
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v104);
        }

        ++v15;
        v12 = v95;
        v14 += 24;
        v13 += 16;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v96 - v95) >> 3) > v15);
    }

    *v104 = &v95;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v104);
    v6 = v92;
  }

  v95 = *v6;
  std::allocate_shared[abi:ne200100]<kaldi::AmFusionEncoderInput,std::allocator<kaldi::AmFusionEncoderInput>,kaldi::OnlineFeatInputItf *,int &,BOOL &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::Vector<float>> &,int &,kaldi::CuMatrix<float> &,float &,std::vector<int> &,BOOL &,0>();
}

void sub_1B565B9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::locale a31)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a31);
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&a25);
  _Unwind_Resume(a1);
}

void sub_1B565BA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&a25);
  _Unwind_Resume(a1);
}

double quasar::OnlineAcousticEncoderFe::registerParams(quasar::OnlineAcousticEncoderFe *this, const void **a2)
{
  kaldi::nnet1::PdfPriorOptions::Register(this + 168, a2);
  std::string::basic_string[abi:ne200100]<0>(v7, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Map model into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 98, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Name of nnet model file");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 48, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File for feature transform in front of nnet's main network (in nnet format)");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 72, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "no-softmax");
  std::string::basic_string[abi:ne200100]<0>(__p, "No softmax on MLP output (or remove it if found), the pre-softmax activations will be used as log-likelihoods, log-priors will be subtracted");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 96, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "apply-log");
  std::string::basic_string[abi:ne200100]<0>(__p, "Transform MLP output to logscale");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 97, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "use-gpu-id");
  std::string::basic_string[abi:ne200100]<0>(__p, "Unused, kaldi is compiled w/o CUDA");
  quasar::SystemConfig::Register<int>(a2, v7, this + 100, __p, 0, 14, 2, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "class-frame-counts-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing vector with frame-counts of pdfs to compute log-priors. This is the same as class-frame-counts, but allows paths that are relative to the json config file (class-frame-counts requires absolute paths). If class-frame-counts is also specified, this param will override it.");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 168, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "strict-batch-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Batch size applied just for this extractor. Ignored if <= 0. Unlike feature-read.batch-size, which is just a hint, this batch size is so strict that even the last batch will be padded to exactly this size with copies of the last frame if the last batch is too small. ");
  quasar::SystemConfig::Register<int>(a2, v7, this + 104, __p, 0, 164, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "zero-pad");
  std::string::basic_string[abi:ne200100]<0>(__p, "Zero pad the features, instead of last frame padding, to reach the strict-batch-size requirementvalid only when strict-batch-size is also specified");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 136, __p, 0, 166, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "append-pad-info");
  std::string::basic_string[abi:ne200100]<0>(__p, "Append the pad info as an additional row in the input matrixThe first element of the appended row is the number of padded rows, which excludes this extra appended rowvalid only when strict-batch-size is also specifiedexpect an additional row appended to the output with the valid output length as the first elementthe padding is removed from the output based on the valid output length");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 137, __p, 0, 176, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "strict-batch-sizes");
  std::string::basic_string[abi:ne200100]<0>(__p, "Defines an array of 3 sizes - [ModelInterfaceSize, FirstBatchSize, SubsequentBatchSize]ModelInterfaceSize: defines the size of input expected by the modelFirstBatchSize: defines the batch size used for 1st inference, will be padded with zeros                 if less than than ModelInterfaceSizeSubsequentBatchSize: defines the batch size used for the rest of the inferenences, will be                     padded with zeros if less than than ModelInterfaceSize");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 144, __p, 0, 223, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *(this + 97) = 0;
  *(this + 96) = 0;
  *&result = 4294967294;
  *(this + 100) = 4294967294;
  *(this + 68) = 0;
  return result;
}

void sub_1B565BF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineAcousticEncoderFe::finishInit(quasar::OnlineAcousticEncoderFe *this, quasar::SystemConfig *a2)
{
  ModelLoader = quasar::SystemConfig::getModelLoader(a2);
  if ((*(this + 167) & 0x8000000000000000) != 0)
  {
    if (!*(this + 19))
    {
      goto LABEL_10;
    }
  }

  else if (!*(this + 167))
  {
    goto LABEL_10;
  }

  if (*(this + 26))
  {
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "cannot set both strict-batch-size & strict-batch-sizes");
  }

  else
  {
    kaldi::SplitStringToIntegers<int>(this + 144, ",", 0, (this + 112));
    v4 = *(this + 14);
    if (*(this + 15) - v4 == 12)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      if (v6 > v7)
      {
        v7 = v6;
      }

      if (v5 >= v7)
      {
LABEL_10:
        quasar::ModelLoader::readAcousticEncoder(ModelLoader, this + 6, __p);
        v8 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v9 = *(this + 75);
        *(this + 37) = v8;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
          }
        }

        v10 = *(this + 95);
        if (*(this + 98) == 1)
        {
          if ((v10 & 0x80) != 0)
          {
            if (!*(this + 10))
            {
              goto LABEL_23;
            }
          }

          else if (!*(this + 95))
          {
            goto LABEL_23;
          }

          fst::FstReadOptions::FstReadOptions(__p, this + 72, 0, 0, 0);
          LODWORD(v14) = 2;
          kaldi::nnet1::Nnet::ReadMapped(this + 216, __p);
        }

        if ((v10 & 0x80) != 0)
        {
          v10 = *(this + 10);
        }

        if (v10)
        {
          kaldi::nnet1::Nnet::Read((this + 216), this + 72);
        }

LABEL_23:
        std::allocate_shared[abi:ne200100]<kaldi::nnet1::PdfPrior,std::allocator<kaldi::nnet1::PdfPrior>,kaldi::nnet1::PdfPriorOptions &,0>();
      }

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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Model input size must be greater than batch sizes");
    }

    else
    {
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "strict-batch-sizes needs 3 sizes");
    }
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::OnlineAcousticEncoderFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v4 = *(a1 + 97);
    if (v4 == 1 && *(a1 + 96) == 1)
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
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v14, "Nonsense option combination : --apply-log=true and --no-softmax=true");
    }

    else
    {
      if (*(a1 + 191) < 0)
      {
        if (!*(a1 + 176))
        {
          goto LABEL_9;
        }
      }

      else if (!*(a1 + 191))
      {
LABEL_9:
        if (*(a1 + 112) == *(a1 + 120))
        {
          std::vector<int>::push_back[abi:ne200100]((a1 + 112), (a1 + 104));
          std::vector<int>::push_back[abi:ne200100]((a1 + 112), (a1 + 104));
          std::vector<int>::push_back[abi:ne200100]((a1 + 112), (a1 + 104));
        }

        std::allocate_shared[abi:ne200100]<kaldi::OnlineAcousticEncoderInput,std::allocator<kaldi::OnlineAcousticEncoderInput>,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::quasar::CEAcousticEncoderNet> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,std::vector<int> &,BOOL &,BOOL &,0>();
      }

      if ((*(a1 + 96) | v4))
      {
        goto LABEL_9;
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
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Option --class-frame-counts has to be used together with ", 57);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "--no-softmax or --apply-log");
    }
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
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "'", 1);
    v8 = *(a1 + 8);
    v7 = a1 + 8;
    v6 = v8;
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = *(v7 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "' cannot occur at the first stage of feature-extract");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v14);
}

void quasar::OnlineNnetForwardSkipFe::registerParams(quasar::OnlineNnetForwardSkipFe *this, const void **a2)
{
  kaldi::nnet1::PdfPriorOptions::Register(this + 176, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Map model into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 108, __p, 0, 16, 2, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Name of nnet model file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 48, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File for feature transform in front of nnet's main network (in nnet format)");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 72, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "skip-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames to be skipped in nnet computation (default 0).");
  quasar::SystemConfig::Register<int>(a2, v6, this + 96, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "no-softmax");
  std::string::basic_string[abi:ne200100]<0>(__p, "No softmax on MLP output (or remove it if found), the pre-softmax activations will be used as log-likelihoods, log-priors will be subtracted");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 100, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "apply-log");
  std::string::basic_string[abi:ne200100]<0>(__p, "Transform MLP output to logscale");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 101, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "use-gpu-id");
  std::string::basic_string[abi:ne200100]<0>(__p, "Unused, kaldi is compiled w/o CUDA");
  quasar::SystemConfig::Register<int>(a2, v6, this + 104, __p, 0, 14, 2, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "class-frame-counts-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing vector with frame-counts of pdfs to compute log-priors. This is the same as class-frame-counts, but allows paths that are relative to the json config file (class-frame-counts requires absolute paths). If class-frame-counts is also specified, this param will override it.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 176, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "silence-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Name of nnet model file for computing silence posteriors");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 112, __p, 0, 75, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "skip-across-batch");
  std::string::basic_string[abi:ne200100]<0>(__p, "Make skip-frames deterministic by skipping across batches instead of within batches (default: false).");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 136, __p, 0, 77, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "strict-batch-size");
  quasar::SystemConfig::Register<int>(a2, v6, this + 140, __p, 0, 164, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "zero-pad");
  std::string::basic_string[abi:ne200100]<0>(__p, "Zero pad the features, instead of last frame padding, to reach the strict-batch-size requirementvalid only when strict-batch-size is also specified");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 144, __p, 0, 166, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "append-pad-info");
  std::string::basic_string[abi:ne200100]<0>(__p, "Append the pad info as an additional row in the input matrixThe first element of the appended row is the number of padded rows, which excludes this extra appended rowvalid only when strict-batch-size is also specified");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 145, __p, 0, 176, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "default-speaker-code");
  std::string::basic_string[abi:ne200100]<0>(__p, "If the nnet requires speaker code as input and speaker code is not set by request data, the default one will be used as a backup");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 152, __p, 0, 216, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  *(this + 108) = 0;
  *(this + 50) = 0;
  *(this + 26) = -2;
  *(this + 136) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 24) = 0;
}

void sub_1B565CABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineNnetForwardSkipFe::finishInit(quasar::OnlineNnetForwardSkipFe *this, quasar::SystemConfig *a2)
{
  ModelLoader = quasar::SystemConfig::getModelLoader(a2);
  quasar::ModelLoader::requestEmbeddedMlock(ModelLoader, this + 6, __p);
  v5 = __p[0];
  v4 = __p[1];
  if (quasar::ModelLoader::isParallelLoadingEnabled(ModelLoader, this + 6))
  {
    DispatchGroup = quasar::ModelLoader::getDispatchGroup(ModelLoader);
    DispatchQueue = quasar::ModelLoader::getDispatchQueue(ModelLoader);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN6quasar23OnlineNnetForwardSkipFe10finishInitERNS_12SystemConfigE_block_invoke;
    block[3] = &__block_descriptor_tmp_1;
    block[4] = this;
    block[5] = ModelLoader;
    block[6] = v5;
    v42 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    dispatch_group_async(DispatchGroup, DispatchQueue, block);
    v8 = v42;
    if (v42)
    {
LABEL_5:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = *(this + 108);
    v10 = *(this + 100);
    quasar::ModelLoader::isKeepANEModelLoadedEnabled(ModelLoader, this + 48);
    v39 = v5;
    v40 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    quasar::ModelLoader::readFeedForwardNetwork(ModelLoader, this + 48, v9, v10, 0, &v39, __p);
    v11 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v12 = *(this + 76);
    *(this + 600) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }
    }

    v8 = v40;
    if (v40)
    {
      goto LABEL_5;
    }
  }

  if (*(this + 108) == 1)
  {
    if ((*(this + 95) & 0x80) != 0)
    {
      if (!*(this + 10))
      {
        goto LABEL_24;
      }
    }

    else if (!*(this + 95))
    {
      goto LABEL_24;
    }

    fst::FstReadOptions::FstReadOptions(__p, this + 72, 0, 0, 0);
    LODWORD(v22) = 2;
    kaldi::nnet1::Nnet::ReadMapped(this + 224, __p);
  }

  if ((*(this + 95) & 0x80) != 0)
  {
    if (!*(this + 10))
    {
      goto LABEL_24;
    }
  }

  else if (!*(this + 95))
  {
LABEL_24:
    if ((*(this + 135) & 0x8000000000000000) != 0)
    {
      if (!*(this + 15))
      {
        goto LABEL_44;
      }
    }

    else if (!*(this + 135))
    {
      goto LABEL_44;
    }

    v36 = 0;
    v37 = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v20) = 0;
    quasar::ModelLoader::readNeuralNetwork(ModelLoader, this + 14, 0, 0, 1, &v36, __p, &v38);
    v13 = v38;
    v38 = 0uLL;
    v14 = *(this + 78);
    *(this + 616) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v38 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
      }
    }

    if (BYTE8(v20) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (quasar::gLogLevel >= 5)
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Read model file for computing silence posteriors=", 49);
      v16 = *(this + 135);
      if (v16 >= 0)
      {
        v17 = this + 112;
      }

      else
      {
        v17 = *(this + 14);
      }

      if (v16 >= 0)
      {
        v18 = *(this + 135);
      }

      else
      {
        v18 = *(this + 15);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

LABEL_44:
    std::allocate_shared[abi:ne200100]<kaldi::nnet1::PdfPrior,std::allocator<kaldi::nnet1::PdfPrior>,kaldi::nnet1::PdfPriorOptions &,0>();
  }

  kaldi::nnet1::Nnet::Read((this + 224), this + 72);
  goto LABEL_24;
}

void sub_1B565CEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6quasar23OnlineNnetForwardSkipFe10finishInitERNS_12SystemConfigE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 108);
  v5 = *(v3 + 100);
  quasar::ModelLoader::isKeepANEModelLoadedEnabled(v2, v3 + 48);
  v6 = a1[7];
  v9 = a1[6];
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ModelLoader::readFeedForwardNetwork(v2, (v3 + 48), v4, v5, 0, &v9, &v11);
  v7 = v11;
  v11 = 0uLL;
  v8 = *(v3 + 608);
  *(v3 + 600) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1B565CFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c70_ZTSNSt3__110shared_ptrIN6quasar11ModelLoader20EmbeddedMlockContextEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c70_ZTSNSt3__110shared_ptrIN6quasar11ModelLoader20EmbeddedMlockContextEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void quasar::OnlineNnetForwardSkipFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3)
  {
    v6 = (a1 + 101);
    v7 = *(a1 + 101);
    if (v7 != 1 || *(a1 + 100) != 1)
    {
      v8 = *(a1 + 600);
      if (v8)
      {
        if (v9)
        {
          v10 = *(a1 + 608);
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
            if ((*v6 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else if ((v7 & 1) == 0)
          {
            goto LABEL_18;
          }

          Component = kaldi::nnet1::Nnet::GetComponent((v9 + 1), ((v9[2] - v9[1]) >> 3) - 1);
          if ((*(*Component + 24))(Component) != 513)
          {
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
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
            v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Used --apply-log=true, but nnet ", 32);
            v15 = *(a1 + 48);
            v14 = a1 + 48;
            v13 = v15;
            v16 = *(v14 + 23);
            if (v16 >= 0)
            {
              v17 = v14;
            }

            else
            {
              v17 = v13;
            }

            if (v16 >= 0)
            {
              v18 = *(v14 + 23);
            }

            else
            {
              v18 = *(v14 + 8);
            }

            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v17, v18);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " does not have <softmax> as last component!", 43);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
          }
        }
      }

LABEL_18:
      if (*(a1 + 199) < 0)
      {
        if (!*(a1 + 184))
        {
          goto LABEL_24;
        }
      }

      else if (!*(a1 + 199))
      {
        goto LABEL_24;
      }

      if ((*(a1 + 100) & 1) == 0 && (*v6 & 1) == 0)
      {
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
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Option --class-frame-counts has to be used together with ", 57);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "--no-softmax or --apply-log", 27);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
      }

LABEL_24:
      v33 = 0u;
      v32 = 0u;
      v31 = &unk_1F2D0EE38;
      v34 = 0;
      v20 = *(a4 + 24);
      if (v20)
      {
        kaldi::CuMatrix<float>::operator=(&v31, v20);
        if (quasar::gLogLevel >= 4)
        {
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
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Set inference speaker code to: ", 31);
          kaldi::operator<<<float>(v21, &v31);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v35);
        }

LABEL_32:
        std::allocate_shared[abi:ne200100]<kaldi::OnlineNnetForwardSkippedInput,std::allocator<kaldi::OnlineNnetForwardSkippedInput>,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::FeedForwardNetItf> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,int &,BOOL &,BOOL &,kaldi::InferenceNetItf *,BOOL &,int &,BOOL &,kaldi::CuMatrix<float> &,BOOL &,std::shared_ptr<std::queue<kaldi::CuMatrix<float>>> const&,unsigned int const&,0>();
      }

      if ((*(a1 + 175) & 0x8000000000000000) != 0)
      {
        if (!*(a1 + 160))
        {
          goto LABEL_32;
        }
      }

      else if (!*(a1 + 175))
      {
        goto LABEL_32;
      }

      std::allocate_shared[abi:ne200100]<std::istringstream,std::allocator<std::istringstream>,std::string &,0>();
    }

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
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v35, "Nonsense option combination : --apply-log=true and --no-softmax=true");
  }

  else
  {
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
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "'", 1);
    v25 = *(a1 + 8);
    v24 = a1 + 8;
    v23 = v25;
    v26 = *(v24 + 23);
    if (v26 >= 0)
    {
      v27 = v24;
    }

    else
    {
      v27 = v23;
    }

    if (v26 >= 0)
    {
      v28 = *(v24 + 23);
    }

    else
    {
      v28 = *(v24 + 8);
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v27, v28);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, "' cannot occur at the first stage of feature-extract");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
}

double quasar::OnlineSpliceFe::registerParams(quasar::OnlineSpliceFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "left-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames of left context");
  quasar::SystemConfig::Register<int>(a2, v7, this + 44, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "right-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames of right context");
  quasar::SystemConfig::Register<int>(a2, v7, this + 48, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *&result = 0x400000004;
  *(this + 44) = 0x400000004;
  return result;
}

void sub_1B565D6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineSpliceFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineSpliceInput,std::allocator<kaldi::OnlineSpliceInput>,kaldi::OnlineFeatInputItf *,int &,int &,0>();
  }

  memset(v12, 0, sizeof(v12));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "'", 1);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "' cannot occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
}

void quasar::OnlineStaticTransformFe::registerParams(quasar::OnlineStaticTransformFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File for any linear (or affine) feature transformation");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 48, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B565D88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineStaticTransformFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineTransformInput,std::allocator<kaldi::OnlineTransformInput>,kaldi::OnlineFeatInputItf *,kaldi::Matrix<float> &,0>();
  }

  memset(v12, 0, sizeof(v12));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "'", 1);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "' cannot occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
}

void quasar::OnlineCacheInputFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    operator new();
  }

  memset(v12, 0, sizeof(v12));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "'", 1);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "' cannot occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
}

uint64_t quasar::OnlineComputeAheadInputFe::registerParams(quasar::OnlineComputeAheadInputFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v8, "max-queued-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max number of frames to compute ahead. Use this to limit memory. Note this is not a strict limit: If we are at or above the limit, we will wait to fetch the next batch. If we are under the limit, we will fetch the next batch, which may cause us to exceed the limit. Values <= 0: no limit Value = 1 (default): compute ahead only 1 batch");
  quasar::SystemConfig::Register<int>(a2, v8, this + 44, __p, 0, 199, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  result = QuasarC_getSpeechRecognizerDisableOverBuffer();
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = 250;
  }

  *(this + 11) = v5;
  return result;
}

void sub_1B565DBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineComputeAheadInputFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
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
      v21 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Creating ComputeAheadFeatInput with maxQueuedFrames=", 52);
      MEMORY[0x1B8C84C00](v4, *(a1 + 44));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
    }

    std::allocate_shared[abi:ne200100]<quasar::ComputeAheadFeatInput,std::allocator<quasar::ComputeAheadFeatInput>,std::shared_ptr<kaldi::OnlineFeatInputItf> &,BOOL const&,int,int &,0>();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "'", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "' cannot occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v13);
}

void sub_1B565DD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  _Unwind_Resume(a1);
}

void quasar::OnlineCmnFe::~OnlineCmnFe(void **this)
{
  *this = &unk_1F2D229A0;
  kaldi::Matrix<float>::~Matrix((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D229A0;
  kaldi::Matrix<float>::~Matrix((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineCmvnFe::~OnlineCmvnFe(void **this)
{
  *this = &unk_1F2D229E8;
  kaldi::Matrix<float>::~Matrix((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D229E8;
  kaldi::Matrix<float>::~Matrix((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineDeltaFe::~OnlineDeltaFe(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineFbankFe::~OnlineFbankFe(quasar::OnlineFbankFe *this)
{
  *this = &unk_1F2D22A78;
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  kaldi::FbankOptions::~FbankOptions(this + 6);
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F2D22A78;
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  kaldi::FbankOptions::~FbankOptions(this + 6);
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineSimpleWaveformFe::~OnlineSimpleWaveformFe(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineFbankWithPitchFe::~OnlineFbankWithPitchFe(quasar::OnlineFbankWithPitchFe *this)
{
  *this = &unk_1F2D22B08;
  v2 = *(this + 35);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F2D22B08;
  v2 = *(this + 35);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineFbankWithAudioAnalyticsFe::~OnlineFbankWithAudioAnalyticsFe(quasar::OnlineFbankWithAudioAnalyticsFe *this)
{
  *this = &unk_1F2D22B50;
  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::FbankOptions::~FbankOptions(this + 6);
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F2D22B50;
  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::FbankOptions::~FbankOptions(this + 6);
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineVadGatedFbankWithAudioAnalyticsFe::~OnlineVadGatedFbankWithAudioAnalyticsFe(quasar::OnlineVadGatedFbankWithAudioAnalyticsFe *this)
{
  *this = &unk_1F2D22B50;
  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::FbankOptions::~FbankOptions(this + 6);
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F2D22B50;
  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::FbankOptions::~FbankOptions(this + 6);
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineLdaFe::~OnlineLdaFe(void **this)
{
  *this = &unk_1F2D22BE0;
  kaldi::Matrix<float>::~Matrix((this + 10));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22BE0;
  kaldi::Matrix<float>::~Matrix((this + 10));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineMfccFe::~OnlineMfccFe(quasar::OnlineMfccFe *this)
{
  *this = &unk_1F2D22C28;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F2D22C28;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineNnetForwardFe::~OnlineNnetForwardFe(quasar::OnlineNnetForwardFe *this)
{
  quasar::OnlineNnetForwardFe::~OnlineNnetForwardFe(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D22C70;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 256));
  v4 = *(this + 31);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::SpeechActivityDetectorFe::~SpeechActivityDetectorFe(void **this)
{
  *this = &unk_1F2D22CB8;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22CB8;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::VoiceActivityGatingFe::~VoiceActivityGatingFe(quasar::VoiceActivityGatingFe *this)
{
  quasar::VoiceActivityGatingFe::~VoiceActivityGatingFe(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D22D00;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v5 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::AmFusionEncoderFe::~AmFusionEncoderFe(quasar::AmFusionEncoderFe *this)
{
  quasar::AmFusionEncoderFe::~AmFusionEncoderFe(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D22D48;
  std::__tree<std::string>::destroy(this + 752, *(this + 95));
  if (*(this + 751) < 0)
  {
    operator delete(*(this + 91));
  }

  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
  }

  quasar::SpeechModelInfo::~SpeechModelInfo((this + 416));
  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  v8 = (this + 280);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
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

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::OnlineAcousticEncoderFe::~OnlineAcousticEncoderFe(quasar::OnlineAcousticEncoderFe *this)
{
  quasar::OnlineAcousticEncoderFe::~OnlineAcousticEncoderFe(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D22D90;
  v2 = *(this + 75);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 216));
  v3 = *(this + 26);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::OnlineNnetForwardSkipFe::~OnlineNnetForwardSkipFe(quasar::OnlineNnetForwardSkipFe *this)
{
  quasar::OnlineNnetForwardSkipFe::~OnlineNnetForwardSkipFe(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D22DD8;
  kaldi::CuMatrix<float>::~CuMatrix(this + 632);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 76);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 224));
  v4 = *(this + 27);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::OnlineSpliceFe::~OnlineSpliceFe(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineStaticTransformFe::~OnlineStaticTransformFe(void **this)
{
  *this = &unk_1F2D22E68;
  kaldi::Matrix<float>::~Matrix((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22E68;
  kaldi::Matrix<float>::~Matrix((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineCacheInputFe::~OnlineCacheInputFe(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineComputeAheadInputFe::~OnlineComputeAheadInputFe(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineSubsampleFe::~OnlineSubsampleFe(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

kaldi::FbankWithPitchOptions *kaldi::FbankWithPitchOptions::FbankWithPitchOptions(kaldi::FbankWithPitchOptions *this)
{
  *this = xmmword_1B5AE12B0;
  *(this + 4) = 1064849900;
  *(this + 20) = 1;
  std::string::basic_string[abi:ne200100]<0>(this + 24, "povey");
  *(this + 24) = 257;
  *(this + 52) = 0x17BF800000;
  *(this + 60) = xmmword_1B5AFC250;
  *(this + 38) = 0;
  *(this + 5) = xmmword_1B5AE0AB0;
  *(this + 6) = xmmword_1B5AE0AC0;
  *(this + 7) = xmmword_1B5AE0AD0;
  *(this + 16) = 0x500000001;
  *(this + 17) = 0;
  *(this + 144) = 0;
  *(this + 37) = 500;
  *(this + 76) = 256;
  *(this + 156) = xmmword_1B5B0F210;
  *(this + 172) = 0x3BA3D70A42C80000;
  *(this + 180) = xmmword_1B5B0F220;
  *(this + 49) = 65793;
  *(this + 200) = 0;
  *(this + 204) = 0;
  *(this + 52) = 0;
  *(this + 53) = 16842753;
  return this;
}

void kaldi::FbankWithAudioAnalyticsOptions::~FbankWithAudioAnalyticsOptions(void **this)
{
  kaldi::FbankOptions::~FbankOptions(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::PitchExtractionOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "sample-frequency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Waveform data sample frequency (must match the waveform file, if specified there)");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frame-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame length in milliseconds");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frame-shift");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame shift in milliseconds");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "preemphasis-coefficient");
  std::string::basic_string[abi:ne200100]<0>(__p, "Coefficient for use in signal preemphasis (deprecated)");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-f0");
  std::string::basic_string[abi:ne200100]<0>(__p, "min. F0 to search for (Hz)");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-f0");
  std::string::basic_string[abi:ne200100]<0>(__p, "max. F0 to search for (Hz)");
  (*(*a2 + 24))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "soft-min-f0");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minimum f0, applied in soft way, must not exceed min-f0");
  (*(*a2 + 24))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "penalty-factor");
  std::string::basic_string[abi:ne200100]<0>(__p, "cost factor for FO change.");
  (*(*a2 + 24))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lowpass-cutoff");
  std::string::basic_string[abi:ne200100]<0>(__p, "cutoff frequency for LowPass filter (Hz) ");
  (*(*a2 + 24))(a2, v6, a1 + 32, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-frequency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frequency that we down-sample the signal to.  Must be more than twice lowpass-cutoff");
  (*(*a2 + 24))(a2, v6, a1 + 36, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "Smallest relative change in pitch that our algorithm measures");
  (*(*a2 + 24))(a2, v6, a1 + 40, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nccf-ballast");
  std::string::basic_string[abi:ne200100]<0>(__p, "Increasing this factor reduces NCCF for quiet frames");
  (*(*a2 + 24))(a2, v6, a1 + 44, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nccf-ballast-online");
  std::string::basic_string[abi:ne200100]<0>(__p, "This is useful mainly for debug; it affects how the NCCF ballast is computed.");
  (**a2)(a2, v6, a1 + 72, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lowpass-filter-width");
  std::string::basic_string[abi:ne200100]<0>(__p, "Integer that determines filter width of lowpass filter, more gives sharper filter");
  (*(*a2 + 8))(a2, v6, a1 + 48, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "upsample-filter-width");
  std::string::basic_string[abi:ne200100]<0>(__p, "Integer that determines filter width when upsampling NCCF");
  (*(*a2 + 8))(a2, v6, a1 + 52, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frames-per-chunk");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only relevant for offline pitch extraction (e.g. compute-kaldi-pitch-feats), you can set it to a small nonzero value, such as 10, for better feature compatibility with online decoding (affects energy normalization in the algorithm)");
  (*(*a2 + 8))(a2, v6, a1 + 60, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "simulate-first-pass-online");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, compute-kaldi-pitch-feats will output features that correspond to what an online decoder would see in the first pass of decoding-- not the final version of the features, which is the default.  Relevant if --frames-per-chunk > 0");
  (**a2)(a2, v6, a1 + 64, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "recompute-frame");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only relevant for online pitch extraction, or for compatibility with online pitch extraction.  A non-critical parameter; the frame at which we recompute some of the forward pointers, after revising our estimate of the signal energy.  Relevant if--frames-per-chunk > 0");
  (*(*a2 + 8))(a2, v6, a1 + 68, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-frames-latency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of frames of latency that we allow pitch tracking to introduce into the feature processing (affects output only if --frames-per-chunk > 0 and --simulate-first-pass-online=true");
  (*(*a2 + 8))(a2, v6, a1 + 56, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "snip-edges");
  std::string::basic_string[abi:ne200100]<0>(__p, "If this is set to false, the incomplete frames near the ending edge won't be snipped, so that the number of frames is the file size divided by the frame-shift. This makes different types of features give the same number of frames.");
  (**a2)(a2, v6, a1 + 73, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B565F964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::ProcessPitchOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "pitch-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for the final normalized log-pitch value");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pov-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for final POV (probability of voicing) feature");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pov-offset");
  std::string::basic_string[abi:ne200100]<0>(__p, "This can be used to add an offset to the POV feature. Intended for use in online decoding as a substitute for  CMN.");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-pitch-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Term to scale the final delta log-pitch feature");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta2-pitch-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Term to scale the final 2nd-order log-pitch feature");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-pitch-noise-stddev");
  std::string::basic_string[abi:ne200100]<0>(__p, "Standard deviation for noise we add to the delta log-pitch (before scaling); should be about the same as delta-pitch option to pitch creation.  The purpose is to get rid of peaks in the delta-pitch caused by discretization of pitch values.");
  (*(*a2 + 24))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "normalization-left-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Left-context (in frames) for moving window normalization");
  (*(*a2 + 8))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "normalization-right-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Right-context (in frames) for moving window normalization");
  (*(*a2 + 8))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames on each side of central frame, to use for delta window.");
  (*(*a2 + 8))(a2, v6, a1 + 32, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delay");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames by which the pitch information is delayed.");
  (*(*a2 + 8))(a2, v6, a1 + 36, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-pov-feature");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, the warped NCCF is added to output features");
  (**a2)(a2, v6, a1 + 40, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-normalized-log-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, the log-pitch with POV-weighted mean subtraction over 1.5 second window is added to output features");
  (**a2)(a2, v6, a1 + 41, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-delta-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, time derivative of log-pitch is added to output features");
  (**a2)(a2, v6, a1 + 42, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-delta2-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, 2nd order time derivative of log-pitch is added to output features");
  (**a2)(a2, v6, a1 + 43, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-raw-log-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, log(pitch) is added to output features");
  (**a2)(a2, v6, a1 + 44, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5660128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__emplace_unique_key_args<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::Word>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__construct_node<quasar::LmeDataFactoryBase::Word>();
  }

  return result;
}

void std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(a1, *a2);
    std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(a1, *(a2 + 1));
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy((a2 + 88), *(a2 + 12));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *std::__shared_ptr_emplace<kaldi::OnlineSubsampleFe>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,std::allocator<kaldi::OnlineSubsampleFe>,0>(void *a1, kaldi::OnlineFeatInputItf **a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D231F8;
  kaldi::OnlineSubsampleFe::OnlineSubsampleFe((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineSubsampleFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D231F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineCmnFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineCmnFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23248;
  quasar::OnlineCmnFe::OnlineCmnFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineCmnFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineCmvnFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineCmvnFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23298;
  quasar::OnlineCmvnFe::OnlineCmvnFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineCmvnFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineDeltaFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineDeltaFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D232E8;
  quasar::FeatureExtractor::FeatureExtractor((a1 + 3), a2);
  a1[3] = &unk_1F2D22A30;
  *(a1 + 68) = 0x200000002;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineDeltaFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D232E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineFbankFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineFbankFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23338;
  quasar::OnlineFbankFe::OnlineFbankFe(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineFbankFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineFbankWithPitchFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineFbankWithPitchFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23388;
  quasar::OnlineFbankWithPitchFe::OnlineFbankWithPitchFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineFbankWithPitchFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineLdaFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineLdaFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D233D8;
  quasar::OnlineLdaFe::OnlineLdaFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineLdaFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D233D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineMfccFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineMfccFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23428;
  quasar::OnlineMfccFe::OnlineMfccFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineMfccFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineNnetForwardFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineNnetForwardFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23478;
  quasar::OnlineNnetForwardFe::OnlineNnetForwardFe(a1 + 3, a2);
}

void std::__shared_ptr_emplace<quasar::OnlineNnetForwardFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::AmFusionEncoderFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::AmFusionEncoderFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D234C8;
  quasar::AmFusionEncoderFe::AmFusionEncoderFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::AmFusionEncoderFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D234C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SpeechActivityDetectorFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::SpeechActivityDetectorFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23518;
  quasar::SpeechActivityDetectorFe::SpeechActivityDetectorFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SpeechActivityDetectorFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::VoiceActivityGatingFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineAcousticEncoderFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineAcousticEncoderFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D235B8;
  quasar::OnlineAcousticEncoderFe::OnlineAcousticEncoderFe(a1 + 3, a2);
}

void std::__shared_ptr_emplace<quasar::OnlineAcousticEncoderFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D235B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineNnetForwardSkipFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineNnetForwardSkipFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23608;
  quasar::OnlineNnetForwardSkipFe::OnlineNnetForwardSkipFe(a1 + 3, a2);
}

void std::__shared_ptr_emplace<quasar::OnlineNnetForwardSkipFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineSpliceFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineSpliceFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23658;
  quasar::FeatureExtractor::FeatureExtractor((a1 + 3), a2);
  a1[3] = &unk_1F2D22E20;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineSpliceFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineSubsampleFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineSubsampleFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D236A8;
  quasar::FeatureExtractor::FeatureExtractor((a1 + 3), a2);
  a1[3] = &unk_1F2D22F40;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineSubsampleFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D236A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineStaticTransformFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineStaticTransformFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D236F8;
  quasar::OnlineStaticTransformFe::OnlineStaticTransformFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineStaticTransformFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D236F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineComputeAheadInputFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineComputeAheadInputFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23748;
  quasar::FeatureExtractor::FeatureExtractor((a1 + 3), a2);
  a1[3] = &unk_1F2D22EF8;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineComputeAheadInputFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::OnlineFbankWithAudioAnalyticsFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2CFF980;
  quasar::OnlineFbankWithAudioAnalyticsFe::OnlineFbankWithAudioAnalyticsFe(a1 + 24, a2);
  *(a1 + 24) = &unk_1F2D22B98;
  *(a1 + 360) = xmmword_1B5B0F1F0;
  return a1;
}

void *std::__shared_ptr_emplace<quasar::OnlineAppendFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineAppendFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D237E8;
  quasar::OnlineAppendFe::OnlineAppendFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineAppendFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D237E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineSimpleWaveformFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineSimpleWaveformFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23838;
  quasar::FeatureExtractor::FeatureExtractor((a1 + 3), a2);
  a1[3] = &unk_1F2D22AC0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 68) = _D0;
  *(a1 + 76) = 0xA4579F000;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineSimpleWaveformFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineCmnInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,int &,kaldi::Matrix<float> *,int &,std::allocator<kaldi::OnlineCmnInput>,0>(void *a1, uint64_t *a2, int *a3, int *a4, uint64_t *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23888;
  kaldi::OnlineCmvnInput::OnlineCmvnInput((a1 + 3), *a2, *a3, *a4, 0, *a5, *a6);
  a1[3] = &unk_1F2D21A98;
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineCmnInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineCmvnInput::OnlineCmvnInput(uint64_t a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, int a7)
{
  *a1 = &unk_1F2D21A08;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  v12 = (*(*a2 + 8))(a2);
  kaldi::Matrix<float>::Matrix(a1 + 32, (a3 + 1), v12, 0, 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v13 = (*(*a2 + 8))(a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  kaldi::Vector<double>::Resize((a1 + 88), v13, 0);
  v14 = (*(*a2 + 8))(a2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  kaldi::Vector<double>::Resize((a1 + 112), v14, 0);
  *(a1 + 136) = a6;
  *(a1 + 144) = 0x3FF0000000000000;
  *(a1 + 152) = a7;
  if (a6 && kaldi::MatrixBase<float>::NumRows(a6))
  {
    kaldi::MatrixBase<float>::NumCols(*(a1 + 136));
    v15 = (*(**(a1 + 8) + 8))(*(a1 + 8));
    v16 = *(a1 + 136);
    v17 = *(v16 + 12);
    *(a1 + 144) = *(*v16 + 4 * v15);
    kaldi::SubMatrix<float>::SubMatrix(&v19, v16, 0, v17, 0, v15);
    kaldi::Matrix<double>::Matrix<float>(v22, &v19, 111);
    quasar::Bitmap::~Bitmap(&v19);
    v20 = 0;
    v21 = 0;
    v19 = v22[0];
    LODWORD(v20) = kaldi::MatrixBase<float>::NumCols(v22);
    kaldi::VectorBase<double>::AddVec<double>();
    v20 = 0;
    v21 = 0;
    v19 = v22[0] + 8 * v23;
    LODWORD(v20) = kaldi::MatrixBase<float>::NumCols(v22);
    kaldi::VectorBase<double>::AddVec<double>();
    kaldi::Matrix<float>::~Matrix(v22);
  }

  return a1;
}

void sub_1B5662A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Vector<float>::Destroy(v6 + 112);
  kaldi::Vector<float>::Destroy(v6 + 88);
  kaldi::Matrix<float>::~Matrix(v6 + 32);
  quasar::Bitmap::~Bitmap(v6);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<kaldi::OnlineCmvnInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,int &,BOOL &,kaldi::Matrix<float> *,int &,std::allocator<kaldi::OnlineCmvnInput>,0>(void *a1, uint64_t *a2, int *a3, int *a4, char *a5, uint64_t *a6, int *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D238D8;
  kaldi::OnlineCmvnInput::OnlineCmvnInput((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineCmvnInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D238D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineDeltaInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::DeltaFeaturesOptions &,kaldi::OnlineFeatInputItf *,std::allocator<kaldi::OnlineDeltaInput>,0>(void *a1, void *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23928;
  kaldi::OnlineDeltaInput::OnlineDeltaInput((a1 + 3), a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineDeltaInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::SimpleWaveformReader>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::ResamplerOptions &,BOOL &,std::allocator<kaldi::SimpleWaveformReader>,0>(void *a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23978;
  kaldi::SimpleWaveformReader::SimpleWaveformReader(a1 + 3, *a2, a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::SimpleWaveformReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::Fbank>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D239C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::Fbank>>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::Fbank*,float,float,float &,int &,kaldi::ResamplerOptions &,std::allocator<kaldi::OnlineFeInput<kaldi::Fbank>>,0>(void *a1, uint64_t *a2, uint64_t *a3, float *a4, float *a5, float *a6, int *a7, float *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23A18;
  kaldi::OnlineFeInput<kaldi::Fbank>::OnlineFeInput((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, a8);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::Fbank>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeInput<kaldi::Fbank>::OnlineFeInput(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float *a8)
{
  *result = &unk_1F2D23A68;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 28) = a5;
  *(result + 32) = a6;
  *(result + 36) = a7;
  *(result + 40) = 0u;
  *(result + 88) = 0;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  v8 = a8[1];
  if (v8 > 0.0 && *a8 != v8)
  {
    operator new();
  }

  return result;
}

void sub_1B566325C(_Unwind_Exception *a1)
{
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](v3, 0);
  kaldi::Vector<float>::Destroy(v1 + 64);
  kaldi::Vector<float>::Destroy(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::Fbank>::NextSegment(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return 0;
}

void kaldi::OnlineFeInput<kaldi::Fbank>::~OnlineFeInput(uint64_t **a1)
{
  *a1 = &unk_1F2D23A68;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D23A68;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D23A68;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));

  quasar::Bitmap::~Bitmap(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::Fbank>::getSnrTracker@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t **std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      kaldi::Vector<float>::Destroy(v3 + 88);
      v5 = (v3 + 48);
      std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
      v4 = *(v3 + 24);
      if (v4)
      {
        *(v3 + 32) = v4;
        operator delete(v4);
      }

      MEMORY[0x1B8C85350](v3, 0x10B0C40587FD9DDLL);
    }

    return MEMORY[0x1B8C85350](v2, 0x1020C4024DAA5DELL);
  }

  return result;
}

void *std::__shared_ptr_emplace<kaldi::FbankWithPitch>::__shared_ptr_emplace[abi:ne200100]<kaldi::FbankWithPitchOptions &,std::allocator<kaldi::FbankWithPitch>,0>(void *a1, const kaldi::FbankWithPitchOptions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23AF0;
  kaldi::FbankWithPitch::FbankWithPitch((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::FbankWithPitch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::FbankWithPitch>>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::FbankWithPitch*,float,float,float &,int &,std::allocator<kaldi::OnlineFeInput<kaldi::FbankWithPitch>>,0>(void *a1, uint64_t *a2, uint64_t *a3, float *a4, float *a5, float *a6, int *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23B40;
  v8 = *a2;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a3;
  v13 = *a7;
  __asm { FMOV            V0.2S, #-1.0 }

  v20[0] = _D0;
  v20[1] = 0xA4579F000;
  kaldi::OnlineFeInput<kaldi::FbankWithPitch>::OnlineFeInput((a1 + 3), v8, v12, v9, v10, v11, v13, v20);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::FbankWithPitch>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithPitch>::OnlineFeInput(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float *a8)
{
  *result = &unk_1F2D23B90;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 28) = a5;
  *(result + 32) = a6;
  *(result + 36) = a7;
  *(result + 40) = 0u;
  *(result + 88) = 0;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  v8 = a8[1];
  if (v8 > 0.0 && *a8 != v8)
  {
    operator new();
  }

  return result;
}

void sub_1B56638D0(_Unwind_Exception *a1)
{
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](v3, 0);
  kaldi::Vector<float>::Destroy(v1 + 64);
  kaldi::Vector<float>::Destroy(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithPitch>::Compute(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = kaldi::MatrixBase<float>::NumRows(*a2);
  if (v5 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v16);
    }

    return 1;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 28);
    v8 = (v6 + v7 * (v5 - 1));
    v9 = *(a1 + 36);
    v10 = v6 + (v9 - 1) * v7;
    if (v9 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v8 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    memset(v16, 0, 24);
    kaldi::Vector<float>::Resize(v16, v8, 1);
    v13 = (*(**(a1 + 8) + 8))(*(a1 + 8), v16, v12);
    v14 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    kaldi::OnlineFeInput<kaldi::FbankWithPitch>::ExtractFeatures(a1, v16, v14, v13 ^ 1, v4, a2[2]);
    kaldi::Vector<float>::Destroy(v16);
  }

  return v13;
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithPitch>::Dim(uint64_t a1, uint8x8_t a2)
{
  v2 = *(a1 + 16);
  a2.i32[0] = *(v2 + 212);
  return vaddvq_s32(vmovl_u16((vmovl_u8(a2).u64[0] & 0xFF01FF01FF01FF01))) + *(v2 + 220) + *(v2 + 72) + *(v2 + 216);
}

void kaldi::OnlineFeInput<kaldi::FbankWithPitch>::~OnlineFeInput(uint64_t **a1)
{
  *a1 = &unk_1F2D23B90;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D23B90;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithPitch>::getSnrTracker@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void kaldi::OnlineFeInput<kaldi::FbankWithPitch>::ExtractFeatures(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    kaldi::Resampler::Resample(v11, a2, &v23, a3);
    if (v24 > 0)
    {
      v9 = &v23;
    }
  }

  v12 = *(a1 + 72);
  v13 = *(v9 + 2);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  kaldi::Vector<float>::Resize(&v20, (v13 + v12), 1);
  v14 = *(a1 + 72);
  v19 = 0;
  v17 = v20;
  v18 = v14;
  kaldi::VectorBase<float>::CopyFromVec(&v17, (a1 + 64));
  v15 = *(a1 + 72);
  v16 = *(v9 + 2);
  v19 = 0;
  v17 = &v20[4 * v15];
  v18 = v16;
  kaldi::VectorBase<float>::CopyFromVec(&v17, v9);
  if (v21 >= *(a1 + 24) || a4)
  {
    kaldi::FbankWithPitch::Compute(*(a1 + 16), &v20, a5, a1 + 64, 1.0, a6, a4);
  }

  kaldi::Matrix<float>::Resize(a5, 0, 0, 0, 0);
  kaldi::Vector<float>::Resize((a1 + 64), v21, 1);
  kaldi::VectorBase<float>::CopyFromVec(a1 + 64, &v20);
  kaldi::Vector<float>::Destroy(&v20);
  kaldi::Vector<float>::Destroy(&v23);
}

void sub_1B5663D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<kaldi::FbankWithAudioAnalytics>::__shared_ptr_emplace[abi:ne200100]<kaldi::FbankWithAudioAnalyticsOptions &,std::allocator<kaldi::FbankWithAudioAnalytics>,0>(void *a1, const kaldi::FbankWithAudioAnalyticsOptions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23C18;
  kaldi::FbankWithAudioAnalytics::FbankWithAudioAnalytics((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::FbankWithAudioAnalytics>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::FbankWithAudioAnalytics*,float,float,float &,int &,kaldi::ResamplerOptions &,std::allocator<kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>>,0>(void *a1, uint64_t *a2, uint64_t *a3, float *a4, float *a5, float *a6, int *a7, float *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23C68;
  kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::OnlineFeInput((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, a8);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::OnlineFeInput(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float *a8)
{
  *result = &unk_1F2D23CB8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 28) = a5;
  *(result + 32) = a6;
  *(result + 36) = a7;
  *(result + 40) = 0u;
  *(result + 88) = 0;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  v8 = a8[1];
  if (v8 > 0.0 && *a8 != v8)
  {
    operator new();
  }

  return result;
}

void sub_1B5664174(_Unwind_Exception *a1)
{
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](v3, 0);
  kaldi::Vector<float>::Destroy(v1 + 64);
  kaldi::Vector<float>::Destroy(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::Compute(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = kaldi::MatrixBase<float>::NumRows(*a2);
  if (v5 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v16);
    }

    return 1;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 28);
    v8 = (v6 + v7 * (v5 - 1));
    v9 = *(a1 + 36);
    v10 = v6 + (v9 - 1) * v7;
    if (v9 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v8 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    memset(v16, 0, 24);
    kaldi::Vector<float>::Resize(v16, v8, 1);
    v13 = (*(**(a1 + 8) + 8))(*(a1 + 8), v16, v12);
    v14 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::ExtractFeatures(a1, v16, v14, v13 ^ 1, v4, a2[2]);
    kaldi::Vector<float>::Destroy(v16);
  }

  return v13;
}

void kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::~OnlineFeInput(uint64_t **a1)
{
  *a1 = &unk_1F2D23CB8;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D23CB8;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D23CB8;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));

  quasar::Bitmap::~Bitmap(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::getSnrTracker@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::ExtractFeatures(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    kaldi::Resampler::Resample(v11, a2, &v23, a3);
    if (v24 > 0)
    {
      v9 = &v23;
    }
  }

  v12 = *(a1 + 72);
  v13 = *(v9 + 2);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  kaldi::Vector<float>::Resize(&v20, (v13 + v12), 1);
  v14 = *(a1 + 72);
  v19 = 0;
  v17 = v20;
  v18 = v14;
  kaldi::VectorBase<float>::CopyFromVec(&v17, (a1 + 64));
  v15 = *(a1 + 72);
  v16 = *(v9 + 2);
  v19 = 0;
  v17 = &v20[4 * v15];
  v18 = v16;
  kaldi::VectorBase<float>::CopyFromVec(&v17, v9);
  if (v21 >= *(a1 + 24) || a4)
  {
    kaldi::FbankWithAudioAnalytics::Compute(*(a1 + 16), &v20, a5, a1 + 64, a6, a4, 1.0);
  }

  kaldi::Matrix<float>::Resize(a5, 0, 0, 0, 0);
  kaldi::Vector<float>::Resize((a1 + 64), v21, 1);
  kaldi::VectorBase<float>::CopyFromVec(a1 + 64, &v20);
  kaldi::Vector<float>::Destroy(&v20);
  kaldi::Vector<float>::Destroy(&v23);
}

void sub_1B56645D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::FbankWithAudioAnalytics*,float,float,float &,int &,kaldi::ResamplerOptions &,BOOL &,unsigned int const&,int &,int &,int &,int &,std::allocator<kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>>,0>(void *a1, uint64_t *a2, uint64_t *a3, float *a4, float *a5, float *a6, int *a7, float *a8, char *a9, int *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23D40;
  kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::OnlineVadGatedFeInput((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, a8, *a9, *a10);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::OnlineVadGatedFeInput(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float *a8, char a9, int a10)
{
  v11 = kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::OnlineFeInput(a1, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_1F2D23D90;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = a9;
  *(v11 + 116) = a10;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0;
  if (a9)
  {
    operator new();
  }

  return a1;
}

void sub_1B5664AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](va1);
  MEMORY[0x1B8C85350](v7, 0x10A0C40D1F76593);
  std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](va);
  kaldi::Vector<float>::Destroy((v4 + 16));
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100](v6, 0);
  std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100](v5, 0);
  kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::~OnlineFeInput(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::ComputeVadScores(uint64_t a1, uint64_t *a2, float **a3)
{
  v6 = kaldi::quasar::Vocab::VocabSize(*(a1 + 96));
  v12 = 0;
  v13 = 0;
  v11 = 0;
  kaldi::Vector<float>::Resize(&v11, v6, 1);
  v7 = (*(**(a1 + 8) + 8))(*(a1 + 8), &v11, 0);
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v12 < 1)
  {
    kaldi::Matrix<float>::Resize(a2, 0, 0, 0, 0);
    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a3, 1, 1, 1, 0);
    kaldi::NnVadEvaluator::GetSilenceHardValue(*(a1 + 96), &v11, *a3);
    kaldi::Matrix<float>::Resize(a2, 1, v12, 1, 0);
    v8 = *a2;
    v10[2] = 0;
    v10[0] = v8;
    v10[1] = kaldi::MatrixBase<float>::NumCols(a2);
    kaldi::VectorBase<float>::CopyFromVec(v10, &v11);
  }

  kaldi::Vector<float>::Destroy(&v11);
  return v7;
}

void sub_1B5664CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::Compute(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = kaldi::MatrixBase<float>::NumRows(*a2);
  if (v5 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v30);
    }

    return 1;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 28);
    v8 = (v6 + v7 * (v5 - 1));
    v9 = *(a1 + 36);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    kaldi::Vector<float>::Resize(&v27, v8, 1);
    if (*(a1 + 112))
    {
      if (*(a1 + 152) >= *(a1 + 136) && kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)) && !kaldi::VadGatedBuffer::IsEndOfBuffer(*(a1 + 120)))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "read_buffer_offset_ < read_buffer_.Dim() || !vad_buffer_->IsInactive() || vad_buffer_->IsEndOfBuffer()", 102);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v30);
      }

      if (v8 < 1)
      {
        v22 = 0;
        v10 = 0;
        goto LABEL_35;
      }

      v10 = 0;
      ActiveFrame = 0;
      while (1)
      {
        v12 = *(a1 + 152);
        v13 = *(a1 + 136);
        if (v12 >= v13)
        {
          if (kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)))
          {
            v17 = 1;
            if (ActiveFrame)
            {
              IsInactive = 0;
              goto LABEL_39;
            }

            v22 = 1;
LABEL_35:
            if (*(a1 + 152) >= *(a1 + 136))
            {
              IsInactive = kaldi::VadGatedBuffer::IsInactive(*(a1 + 120));
              v17 = IsInactive ^ 1u;
              v20 = IsInactive;
              if ((v22 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            else
            {
              IsInactive = 0;
              v20 = 0;
              v17 = 1;
              if (!v22)
              {
                goto LABEL_40;
              }
            }

LABEL_39:
            kaldi::Vector<float>::Resize(&v27, v10, 2);
            v20 = IsInactive;
            goto LABEL_40;
          }

          v12 = *(a1 + 152);
          v13 = *(a1 + 136);
        }

        v14 = __OFSUB__(v13, v12);
        v15 = v13 - v12;
        if (!((v15 < 0) ^ v14 | (v15 == 0)))
        {
          if (v8 - v10 >= v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = v8 - v10;
          }

          v32 = 0;
          v33 = 0;
          v30 = &v27[4 * v10];
          v31 = v16;
          v25 = 0;
          v26 = 0;
          v24 = *(a1 + 128) + 4 * v12;
          LODWORD(v25) = v16;
          kaldi::VectorBase<float>::CopyFromVec(&v30, &v24);
          v10 = (v16 + v10);
          *(a1 + 152) += v16;
        }

        if (v10 >= v8)
        {
          IsInactive = 0;
          if (ActiveFrame)
          {
            v17 = 1;
            v20 = 0;
            goto LABEL_40;
          }

          v22 = 0;
          goto LABEL_35;
        }

        if (!kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)))
        {
          LODWORD(v30) = 0;
          ActiveFrame = kaldi::VadGatedBuffer::ReadActiveFrame(*(a1 + 120), (a1 + 128), &v30, v10 > 0);
          *(a1 + 152) = 0;
        }
      }
    }

    v18 = v6 + (v9 - 1) * v7;
    if (v9 <= 0)
    {
      v18 = 0;
    }

    if (v8 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v8;
    }

    v17 = (*(**(a1 + 8) + 8))(*(a1 + 8), &v27, v19);
    v20 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    IsInactive = v17 ^ 1;
LABEL_40:
    *(a1 + 108) += v28;
    kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::ExtractFeatures(a1, &v27, v20, IsInactive, v4, a2[2]);
    kaldi::Vector<float>::Destroy(&v27);
  }

  return v17;
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::NextSegment(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 112) != 1)
  {
    return 0;
  }

  if (!kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)) || *(a1 + 152) < *(a1 + 136))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "Can't start the next segment when the current segment is not done");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v4 = kaldi::VadGatedBuffer::Activate(*(a1 + 120), 0);
  v5 = (*(a1 + 108) * 1000.0 / *(a1 + 116));
  SkippedFrames = kaldi::VadGatedBuffer::GetSkippedFrames(*(a1 + 120));
  v7 = kaldi::NnVadEvaluator::FrameDurationMs(*(a1 + 96));
  *(a2 + 8) = v7 * SkippedFrames;
  v8 = *(a1 + 104);
  *(a1 + 104) = v8 + 1;
  *a2 = v8;
  *(a2 + 4) = v7 * SkippedFrames + v5;
  return v4;
}

void kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::~OnlineVadGatedFeInput(uint64_t a1)
{
  *a1 = &unk_1F2D23D90;
  kaldi::Vector<float>::Destroy(a1 + 128);
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100]((a1 + 120), 0);
  std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100]((a1 + 96), 0);

  kaldi::OnlineFeInput<kaldi::FbankWithAudioAnalytics>::~OnlineFeInput(a1);
}

{
  *a1 = &unk_1F2D23D90;
  kaldi::Vector<float>::Destroy(a1 + 128);
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100]((a1 + 120), 0);
  std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100]((a1 + 96), 0);
  *a1 = &unk_1F2D23CB8;
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100]((a1 + 88), 0);
  kaldi::Vector<float>::Destroy(a1 + 64);
  kaldi::Vector<float>::Destroy(a1 + 40);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::NnVadEvaluator *std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100](kaldi::NnVadEvaluator **a1, kaldi::NnVadEvaluator *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::NnVadEvaluator::~NnVadEvaluator(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D23E18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::FbankWithAudioAnalytics>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<kaldi::OnlineVadGatedFeInput<kaldi::Fbank>>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::Fbank*,float,float,float &,int &,kaldi::ResamplerOptions &,BOOL &,unsigned int const&,int &,int &,int &,int &,std::allocator<kaldi::OnlineVadGatedFeInput<kaldi::Fbank>>,0>(void *a1, uint64_t *a2, uint64_t *a3, float *a4, float *a5, float *a6, int *a7, float *a8, char *a9, int *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23EB0;
  kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::OnlineVadGatedFeInput((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, a8, *a9, *a10);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineVadGatedFeInput<kaldi::Fbank>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D23EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::OnlineVadGatedFeInput(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float *a8, char a9, int a10)
{
  v11 = kaldi::OnlineFeInput<kaldi::Fbank>::OnlineFeInput(a1, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_1F2D23F00;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = a9;
  *(v11 + 116) = a10;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0;
  if (a9)
  {
    operator new();
  }

  return a1;
}

void sub_1B56658B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](va1);
  MEMORY[0x1B8C85350](v7, 0x10A0C40D1F76593);
  std::__function::__value_func<BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::~__value_func[abi:ne200100](va);
  kaldi::Vector<float>::Destroy((v4 + 16));
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100](v6, 0);
  std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100](v5, 0);
  kaldi::OnlineFeInput<kaldi::Fbank>::~OnlineFeInput(v4);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::ComputeVadScores(uint64_t a1, uint64_t *a2, float **a3)
{
  v6 = kaldi::quasar::Vocab::VocabSize(*(a1 + 96));
  v12 = 0;
  v13 = 0;
  v11 = 0;
  kaldi::Vector<float>::Resize(&v11, v6, 1);
  v7 = (*(**(a1 + 8) + 8))(*(a1 + 8), &v11, 0);
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v12 < 1)
  {
    kaldi::Matrix<float>::Resize(a2, 0, 0, 0, 0);
    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a3, 1, 1, 1, 0);
    kaldi::NnVadEvaluator::GetSilenceHardValue(*(a1 + 96), &v11, *a3);
    kaldi::Matrix<float>::Resize(a2, 1, v12, 1, 0);
    v8 = *a2;
    v10[2] = 0;
    v10[0] = v8;
    v10[1] = kaldi::MatrixBase<float>::NumCols(a2);
    kaldi::VectorBase<float>::CopyFromVec(v10, &v11);
  }

  kaldi::Vector<float>::Destroy(&v11);
  return v7;
}

void sub_1B5665AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::Compute(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = kaldi::MatrixBase<float>::NumRows(*a2);
  if (v5 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v30);
    }

    return 1;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 28);
    v8 = (v6 + v7 * (v5 - 1));
    v9 = *(a1 + 36);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    kaldi::Vector<float>::Resize(&v27, v8, 1);
    if (*(a1 + 112))
    {
      if (*(a1 + 152) >= *(a1 + 136) && kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)) && !kaldi::VadGatedBuffer::IsEndOfBuffer(*(a1 + 120)))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "read_buffer_offset_ < read_buffer_.Dim() || !vad_buffer_->IsInactive() || vad_buffer_->IsEndOfBuffer()", 102);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v30);
      }

      if (v8 < 1)
      {
        v22 = 0;
        v10 = 0;
        goto LABEL_35;
      }

      v10 = 0;
      ActiveFrame = 0;
      while (1)
      {
        v12 = *(a1 + 152);
        v13 = *(a1 + 136);
        if (v12 >= v13)
        {
          if (kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)))
          {
            v17 = 1;
            if (ActiveFrame)
            {
              IsInactive = 0;
              goto LABEL_39;
            }

            v22 = 1;
LABEL_35:
            if (*(a1 + 152) >= *(a1 + 136))
            {
              IsInactive = kaldi::VadGatedBuffer::IsInactive(*(a1 + 120));
              v17 = IsInactive ^ 1u;
              v20 = IsInactive;
              if ((v22 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            else
            {
              IsInactive = 0;
              v20 = 0;
              v17 = 1;
              if (!v22)
              {
                goto LABEL_40;
              }
            }

LABEL_39:
            kaldi::Vector<float>::Resize(&v27, v10, 2);
            v20 = IsInactive;
            goto LABEL_40;
          }

          v12 = *(a1 + 152);
          v13 = *(a1 + 136);
        }

        v14 = __OFSUB__(v13, v12);
        v15 = v13 - v12;
        if (!((v15 < 0) ^ v14 | (v15 == 0)))
        {
          if (v8 - v10 >= v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = v8 - v10;
          }

          v32 = 0;
          v33 = 0;
          v30 = &v27[4 * v10];
          v31 = v16;
          v25 = 0;
          v26 = 0;
          v24 = *(a1 + 128) + 4 * v12;
          LODWORD(v25) = v16;
          kaldi::VectorBase<float>::CopyFromVec(&v30, &v24);
          v10 = (v16 + v10);
          *(a1 + 152) += v16;
        }

        if (v10 >= v8)
        {
          IsInactive = 0;
          if (ActiveFrame)
          {
            v17 = 1;
            v20 = 0;
            goto LABEL_40;
          }

          v22 = 0;
          goto LABEL_35;
        }

        if (!kaldi::VadGatedBuffer::IsInactive(*(a1 + 120)))
        {
          LODWORD(v30) = 0;
          ActiveFrame = kaldi::VadGatedBuffer::ReadActiveFrame(*(a1 + 120), (a1 + 128), &v30, v10 > 0);
          *(a1 + 152) = 0;
        }
      }
    }

    v18 = v6 + (v9 - 1) * v7;
    if (v9 <= 0)
    {
      v18 = 0;
    }

    if (v8 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v8;
    }

    v17 = (*(**(a1 + 8) + 8))(*(a1 + 8), &v27, v19);
    v20 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    IsInactive = v17 ^ 1;
LABEL_40:
    *(a1 + 108) += v28;
    kaldi::OnlineFeInput<kaldi::Fbank>::ExtractFeatures(a1, &v27, v20, IsInactive, v4, a2[2]);
    kaldi::Vector<float>::Destroy(&v27);
  }

  return v17;
}

void kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::~OnlineVadGatedFeInput(uint64_t a1)
{
  *a1 = &unk_1F2D23F00;
  kaldi::Vector<float>::Destroy(a1 + 128);
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100]((a1 + 120), 0);
  std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100]((a1 + 96), 0);

  kaldi::OnlineFeInput<kaldi::Fbank>::~OnlineFeInput(a1);
}

{
  *a1 = &unk_1F2D23F00;
  kaldi::Vector<float>::Destroy(a1 + 128);
  std::unique_ptr<kaldi::VadGatedBuffer>::reset[abi:ne200100]((a1 + 120), 0);
  std::unique_ptr<kaldi::NnVadEvaluator>::reset[abi:ne200100]((a1 + 96), 0);
  *a1 = &unk_1F2D23A68;
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100]((a1 + 88), 0);
  kaldi::Vector<float>::Destroy(a1 + 64);
  kaldi::Vector<float>::Destroy(a1 + 40);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

__n128 std::__function::__func<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::Fbank>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::Fbank>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D23F88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::Fbank>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::Fbank>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::Fbank>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<BOOL (kaldi::OnlineVadGatedFeInput<kaldi::Fbank>::*)(kaldi::Matrix<float> &,kaldi::Matrix<float> &),kaldi::OnlineVadGatedFeInput<kaldi::Fbank>*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,BOOL ()(kaldi::Matrix<float> &,kaldi::Matrix<float> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<kaldi::OnlineLdaInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,kaldi::Matrix<float> &,int &,int &,std::allocator<kaldi::OnlineLdaInput>,0>(void *a1, void *a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24020;
  kaldi::OnlineLdaInput::OnlineLdaInput(a1 + 3, *a2, a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineLdaInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::Mfcc>::__shared_ptr_emplace[abi:ne200100]<kaldi::MfccOptions &,std::allocator<kaldi::Mfcc>,0>(void *a1, const kaldi::MfccOptions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24070;
  kaldi::Mfcc::Mfcc((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::Mfcc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::Mfcc>>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineAudioSourceItf *&,kaldi::Mfcc*,float,float,float &,std::allocator<kaldi::OnlineFeInput<kaldi::Mfcc>>,0>(void *a1, uint64_t *a2, uint64_t *a3, float *a4, float *a5, float *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D240C0;
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  __asm { FMOV            V0.2S, #-1.0 }

  v18[0] = _D0;
  v18[1] = 0xA4579F000;
  kaldi::OnlineFeInput<kaldi::Mfcc>::OnlineFeInput((a1 + 3), v7, v8, v9, v10, v11, 0, v18);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineFeInput<kaldi::Mfcc>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D240C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeInput<kaldi::Mfcc>::OnlineFeInput(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, float *a8)
{
  *result = &unk_1F2D24110;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 28) = a5;
  *(result + 32) = a6;
  *(result + 36) = a7;
  *(result + 40) = 0u;
  *(result + 88) = 0;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  v8 = a8[1];
  if (v8 > 0.0 && *a8 != v8)
  {
    operator new();
  }

  return result;
}

void sub_1B5666670(_Unwind_Exception *a1)
{
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](v3, 0);
  kaldi::Vector<float>::Destroy(v1 + 64);
  kaldi::Vector<float>::Destroy(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineFeInput<kaldi::Mfcc>::Compute(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = kaldi::MatrixBase<float>::NumRows(*a2);
  if (v4 <= 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "No feature vectors requested?!", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    }

    return 1;
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = (v5 + v6 * (v4 - 1));
    v8 = *(a1 + 36);
    v9 = v5 + (v8 - 1) * v6;
    if (v8 <= 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v7 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    memset(v15, 0, 24);
    kaldi::Vector<float>::Resize(v15, v7, 1);
    v12 = (*(**(a1 + 8) + 8))(*(a1 + 8), v15, v11);
    v13 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    kaldi::OnlineFeInput<kaldi::Mfcc>::ExtractFeatures(a1, v15, v13, v12 ^ 1, v3);
    kaldi::Vector<float>::Destroy(v15);
  }

  return v12;
}

void kaldi::OnlineFeInput<kaldi::Mfcc>::~OnlineFeInput(uint64_t **a1)
{
  *a1 = &unk_1F2D24110;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D24110;
  v2 = (a1 + 8);
  std::unique_ptr<kaldi::Resampler>::reset[abi:ne200100](a1 + 11, 0);
  kaldi::Vector<float>::Destroy(v2);
  kaldi::Vector<float>::Destroy((a1 + 5));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeInput<kaldi::Mfcc>::getSnrTracker@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void kaldi::OnlineFeInput<kaldi::Mfcc>::ExtractFeatures(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5)
{
  v7 = a2;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v9 = *(a1 + 88);
  if (v9)
  {
    kaldi::Resampler::Resample(v9, a2, &v21, a3);
    if (v22 > 0)
    {
      v7 = &v21;
    }
  }

  v10 = *(a1 + 72);
  v11 = *(v7 + 2);
  v19 = 0;
  v20 = 0;
  v18 = 0;
  kaldi::Vector<float>::Resize(&v18, (v11 + v10), 1);
  v12 = *(a1 + 72);
  v17 = 0;
  v15 = v18;
  v16 = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v15, (a1 + 64));
  v13 = *(a1 + 72);
  v14 = *(v7 + 2);
  v17 = 0;
  v15 = &v18[4 * v13];
  v16 = v14;
  kaldi::VectorBase<float>::CopyFromVec(&v15, v7);
  if (v19 >= *(a1 + 24) || a4)
  {
    kaldi::Mfcc::Compute(*(a1 + 16), &v18, a5, (a1 + 64), 1.0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a5, 0, 0, 0, 0);
    kaldi::Vector<float>::Resize((a1 + 64), v19, 1);
    kaldi::VectorBase<float>::CopyFromVec(a1 + 64, &v18);
  }

  kaldi::Vector<float>::Destroy(&v18);
  kaldi::Vector<float>::Destroy(&v21);
}

void sub_1B5666AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<kaldi::OnlineNnetForwardInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::Vector<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D241E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::CEFusedAcousticEncoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::SpeechActivityDetector>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,BOOL &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::Vector<float>> &,BOOL &,BOOL &,std::allocator<kaldi::SpeechActivityDetector>,0>(void *a1, uint64_t *a2, unsigned int *a3, unsigned __int8 *a4, void *a5, uint64_t a6, char *a7, char *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24288;
  kaldi::SpeechActivityDetector::SpeechActivityDetector((a1 + 3), *a2, *a3, *a4, a5, a6, *a7, *a8, 0);
}

void std::__shared_ptr_emplace<kaldi::SpeechActivityDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::VoiceActivityGating>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,BOOL &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::Vector<float>> &,BOOL &,BOOL &,BOOL &,BOOL &,float &,int &,int &,int &,int &,BOOL &,BOOL &,std::allocator<kaldi::VoiceActivityGating>,0>(void *a1, uint64_t *a2, unsigned int *a3, unsigned __int8 *a4, void *a5, uint64_t a6, char *a7, unsigned __int8 *a8, char *a9, char *a10, uint64_t a11, uint64_t a12, _DWORD *a13, _DWORD *a14, int *a15, char *a16)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D242D8;
  HIDWORD(v18) = *a14;
  LODWORD(v18) = *a13;
  kaldi::VoiceActivityGating::VoiceActivityGating((a1 + 3), *a2, *a3, *a4, a5, a6, *a7, *a8, *a9, *a10, v18, *a15, *a16);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::VoiceActivityGating>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D242D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::quasar::CEFusedAcousticEncoder>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::shared_ptr<kaldi::ModelInitializeContext>,std::allocator<kaldi::quasar::CEFusedAcousticEncoder>,0>(void *a1, uint64_t a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24238;
  std::allocator<kaldi::quasar::CEFusedAcousticEncoder>::construct[abi:ne200100]<kaldi::quasar::CEFusedAcousticEncoder,std::string &,std::shared_ptr<kaldi::ModelInitializeContext>>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<kaldi::quasar::CEFusedAcousticEncoder>::construct[abi:ne200100]<kaldi::quasar::CEFusedAcousticEncoder,std::string &,std::shared_ptr<kaldi::ModelInitializeContext>>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  kaldi::quasar::CEFusedAcousticEncoder::CEFusedAcousticEncoder(a2, a3, &v4, 0, 0);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_1B5667228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<kaldi::AmFusionEncoderInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,int &,BOOL &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::Vector<float>> &,int &,kaldi::CuMatrix<float> &,float &,std::vector<int> &,BOOL &,std::allocator<kaldi::AmFusionEncoderInput>,0>(void *a1, uint64_t *a2, int *a3, char *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int *a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24328;
  kaldi::AmFusionEncoderInput::AmFusionEncoderInput((a1 + 3), *a2, *a3, *a4, a5, a6, a7, *a8, a9, a11, *a12);
}

void std::__shared_ptr_emplace<kaldi::AmFusionEncoderInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineAcousticEncoderInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::quasar::CEAcousticEncoderNet> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,std::vector<int> &,BOOL &,BOOL &,std::allocator<kaldi::OnlineAcousticEncoderInput>,0>(void *a1, uint64_t *a2, uint64_t *a3, void *a4, __int128 *a5, uint64_t *a6, char *a7, char *a8, uint64_t *a9, char *a10, char *a11)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24378;
  std::allocator<kaldi::OnlineAcousticEncoderInput>::construct[abi:ne200100]<kaldi::OnlineAcousticEncoderInput,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::quasar::CEAcousticEncoderNet> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,std::vector<int> &,BOOL &,BOOL &>(&v13, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineAcousticEncoderInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::OnlineAcousticEncoderInput>::construct[abi:ne200100]<kaldi::OnlineAcousticEncoderInput,kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::quasar::CEAcousticEncoderNet> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,BOOL &,BOOL &,std::vector<int> &,BOOL &,BOOL &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, __int128 *a6, uint64_t *a7, char *a8, char *a9, uint64_t *a10, char *a11, char *a12)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *a7;
  v18 = *a8;
  v19 = *a9;
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a10, a10[1], (a10[1] - *a10) >> 2);
  kaldi::OnlineAcousticEncoderInput::OnlineAcousticEncoderInput(a2, v15, v16, a5, a6, v17, v18, v19, &__p, *a11, *a12);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_1B566771C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::OnlineAcousticEncoderInput::OnlineAcousticEncoderInput(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5, uint64_t a6, char a7, char a8, int **a9, char a10, char a11)
{
  v33 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D21DD0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  v16 = a4[1];
  *(a1 + 32) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a5, *(a5 + 1));
  }

  else
  {
    v17 = *a5;
    *(a1 + 56) = *(a5 + 2);
    *(a1 + 40) = v17;
  }

  v18 = a11;
  v19 = *(a5 + 3);
  *(a1 + 104) = 0u;
  *(a1 + 64) = v19;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 81) = a8;
  *(a1 + 96) = a10;
  *(a1 + 97) = a11;
  *(a1 + 120) = 0u;
  v21 = *a9;
  v20 = a9[1];
  if (*a9 == v20)
  {
    *&__src = 0;
    DWORD2(__src) = 0;
    std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(a9, &__src, &__src + 12, 3uLL);
    v21 = *a9;
    v22 = **a9;
    v18 = *(a1 + 97);
  }

  else
  {
    if (v20 - v21 != 12)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "strict-batch-sizes supports only 3 sizes", 40);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
    }

    v22 = *v21;
    v23 = v21[1];
    if (v23 <= v21[2])
    {
      v23 = v21[2];
    }

    if (v22 < v23)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "Model input size must be greater than other batch sizes in strict-batch-sizes", 77);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
    }
  }

  *(a1 + 84) = v22;
  *(a1 + 88) = v21[1];
  *(a1 + 92) = v21[2];
  if ((v18 & 1) != 0 && v22 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "append-pad-info cannot be set if strict-batch-size is <= 0", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  if (*(a1 + 96) == 1 && v22 <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "zero-pad cannot be set if strict-batch-size is <= 0", 51);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  *(a1 + 100) = 0;
  v24 = *(a1 + 16);
  if (v24 && ((*(v24 + 1) - *v24) >> 3) >= 1)
  {
    v25 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(v24, v25);
      if ((*(*Component + 24))(Component) == 1026)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "nnet transformation contains splicing, which is not ", 52);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "supported by OnlineNnetForwardInput. Use a separate splice ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "operation to perform splicing.", 30);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
      }

      ++v25;
      v24 = *(a1 + 16);
    }

    while (v25 < ((*(v24 + 1) - *v24) >> 3));
    v22 = *(a1 + 84);
  }

  if (v22 >= 1)
  {
    operator new();
  }

  kaldi::quasar::CEAcousticEncoderNet::InitialStates(*(a1 + 24), &__src);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate((a1 + 112));
  *(a1 + 112) = __src;
  *(a1 + 128) = v32;
  v32 = 0;
  p_src = &__src;
  __src = 0uLL;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&p_src);
  return a1;
}

void sub_1B5667B48(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5667BC0);
}

void sub_1B5667B58(_Unwind_Exception *a1)
{
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 32))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<kaldi::OnlineNnetForwardSkippedInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::FeedForwardNetItf> &,kaldi::nnet1::PdfPriorOptions &,kaldi::nnet1::PdfPrior *,int &,BOOL &,BOOL &,kaldi::InferenceNetItf *,BOOL &,int &,BOOL &,kaldi::CuMatrix<float> &,BOOL &,std::shared_ptr<std::queue<kaldi::CuMatrix<float>>> const&,unsigned int const&,std::allocator<kaldi::OnlineNnetForwardSkippedInput>,0>(void *a1, uint64_t *a2, uint64_t *a3, void *a4, __int128 *a5, uint64_t *a6, unsigned int *a7, char *a8, char *a9, uint64_t *a10, char *a11, int *a12, char *a13, uint64_t a14, char *a15, void *a16, int *a17)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D243C8;
  kaldi::OnlineNnetForwardSkippedInput::OnlineNnetForwardSkippedInput((a1 + 3), *a2, *a3, a4, a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, a14, *a15, a16, *a17);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineNnetForwardSkippedInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D243C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineNnetForwardSkippedInput::OnlineNnetForwardSkippedInput(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, char a15, void *a16, int a17)
{
  *a1 = &unk_1F2D21E58;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = *a4;
  v22 = a4[1];
  *(a1 + 32) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a5, *(a5 + 1));
  }

  else
  {
    v23 = *a5;
    *(a1 + 56) = *(a5 + 2);
    *(a1 + 40) = v23;
  }

  v24 = *(a5 + 3);
  *(a1 + 112) = 0u;
  *(a1 + 64) = v24;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7 + 1;
  *(a1 + 84) = a8;
  *(a1 + 85) = a9;
  *(a1 + 88) = a10;
  *(a1 + 96) = 0;
  *(a1 + 100) = a11;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a12;
  *(a1 + 164) = a13;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = &unk_1F2D0EE38;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 224) = &unk_1F2D0EE38;
  *(a1 + 264) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 272) = &unk_1F2D0EE38;
  *(a1 + 312) = 0;
  kaldi::CuMatrix<float>::CuMatrix(a1 + 320, a14, 111);
  *(a1 + 368) = a15;
  *(a1 + 376) = *a16;
  v25 = a16[1];
  *(a1 + 384) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 392) = a17;
  if (a7 >= 5 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Skipping ", 9);
    v27 = MEMORY[0x1B8C84C00](v26, a7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " frames may not give you good results.", 38);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v45);
  }

  if (*(a1 + 100) == 1 && *(a1 + 80) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "skip_across_batch cannot be set if you aren't frame skipping", 60);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  if (*(a1 + 368) == 1 && *(a1 + 160) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "append-pad-info cannot be set if strict-batch-size is <= 0", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  if (*(a1 + 164) == 1 && *(a1 + 160) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "zero-pad cannot be set if strict-batch-size is <= 0", 51);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  v28 = *(a1 + 24);
  {
    v30 = *(a1 + 32);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v29 + 152))(v29);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a1 + 16);
  if (v31 && ((*(v31 + 1) - *v31) >> 3) >= 1)
  {
    v32 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(v31, v32);
      if ((*(*Component + 24))(Component) == 1026)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "nnet transformation contains splicing, which is not ", 52);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "supported by OnlineNnetForwardInput. Use a separate splice ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "operation to perform splicing.", 30);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
      }

      ++v32;
      v31 = *(a1 + 16);
    }

    while (v32 < ((*(v31 + 1) - *v31) >> 3));
  }

  v34 = *(a1 + 24);
  {
    v36 = v35;
    v37 = *(a1 + 32);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (((v35[2] - v35[1]) >> 3) >= 1)
    {
      v38 = 0;
      do
      {
        v39 = kaldi::nnet1::Nnet::GetComponent((v36 + 1), v38);
        if ((*(*v39 + 24))(v39) == 1026)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "nnet contains splicing, which is not supported by ", 50);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "OnlineNnetForwardInput. Use a separate splice operation to ", 59);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "perform splicing.", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
        }

        ++v38;
      }

      while (v38 < ((v36[2] - v36[1]) >> 3));
    }
  }

  else
  {
    v37 = 0;
  }

  if (*(a1 + 160) >= 1)
  {
    operator new();
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  return a1;
}

void sub_1B56684A0(_Unwind_Exception *a1)
{
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *(v1 + 384);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v2 + 208);
  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::CuMatrix<float>::~CuMatrix(v4);
  kaldi::CuMatrix<float>::~CuMatrix(v3);
  v9 = *(v1 + 168);
  *(v1 + 168) = 0;
  if (v9)
  {
    (*(*v9 + 80))(v9);
  }

  kaldi::Vector<float>::Destroy(v2 + 24);
  kaldi::Vector<float>::Destroy(v2);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<kaldi::OnlineSpliceInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineTransformInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,kaldi::Matrix<float> &,std::allocator<kaldi::OnlineTransformInput>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24468;
  kaldi::OnlineTransformInput::OnlineTransformInput(a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineTransformInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::OnlineCacheInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D244B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::ComputeAheadFeatInput>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<kaldi::OnlineFeatInputItf> &,BOOL const&,int,int &,std::allocator<quasar::ComputeAheadFeatInput>,0>(void *a1, uint64_t a2, unsigned __int8 *a3, int *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24508;
  quasar::ComputeAheadFeatInput::ComputeAheadFeatInput(a1 + 3, a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ComputeAheadFeatInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::MinEntropyPartitioning::GetRange(uint64_t this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (*(this + 32) - *(this + 24)) >> 2 < a2)
  {
    v6 = this;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Invalid partition id ", 21);
    v3 = MEMORY[0x1B8C84C00](v2, a2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " has to be in range [0,", 23);
    v5 = MEMORY[0x1B8C84C30](v4, (*(v6 + 32) - *(v6 + 24)) >> 2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "]");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return this;
}

uint64_t TNewWords::TNewWords(uint64_t result, uint64_t a2)
{
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

uint64_t *TNewWords::findAndAddWords(uint64_t a1, int *a2, uint64_t a3, char *a4, char a5)
{
  if (TLexicon::checkName(*(a1 + 24), a2, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v11 = *(a1 + 24);
  v12 = TStringParam::get((*(a1 + 32) + 10736));
  v13 = *(a1 + 32);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v13 + 16456));
  v15 = *(v13 + 4 * TParam::getValidConfig((v13 + 16456), ActiveConfigHandle) + 16616);
  v16 = *(a1 + 32);
  v17 = TParam::getActiveConfigHandle((v16 + 16104));
  ValidConfig = TParam::getValidConfig((v16 + 16104), v17);
  TLexicon::findHeadClonesCollated(v11, a2, v12, v15, *(v16 + 4 * ValidConfig + 16264), &__p);
  v19 = __p;
  v20 = v31;
  if (v31 == __p)
  {
    v10 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v10 = 0;
    do
    {
      if ((v19[v21 + 16] & 0xC0) == 0)
      {
        if (!v10)
        {
          v10 = TGraph::addVertex(*(a1 + 8), a4);
          v19 = __p;
        }

        v23 = &v19[v21];
        v23[24] += a5;
        v24 = *(a1 + 8);
        v25 = *v23;
        v27 = 1;
        v28 = v25;
        v29 = *(v23 + 1);
        TGraph::addEdge(v24, a3, v10, &v27);
        v19 = __p;
        v20 = v31;
      }

      ++v22;
      v21 += 32;
    }

    while (v22 < (v20 - v19) >> 5);
  }

  std::vector<TLexiconMatch>::resize(&__p, 0);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1B5668C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNewWords::addAlphanumWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1872));
  if (*(v2 + TParam::getValidConfig((v2 + 1872), ActiveConfigHandle) + 2024) != 1)
  {
    return 0;
  }

  v4 = *(*this + 16);
  v27 = v29;
  v28 = xmmword_1B5AE2110;
  v30 = 1;
  if (!*v4)
  {
    goto LABEL_14;
  }

  v5 = 0;
  do
  {
    Segment = TSegmenter::getSegment(*(this + 2), v4);
    v7 = Segment;
    v8 = *(Segment + 24);
    if (v8 != 1 && (!v5 || v8 != 2))
    {
      break;
    }

    v9 = 0;
    v10 = *Segment;
      ;
    }

    TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), v10, v9 - 1);
    ++v5;
    v4 = *(v7 + 8);
  }

  while (*v4);
  if (v5 >= 2)
  {
    if (*(&v28 + 1) >= v28)
    {
      if (v30)
      {
        v23 = 0;
        TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
        v12 = v27;
        --*(&v28 + 1);
      }

      else
      {
        v12 = v27;
        if (v28)
        {
          v27[v28 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = v27;
      v27[*(&v28 + 1)] = 0;
    }

    if (!TNewWords::findAndAddWords(this, v12, *this, v4, 0))
    {
      v14 = *(this + 3);
      if (*(&v28 + 1) >= v28)
      {
        if (v30)
        {
          v23 = 0;
          TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
          v15 = v27;
          --*(&v28 + 1);
        }

        else
        {
          v15 = v27;
          if (v28)
          {
            v27[v28 - 1] = 0;
          }
        }
      }

      else
      {
        v15 = v27;
        v27[*(&v28 + 1)] = 0;
      }

      if (!TLexicon::checkName(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL))
      {
        v16 = TGraph::addVertex(*(this + 1), v4);
        v17 = *(this + 3);
        if (*(&v28 + 1) >= v28)
        {
          if (v30)
          {
            v23 = 0;
            TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
            v18 = v27;
            --*(&v28 + 1);
          }

          else
          {
            v18 = v27;
            if (v28)
            {
              v27[v28 - 1] = 0;
            }
          }
        }

        else
        {
          v18 = v27;
          v27[*(&v28 + 1)] = 0;
        }

        v19 = TLexicon::addTempWord(v17, v18, 0, 0, 0);
        v20 = *this;
        v21 = *(this + 1);
        v23 = 4;
        v24 = v19;
        v25 = 0;
        v26 = 0;
        TGraph::addEdge(v21, v20, v16, &v23);
      }
    }

    *(this + 5) = v4;
    v13 = 1;
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  if (v30 == 1 && v27 != v29 && v27)
  {
    MEMORY[0x1B8C85310]();
  }

  return v13;
}

void sub_1B5668F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13 && a13 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addHyphenatedWord(TSegmenter **this)
{
  v80 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 2);
  if (!*v1)
  {
    return 0;
  }

  memset(v79, 0, sizeof(v79));
  Segment = TSegmenter::getSegment(this[2], v1);
  if (*(Segment + 24) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4;
      v8 = *Segment;
      v1 = *(Segment + 8);
      *(v79 + v7) = *Segment;
      v6 |= *(v8 + 4) == 0;
      v9 = TSegmenter::getSegment(this[2], v1);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (wcscmp(*v9, "-"))
      {
        break;
      }

      v11 = TSegmenter::getSegment(this[2], v10[1]);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (*(v11 + 24) == 5)
      {
        break;
      }

      v13 = **v11;
      {
        operator new();
      }

      v14 = v13 == 10 || v13 == 13;
      v15 = v14;
      v16 = v14 ? v12 : v10;
      v5 |= v15;
      v17 = v16[1];
      if (!*v17 || v7 >= 0xF)
      {
        break;
      }

      Segment = TSegmenter::getSegment(this[2], v17);
      v4 = v7 + 1;
    }

    while (*(Segment + 24) == 1);
    v19 = v7 + 1;
  }

  else
  {
    v5 = 0;
    v19 = 0;
    v6 = 0;
  }

  if (v19 < 2)
  {
    return 0;
  }

  v22 = 0;
  v74 = v77;
  v75 = 256;
  v78 = 1;
  v76 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(&v74, 0, *&v79[0], v22 - 1);
  for (i = 1; i != v19; ++i)
  {
    v70 = 45;
    TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
    v25 = 0;
    v26 = *(v79 + i);
      ;
    }

    TBuffer<wchar_t>::insert(&v74, v76, v26, v25 - 1);
  }

  if (v76 >= v75)
  {
    if (v78)
    {
      v70 = 0;
      TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
      v28 = v74;
      --v76;
    }

    else
    {
      v28 = v74;
      if (v75)
      {
        v74[v75 - 1] = 0;
      }
    }
  }

  else
  {
    v28 = v74;
    v74[v76] = 0;
  }

  if (TNewWords::findAndAddWords(this, v28, *this, v1, 0))
  {
    goto LABEL_44;
  }

  if (v6)
  {
    goto LABEL_74;
  }

  if ((v5 & 1) != 0 || (v29 = this[4], ActiveConfigHandle = TParam::getActiveConfigHandle((v29 + 1376)), *(v29 + TParam::getValidConfig((v29 + 1376), ActiveConfigHandle) + 1528) == 1))
  {
    v31 = 0;
    v76 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v74, 0, *&v79[0], v31 - 1);
    for (j = 1; j != v19; ++j)
    {
      v34 = 0;
      v35 = *(v79 + j);
        ;
      }

      TBuffer<wchar_t>::insert(&v74, v76, v35, v34 - 1);
    }

    if (v76 >= v75)
    {
      if (v78)
      {
        v70 = 0;
        TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
        v37 = v74;
        --v76;
      }

      else
      {
        v37 = v74;
        if (v75)
        {
          v74[v75 - 1] = 0;
        }
      }
    }

    else
    {
      v37 = v74;
      v74[v76] = 0;
    }

    if (TNewWords::findAndAddWords(this, v37, *this, v1, 1))
    {
      goto LABEL_44;
    }
  }

  v38 = this[4];
  v39 = TParam::getActiveConfigHandle((v38 + 1624));
  if ((*(v38 + TParam::getValidConfig((v38 + 1624), v39) + 1776) & 1) == 0)
  {
LABEL_74:
    v50 = 4;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = *this;
    v43 = v19 - 1;
LABEL_63:
    v69 = v41;
    v44 = v42;
    do
    {
      if (v43 == v40)
      {
        v45 = v1;
      }

      else
      {
        v45 = 0;
      }

      v46 = TNewWords::findAndAddWords(this, *(v79 + v40), v44, v45, 1);
      if (!v46)
      {
        v47 = *(v79 + v40);
        if (!TLexicon::checkName(this[3], v47, 0, 0xFFFFFFFFFFFFFFFFLL))
        {
          v48 = TLexicon::addTempWord(this[3], v47, 0, 0, 0);
          v42 = TGraph::addVertex(this[1], v45);
          v49 = this[1];
          v70 = 0;
          v71 = v48;
          v72 = 0;
          v73 = 0;
          TGraph::addEdge(v49, v44, v42, &v70);
          v50 = 0;
          v41 = 1;
          v14 = v43 == v40++;
          if (v14)
          {
            goto LABEL_75;
          }

          goto LABEL_63;
        }
      }

      ++v40;
      v44 = v46;
    }

    while (v19 != v40);
    v50 = 0;
    if ((v69 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_75:
  v51 = this[4];
  v52 = TParam::getActiveConfigHandle((v51 + 1872));
  if (*(v51 + TParam::getValidConfig((v51 + 1872), v52) + 2024) != 1)
  {
    goto LABEL_86;
  }

  v53 = this[4];
  v54 = TParam::getActiveConfigHandle((v53 + 1128));
  if (*(v53 + TParam::getValidConfig((v53 + 1128), v54) + 1280) != 1)
  {
    goto LABEL_86;
  }

  v55 = 0;
  v76 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(&v74, 0, *&v79[0], v55 - 1);
  for (k = 1; k != v19; ++k)
  {
    v70 = 45;
    TBuffer<wchar_t>::insert(&v74, v76, &v70, 1uLL);
    v58 = 0;
    v59 = *(v79 + k);
      ;
    }

    TBuffer<wchar_t>::insert(&v74, v76, v59, v58 - 1);
  }

  v61 = this[3];
  v62 = TBuffer<wchar_t>::c_str(&v74);
  if (TLexicon::checkName(v61, v62, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_86:
    v20 = 0;
    goto LABEL_87;
  }

  v63 = this[3];
  v64 = TBuffer<wchar_t>::c_str(&v74);
  v65 = TLexicon::addTempWord(v63, v64, 0, 0, 0);
  v67 = *this;
  v66 = this[1];
  v68 = TGraph::addVertex(v66, v1);
  v70 = v50;
  v71 = v65;
  v72 = 0;
  v73 = 0;
  TGraph::addEdge(v66, v67, v68, &v70);
LABEL_44:
  this[5] = v1;
  v20 = 1;
LABEL_87:
  if (v78 == 1 && v74 != v77 && v74)
  {
    MEMORY[0x1B8C85310]();
  }

  return v20;
}

void sub_1B5669620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1B8C85350](a10, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TNewWords::addContractionWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1872));
  if (*(v2 + TParam::getValidConfig((v2 + 1872), ActiveConfigHandle) + 2024) != 1)
  {
    return 0;
  }

  v4 = TStringParam::get((*(this + 4) + 2368));
  if (!*v4)
  {
    return 0;
  }

  v5 = v4;
  Segment = TSegmenter::getSegment(*(this + 2), *(*this + 16));
  if ((*Segment)[1])
  {
    return 0;
  }

  v9 = Segment;
  v10 = wcschr(v5, **Segment);
  if (!v10)
  {
    return 0;
  }

  if (*(*this + 16) != *(*this + 24))
  {
    return 0;
  }

  v11 = v10;
  Vertex = TGraph::getVertex(*(this + 1), v9[1]);
  if (!Vertex)
  {
    return 0;
  }

  v13 = Vertex;
  if (*(Vertex + 16) != *(Vertex + 24))
  {
    return 0;
  }

  OutEdge = TVertex::getOutEdge(*this);
  if (OutEdge)
  {
    if (*(OutEdge + 24) != v13)
    {
      return 0;
    }

    while (1)
    {
      OutEdge = *(OutEdge + 8);
      if (!OutEdge)
      {
        break;
      }

      if ((*(OutEdge + 32) & 1) == 0)
      {
        PrevVertex = 0;
        if (*(OutEdge + 24) != v13)
        {
          return PrevVertex;
        }
      }
    }
  }

  v15 = TVertex::getInEdge(v13);
  v16 = *this;
  if (!v15)
  {
    goto LABEL_22;
  }

  if (*(v15 + 16) != v16)
  {
    return 0;
  }

  while (1)
  {
    v15 = *v15;
    if (!v15)
    {
      break;
    }

    if ((*(v15 + 32) & 1) == 0)
    {
      PrevVertex = 0;
      if (*(v15 + 16) != v16)
      {
        return PrevVertex;
      }
    }
  }

LABEL_22:
  PrevVertex = TGraph::getPrevVertex(*(this + 1), *(v16 + 24) - 1);
  if (!PrevVertex)
  {
    return PrevVertex;
  }

  v17 = TSegmenter::getSegment(*(this + 2), *(PrevVertex + 16));
  if (!v17 || *(v17 + 24) != 1 || *(v17 + 8) != *(*this + 24))
  {
    return 0;
  }

  v18 = 0;
  v38 = v40;
  v39 = xmmword_1B5AE2110;
  v41 = 1;
  v19 = *v17;
    ;
  }

  TBuffer<wchar_t>::insert(&v38, 0, v19, v18 - 1);
  v34 = *v11;
  TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), &v34, 1uLL);
  v21 = TSegmenter::getSegment(*(this + 2), v13[2]);
  v22 = v21;
  if (!v21 || *(v21 + 24) != 1)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = *v21;
    ;
  }

  TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), v24, v23 - 1);
  v26 = TBuffer<wchar_t>::c_str(&v38);
  if (TNewWords::findAndAddWords(this, v26, PrevVertex, *(v22 + 8), 0))
  {
    goto LABEL_33;
  }

  v27 = *(this + 3);
  v28 = TBuffer<wchar_t>::c_str(&v38);
  if (TLexicon::checkName(v27, v28, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_35:
    PrevVertex = 0;
    goto LABEL_36;
  }

  v29 = *(this + 3);
  v30 = TBuffer<wchar_t>::c_str(&v38);
  v31 = TLexicon::addTempWord(v29, v30, 0, 0, 0);
  v32 = *(this + 1);
  v33 = TGraph::addVertex(v32, *(v22 + 8));
  v34 = 4;
  v35 = v31;
  v36 = 0;
  v37 = 0;
  TGraph::addEdge(v32, PrevVertex, v33, &v34);
LABEL_33:
  *(this + 5) = *(v22 + 8);
  PrevVertex = 1;
LABEL_36:
  if (v41 == 1 && v38 != v40 && v38)
  {
    MEMORY[0x1B8C85310]();
  }

  return PrevVertex;
}

void sub_1B5669A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13)
  {
    if (a13)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addAcronymWord(TSegmenter **this)
{
  v1 = *(*this + 2);
  v39 = v41;
  v40 = xmmword_1B5AE2110;
  v42 = 1;
  if (!*v1)
  {
    goto LABEL_26;
  }

  v3 = 1;
  do
  {
    Segment = TSegmenter::getSegment(this[2], v1);
    v5 = Segment;
    if (*(Segment + 24) != 1)
    {
      break;
    }

    v6 = *Segment;
    if (wcslen(*Segment) != 1)
    {
      break;
    }

    v7 = *v6;
    {
      operator new();
    }

    isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7);
    v9 = 0;
    v10 = *v5;
      ;
    }

    TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), v10, v9 - 1);
    v1 = *(v5 + 8);
    v12 = TSegmenter::getSegment(this[2], v1);
    v13 = v12;
    v3 &= isUpper;
    if (!v12)
    {
      break;
    }

    v14 = *v12;
    if (wcscmp(*v12, "."))
    {
      break;
    }

    v15 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), v14, v15 - 1);
    v1 = v13[1];
  }

  while (*v1);
  if (*(&v40 + 1) >= 4uLL)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_38;
    }

    v17 = 0;
    v35 = v37;
    v36 = xmmword_1B5AE2110;
    v38 = 1;
    do
    {
      v18 = v39[v17];
      {
        operator new();
      }

      if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v18))
      {
        v43[0] = v39[v17];
        TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v43, 1uLL);
      }

      ++v17;
    }

    while (v17 < *(&v40 + 1));
    if (*(&v36 + 1) >= v36)
    {
      if (v38)
      {
        v43[0] = 0;
        TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v43, 1uLL);
        v20 = v35;
        --*(&v36 + 1);
      }

      else
      {
        v20 = v35;
        if (v36)
        {
          v35[v36 - 1] = 0;
        }
      }
    }

    else
    {
      v20 = v35;
      v35[*(&v36 + 1)] = 0;
    }

    v21 = TNewWords::findAndAddWords(this, v20, *this, v1, 1);
    if (v38 == 1 && v35 != v37 && v35)
    {
      MEMORY[0x1B8C85310]();
    }

    if (!v21)
    {
LABEL_38:
      v22 = this[4];
      ActiveConfigHandle = TParam::getActiveConfigHandle((v22 + 1872));
      if (*(v22 + TParam::getValidConfig((v22 + 1872), ActiveConfigHandle) + 2024) == 1)
      {
        if (*(&v40 + 1) >= v40)
        {
          if (v42)
          {
            LODWORD(v35) = 0;
            TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
            v24 = v39;
            --*(&v40 + 1);
          }

          else
          {
            v24 = v39;
            if (v40)
            {
              v39[v40 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v39;
          v39[*(&v40 + 1)] = 0;
        }

        if (!TNewWords::findAndAddWords(this, v24, *this, v1, 0))
        {
          v25 = this[3];
          if (*(&v40 + 1) >= v40)
          {
            if (v42)
            {
              LODWORD(v35) = 0;
              TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
              v26 = v39;
              --*(&v40 + 1);
            }

            else
            {
              v26 = v39;
              if (v40)
              {
                v39[v40 - 1] = 0;
              }
            }
          }

          else
          {
            v26 = v39;
            v39[*(&v40 + 1)] = 0;
          }

          if (!TLexicon::checkName(v25, v26, 0, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = TGraph::addVertex(this[1], v1);
            v28 = this[3];
            if (*(&v40 + 1) >= v40)
            {
              if (v42)
              {
                LODWORD(v35) = 0;
                TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
                v29 = v39;
                --*(&v40 + 1);
              }

              else
              {
                v29 = v39;
                if (v40)
                {
                  v39[v40 - 1] = 0;
                }
              }
            }

            else
            {
              v29 = v39;
              v39[*(&v40 + 1)] = 0;
            }

            v30 = TLexicon::addTempWord(v28, v29, 0, 0, 0);
            v31 = *this;
            v32 = this[1];
            LODWORD(v35) = 4;
            v36 = v30;
            v37[0] = 0;
            TGraph::addEdge(v32, v31, v27, &v35);
          }
        }
      }
    }

    this[5] = v1;
    v19 = 1;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  if (v42 == 1 && v39 != v41 && v39 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  return v19;
}

void sub_1B5669F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x1B8C85350](v11, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x428]) == 1 && a11 != v12 && a11)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x848]) == 1 && STACK[0x430] != v13 && STACK[0x430] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addAbbreviationWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1872));
  if (*(v2 + TParam::getValidConfig((v2 + 1872), ActiveConfigHandle) + 2024) != 1)
  {
    return 0;
  }

  result = TSegmenter::getSegment(*(this + 2), *(*this + 16));
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*(result + 24) != 1 || &v6[-*(*this + 16) - 6] < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  result = TSegmenter::getSegment(*(this + 2), v6);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (wcscmp(*result, "."))
  {
    return 0;
  }

  v9 = *(v8 + 8);
  if (!*v9)
  {
    return 0;
  }

  OutEdge = TVertex::getOutEdge(*this);
  if (OutEdge)
  {
    v11 = OutEdge;
    if ((*(OutEdge + 64) & 0xC0) == 0)
    {
      return 0;
    }

    while (1)
    {
      v11 = *(v11 + 8);
      if (!v11)
      {
        break;
      }

      if ((*(v11 + 32) & 1) == 0)
      {
        result = 0;
        if ((*(v11 + 64) & 0xC0) == 0)
        {
          return result;
        }
      }
    }
  }

  if (!memchr(";:,!?", *v9, 6uLL))
  {
    result = TSegmenter::getSegment(*(this + 2), v9);
    if (!result)
    {
      return result;
    }

    Segment = result;
    if (*(result + 24))
    {
      return 0;
    }

    while (1)
    {
      v28 = *(Segment + 24);
      v29 = **Segment;
      GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(result);
      if (v28)
      {
        break;
      }

      result = 0;
      if (v29 <= 8202)
      {
        if (v29 != 32 && v29 != 160)
        {
          return result;
        }
      }

      else
      {
        v31 = v29 == 8203 || v29 == 65279;
        if (!v31 && v29 != 12288)
        {
          return result;
        }
      }

      Segment = TSegmenter::getSegment(*(this + 2), *(Segment + 8));
      result = 0;
      if (!Segment)
      {
        return result;
      }
    }

    if (TLocaleInfo::isUpper(GlobalLocaleInfo, v29))
    {
      return 0;
    }
  }

  v12 = 0;
  v36[0] = v38;
  v36[1] = 256;
  v39 = 1;
  v13 = *v5;
  v37 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(v36, 0, v13, v12 - 1);
  v15 = 0;
  v16 = *v8;
    ;
  }

  TBuffer<wchar_t>::insert(v36, v37, v16, v15 - 1);
  v18 = TBuffer<wchar_t>::c_str(v36);
  if (!TNewWords::findAndAddWords(this, v18, *this, *(v8 + 8), 0))
  {
    v19 = *(this + 3);
    v20 = TBuffer<wchar_t>::c_str(v36);
    if (!TLexicon::checkName(v19, v20, 0, 0xFFFFFFFFFFFFFFFFLL))
    {
      v21 = TGraph::addVertex(*(this + 1), *(v8 + 8));
      v22 = *(this + 3);
      v23 = TBuffer<wchar_t>::c_str(v36);
      v24 = TLexicon::addTempWord(v22, v23, 0, 0, 0);
      v25 = *this;
      v26 = *(this + 1);
      v32 = 4;
      v33 = v24;
      v34 = 0;
      v35 = 0;
      TGraph::addEdge(v26, v25, v21, &v32);
    }
  }

  *(this + 5) = *(v8 + 8);
  if (v39 == 1 && v36[0] != v38 && v36[0])
  {
    MEMORY[0x1B8C85310]();
  }

  return 1;
}

void sub_1B566A36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13)
  {
    if (a13)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addWords(uint64_t this, TVertex *a2, TGraph *a3, TSegmenter *a4, TLexicon *a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 24) = a5;
  if (*(a2 + 2) >= *(this + 40))
  {
    v5 = this;
    this = TNewWords::addAlphanumWord(this);
    if ((this & 1) == 0)
    {
      this = TNewWords::addHyphenatedWord(v5);
      if ((this & 1) == 0)
      {
        this = TNewWords::addContractionWord(v5);
        if ((this & 1) == 0)
        {
          this = TNewWords::addAcronymWord(v5);
          if ((this & 1) == 0)
          {

            return TNewWords::addAbbreviationWord(v5);
          }
        }
      }
    }
  }

  return this;
}

double kaldi::quasar::ErrorRegion::ErrorRegion(kaldi::quasar::ErrorRegion *this, int a2, int a3)
{
  *this = &unk_1F2D24558;
  *(this + 1) = 0x7F800000FFFFFFFFLL;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 12) = a2;
  *(this + 13) = a3;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 74) = 0;
  *(this + 56) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  return result;
}

kaldi::quasar::ErrorRegion *kaldi::quasar::ErrorRegion::ErrorRegion(kaldi::quasar::ErrorRegion *this, const kaldi::quasar::ErrorRegion *a2)
{
  *this = &unk_1F2D24558;
  *(this + 2) = 0;
  *(this + 56) = 0u;
  *(this + 248) = 0u;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  kaldi::quasar::ErrorRegion::CopyAndAssign(this, a2);
  return this;
}

void sub_1B566A574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[38];
  if (v5)
  {
    v2[39] = v5;
    operator delete(v5);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = v2[28];
  if (v6)
  {
    v2[29] = v6;
    operator delete(v6);
  }

  v7 = v2[25];
  if (v7)
  {
    v2[26] = v7;
    operator delete(v7);
  }

  v8 = v2[22];
  if (v8)
  {
    v2[23] = v8;
    operator delete(v8);
  }

  v9 = v2[19];
  if (v9)
  {
    v2[20] = v9;
    operator delete(v9);
  }

  v10 = v2[16];
  if (v10)
  {
    v2[17] = v10;
    operator delete(v10);
  }

  v11 = v2[13];
  if (v11)
  {
    v2[14] = v11;
    operator delete(v11);
  }

  v12 = v2[10];
  if (v12)
  {
    v2[11] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v2[8] = v13;
    operator delete(v13);
  }

  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::ErrorRegion::CopyAndAssign(kaldi::quasar::ErrorRegion *this, const kaldi::quasar::ErrorRegion *a2)
{
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::resize(this + 2, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 2) + 40 * v6 + 16);
      if (v7)
      {
        do
        {
          v8 = (*(this + 2) + 40 * v6);
          v10 = (*(*v7[2] + 32))(v7[2]);
          std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AbstractAttribute * const&>(v8, &v10);
          v7 = *v7;
        }

        while (v7);
        v5 = *(this + 2);
        v4 = *(this + 3);
      }

      ++v6;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) > v6);
  }

  *(this + 2) = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  *(this + 40) = *(a2 + 40);
  if (this == a2)
  {
    result = *(a2 + 74);
    *(this + 74) = result;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 19, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 22, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 25, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 28, *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 2);
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(this + 31, *(a2 + 31), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 31)) >> 3));
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(this + 34, *(a2 + 34), *(a2 + 35), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 35) - *(a2 + 34)) >> 3));
    *(this + 74) = *(a2 + 74);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 38, *(a2 + 38), *(a2 + 39), (*(a2 + 39) - *(a2 + 38)) >> 2);
  }

  return result;
}

kaldi::quasar::ErrorRegion *kaldi::quasar::ErrorRegion::operator=(kaldi::quasar::ErrorRegion *this, const kaldi::quasar::ErrorRegion *a2)
{
  if (this != a2)
  {
    kaldi::quasar::ErrorRegion::FreeAttributes(this);
    kaldi::quasar::ErrorRegion::CopyAndAssign(this, a2);
  }

  return this;
}

void *kaldi::quasar::ErrorRegion::FreeAttributes(void *this)
{
  v1 = this[2];
  if (this[3] != v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = *(v1 + 40 * v3 + 16);
      if (v4)
      {
        do
        {
          if (((*(*v4[2] + 56))(v4[2]) & 1) == 0)
          {
            v5 = v4[2];
            if (v5)
            {
              (*(*v5 + 72))(v5);
            }
          }

          v4 = *v4;
        }

        while (v4);
        v1 = v2[2];
      }

      this = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear((v1 + 40 * v3++));
      v1 = v2[2];
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v2[3] - v1) >> 3) > v3);
  }

  return this;
}

void kaldi::quasar::ErrorRegion::~ErrorRegion(kaldi::quasar::ErrorRegion *this)
{
  *this = &unk_1F2D24558;
  kaldi::quasar::ErrorRegion::FreeAttributes(this);
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  v11 = (this + 272);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (this + 248);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    *(this + 20) = v6;
    operator delete(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = (this + 16);
  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

{
  kaldi::quasar::ErrorRegion::~ErrorRegion(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t kaldi::quasar::ErrorRegion::AddRefArc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::vector<int>::push_back[abi:ne200100]((a1 + 56), (a2 + 4));
  v9 = *(a2 + 12);
  std::vector<float>::push_back[abi:ne200100]((a1 + 104), &v9);
  v8 = *(a3 + 8);
  std::vector<float>::push_back[abi:ne200100]((a1 + 152), &v8);
  v7 = *(a2 + 8) - *(a3 + 8);
  std::vector<float>::push_back[abi:ne200100]((a1 + 200), &v7);
  result = std::vector<std::vector<int>>::push_back[abi:ne200100](a1 + 248, (a2 + 16));
  *(a1 + 48) += (*(a2 + 24) - *(a2 + 16)) >> 2;
  return result;
}

uint64_t kaldi::quasar::ErrorRegion::AddHypoArc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::vector<int>::push_back[abi:ne200100]((a1 + 80), (a2 + 4));
  v9 = *(a2 + 12);
  std::vector<float>::push_back[abi:ne200100]((a1 + 128), &v9);
  v8 = *(a3 + 8);
  std::vector<float>::push_back[abi:ne200100]((a1 + 176), &v8);
  v7 = *(a2 + 8) - *(a3 + 8);
  std::vector<float>::push_back[abi:ne200100]((a1 + 224), &v7);
  result = std::vector<std::vector<int>>::push_back[abi:ne200100](a1 + 272, (a2 + 16));
  *(a1 + 52) += (*(a2 + 24) - *(a2 + 16)) >> 2;
  return result;
}

void kaldi::quasar::ErrorRegion::AddRefWord(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v8 = *(*(*(a2[1] + 64) + 8 * *a4) + 48);
  v20[0] = *v8;
  v20[1] = *(v8 + 8);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
  v24 = *(v8 + 40);
  v9 = *(*(*(*(a3 + 8) + 64) + 8 * *a4) + 48);
  v15[0] = *v9;
  v15[1] = *(v9 + 8);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v16, *(v9 + 16), *(v9 + 24), (*(v9 + 24) - *(v9 + 16)) >> 2);
  v19 = *(v9 + 40);
  kaldi::quasar::ErrorRegion::AddRefArc(a1, v20, v15);
  *a4 = v24;
  (*(*a2 + 32))(&v12, a2);
  v27 = *(&v12 + 1);
  v28 = v12;
  v26 = 2139095040;
  v25 = INFINITY;
  v10.n128_u32[0] = v12;
  v11 = *&v12 != INFINITY || (v10.n128_f32[0] = v27, v27 != v25) || v14 != __p;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    (*(*a2 + 32))(&v12, a2, *a4, v10);
    *(*(a1 + 208) - 4) = *&v12 + *(*(a1 + 208) - 4);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_1B566AE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ErrorRegion::AddHypoWord(void *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v8 = *(*(*(a2[1] + 64) + 8 * *a4) + 48);
  v20[0] = *v8;
  v20[1] = *(v8 + 8);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
  v24 = *(v8 + 40);
  v9 = *(*(*(*(a3 + 8) + 64) + 8 * *a4) + 48);
  v15[0] = *v9;
  v15[1] = *(v9 + 8);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v16, *(v9 + 16), *(v9 + 24), (*(v9 + 24) - *(v9 + 16)) >> 2);
  v19 = *(v9 + 40);
  kaldi::quasar::ErrorRegion::AddHypoArc(a1, v20, v15);
  *a4 = v24;
  (*(*a2 + 32))(&v12, a2);
  v27 = *(&v12 + 1);
  v28 = v12;
  v26 = 2139095040;
  v25 = INFINITY;
  v10.n128_u32[0] = v12;
  v11 = *&v12 != INFINITY || (v10.n128_f32[0] = v27, v27 != v25) || v14 != __p;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    (*(*a2 + 32))(&v12, a2, *a4, v10);
    *(a1[29] - 4) = *&v12 + *(a1[29] - 4);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::resize(a1 + 2, (a1[11] - a1[10]) >> 2);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_1B566B0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

char **kaldi::quasar::ErrorRegion::AddAcousticOnlyDecoding(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8) - *a3;
  if ((v4 >> 2))
  {
    v5 = (v4 >> 2) & 0x7FFFFFFF;
    v6 = 0.0;
    do
    {
      v7 = *v3++;
      v6 = v6 + v7;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0.0;
  }

  *(a1 + 296) = v6;
  result = (a1 + 304);
  if (result != a2)
  {
    return std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

float32x2_t kaldi::quasar::ErrorRegion::Overlap(int32x2_t *this)
{
  result = 0;
  if (*&this[7] != *&this[8] && *&this[10] != *&this[11])
  {
    v2 = vcvt_f32_s32(this[5]);
    v3 = vcvt_f32_s32(this[6]);
    v4 = vsub_f32(vbsl_s8(vcgt_f32(vrev64_s32(v3), v3), vdup_lane_s32(v3, 1), vdup_lane_s32(v3, 0)), vbsl_s8(vcgt_f32(v2, vrev64_s32(v2)), vdup_lane_s32(v2, 1), vdup_lane_s32(v2, 0)));
    return vdiv_f32(vdup_lane_s32(v4, 1), v4);
  }

  return result;
}

BOOL kaldi::quasar::ErrorRegion::HaveSameWordSequence(kaldi::quasar::ErrorRegion *this)
{
  v3 = this + 56;
  v2 = *(this + 7);
  v4 = *(v3 + 1) - v2;
  v5 = *(this + 10);
  return v4 == *(this + 11) - v5 && memcmp(v2, v5, v4) == 0;
}

float kaldi::quasar::ErrorRegion::GetScoreSum(uint64_t a1, signed int a2, int a3, void *a4)
{
  result = 0.0;
  if (a2 < a3)
  {
    v5 = (*a4 + 4 * a2);
    do
    {
      v6 = *v5++;
      result = result + v6;
      ++a2;
    }

    while (a2 < a3);
  }

  return result;
}

BOOL kaldi::quasar::ErrorRegion::HasErrors(kaldi::quasar::ErrorRegion *this)
{
  v3[0] = &unk_1F2D09070;
  v3[1] = 0x3F80000000000000;
  v4 = 0;
  HasAttribute = kaldi::quasar::ErrorRegion::HasAttribute(this, v3);
  quasar::Bitmap::~Bitmap(v3);
  return !HasAttribute;
}

void sub_1B566B2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::ErrorRegion::HasAttribute(kaldi::quasar::ErrorRegion *this, kaldi::quasar::AbstractAttribute *a2)
{
  if (*(this + 11) == *(this + 10))
  {
    return 0;
  }

  v11[5] = v2;
  v11[6] = v3;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(this + 2);
    v11[0] = a2;
    v9 = std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::find<kaldi::quasar::AbstractAttribute *>((v8 + v6), v11);
    result = v9 != 0;
    if (v9)
    {
      break;
    }

    ++v7;
    v6 += 40;
  }

  while (v7 < (*(this + 11) - *(this + 10)) >> 2);
  return result;
}

BOOL kaldi::quasar::ErrorRegion::HasWordConfusion(kaldi::quasar::ErrorRegion *this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || a2 >= ((*(this + 11) - *(this + 10)) >> 2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Requested word position is out of bounds ", 41);
    MEMORY[0x1B8C84C00](v6, a2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v3 = (*(this + 2) + 40 * a2 + 16);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = v3[2];
    if ((*(*v4 + 40))(v4) == 7)
    {
      v4 = v4[2];
    }
  }

  while ((*(*v4 + 40))(v4) != 6);
  return v3 != 0;
}

uint64_t **kaldi::quasar::ErrorRegion::AddAttribute(uint64_t **this, kaldi::quasar::AbstractAttribute *a2)
{
  if (this[3] != this[2])
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = kaldi::quasar::ErrorRegion::AddAttribute(v3, a2, v4++);
    }

    while (0xCCCCCCCCCCCCCCCDLL * (v3[3] - v3[2]) > v4);
  }

  return this;
}

uint64_t **kaldi::quasar::ErrorRegion::AddAttribute(kaldi::quasar::ErrorRegion *this, kaldi::quasar::AbstractAttribute *a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0 || (v4 = *(this + 2), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 3) - v4) >> 3) <= a3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Supplied word position index ", 29);
    v11 = MEMORY[0x1B8C84C00](v10, a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", is out of bounds in ErrorRegion, should be in range [0,", 57);
    v13 = MEMORY[0x1B8C84C30](v12, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 3) - *(this + 2)) >> 3));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, ").");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v6 = a3;
  v14[0] = a2;
  result = std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::find<kaldi::quasar::AbstractAttribute *>((v4 + 40 * a3), v14);
  if (!result)
  {
    v8 = (*(this + 2) + 40 * v6);
    v14[0] = (*(*a2 + 32))(a2);
    return std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AbstractAttribute * const&>(v8, v14);
  }

  return result;
}

uint64_t kaldi::quasar::ErrorRegion::RemoveAttribute(uint64_t this, kaldi::quasar::AbstractAttribute *a2)
{
  v4 = *(this + 16);
  if (*(this + 24) != v4)
  {
    v10[7] = v2;
    v10[8] = v3;
    v6 = this;
    v7 = 0;
    v8 = 0;
    do
    {
      v10[0] = a2;
      this = std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::find<kaldi::quasar::AbstractAttribute *>((v4 + v7), v10);
      if (this)
      {
        v9 = *(this + 16);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase((*(v6 + 16) + v7), this);
        this = (*(*v9 + 56))(v9);
        if ((this & 1) == 0)
        {
          this = (*(*v9 + 72))(v9);
        }
      }

      ++v8;
      v4 = *(v6 + 16);
      v7 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 24) - v4) >> 3) > v8);
  }

  return this;
}

BOOL kaldi::quasar::ErrorRegion::IsHomophoneRegion(kaldi::quasar::ErrorRegion *this, const kaldi::TransitionModel *a2)
{
  kaldi::quasar::ErrorRegion::GetSequence(a2, this + 31, 2, 0, &v10);
  kaldi::quasar::ErrorRegion::GetSequence(a2, this + 34, 2, 0, &v8);
  v4 = v10;
  v5 = v8;
  if (v11 - v10 != v9 - v8)
  {
    v6 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = memcmp(v10, v8, v11 - v10) == 0;
  if (v5)
  {
LABEL_5:
    v9 = v5;
    operator delete(v5);
    v4 = v10;
  }

LABEL_6:
  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }

  return v6;
}

void sub_1B566B7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ErrorRegion::GetSequence(kaldi::TransitionModel *this@<X2>, uint64_t *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v7 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v12 = 0;
    do
    {
      v13 = (v7 + 24 * v12);
      v14 = *v13;
      if (v13[1] != *v13)
      {
        v15 = 0;
        do
        {
          v16 = *(v14 + 4 * v15);
          v17 = kaldi::TransitionModel::TransitionIdToTransitionState(this, v16);
          v22[0] = -1;
          if (a3)
          {
            if (a3 == 1)
            {
              v18 = kaldi::TransitionModel::TransitionStateToForwardPdf(this, v17);
            }

            else
            {
              if (a3 != 2)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
                v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Algorithmic error, do not know what to do with level ", 53);
                MEMORY[0x1B8C84C00](v20, a3);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
              }

              v18 = kaldi::TransitionModel::TransitionStateToPhone(this, v17);
            }

            v16 = v18;
          }

          v22[0] = v16;
          if (!a4 || (v19 = *(a5 + 8), *a5 == v19) || *(v19 - 4) != v16)
          {
            std::vector<int>::push_back[abi:ne200100](a5, v22);
          }

          ++v15;
          v14 = *v13;
        }

        while (v15 < (v13[1] - *v13) >> 2);
        v7 = *a2;
        v6 = a2[1];
      }

      ++v12;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) > v12);
  }
}

void sub_1B566B948(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ErrorRegion::ComputePhoneAlignment(uint64_t a1, int a2, void *a3, int a4, int a5, uint64_t a6, const void **a7)
{
  v15 = *a1;
  v14 = *(a1 + 8);
  if (v14 == *a1)
  {
    v18 = -1;
  }

  else
  {
    v16 = 0;
    v17 = (v14 - *a1) >> 2;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    while (v15[v16] == *v15)
    {
      if (v17 == ++v16)
      {
        LODWORD(v16) = v17;
        break;
      }
    }

    v18 = v16 - 1;
  }

  v19 = a3[1];
  v20 = v19 - *a3;
  if (v19 == *a3)
  {
    return;
  }

  v21 = 0;
  v22 = v20 >> 2;
  if ((v20 >> 2) <= 1)
  {
    v22 = 1;
  }

  while (*(*a3 + 4 * v21) == **a3)
  {
    if (v22 == ++v21)
    {
      LODWORD(v21) = v22;
      break;
    }
  }

  if (v14 == v15)
  {
    return;
  }

  v23 = v21 - 1;
  v48 = v21 - 1 + a4;
  v24 = v18 + a2;
  if (v18 + a2 < 0 || v21 - 1 + a4 < 0)
  {
    return;
  }

  while (1)
  {
    std::vector<int>::push_back[abi:ne200100](a7, &v48);
    v47 = *(*a1 + 4 * v18) | (*(*a3 + 4 * v23) << 32);
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](a6, &v47);
    v25 = *a1;
    v26 = *(a1 + 8);
    v27 = (v26 - *a1) >> 2;
    v28 = v27 - 1;
    if (v27 - 1 <= v18)
    {
      v40 = v18;
      goto LABEL_53;
    }

    v29 = *a3;
    v30 = (a3[1] - *a3) >> 2;
    if (v30 - 1 <= v23)
    {
      break;
    }

    v31 = v24 - v48;
    if (v24 - v48 < 0)
    {
      v31 = v48 - v24;
    }

    if (v31 <= a5)
    {
      v34 = v18 + 1;
      if (v27 > v34)
      {
        v35 = v25[v34];
        while (v25[v34] == v35)
        {
          if (v27 == ++v34)
          {
            LODWORD(v34) = v27;
            break;
          }
        }

        v18 = v34 - 1;
      }

      v36 = v23 + 1;
      if (v30 > v36)
      {
        v37 = v29[v36];
        while (v29[v36] == v37)
        {
          if (v30 == ++v36)
          {
            v36 = (a3[1] - *a3) >> 2;
            break;
          }
        }

        v23 = v36 - 1;
      }

      v24 = v18 + a2;
LABEL_44:
      v48 = v23 + a4;
    }

    else
    {
      if (v24 >= v48)
      {
        v38 = v23 + 1;
        if (v30 > v38)
        {
          v39 = v29[v38];
          while (v29[v38] == v39)
          {
            if (v30 == ++v38)
            {
              v38 = (a3[1] - *a3) >> 2;
              break;
            }
          }

          v23 = v38 - 1;
        }

        goto LABEL_44;
      }

      v32 = v18 + 1;
      if (v27 > v32)
      {
        v33 = v25[v32];
        while (v25[v32] == v33)
        {
          if (v27 == ++v32)
          {
            LODWORD(v32) = (v26 - *a1) >> 2;
            break;
          }
        }

        v18 = v32 - 1;
      }

      v24 = v18 + a2;
    }
  }

  v40 = v18;
  v27 = (v26 - v25) >> 2;
  v28 = v27 - 1;
LABEL_53:
  if (v28 > v40)
  {
    do
    {
      LODWORD(v41) = v18 + 1;
      if (v27 > v18 + 1)
      {
        v41 = v41;
        v42 = v25[v41];
        while (v25[v41] == v42)
        {
          if (v27 == ++v41)
          {
            LODWORD(v41) = v27;
            break;
          }
        }

        v18 = v41 - 1;
      }

      std::vector<int>::push_back[abi:ne200100](a7, &v48);
      v47 = *(*a1 + 4 * v18) | (*(a3[1] - 4) << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](a6, &v47);
      v25 = *a1;
      v27 = (*(a1 + 8) - *a1) >> 2;
    }

    while (v27 - 1 > v18);
  }

  while (1)
  {
    v45 = *a3;
    v46 = (a3[1] - *a3) >> 2;
    if (v46 - 1 <= v23)
    {
      break;
    }

    LODWORD(v43) = v23 + 1;
    if (v46 > v23 + 1)
    {
      v43 = v43;
      v44 = v45[v43];
      while (v45[v43] == v44)
      {
        if (v46 == ++v43)
        {
          v43 = (a3[1] - *a3) >> 2;
          break;
        }
      }

      v23 = v43 - 1;
    }

    v48 = v23 + a4;
    std::vector<int>::push_back[abi:ne200100](a7, &v48);
    v47 = *(*(a1 + 8) - 4) | (*(*a3 + 4 * v23) << 32);
    std::vector<std::pair<int,int>>::push_back[abi:ne200100](a6, &v47);
  }
}

void kaldi::quasar::ErrorRegion::ComputeWordAlignment(uint64_t a1, kaldi::TransitionModel *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v41 = 0uLL;
  v42 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  *v37 = 0u;
  v38 = 0u;
  *v36 = 0u;
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  if (v7 != v6 && *(a1 + 64) != *(a1 + 56))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (v37[1] != v38)
    {
      if (v36[0] == v36[1])
      {
        kaldi::quasar::ErrorRegion::GetSequence(a2, 2, 1, v34);
        if (v41)
        {
          *(&v41 + 1) = v41;
          operator delete(v41);
        }

        v41 = *v34;
        v42 = v35;
LABEL_18:
        std::vector<int>::push_back[abi:ne200100](v36, (*(a1 + 56) + 4 * v8));
        v4 += (*(*(a1 + 248) + 24 * v8 + 8) - *(*(a1 + 248) + 24 * v8)) >> 2;
        v10 = (v10 + 1);
        goto LABEL_36;
      }

      v12 = v9;
      if (v5 - v4 >= 0)
      {
        v13 = v5 - v4;
      }

      else
      {
        v13 = v4 - v5;
      }

      v14 = kaldi::LevenshteinEditDistance<int>(&v41, __p);
      if (v5 >= v4)
      {
        if (v5 > v4)
        {
          kaldi::quasar::ErrorRegion::GetSequence(a2, 2, 1, v34);
          std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v41, *(&v41 + 1), v34[0], v34[1], (v34[1] - v34[0]) >> 2);
          v19 = (*(a1 + 248) + 24 * v8);
          v21 = *v19;
          v20 = v19[1];
          if (v14 <= kaldi::LevenshteinEditDistance<int>(&v41, __p))
          {
            v24 = v5 - v4 - ((v20 - v21) >> 2);
            if (v24 < 0)
            {
              v24 = ((v20 - v21) >> 2) - (v5 - v4);
            }

            v22 = v13 > v24;
          }

          else
          {
            v22 = 1;
          }

          v9 = v12;
          if (v34[0])
          {
            v34[1] = v34[0];
            operator delete(v34[0]);
          }

          if (v22)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v31 = v10;
        kaldi::quasar::ErrorRegion::GetSequence(a2, 2, 1, v34);
        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(__p, __p[1], v34[0], v34[1], (v34[1] - v34[0]) >> 2);
        v15 = (*(a1 + 272) + 24 * v11);
        v17 = *v15;
        v16 = v15[1];
        if (v14 <= kaldi::LevenshteinEditDistance<int>(&v41, __p))
        {
          v23 = v5 - v4 + ((v16 - v17) >> 2);
          if (v23 < 0)
          {
            v23 = -v23;
          }

          v18 = v13 > v23;
        }

        else
        {
          v18 = 1;
        }

        if (v34[0])
        {
          v34[1] = v34[0];
          operator delete(v34[0]);
        }

        v10 = v31;
        if (v18)
        {
          goto LABEL_28;
        }
      }

      std::vector<std::pair<std::vector<int>,std::vector<int>>>::push_back[abi:ne200100](a3, v36);
      v36[1] = v36[0];
      *&v38 = v37[1];
      *(&v41 + 1) = v41;
      __p[1] = __p[0];
LABEL_36:
      v11 = v9;
      v6 = *(a1 + 80);
      v7 = *(a1 + 88);
      if (v9 < ((v7 - v6) >> 2))
      {
        v8 = v10;
        if (v10 < ((*(a1 + 64) - *(a1 + 56)) >> 2))
        {
          continue;
        }
      }

      v25 = v9;
      v26 = v10;
      goto LABEL_40;
    }

    kaldi::quasar::ErrorRegion::GetSequence(a2, 2, 1, v34);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v34;
    v40 = v35;
LABEL_28:
    std::vector<int>::push_back[abi:ne200100](&v37[1], (*(a1 + 80) + 4 * v11));
    v5 += (*(*(a1 + 272) + 24 * v11 + 8) - *(*(a1 + 272) + 24 * v11)) >> 2;
    v9 = (v9 + 1);
    goto LABEL_36;
  }

  v25 = 0;
  v26 = 0;
LABEL_40:
  if (v25 < (v7 - v6) >> 2)
  {
    v27 = 4 * v25;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&v37[1], (v6 + v27));
      ++v25;
      v6 = *(a1 + 80);
      v27 += 4;
    }

    while (v25 < (*(a1 + 88) - v6) >> 2);
  }

  v28 = *(a1 + 56);
  if (v26 < (*(a1 + 64) - v28) >> 2)
  {
    v29 = 4 * v26;
    do
    {
      std::vector<int>::push_back[abi:ne200100](v36, (v28 + v29));
      ++v26;
      v28 = *(a1 + 56);
      v29 += 4;
    }

    while (v26 < (*(a1 + 64) - v28) >> 2);
  }

  if (v36[0] == v36[1] || v37[1] == v38)
  {
    v30 = *(a3 + 8);
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v30 - 48, *(v30 - 40), v36[0], v36[1], (v36[1] - v36[0]) >> 2);
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v30 - 24, *(v30 - 16), v37[1], v38, (v38 - v37[1]) >> 2);
  }

  else
  {
    std::vector<std::pair<std::vector<int>,std::vector<int>>>::push_back[abi:ne200100](a3, v36);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v41)
  {
    *(&v41 + 1) = v41;
    operator delete(v41);
  }
}

void sub_1B566C1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  kaldi::LatticeWordAligner::ComputationState::~ComputationState(&a17);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorRegion::GetSequence(kaldi::TransitionModel *a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  std::vector<std::vector<int>>::vector[abi:ne200100](v8, 1uLL);
  kaldi::quasar::ErrorRegion::GetSequence(a1, v8, a2, a3, a4);
  v9 = v8;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1B566C2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::LevenshteinEditDistance<int>(uint64_t *a1, int **a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] - *a2;
  std::vector<int>::vector[abi:ne200100](&v39, ((v6 << 30) + 0x100000000) >> 32);
  std::vector<int>::vector[abi:ne200100](&__p, ((v6 << 30) + 0x100000000) >> 32);
  v7 = (v4 - v5) >> 2;
  v8 = v40;
  if (v40 != v39)
  {
    v9 = 0;
    v10 = (v40 - v39) >> 2;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = vdupq_n_s64(v10 - 1);
    v12 = xmmword_1B5AE0050;
    v13 = xmmword_1B5AE0060;
    v14 = vdupq_n_s64(4uLL);
    v15 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v16 = v39 + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v17, *v11.i8).u8[0])
      {
        *(v16 - 2) = v9;
      }

      if (vuzp1_s16(v17, *&v11).i8[2])
      {
        *(v16 - 1) = v9 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v16 = v9 + 2;
        v16[1] = v9 + 3;
      }

      v9 += 4;
      v12 = vaddq_s64(v12, v14);
      v13 = vaddq_s64(v13, v14);
      v16 += 4;
    }

    while (v15 != v9);
  }

  if (v7 >= 1)
  {
    v18 = v6 >> 2;
    v19 = (v6 >> 2) + 1;
    v20 = (v7 + 1);
    v21 = v19 - 1;
    v22 = 1;
    do
    {
      v23 = v39;
      v24 = *v39 + 1;
      v25 = __p;
      *__p = v24;
      if (v18 >= 1)
      {
        v26 = *a1 + 4 * v22;
        v27 = *a2;
        v28 = (v23 + 4);
        v29 = (v25 + 4);
        v30 = v21;
        do
        {
          v31 = *(v28 - 1);
          v32 = *v27++;
          if (*(v26 - 4) != v32)
          {
            ++v31;
          }

          v34 = *v28++;
          v33 = v34;
          if (v24 >= v34)
          {
            v24 = v33;
          }

          if (v24 + 1 < v31)
          {
            ++v24;
          }

          else
          {
            v24 = v31;
          }

          *v29++ = v24;
          --v30;
        }

        while (v30);
      }

      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v39, v25, v38, (v38 - v25) >> 2);
      ++v22;
    }

    while (v22 != v20);
    v8 = v40;
  }

  v35 = *(v8 - 1);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v35;
}

void sub_1B566C4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::vector<int>,std::vector<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<std::vector<int>,std::vector<int>>>::__emplace_back_slow_path<std::pair<std::vector<int>,std::vector<int>> const&>(a1, a2);
  }

  else
  {
    std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100](*(a1 + 8), a2);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void *kaldi::quasar::ErrorRegion::GetWordConfusionFromErrorRegion(kaldi::quasar::ErrorRegion *this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || (v3 = a2, a2 >= ((*(this + 11) - *(this + 10)) >> 2)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Supplied region_id is out of bound, have only ", 46);
    v11 = MEMORY[0x1B8C84C30](v10, (*(this + 11) - *(this + 10)) >> 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " regions, asked for ", 20);
    v13 = MEMORY[0x1B8C84C00](v12, a2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, ".");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (!kaldi::quasar::ErrorRegion::HasWordConfusion(this, a2))
  {
    return 0;
  }

  v4 = *(*(this + 2) + 40 * v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v4[2];
    if ((*(*v6 + 40))(v6) == 7)
    {
      v6 = v6[2];
    }

    if ((*(*v6 + 40))(v6) == 6)
    {
      v5 = v6;
    }

    v4 = *v4;
  }

  while (v4);
  return v5;
}

uint64_t kaldi::quasar::ErrorRegion::PrintDetailedErrorInformation(uint64_t result, void *a2, kaldi::TransitionModel *a3, kaldi::quasar::ErrorProfile *a4, kaldi::LatticeScoreCache *a5, kaldi::LatticeScoreCache *a6)
{
  if (*(result + 88) != *(result + 80))
  {
    v8 = 0;
    *v105 = *(result + 44);
    if (a5)
    {
      v9 = a6 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    v103 = v10;
    v108 = result;
    do
    {
      v106 = v8;
      WordConfusionFromErrorRegion = kaldi::quasar::ErrorRegion::GetWordConfusionFromErrorRegion(result, v8);
      if (WordConfusionFromErrorRegion)
      {
        v12 = WordConfusionFromErrorRegion;
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v13 = std::locale::use_facet(&v128, MEMORY[0x1E69E5318]);
        (v13->__vftable[2].~facet_0)(v13, 10);
        std::locale::~locale(&v128);
        std::ostream::put();
        std::ostream::flush();
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "--------------------------------------------", 44);
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v15 = std::locale::use_facet(&v128, MEMORY[0x1E69E5318]);
        (v15->__vftable[2].~facet_0)(v15, 10);
        std::locale::~locale(&v128);
        std::ostream::put();
        std::ostream::flush();
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v16 = std::locale::use_facet(&v128, MEMORY[0x1E69E5318]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(&v128);
        std::ostream::put();
        std::ostream::flush();
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        kaldi::quasar::ErrorProfile::ToWordString(a4, *(*(v108 + 80) + 4 * v106), &v128);
        if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v128;
        }

        else
        {
          v18 = v128.__r_.__value_.__r.__words[0];
        }

        if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v128.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, size);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        kaldi::quasar::ErrorRegion::GetTransitionIds(v108, v105[0], v105[0] + ((*(*(v108 + 272) + 24 * v106 + 8) - *(*(v108 + 272) + 24 * v106)) >> 2), *(v108 + 40), (v108 + 248), &v128);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
        (*(*v12 + 8))(&v125, v12, a4);
        if ((v127 & 0x80u) == 0)
        {
          locale = &v125;
        }

        else
        {
          locale = v125.__locale_;
        }

        if ((v127 & 0x80u) == 0)
        {
          v22 = v127;
        }

        else
        {
          v22 = v126;
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, locale, v22);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(&v123, MEMORY[0x1E69E5318]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(&v123);
        std::ostream::put();
        std::ostream::flush();
        if (v127 < 0)
        {
          operator delete(v125.__locale_);
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "From frame ", 11);
        v26 = MEMORY[0x1B8C84C00](v25, *v105);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " to ", 4);
        v28 = MEMORY[0x1B8C84C30](v27, v105[0] + ((*(*(v108 + 272) + 24 * v106 + 8) - *(*(v108 + 272) + 24 * v106)) >> 2));
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v29 = std::locale::use_facet(&v125, MEMORY[0x1E69E5318]);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(&v125);
        std::ostream::put();
        std::ostream::flush();
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v30 = std::locale::use_facet(&v125, MEMORY[0x1E69E5318]);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v125);
        std::ostream::put();
        std::ostream::flush();
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LM scores:", 10);
        std::ios_base::getloc((v31 + *(*v31 - 24)));
        v32 = std::locale::use_facet(&v125, MEMORY[0x1E69E5318]);
        (v32->__vftable[2].~facet_0)(v32, 10);
        std::locale::~locale(&v125);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ref", 3);
        v33 = 0;
        v35 = v12[2];
        v34 = v12[3];
        v36 = *(v108 + 56);
        do
        {
          v37 = v33;
          v38 = memcmp(v35, v36, v34 - v35);
          v36 += 4;
          v33 = v37 + 1;
        }

        while (v38);
        if (v34 != v35)
        {
          v39 = 0;
          v40 = 4 * v37;
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
            std::ostream::operator<<();
            ++v39;
            v40 += 4;
          }

          while (v39 < (v12[3] - v12[2]) >> 2);
        }

        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v41 = std::locale::use_facet(&v125, MEMORY[0x1E69E5318]);
        (v41->__vftable[2].~facet_0)(v41, 10);
        std::locale::~locale(&v125);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Hyp ", 4);
        v42 = std::ostream::operator<<();
        std::ios_base::getloc((v42 + *(*v42 - 24)));
        v43 = std::locale::use_facet(&v125, MEMORY[0x1E69E5318]);
        (v43->__vftable[2].~facet_0)(v43, 10);
        std::locale::~locale(&v125);
        std::ostream::put();
        std::ostream::flush();
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v44 = std::locale::use_facet(&v125, MEMORY[0x1E69E5318]);
        (v44->__vftable[2].~facet_0)(v44, 10);
        std::locale::~locale(&v125);
        std::ostream::put();
        std::ostream::flush();
        kaldi::quasar::ErrorRegion::GetSequence(a3, 1, 0, &v125);
        kaldi::quasar::ErrorRegion::GetSequence(a3, 1, 0, &v123);
        kaldi::quasar::ErrorRegion::GetSequence(a3, 2, 0, v122);
        kaldi::quasar::ErrorRegion::GetSequence(a3, 2, 0, v121);
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        memset(v114, 0, sizeof(v114));
        v111 = 0;
        v112 = 0;
        v113 = 0;
        if (v103)
        {
          v45 = v125.__locale_;
          if (v126 != v125.__locale_)
          {
            v46 = 0;
            v47 = *v105;
            do
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = kaldi::LatticeScoreCache::GetScore(a5, v47, *(v45 + v46));
              std::vector<float>::push_back[abi:ne200100](&v118, &__p);
              LODWORD(__p.__r_.__value_.__l.__data_) = kaldi::LatticeScoreCache::GetScore(a6, v47, *(v123.__locale_ + v46));
              std::vector<float>::push_back[abi:ne200100](&v115, &__p);
              if (v111 == v112)
              {
                v48 = 0.0;
              }

              else
              {
                v48 = *(v112 - 1);
              }

              *&__p.__r_.__value_.__l.__data_ = (v48 + *(v119 - 1)) - *(v116 - 1);
              std::vector<float>::push_back[abi:ne200100](&v111, &__p);
              v49 = *(v119 - 1);
              v50 = *(v116 - 1);
              if (vabds_f32(v49, v50) <= 0.01)
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                std::vector<std::string>::push_back[abi:ne200100](v114, &__p);
              }

              else
              {
                if (v50 >= v49)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "REF");
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "HYP");
                }

                std::vector<std::string>::push_back[abi:ne200100](v114, &__p);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              ++v46;
              v45 = v125.__locale_;
              v47 = (v47 + 1);
            }

            while (v46 < (v126 - v125.__locale_) >> 2);
            if (v118 != v119)
            {
              v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "AM scores: ", 11);
              std::ios_base::getloc((v51 + *(*v51 - 24)));
              v52 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
              (v52->__vftable[2].~facet_0)(v52, 10);
              std::locale::~locale(&__p);
              std::ostream::put();
              std::ostream::flush();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ref: ", 5);
              v53 = v118;
              if (((v119 - v118) >> 2))
              {
                v54 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
                v55 = 0.0;
                do
                {
                  v56 = *v53++;
                  v55 = v55 + v56;
                  --v54;
                }

                while (v54);
              }

              v57 = std::ostream::operator<<();
              std::ios_base::getloc((v57 + *(*v57 - 24)));
              v58 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
              (v58->__vftable[2].~facet_0)(v58, 10);
              std::locale::~locale(&__p);
              std::ostream::put();
              std::ostream::flush();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Hyp: ", 5);
              v59 = v115;
              if (((v116 - v115) >> 2))
              {
                v60 = ((v116 - v115) >> 2) & 0x7FFFFFFF;
                v61 = 0.0;
                do
                {
                  v62 = *v59++;
                  v61 = v61 + v62;
                  --v60;
                }

                while (v60);
              }

              v63 = std::ostream::operator<<();
              std::ios_base::getloc((v63 + *(*v63 - 24)));
              v64 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
              (v64->__vftable[2].~facet_0)(v64, 10);
              std::locale::~locale(&__p);
              std::ostream::put();
              std::ostream::flush();
              std::ios_base::getloc((v63 + *(*v63 - 24)));
              v65 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
              (v65->__vftable[2].~facet_0)(v65, 10);
              std::locale::~locale(&__p);
              std::ostream::put();
              std::ostream::flush();
            }
          }
        }

        v66 = 0;
        v67 = 0;
        v68 = 0;
        v69 = (v128.__r_.__value_.__l.__size_ - v128.__r_.__value_.__r.__words[0]) >> 2;
        if (v69 >= 20)
        {
          LODWORD(v69) = 20;
        }

        v109 = v69;
        while (v109 > v68)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ref Models:", 11);
          v70 = v68;
          do
          {
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
            MEMORY[0x1B8C84C00](v71, *(v125.__locale_ + v70++));
          }

          while (v109 != v70);
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v72 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
          (v72->__vftable[2].~facet_0)(v72, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Hyp Models:", 11);
          v73 = v68;
          do
          {
            v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
            MEMORY[0x1B8C84C00](v74, *(v123.__locale_ + v73++));
          }

          while (v109 != v73);
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v75 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
          (v75->__vftable[2].~facet_0)(v75, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ref Phones:", 11);
          v76 = v68;
          do
          {
            v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
            kaldi::quasar::ErrorProfile::ToPhoneString(a4, *(v122[0] + v76), &__p);
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
              v79 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v79 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, p_p, v79);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v76;
          }

          while (v109 != v76);
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v80 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
          (v80->__vftable[2].~facet_0)(v80, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Hyp Phones:", 11);
          v81 = v68;
          do
          {
            v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
            kaldi::quasar::ErrorProfile::ToPhoneString(a4, *(v121[0] + v81), &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v83 = &__p;
            }

            else
            {
              v83 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v84 = __p.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, v83, v84);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v81;
          }

          while (v109 != v81);
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v85 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
          (v85->__vftable[2].~facet_0)(v85, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          if (v118 != v119)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Ref Scores:", 11);
            v86 = v68;
            do
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
              std::ostream::operator<<();
              ++v86;
            }

            while (v109 != v86);
            std::ios_base::getloc((a2 + *(*a2 - 24)));
            v87 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
            (v87->__vftable[2].~facet_0)(v87, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Hyp Scores:", 11);
            v88 = v68;
            do
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
              std::ostream::operator<<();
              ++v88;
            }

            while (v109 != v88);
            std::ios_base::getloc((a2 + *(*a2 - 24)));
            v89 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
            (v89->__vftable[2].~facet_0)(v89, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "           ", 11);
            v90 = v68;
            do
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
              v91 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "%", 1);
              ++v90;
            }

            while (v109 != v90);
            std::ios_base::getloc((a2 + *(*a2 - 24)));
            v92 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
            (v92->__vftable[2].~facet_0)(v92, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "           ", 11);
            v93 = v66 + v109;
            v94 = v67;
            do
            {
              v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\t", 1);
              v96 = *(v114[0] + v94 + 23);
              if (v96 >= 0)
              {
                v97 = v114[0] + v94;
              }

              else
              {
                v97 = *(v114[0] + v94);
              }

              if (v96 >= 0)
              {
                v98 = *(v114[0] + v94 + 23);
              }

              else
              {
                v98 = *(v114[0] + v94 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, v97, v98);
              v94 += 24;
              --v93;
            }

            while (v93);
            std::ios_base::getloc((a2 + *(*a2 - 24)));
            v99 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
            (v99->__vftable[2].~facet_0)(v99, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
          }

          v100 = v109 + 20;
          if (v109 + 20 >= ((v128.__r_.__value_.__l.__size_ - v128.__r_.__value_.__r.__words[0]) >> 2))
          {
            v100 = (v128.__r_.__value_.__l.__size_ - v128.__r_.__value_.__r.__words[0]) >> 2;
          }

          v109 = v100;
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v101 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
          (v101->__vftable[2].~facet_0)(v101, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          v68 += 20;
          v67 += 480;
          v66 -= 20;
          std::ostream::flush();
        }

        if (v111)
        {
          v112 = v111;
          operator delete(v111);
        }

        v111 = v114;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v111);
        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        if (v118)
        {
          v119 = v118;
          operator delete(v118);
        }

        if (v121[0])
        {
          v121[1] = v121[0];
          operator delete(v121[0]);
        }

        if (v122[0])
        {
          v122[1] = v122[0];
          operator delete(v122[0]);
        }

        if (v123.__locale_)
        {
          v124 = v123.__locale_;
          operator delete(v123.__locale_);
        }

        if (v125.__locale_)
        {
          v126 = v125.__locale_;
          operator delete(v125.__locale_);
        }

        if (v128.__r_.__value_.__r.__words[0])
        {
          v128.__r_.__value_.__l.__size_ = v128.__r_.__value_.__r.__words[0];
          operator delete(v128.__r_.__value_.__l.__data_);
        }
      }

      result = v108;
      *v105 = v105[0] + ((*(*(v108 + 272) + 24 * v106 + 8) - *(*(v108 + 272) + 24 * v106)) >> 2);
      v8 = v106 + 1;
    }

    while (v106 + 1 < ((*(v108 + 88) - *(v108 + 80)) >> 2));
  }

  return result;
}