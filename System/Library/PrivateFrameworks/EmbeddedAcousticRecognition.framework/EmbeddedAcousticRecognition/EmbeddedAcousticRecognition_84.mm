void quasar::RealignAmFusionDecoder::redecodeLattice(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = (a3 / a4);
  v9 = kaldi::MatrixBase<float>::NumRows(a2);
  v10 = (a5 * v8);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (quasar::gLogLevel >= 4)
  {
    memset(v25, 0, sizeof(v25));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "fusion features total: ", 23);
    v13 = kaldi::MatrixBase<float>::NumRows(a2);
    v14 = MEMORY[0x1B8C84C00](v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " relevant: ", 11);
    MEMORY[0x1B8C84C00](v15, v11);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v25);
  }

  kaldi::SubMatrix<float>::SubMatrix(v25, a2, 0, v11, 0, *(a2 + 8));
  kaldi::Matrix<float>::Matrix(v24, v25, 111);
  quasar::Bitmap::~Bitmap(v25);
  v16 = *(a1 + 1016);
  v17.n128_u32[0] = *(a1 + 936);
  v18 = *(a1 + 1040);
  v22 = *(a1 + 1032);
  v23 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(a1 + 1008);
  v20 = *(a1 + 1000);
  v21 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kaldi::DecodableMatrixScaledMappedLazyNnet1::DecodableMatrixScaledMappedLazyNnet1(v25, v16, v24, &v22, &v20, *(a1 + 948), 10240, v17);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  quasar::RealignAmFusionDecoder::redecodeLattice();
}

void sub_1B5645C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::DecodableMatrixScaledMappedLazyNnet1::~DecodableMatrixScaledMappedLazyNnet1(va1);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_1B5647968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&STACK[0x2A0]);
  v33 = STACK[0x3F8];
  STACK[0x3F8] = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  kaldi::ScoreCacheFasterDecoder::~ScoreCacheFasterDecoder(&a29);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x3B0]);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v31 - 240));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<int,int>>>>::~__hash_table(v31 - 224);
  _Unwind_Resume(a1);
}

void quasar::RealignAmFusionDecoder::~RealignAmFusionDecoder(quasar::RealignAmFusionDecoder *this)
{
  quasar::RealignAmFusionDecoder::~RealignAmFusionDecoder(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D226C8;
  kaldi::Vector<float>::Destroy(this + 1048);
  v2 = *(this + 130);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 126);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 991) < 0)
  {
    operator delete(*(this + 121));
  }

  if (*(this + 935) < 0)
  {
    operator delete(*(this + 114));
  }

  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  quasar::ForceAlignDecoderBase::~ForceAlignDecoderBase(this);
}

BOOL quasar::getInfoFromLinearLattice(void *a1, kaldi::WordBoundaryInfo **a2, kaldi::TransitionModel *a3, int a4, uint64_t a5, kaldi::LatticeScoreCache *a6, uint64_t a7, uint64_t a8, char *a9)
{
  *(a7 + 8) = *a7;
  *(a8 + 8) = *a8;
  std::__list_imp<quasar::Word>::clear(a9);
  v82 = *a2;
  v13 = (*(*a1 + 24))(a1);
  if (v13 == -1)
  {
    return 0;
  }

  v14 = v13;
  v84 = a6;
  v81 = a2;
  for (i = (*(*a1 + 160))(a1); ; --i)
  {
    (*(*a1 + 32))(__p, a1, v14);
    LODWORD(v88[0]) = HIDWORD(__p[0]);
    LODWORD(v90) = __p[0];
    v111[0] = 2139095040;
    v110 = INFINITY;
    v16.n128_u32[0] = __p[0];
    if (*__p == INFINITY)
    {
      v16.n128_u32[0] = v88[0];
      v17 = __p[1];
      v18 = *v88 == v110 && v94 == __p[1];
    }

    else
    {
      v18 = 0;
      v17 = __p[1];
    }

    v19 = i > 0 && v18;
    if (v17)
    {
      *&v94 = v17;
      operator delete(v17);
    }

    if (!v19)
    {
      break;
    }

    v20 = *(*(*(a1[1] + 64) + 8 * v14) + 48);
    v21 = *(*(*(a1[1] + 64) + 8 * v14) + 56);
    v22 = v21 - v20;
    if (v21 == v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(*(*(a1[1] + 64) + 8 * v14) + 48);
    }

    if (v21 == v20)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "!aiter.Done()");
      goto LABEL_112;
    }

    v25 = *(v20 + 16);
    v24 = *(v20 + 24);
    while (v25 != v24)
    {
      if (*v25 >= 1)
      {
        std::vector<int>::push_back[abi:ne200100](a7, v25);
      }

      ++v25;
    }

    if (*(v23 + 4) > 0)
    {
      std::vector<int>::push_back[abi:ne200100](a8, (v23 + 4));
    }

    if (0xAAAAAAAAAAAAAAABLL * (v22 >> 4) >= 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "aiter.Done()");
      goto LABEL_112;
    }

    v14 = *(v23 + 40);
  }

  (*(*a1 + 32))(__p, a1, v14, v16);
  LODWORD(v88[0]) = HIDWORD(__p[0]);
  LODWORD(v90) = __p[0];
  v111[0] = 2139095040;
  v110 = INFINITY;
  v26.n128_u32[0] = __p[0];
  if (*__p == INFINITY)
  {
    v26.n128_u32[0] = v88[0];
    v28 = v81;
    v27 = *v88 != v110 || v94 != __p[1];
  }

  else
  {
    v27 = 1;
    v28 = v81;
  }

  if (__p[1])
  {
    *&v94 = __p[1];
    operator delete(__p[1]);
  }

  if (!v27)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "lat.Final(s) != kaldi::CompactLatticeWeight::Zero()");
LABEL_112:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  (*(*a1 + 32))(__p, a1, v14, v26);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, __p[1], v94, (v94 - __p[1]) >> 2);
  if (__p[1])
  {
    *&v94 = __p[1];
    operator delete(__p[1]);
  }

  v31 = v90;
  v30 = v91;
  while (v31 != v30)
  {
    if (*v31 >= 1)
    {
      std::vector<int>::push_back[abi:ne200100](a7, v31);
    }

    ++v31;
  }

  v32 = *a7;
  v33 = *(a7 + 8);
  v29 = *a7 != v33;
  v34 = v82;
  if (*a7 != v33)
  {
    v35 = 0;
    v36 = -1;
    while (1)
    {
      v111[0] = kaldi::TransitionModel::TransitionIdToPhone(a3, v32[v35]);
      if (v111[0] != a4)
      {
        break;
      }

LABEL_90:
      ++v35;
      v32 = *a7;
      v73 = *(a7 + 8) - *a7;
      ++v36;
      if (v35 >= v73 >> 2)
      {
        if (*(a9 + 2))
        {
          *(*a9 + 100) = (v73 >> 2) - 1;
        }

        v74 = *a8;
        if (*(a8 + 8) != *a8)
        {
          v75 = 0;
          v76 = a9;
          do
          {
            v76 = *(v76 + 1);
            if (v76 == a9)
            {
              operator new();
            }

            v77 = *(*v28 + 5);
            v78 = v74[v75];
            if (v77)
            {
              v79 = *v28 + 40;
              do
              {
                if (*(v77 + 28) >= v78)
                {
                  v79 = v77;
                }

                v77 = *(v77 + 8 * (*(v77 + 28) < v78));
              }

              while (v77);
              if (v79 != (*v28 + 40) && v78 >= *(v79 + 28))
              {
                goto LABEL_104;
              }
            }

            if (v78 == *(v34 + 6))
            {
LABEL_104:
              operator new();
            }

            *(v76 + 4) = v78;
            ++v75;
            v74 = *a8;
          }

          while (v75 < (*(a8 + 8) - *a8) >> 2);
        }

        goto LABEL_107;
      }
    }

    IsSelfLoop = kaldi::TransitionModel::IsSelfLoop(a3, *(*a7 + 4 * v35));
    if (v84)
    {
      Score = kaldi::LatticeScoreCache::GetScore(v84, v35, *(*(a3 + 12) + 4 * *(*a7 + 4 * v35)));
      if (IsSelfLoop)
      {
        goto LABEL_58;
      }
    }

    else
    {
      Score = 0.0;
      if (IsSelfLoop)
      {
LABEL_58:
        if (!*(a9 + 2))
        {
          if (quasar::gLogLevel >= 5)
          {
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Words list should not be empty.", 31);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

          operator new();
        }

        v39 = *a9;
        if (kaldi::TransitionModel::IsSelfLoop(a3, *(*a7 + 4 * v35)))
        {
          if (v84)
          {
            v40 = *(v39 + 80);
            v41 = *(v40 - 4);
            if (Score < v41)
            {
              v41 = Score;
            }

            *(v40 - 4) = v41;
          }
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100]((v39 + 24), v111);
          if (a5)
          {
            (*(*a5 + 88))(v88);
            v43 = *(v39 + 56);
            v42 = *(v39 + 64);
            if (v43 >= v42)
            {
              v45 = *(v39 + 48);
              v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v45) >> 3);
              v47 = v46 + 1;
              if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v45) >> 3);
              if (2 * v48 > v47)
              {
                v47 = 2 * v48;
              }

              if (v48 >= 0x555555555555555)
              {
                v49 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v49 = v47;
              }

              *&v95 = v39 + 48;
              if (v49)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v39 + 48, v49);
              }

              v50 = 24 * v46;
              v51 = *v88;
              *(v50 + 16) = v89;
              *v50 = v51;
              v88[1] = 0;
              v89 = 0;
              v88[0] = 0;
              v52 = 24 * v46 + 24;
              v53 = *(v39 + 48);
              v54 = *(v39 + 56) - v53;
              v55 = (24 * v46 - v54);
              memcpy(v55, v53, v54);
              v56 = *(v39 + 48);
              *(v39 + 48) = v55;
              *(v39 + 56) = v52;
              v57 = *(v39 + 64);
              *(v39 + 64) = 0;
              *&v94 = v56;
              *(&v94 + 1) = v57;
              __p[0] = v56;
              __p[1] = v56;
              std::__split_buffer<std::string>::~__split_buffer(__p);
              v58 = SHIBYTE(v89);
              *(v39 + 56) = v52;
              v34 = v82;
              if (v58 < 0)
              {
                operator delete(v88[0]);
              }
            }

            else
            {
              v44 = *v88;
              *(v43 + 16) = v89;
              *v43 = v44;
              *(v39 + 56) = v43 + 24;
            }
          }

          if (v84)
          {
            v60 = *(v39 + 80);
            v59 = *(v39 + 88);
            if (v60 >= v59)
            {
              v62 = *(v39 + 72);
              v63 = v60 - v62;
              v64 = (v60 - v62) >> 2;
              v65 = v64 + 1;
              if ((v64 + 1) >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v66 = v59 - v62;
              if (v66 >> 1 > v65)
              {
                v65 = v66 >> 1;
              }

              v67 = v66 >= 0x7FFFFFFFFFFFFFFCLL;
              v68 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v67)
              {
                v68 = v65;
              }

              if (v68)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v39 + 72, v68);
              }

              v69 = (v60 - v62) >> 2;
              v70 = (4 * v64);
              v71 = (4 * v64 - 4 * v69);
              *v70 = Score;
              v61 = v70 + 1;
              memcpy(v71, v62, v63);
              v72 = *(v39 + 72);
              *(v39 + 72) = v71;
              *(v39 + 80) = v61;
              *(v39 + 88) = 0;
              if (v72)
              {
                operator delete(v72);
              }
            }

            else
            {
              *v60 = Score;
              v61 = v60 + 1;
            }

            *(v39 + 80) = v61;
            v34 = v82;
          }
        }

        goto LABEL_90;
      }
    }

    if (kaldi::WordBoundaryInfo::TypeOfPhone(*v28, v111[0]) == 1 || kaldi::WordBoundaryInfo::TypeOfPhone(*v28, v111[0]) == 3)
    {
      if (*(a9 + 2))
      {
        *(*a9 + 100) = v36;
      }

      operator new();
    }

    goto LABEL_58;
  }

LABEL_107:
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  return v29;
}

void sub_1B5648978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void std::__list_imp<quasar::Word>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        v6 = *(v2 + 9);
        if (v6)
        {
          *(v2 + 10) = v6;
          operator delete(v6);
        }

        v8 = (v2 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
        v7 = *(v2 + 3);
        if (v7)
        {
          *(v2 + 4) = v7;
          operator delete(v7);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::vector<quasar::Word>::__init_with_size[abi:ne200100]<std::__list_iterator<quasar::Word,void *>,std::__list_iterator<quasar::Word,void *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::Word>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5648B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::Word>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Word>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Word>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Word>,std::__list_iterator<quasar::Word,void *>,std::__list_iterator<quasar::Word,void *>,quasar::Word*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *(v6 + 16);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 8, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 2);
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4 + 32, *(v6 + 48), *(v6 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 56) - *(v6 + 48)) >> 3));
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 56, *(v6 + 72), *(v6 + 80), (*(v6 + 80) - *(v6 + 72)) >> 2);
      *(v4 + 80) = *(v6 + 96);
      v6 = *(v6 + 8);
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Word>,quasar::Word*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void sub_1B5648CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Word>,quasar::Word*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::Word>,quasar::Word*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::Word>,std::reverse_iterator<quasar::Word*>,std::reverse_iterator<quasar::Word*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::Word>,std::reverse_iterator<quasar::Word*>,std::reverse_iterator<quasar::Word*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v11[3] = v5;
    v11[4] = v6;
    v8 = a3;
    do
    {
      v9 = *(v8 - 32);
      if (v9)
      {
        *(v8 - 24) = v9;
        operator delete(v9);
      }

      v11[0] = (v8 - 56);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
      v10 = *(v8 - 80);
      if (v10)
      {
        *(v8 - 72) = v10;
        operator delete(v10);
      }

      v8 -= 88;
    }

    while (v8 != a5);
  }
}

void std::vector<quasar::Word>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::Word>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::Word>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }

    v6 = (i - 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 80);
    if (v5)
    {
      *(i - 72) = v5;
      operator delete(v5);
    }
  }

  a1[1] = v2;
}

uint64_t *std::map<int,std::set<int>>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::allocator<quasar::FirstPassArcDetail>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 16);
  if (v3)
  {
    *(a2 + 24) = v3;
    operator delete(v3);
  }
}

uint64_t std::vector<quasar::FirstPassArcDetail>::__emplace_back_slow_path<int &>(uint64_t *a1, _DWORD *a2)
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::FirstPassArcDetail>>(a1, v6);
  }

  v7 = 72 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 4) = 0;
  *(v7 + 8) = 1065353216;
  *(v7 + 12) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *&v16 = 72 * v2 + 72;
  v8 = a1[1];
  v9 = 72 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::FirstPassArcDetail>::~__split_buffer(&v14);
  return v13;
}

void sub_1B56490A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::FirstPassArcDetail>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::FirstPassArcDetail>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 5) = *(v7 + 5);
      *a4 = v8;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(a4 + 64) = *(v7 + 64);
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::FirstPassArcDetail>::destroy[abi:ne200100](a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<quasar::FirstPassArcDetail>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::FirstPassArcDetail>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::FirstPassArcDetail>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::FirstPassArcDetail>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    std::allocator<quasar::FirstPassArcDetail>::destroy[abi:ne200100](v4, i - 72);
  }
}

void kaldi::MinimumBayesRisk::~MinimumBayesRisk(kaldi::MinimumBayesRisk *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 192);
  v7 = (this + 168);
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 144);
  std::vector<std::map<int,std::set<int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 120);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = (this + 40);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 16);
  std::vector<kaldi::MinimumBayesRisk::Arc>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::map<int,std::set<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<kaldi::MinimumBayesRisk::Arc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::MinimumBayesRisk::Arc>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::MinimumBayesRisk::Arc>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void kaldi::ScoreCacheFasterDecoder::~ScoreCacheFasterDecoder(kaldi::ScoreCacheFasterDecoder *this)
{
  v2 = *(this + 7);
  if (v2 != -1)
  {
    v3 = *(this + 9);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  *(this + 7) = -1;
  kaldi::ScoreCacheFasterDecoder::ClearToks(this, v5);
  v6 = MEMORY[0x1E69E9A60];
  v7 = MEMORY[0x1B8C874F0](*MEMORY[0x1E69E9A60], *(this + 2), 28 * *(this + 8));
  if (v7)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v11 = MEMORY[0x1B8C84BB0](v26, this);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": Could not vm_deallocate ", 26);
    v13 = MEMORY[0x1B8C84C30](v12, 28 * *(this + 8));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " bytes of ", 10);
    v15 = strlen((0x80000001B5AFEAF8 & 0x7FFFFFFFFFFFFFFFLL));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, 0x80000001B5AFEAF8 & 0x7FFFFFFFFFFFFFFFLL, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    MEMORY[0x1B8C84C00](v17, v7);
    goto LABEL_13;
  }

  v8 = MEMORY[0x1B8C874F0](*v6, *this, 4 * *(this + 8));
  if (v8)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v18 = MEMORY[0x1B8C84BB0](v26, this);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": Could not vm_deallocate ", 26);
    v20 = MEMORY[0x1B8C84C30](v19, 4 * *(this + 8));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " bytes of ", 10);
    v22 = *(MEMORY[0x1E69E5480] + 8);
    v23 = strlen((v22 & 0x7FFFFFFFFFFFFFFFLL));
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22 & 0x7FFFFFFFFFFFFFFFLL, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    MEMORY[0x1B8C84C00](v25, v8);
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  v9 = *(this + 27);
  if (v9)
  {
    *(this + 28) = v9;
    operator delete(v9);
  }

  v26[0] = (this + 192);
  std::vector<kaldi::ScoreCacheFasterDecoder::LmTrie>::__destroy_vector::operator()[abi:ne200100](v26);
  v10 = *(this + 21);
  if (v10)
  {
    *(this + 22) = v10;
    operator delete(v10);
  }

  kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::~HashList(this + 6);
}

void fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89[4] = *MEMORY[0x1E69E9840];
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 24))(a1) != -1)
  {
    LODWORD(v85[0]) = 0;
    if (!fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v84, a3, v85))
    {
      if (*(a3 + 4))
      {
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        if (!*(a3 + 16))
        {
          fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, &v78, 1);
        }

        v8 = *(a3 + 16);
        v10 = *v8;
        v9 = v8[1];
        if ((*(*a1 + 24))(a1) < ((v9 - v10) >> 2))
        {
          LODWORD(v85[0]) = *(*v8 + 4 * (*(*a1 + 24))(a1));
          LODWORD(v66[0]) = 2139095040;
          if (*v85 != INFINITY)
          {
            v85[0] = &v81;
            v85[1] = v8;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            memset(v89, 0, 28);
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v72 = 0;
            v73 = 0;
            v74 = 0;
            memset(__p, 0, sizeof(__p));
            v11 = (*(*a1 + 24))(a1);
            v70 = v11;
            if (v11 >= ((v8[1] - *v8) >> 2))
            {
              v12 = INFINITY;
            }

            else
            {
              v12 = *(*v8 + 4 * v11);
              v13 = NAN;
              if (v12 == -INFINITY)
              {
                goto LABEL_16;
              }
            }

            v14 = *a3;
            v13 = NAN;
            if (*a3 != -INFINITY)
            {
              v13 = INFINITY;
              v15 = v14 == INFINITY || v12 == INFINITY;
              v16 = v12 + v14;
              if (!v15)
              {
                v13 = v16;
              }
            }

LABEL_16:
            v69 = v13;
            while (v70 >= ((v76 - v75) >> 2))
            {
              std::vector<int>::push_back[abi:ne200100](&v75, &fst::kNoStateId);
            }

            v17 = (*(*a2 + 200))(a2);
            v18 = v75;
            *(v75 + v70) = v17;
            (*(*a2 + 176))(a2, v18[v70]);
            v19 = v81;
            for (i = v70; v70 >= ((v82 - v81) >> 2); i = v70)
            {
              LODWORD(v66[0]) = 2139095040;
              std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](&v81, v66);
              v19 = v81;
            }

            v19[i] = 0;
            while (v70 >= ((v73 - v72) >> 3))
            {
              v66[0] = -1;
              std::vector<long long>::push_back[abi:ne200100](&v72, v66);
              LOBYTE(v66[0]) = 0;
              std::vector<BOOL>::push_back(__p, v66);
            }

            v21 = fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(v85, &v70);
            *(v72 + v70) = v21;
            if (!LODWORD(v89[3]))
            {
              goto LABEL_97;
            }

            while (1)
            {
              v70 = *v89[0];
              fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Pop(v85);
              v22 = v70;
              v23 = v70;
              *(v72 + v70) = -1;
              *(__p[0] + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
              v24 = v81;
              (*(*a1 + 32))(a1);
              v26 = v24[v23];
              v27 = NAN;
              if (v26 != -INFINITY && v25 != -INFINITY)
              {
                v27 = INFINITY;
                v28 = v26 == INFINITY || v25 == INFINITY;
                v29 = v25 + v26;
                if (!v28)
                {
                  v27 = v29;
                }
              }

              *v66 = v27;
              if (!fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v84, &v69, v66))
              {
                v30 = *(v75 + v70);
                (*(*a1 + 32))(a1);
                (*(*a2 + 184))(a2, v30);
              }

              v68 = 0;
              (*(*a1 + 136))(a1, v70, v66);
              while (1)
              {
                if (!v66[0])
                {
                  if (v68 >= v66[2])
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_39;
                }

                if ((*(*v66[0] + 24))(v66[0]))
                {
                  break;
                }

                if (v66[0])
                {
                  v31 = (*(*v66[0] + 32))();
                  goto LABEL_40;
                }

LABEL_39:
                v31 = v66[1] + 16 * v68;
LABEL_40:
                v32 = *(v81 + v70);
                v33 = NAN;
                if (v32 != -INFINITY)
                {
                  v34 = *(v31 + 8);
                  v33 = NAN;
                  if (v34 != -INFINITY)
                  {
                    v33 = INFINITY;
                    v35 = v34 == INFINITY || v32 == INFINITY;
                    v36 = v32 + v34;
                    if (!v35)
                    {
                      v33 = v36;
                    }
                  }
                }

                v38 = (v31 + 12);
                v37 = *(v31 + 12);
                if (v37 >= (v8[1] - *v8) >> 2)
                {
                  v39 = INFINITY;
                }

                else
                {
                  v39 = *(*v8 + 4 * v37);
                }

                v40 = NAN;
                if (v33 != -INFINITY && v39 != -INFINITY)
                {
                  v40 = INFINITY;
                  v41 = v39 == INFINITY || v33 == INFINITY;
                  v42 = v33 + v39;
                  if (!v41)
                  {
                    v40 = v42;
                  }
                }

                v65 = v40;
                if (!fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v84, &v69, &v65) && (*(a3 + 4) == -1 || (*(*a2 + 160))(a2) < *(a3 + 4)))
                {
                  while (1)
                  {
                    v43 = *v38;
                    if (v43 < (v82 - v81) >> 2)
                    {
                      break;
                    }

                    LODWORD(v62) = 2139095040;
                    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](&v81, &v62);
                  }

                  v44 = *(v81 + v70);
                  v45 = NAN;
                  if (v44 != -INFINITY)
                  {
                    v46 = *(v31 + 8);
                    v45 = NAN;
                    if (v46 != -INFINITY)
                    {
                      v45 = INFINITY;
                      v47 = v46 == INFINITY || v44 == INFINITY;
                      v48 = v44 + v46;
                      if (!v47)
                      {
                        v45 = v48;
                      }
                    }
                  }

                  *&v62 = v45;
                  if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v84, &v62, v81 + v43))
                  {
                    v49 = *(v81 + v70);
                    v50 = NAN;
                    if (v49 != -INFINITY)
                    {
                      v51 = *(v31 + 8);
                      v50 = NAN;
                      if (v51 != -INFINITY)
                      {
                        v50 = INFINITY;
                        v52 = v51 == INFINITY || v49 == INFINITY;
                        v53 = v49 + v51;
                        if (!v52)
                        {
                          v50 = v53;
                        }
                      }
                    }

                    *(v81 + *v38) = v50;
                  }

                  while (1)
                  {
                    v54 = v75;
                    v55 = *v38;
                    if (v55 < (v76 - v75) >> 2)
                    {
                      break;
                    }

                    std::vector<int>::push_back[abi:ne200100](&v75, &fst::kNoStateId);
                  }

                  v56 = *(v75 + v55);
                  if (v56 == -1)
                  {
                    v57 = (*(*a2 + 200))(a2);
                    v54 = v75;
                    *(v75 + *v38) = v57;
                    v56 = v54[*v38];
                  }

                  v58 = v54[v70];
                  v62 = *v31;
                  v63 = *(v31 + 8);
                  v64 = v56;
                  (*(*a2 + 208))(a2, v58, &v62);
                  while (1)
                  {
                    v59 = *v38;
                    if (v59 < (v73 - v72) >> 3)
                    {
                      break;
                    }

                    v62 = -1;
                    std::vector<long long>::push_back[abi:ne200100](&v72, &v62);
                    LOBYTE(v62) = 0;
                    std::vector<BOOL>::push_back(__p, &v62);
                  }

                  if (((*(__p[0] + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
                  {
                    v60 = *(v72 + v59);
                    if (v60 == -1)
                    {
                      v61 = fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Insert(v85, (v31 + 12));
                      *(v72 + *v38) = v61;
                    }

                    else
                    {
                      fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::Update(v85, v60, (v31 + 12));
                    }
                  }
                }

                if (v66[0])
                {
                  (*(*v66[0] + 40))(v66[0]);
                }

                else
                {
                  ++v68;
                }
              }

              if (v66[0])
              {
                (*(*v66[0] + 8))();
                goto LABEL_96;
              }

LABEL_94:
              if (v67)
              {
                --*v67;
              }

LABEL_96:
              if (!LODWORD(v89[3]))
              {
LABEL_97:
                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if (v72)
                {
                  v73 = v72;
                  operator delete(v72);
                }

                if (v75)
                {
                  v76 = v75;
                  operator delete(v75);
                }

                fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::~Heap(v85);
                break;
              }
            }
          }
        }

        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }
      }
    }
  }
}

void sub_1B564A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  fst::Heap<int,fst::PruneCompare<int,fst::TropicalWeightTpl<float>>,false>::~Heap(&a34);
  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D1B560;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

{
  *a1 = &unk_1F2D1B560;
  a1[1] = 0;
  fst::DeterminizeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Init<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultDeterminizeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>>>(a1, a2);
}

void sub_1B564A6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

uint64_t *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 200))();
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::InitNumArcs(a1);
    v4 = (*(**a1 + 160))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2);
  }

  return a1;
}

void sub_1B564A8D4(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::InitNumArcs(void *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  std::vector<int>::resize((a1 + 2), v2);
  std::vector<int>::resize((a1 + 5), v2);
  result = (*(**a1 + 24))();
  ++*(a1[2] + 4 * result);
  if (v2 < 1)
  {
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    (*(**a1 + 32))(&v12);
    v19 = *(&v12 + 1);
    v20 = v12;
    v18 = 2139095040;
    v17 = INFINITY;
    v5.n128_u32[0] = v12;
    if (*&v12 != INFINITY)
    {
      v6 = 1;
      v7 = __p;
      if (!__p)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v5.n128_f32[0] = v19;
    v7 = __p;
    if (v19 == v17)
    {
      v6 = v14 != __p;
      if (!__p)
      {
        goto LABEL_9;
      }

LABEL_8:
      v14 = v7;
      operator delete(v7);
      goto LABEL_9;
    }

    v6 = 1;
    if (__p)
    {
      goto LABEL_8;
    }

LABEL_9:
    if (v6)
    {
      ++*(a1[5] + 4 * i);
    }

    v8 = *a1;
    v16 = 0;
    (*(*v8 + 136))(v8, i, &v12, v5);
    while (1)
    {
      result = v12;
      if (!v12)
      {
        if (v16 >= v14)
        {
          goto LABEL_23;
        }

LABEL_17:
        v11 = 0;
        v10 = __p + 48 * v16;
        goto LABEL_18;
      }

      v9 = (*(*v12 + 24))(v12);
      result = v12;
      if (v9)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_17;
      }

      v10 = (*(*v12 + 32))();
      v11 = v12;
LABEL_18:
      ++*(a1[2] + 4 * *(v10 + 10));
      ++*(a1[5] + 4 * i);
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      else
      {
        ++v16;
      }
    }

    if (v12)
    {
      result = (*(*v12 + 8))();
      continue;
    }

LABEL_23:
    if (v15)
    {
      --*v15;
    }
  }

  return result;
}

void sub_1B564AC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>();
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v10 + 24));
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::GetArc(a1, a2, a3, &v17);
  if (v22 == a2 || v22 == *(a1 + 8))
  {
    goto LABEL_16;
  }

  v7 = *(*(a1 + 40) + 4 * v22);
  if (*(*(a1 + 16) + 4 * v22) != 1 || v7 < 2)
  {
    if (v7 != 1)
    {
      goto LABEL_16;
    }

    v11[0] = v17;
    v11[1] = v18;
    memset(v12, 0, sizeof(v12));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, v19, v20, (v20 - v19) >> 2);
    v13 = v22;
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEpsPattern2(a1, a2, a3, v11);
    v9 = v12[0];
    if (!v12[0])
    {
      goto LABEL_16;
    }

    v10 = v11;
  }

  else
  {
    v14[0] = v17;
    v14[1] = v18;
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v19, v20, (v20 - v19) >> 2);
    v16 = v22;
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEpsPattern1(a1, a2, a3, v14);
    v9 = __p[0];
    if (!__p[0])
    {
      goto LABEL_16;
    }

    v10 = v14;
  }

  v10[3] = v9;
  operator delete(v9);
LABEL_16:
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_1B564AD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *(v18 - 64);
  if (v20)
  {
    *(v18 - 56) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::GetArc(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v11 = 0;
  (*(*v6 + 136))(v6, a2, v9);
  if (v9[0])
  {
    (*(*v9[0] + 64))(v9[0], a3);
    if (v9[0])
    {
      v7 = (*(*v9[0] + 32))(v9[0]);
      goto LABEL_7;
    }

    a3 = v11;
  }

  else
  {
    v11 = a3;
  }

  v7 = v9[1] + 48 * a3;
LABEL_7:
  *a4 = *v7;
  fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a4 + 8), v7 + 8);
  *(a4 + 40) = *(v7 + 40);
  result = v9[0];
  if (v9[0])
  {
    return (*(*v9[0] + 8))(v9[0]);
  }

  if (v10)
  {
    --*v10;
  }

  return result;
}

void sub_1B564AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v7 = a4[5].i32[0];
  v130 = vneg_f32(0x7F0000007FLL);
  v132 = 0;
  v133 = 0;
  v131 = 0;
  v126 = v130;
  v128 = 0;
  v129 = 0;
  v127 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  (*(**a1 + 296))();
  while (!(*(*v122 + 24))(v122))
  {
    v8 = (*(*v122 + 32))(v122);
    v116 = *v8;
    v117 = *(v8 + 8);
    v119 = 0;
    v120 = 0;
    v118 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v118, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
    v121 = *(v8 + 40);
    if (v121 == *(a1 + 2))
    {
      goto LABEL_18;
    }

    v113 = 0;
    v114 = 0;
    v115 = 0;
    if (!fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::CanCombineArcs(a1, a4, &v116, &v111))
    {
      if ((v126.f32[0] + v126.f32[1]) < (*&v117 + *(&v117 + 1)))
      {
        goto LABEL_8;
      }

      v10 = &v117;
      if ((v126.f32[0] + v126.f32[1]) <= (*&v117 + *(&v117 + 1)))
      {
        if (v126.f32[0] < *&v117)
        {
LABEL_8:
          v10 = &v126;
        }

        else
        {
          v10 = &v117;
          if (v126.f32[0] <= *&v117)
          {
            v21 = v127;
            v22 = (v128 - v127) >> 2;
            v23 = v118;
            v24 = (v119 - v118) >> 2;
            v10 = &v117;
            if (v22 <= v24)
            {
              v10 = &v126;
              if (v22 >= 1 && v22 >= v24)
              {
                v25 = (((v128 - v127) >> 2) & 0x7FFFFFFF) - 1;
                while (1)
                {
                  v27 = *v21++;
                  v26 = v27;
                  v29 = *v23++;
                  v28 = v29;
                  if (v26 < v29)
                  {
                    break;
                  }

                  v30 = v26 > v28 || v25-- == 0;
                  v10 = &v126;
                  if (v30)
                  {
                    goto LABEL_14;
                  }
                }

                v10 = &v117;
              }
            }
          }
        }
      }

LABEL_14:
      v107 = *v10;
      v109 = 0;
      v110 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v10[1], v10[2], (v10[2] - v10[1]) >> 2);
      v126 = v107;
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v127, __p, v109, (v109 - __p) >> 2);
      if (__p)
      {
        v109 = __p;
        operator delete(__p);
      }

      goto LABEL_16;
    }

    if ((v130.f32[0] + v130.f32[1]) >= (*&v117 + *(&v117 + 1)))
    {
      v9 = &v117;
      if ((v130.f32[0] + v130.f32[1]) > (*&v117 + *(&v117 + 1)))
      {
        goto LABEL_10;
      }

      if (v130.f32[0] >= *&v117)
      {
        v9 = &v117;
        if (v130.f32[0] <= *&v117)
        {
          v11 = v131;
          v12 = (v132 - v131) >> 2;
          v13 = v118;
          v14 = (v119 - v118) >> 2;
          v9 = &v117;
          if (v12 <= v14)
          {
            v9 = &v130;
            if (v12 >= 1 && v12 >= v14)
            {
              v15 = (((v132 - v131) >> 2) & 0x7FFFFFFF) - 1;
              while (1)
              {
                v17 = *v11++;
                v16 = v17;
                v19 = *v13++;
                v18 = v19;
                if (v16 < v19)
                {
                  break;
                }

                v20 = v16 > v18 || v15-- == 0;
                v9 = &v130;
                if (v20)
                {
                  goto LABEL_10;
                }
              }

              v9 = &v117;
            }
          }
        }

        goto LABEL_10;
      }
    }

    v9 = &v130;
LABEL_10:
    v107 = *v9;
    v109 = 0;
    v110 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *&v9[1], *&v9[2], (*&v9[2] - *&v9[1]) >> 2);
    v130 = v107;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v131, __p, v109, (v109 - __p) >> 2);
    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }

    --*(a1[5] + 4 * v7);
    --*(a1[2] + 4 * v121);
    v121 = *(a1 + 2);
    (*(*v122 + 88))(v122, &v116);
    std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::push_back[abi:ne200100](&v123, &v111);
LABEL_16:
    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }

LABEL_18:
    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    (*(*v122 + 40))(v122);
  }

  if (v122)
  {
    (*(*v122 + 8))(v122);
  }

  (*(**a1 + 32))(&v116);
  LODWORD(v107) = HIDWORD(v116);
  LODWORD(v111) = v116;
  LODWORD(v122) = 2139095040;
  v136 = INFINITY;
  if (*&v116 != INFINITY)
  {
    v31 = v117;
    v32 = v118;
    goto LABEL_53;
  }

  v31 = v117;
  v32 = v118;
  if (*&v107 == v136 && v118 == v117)
  {
    if (v117)
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

LABEL_53:
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v103 = v116;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v104, v31, v32, (v32 - v31) >> 2);
  CanCombineFinal = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::CanCombineFinal(a4, &v103, &v111);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  if (CanCombineFinal)
  {
    if ((v130.f32[0] + v130.f32[1]) < (*&v116 + *(&v116 + 1)))
    {
      goto LABEL_57;
    }

    if ((v130.f32[0] + v130.f32[1]) <= (*&v116 + *(&v116 + 1)))
    {
      if (v130.f32[0] < *&v116)
      {
LABEL_57:
        v34 = &v130;
      }

      else
      {
        if (v130.f32[0] > *&v116)
        {
          goto LABEL_89;
        }

        v60 = v131;
        v61 = (v132 - v131) >> 2;
        v62 = v117;
        v63 = (v118 - v117) >> 2;
        if (v61 > v63)
        {
          goto LABEL_89;
        }

        v34 = &v130;
        if (v61 >= 1 && v61 >= v63)
        {
          v64 = (((v132 - v131) >> 2) & 0x7FFFFFFF) - 1;
          do
          {
            v66 = *v60++;
            v65 = v66;
            v68 = *v62++;
            v67 = v68;
            if (v65 < v68)
            {
              goto LABEL_89;
            }

            v69 = v65 > v67 || v64-- == 0;
            v34 = &v130;
          }

          while (!v69);
        }
      }
    }

    else
    {
LABEL_89:
      v34 = &v116;
    }

    v41 = v34->i32[1];
    LODWORD(v107) = v34->i32[0];
    HIDWORD(v107) = v41;
    v109 = 0;
    v110 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *&v34[1], *&v34[2], (*&v34[2] - *&v34[1]) >> 2);
    v130 = v107;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v131, __p, v109, (v109 - __p) >> 2);
    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }

    (*(**a1 + 32))(&v107);
    v136 = *(&v107 + 1);
    LODWORD(v122) = v107;
    v135 = 2139095040;
    v134 = INFINITY;
    v42.n128_u32[0] = v107;
    v43 = *&v107 == INFINITY && (v42.n128_f32[0] = v136, v136 == v134) && v109 == __p;
    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }

    if (v43)
    {
      ++*(a1[5] + 4 * a2);
    }

    v44 = *a1;
    (*(**a1 + 32))(&v107, *a1, a2, v42);
    if ((*&v107 + *(&v107 + 1)) < (*&v111 + *(&v111 + 1)))
    {
LABEL_101:
      v45 = &v107;
      goto LABEL_108;
    }

    if ((*&v107 + *(&v107 + 1)) > (*&v111 + *(&v111 + 1)))
    {
      goto LABEL_107;
    }

    if (*&v107 < *&v111)
    {
      goto LABEL_101;
    }

    if (*&v107 > *&v111 || (v80 = __p, v81 = (v109 - __p) >> 2, v82 = v112, v83 = (v113 - v112) >> 2, v81 > v83))
    {
LABEL_107:
      v45 = &v111;
    }

    else
    {
      v45 = &v107;
      if (v81 >= 1 && v81 >= v83)
      {
        v84 = (((v109 - __p) >> 2) & 0x7FFFFFFF) - 1;
        do
        {
          v86 = *v80++;
          v85 = v86;
          v88 = *v82++;
          v87 = v88;
          if (v85 < v88)
          {
            goto LABEL_107;
          }

          v89 = v85 > v87 || v84-- == 0;
          v45 = &v107;
        }

        while (!v89);
      }
    }

LABEL_108:
    v48 = *(v45 + 1);
    v99[0] = *v45;
    v99[1] = v48;
    v101 = 0;
    v102 = 0;
    v100 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v100, v45[1], v45[2], (v45[2] - v45[1]) >> 2);
    (*(*v44 + 184))(v44, a2, v99);
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (__p)
    {
      v109 = __p;
      operator delete(__p);
    }

    --*(a1[5] + 4 * v7);
    v49 = *a1;
    v95 = vneg_f32(0x7F0000007FLL);
    v97 = 0;
    v98 = 0;
    v96 = 0;
    (*(*v49 + 184))(v49, v7, &v95);
    v47 = v96;
    if (v96)
    {
      v97 = v96;
LABEL_114:
      operator delete(v47);
    }

    goto LABEL_115;
  }

  if ((v126.f32[0] + v126.f32[1]) < (*&v116 + *(&v116 + 1)))
  {
LABEL_59:
    v35 = &v126;
    goto LABEL_104;
  }

  if ((v126.f32[0] + v126.f32[1]) > (*&v116 + *(&v116 + 1)))
  {
    goto LABEL_103;
  }

  if (v126.f32[0] < *&v116)
  {
    goto LABEL_59;
  }

  if (v126.f32[0] > *&v116 || (v70 = v127, v71 = (v128 - v127) >> 2, v72 = v117, v73 = (v118 - v117) >> 2, v71 > v73))
  {
LABEL_103:
    v35 = &v116;
  }

  else
  {
    v35 = &v126;
    if (v71 >= 1 && v71 >= v73)
    {
      v74 = (((v128 - v127) >> 2) & 0x7FFFFFFF) - 1;
      do
      {
        v76 = *v70++;
        v75 = v76;
        v78 = *v72++;
        v77 = v78;
        if (v75 < v78)
        {
          goto LABEL_103;
        }

        v79 = v75 > v77 || v74-- == 0;
        v35 = &v126;
      }

      while (!v79);
    }
  }

LABEL_104:
  v46 = *(v35 + 1);
  LODWORD(v107) = *v35;
  HIDWORD(v107) = v46;
  v109 = 0;
  v110 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v35[1], v35[2], (v35[2] - v35[1]) >> 2);
  v126 = v107;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v127, __p, v109, (v109 - __p) >> 2);
  v47 = __p;
  if (__p)
  {
    v109 = __p;
    goto LABEL_114;
  }

LABEL_115:
  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  v31 = v117;
  if (v117)
  {
LABEL_63:
    v118 = v31;
    operator delete(v31);
  }

LABEL_64:
  LODWORD(v111) = v130.i32[1];
  LODWORD(v116) = v130.i32[0];
  LODWORD(v107) = 2139095040;
  LODWORD(v122) = 2139095040;
  if (v130.f32[0] != INFINITY || *&v111 != *&v122 || v132 != v131)
  {
    LODWORD(v111) = v126.i32[1];
    LODWORD(v116) = v126.i32[0];
    LODWORD(v107) = 2139095040;
    LODWORD(v122) = 2139095040;
    if (v126.f32[0] == INFINITY && *&v111 == *&v122 && v128 == v127)
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * a4[5].i32[0]);
      a4[5].i32[0] = *(a1 + 2);
      (*(**a1 + 296))();
      (*(*v111 + 64))(v111, a3);
      (*(*v111 + 88))(v111, a4);
      if (v111)
      {
        (*(*v111 + 8))(v111);
      }
    }

    else
    {
      if ((v130.f32[0] + v130.f32[1]) < (v126.f32[0] + v126.f32[1]))
      {
        goto LABEL_71;
      }

      if ((v130.f32[0] + v130.f32[1]) <= (v126.f32[0] + v126.f32[1]))
      {
        if (v130.f32[0] < v126.f32[0])
        {
LABEL_71:
          v36 = &v130;
        }

        else
        {
          if (v130.f32[0] > v126.f32[0])
          {
            goto LABEL_73;
          }

          v50 = v131;
          v51 = (v132 - v131) >> 2;
          v52 = v127;
          v53 = (v128 - v127) >> 2;
          if (v51 > v53)
          {
            goto LABEL_73;
          }

          v36 = &v130;
          if (v51 >= 1 && v51 >= v53)
          {
            v54 = (((v132 - v131) >> 2) & 0x7FFFFFFF) - 1;
            do
            {
              v56 = *v50++;
              v55 = v56;
              v58 = *v52++;
              v57 = v58;
              if (v55 < v58)
              {
                goto LABEL_73;
              }

              v59 = v55 > v57 || v54-- == 0;
              v36 = &v130;
            }

            while (!v59);
          }
        }
      }

      else
      {
LABEL_73:
        v36 = &v126;
      }

      v37 = v36->i32[1];
      LODWORD(v116) = v36->i32[0];
      HIDWORD(v116) = v37;
      v118 = 0;
      v119 = 0;
      v117 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v117, *&v36[1], *&v36[2], (*&v36[2] - *&v36[1]) >> 2);
      fst::Divide<fst::LatticeWeightTpl<float>,int>(&v126, &v116, 0, &v111);
      v91 = v111;
      v93 = 0;
      v94 = 0;
      v92 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v92, v112, v113, (v113 - v112) >> 2);
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::Reweight(a1, a2, a3, &v91);
      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (v112)
      {
        v113 = v112;
        operator delete(v112);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }
    }
  }

  v38 = v123;
  if (v124 != v123)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *(v38 + v39 + 40));
      (*(**a1 + 208))(*a1, a2);
      ++v40;
      v38 = v123;
      v39 += 48;
    }

    while (v40 < 0xAAAAAAAAAAAAAAABLL * ((v124 - v123) >> 4));
  }

  v116 = &v123;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v116);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void sub_1B564BC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39)
{
  a36 = v39 - 192;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a36);
  v41 = *(v39 - 160);
  if (v41)
  {
    *(v39 - 152) = v41;
    operator delete(v41);
  }

  v42 = *(v39 - 128);
  if (v42)
  {
    *(v39 - 120) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a4[5].i32[0];
  v9 = *(a1[2] + 4 * v8);
  v10 = v8;
  (*(**a1 + 32))(&v55);
  v30.i32[0] = v55.i32[1];
  LODWORD(v36) = v55.i32[0];
  LODWORD(v42) = 2139095040;
  v60 = INFINITY;
  if (v55.f32[0] == INFINITY && v30.f32[0] == v60 && v57 == v56)
  {
    (*(**a1 + 296))(*a1, v10, &v42);
    while (*((*(*v42 + 32))(v42) + 40) == *(a1 + 2))
    {
      (*(*v42 + 40))(v42);
    }

    v28 = (*(*v42 + 32))(v42);
    v36 = *v28;
    v37 = *(v28 + 8);
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v38, *(v28 + 16), *(v28 + 24), (*(v28 + 24) - *(v28 + 16)) >> 2);
    v41 = *(v28 + 40);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    CanCombineArcs = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::CanCombineArcs(a1, a4, &v36, &v30);
    if (CanCombineArcs)
    {
      if (v9 == 1)
      {
        --*(a1[5] + 4 * v10);
        --*(a1[2] + 4 * v41);
        v41 = *(a1 + 2);
        (*(*v42 + 88))(v42, &v36);
      }

      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * v35);
      (*(**a1 + 208))(*a1, a2, &v30);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    if (CanCombineArcs)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v51 = v55;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v52, v56, v57, (v57 - v56) >> 2);
  CanCombineFinal = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::CanCombineFinal(a4, &v51, &v36);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (CanCombineFinal)
  {
    (*(**a1 + 32))(&v30);
    v60 = v30.f32[1];
    LODWORD(v42) = v30.i32[0];
    v59 = 2139095040;
    v58 = INFINITY;
    v12.n128_u32[0] = v30.i32[0];
    v13 = v30.f32[0] == INFINITY && (v12.n128_f32[0] = v60, v60 == v58) && v32 == __p;
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      ++*(a1[5] + 4 * a2);
    }

    v14 = *a1;
    (*(**a1 + 32))(&v30, *a1, a2, v12);
    if ((v30.f32[0] + v30.f32[1]) < (*&v36 + *(&v36 + 1)))
    {
      goto LABEL_16;
    }

    if ((v30.f32[0] + v30.f32[1]) <= (*&v36 + *(&v36 + 1)))
    {
      if (v30.f32[0] < *&v36)
      {
LABEL_16:
        v15 = &v30;
LABEL_19:
        v16 = v15->i32[1];
        v47[0] = v15->i32[0];
        v47[1] = v16;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v48, *&v15[1], *&v15[2], (*&v15[2] - *&v15[1]) >> 2);
        (*(*v14 + 184))(v14, a2, v47);
        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (v9 == 1)
        {
          --*(a1[5] + 4 * v10);
          v17 = *a1;
          v43 = vneg_f32(0x7F0000007FLL);
          v45 = 0;
          v46 = 0;
          v44 = 0;
          (*(*v17 + 184))(v17, v10, &v43);
          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }
        }

        goto LABEL_26;
      }

      if (v30.f32[0] <= *&v36)
      {
        v18 = __p;
        v19 = (v32 - __p) >> 2;
        v20 = v37;
        v21 = (v38 - v37) >> 2;
        if (v19 <= v21)
        {
          v15 = &v30;
          if (v19 < 1 || v19 < v21)
          {
            goto LABEL_19;
          }

          v22 = (((v32 - __p) >> 2) & 0x7FFFFFFF) - 1;
          while (1)
          {
            v24 = *v18++;
            v23 = v24;
            v26 = *v20++;
            v25 = v26;
            if (v23 < v26)
            {
              break;
            }

            v27 = v23 > v25 || v22-- == 0;
            v15 = &v30;
            if (v27)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }

    v15 = &v36;
    goto LABEL_19;
  }

LABEL_26:
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (CanCombineFinal)
  {
LABEL_29:
    --*(a1[5] + 4 * a2);
    --*(a1[2] + 4 * v10);
    a4[5].i32[0] = *(a1 + 2);
    (*(**a1 + 296))();
    (*(*v36 + 64))(v36, a3);
    (*(*v36 + 88))(v36, a4);
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

LABEL_31:
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_1B564C46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::CanCombineArcs(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  if (a2->i32[0])
  {
    v4 = a3->i32[0] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return 0;
  }

  if (a2->i32[1] && a3->i32[1] != 0)
  {
    return 0;
  }

  fst::Times<fst::LatticeWeightTpl<float>,int>(a2 + 1, a3 + 1, &v13);
  a4[1] = v13;
  if (&a4[1] != &v13)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&a4[2], __p, v15, (v15 - __p) >> 2);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v9 = a3->i32[0];
  v10 = a2->i32[1];
  if (a2->i32[0])
  {
    v9 = a2->i32[0];
  }

  a4->i32[0] = v9;
  v11 = a3->i32[1];
  if (v10)
  {
    v11 = v10;
  }

  a4->i32[1] = v11;
  a4[5].i32[0] = a3[5].i32[0];
  return 1;
}

void sub_1B564C65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::CanCombineFinal(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = *a1 == 0;
  if (!*a1)
  {
    fst::Times<fst::LatticeWeightTpl<float>,int>(a1 + 1, a2, &v6);
    *a3 = v6;
    if (&v6 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&a3[1], __p, v8, (v8 - __p) >> 2);
    }

    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return v3;
}

void sub_1B564C704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReweightPlusDefault<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::Reweight(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  (*(**a1 + 296))(*a1, a2, &v31);
  (*(*v31 + 64))(v31, a3);
  v7 = (*(*v31 + 32))(v31);
  v25 = *v7;
  v26 = *(v7 + 8);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
  v30 = *(v7 + 40);
  fst::Times<fst::LatticeWeightTpl<float>,int>(&v26, a4, &v18);
  v26 = v18;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v27, __p, v20, (v20 - __p) >> 2);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  (*(*v31 + 88))(v31, &v25);
  (*(**a1 + 296))(*a1, v30, &v24);
  while (!(*(*v24 + 24))(v24))
  {
    v8 = (*(*v24 + 32))(v24);
    v18 = *v8;
    __p = *(v8 + 8);
    v21 = 0;
    v22 = 0;
    v20 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
    v23 = *(v8 + 40);
    if (v23 != *(a1 + 2))
    {
      fst::Divide<fst::LatticeWeightTpl<float>,int>(&__p, a4, 0, &v15);
      __p = v15;
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v20, v16, v17, (v17 - v16) >> 2);
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      (*(*v24 + 88))(v24, &v18);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    (*(*v24 + 40))(v24);
  }

  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  (*(**a1 + 32))(&v18);
  LODWORD(v24) = v18.i32[1];
  v15.i32[0] = v18.i32[0];
  v33 = 2139095040;
  v32 = INFINITY;
  if (v18.f32[0] != INFINITY || *&v24 != v32 || v20 != __p)
  {
    v9 = *a1;
    v10 = v30;
    fst::Divide<fst::LatticeWeightTpl<float>,int>(&v18, a4, 0, &v12);
    (*(*v9 + 184))(v9, v10, &v12);
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  result = v31;
  if (v31)
  {
    return (*(*v31 + 8))(v31);
  }

  return result;
}

void sub_1B564CB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v23 = *(v21 - 80);
  if (v23)
  {
    *(v21 - 72) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 48);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::FirstPassArcDetail>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 72;
        std::allocator<quasar::FirstPassArcDetail>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::default_delete<quasar::DetailedLattice>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = &unk_1F2D227A8;
    v3 = (a2 + 8);
    v5 = (a2 + 24);
    std::vector<quasar::FirstPassArcDetail>::__destroy_vector::operator()[abi:ne200100](&v5);
    fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(v3);
    return MEMORY[0x1B8C85350](a2, 0xA1C40A3561BEDLL);
  }

  return result;
}

uint64_t quasar::DetailedLattice::AddArc(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = (a1 + 24);
  v9 = v6[2];
  *(a3 + 4) = 954437177 * ((v7 - v8) >> 3);
  if (v7 >= v9)
  {
    v10 = std::vector<kaldi::WordHypLattice::InputArcDetail>::__emplace_back_slow_path<>(v6);
  }

  else
  {
    *v7 = 0;
    *(v7 + 8) = 0x3FF0000000000000;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0;
    v10 = v7 + 72;
  }

  *(a1 + 32) = v10;
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(a1 + 8);
  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::AddArc(*(a1 + 16), a2, a3);
  return *(a1 + 32) - 72;
}

uint64_t std::vector<kaldi::WordHypLattice::InputArcDetail>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v4 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::WordHypLattice::InputArcDetail>>(a1, v4);
  }

  v5 = 72 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0;
  *(v5 + 8) = 0x3FF0000000000000;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *&v14 = 72 * v1 + 72;
  v6 = a1[1];
  v7 = 72 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::WordHypLattice::InputArcDetail>,kaldi::WordHypLattice::InputArcDetail*>(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<quasar::FirstPassArcDetail>::~__split_buffer(&v12);
  return v11;
}

void sub_1B564CF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::FirstPassArcDetail>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::WordHypLattice::InputArcDetail>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::WordHypLattice::InputArcDetail>,kaldi::WordHypLattice::InputArcDetail*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
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
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(a4 + 64) = *(v7 + 64);
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::FirstPassArcDetail>::destroy[abi:ne200100](a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::WordHypLattice::InputArcDetail>,kaldi::WordHypLattice::InputArcDetail*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::WordHypLattice::InputArcDetail>,kaldi::WordHypLattice::InputArcDetail*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::FirstPassArcDetail>,quasar::FirstPassArcDetail*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<quasar::DetailedLattice  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::DetailedLattice  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<int,int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<int,int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<int,int>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<int,int>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<int,int>>,0>(uint64_t a1)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<int,int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<int,int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<int,int>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B564D4E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<int,int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<int,int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<int,int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<int,int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<int,int>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__shared_ptr_emplace<kaldi::quasar::LexiconFst>::__shared_ptr_emplace[abi:ne200100]<float &,std::string &,BOOL,std::allocator<kaldi::quasar::LexiconFst>,0>(void *a1, float *a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D22830;
  kaldi::quasar::LexiconFst::LexiconFst(a1 + 3, a3, *a4, *a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::LexiconFst>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D22830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::allocator<kaldi::quasar::LexiconFst>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  return fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a2);
}

void *std::__shared_ptr_emplace<kaldi::TrainingGraphCompiler>::__shared_ptr_emplace[abi:ne200100]<kaldi::TransitionModel const&,kaldi::ContextDependency &,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *&,std::vector<int> &,kaldi::TrainingGraphCompilerOptions &,std::allocator<kaldi::TrainingGraphCompiler>,0>(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D22880;
  kaldi::TrainingGraphCompiler::TrainingGraphCompiler(a1 + 3, a2, a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::TrainingGraphCompiler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D22880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::TrainingGraphCompiler::~TrainingGraphCompiler(kaldi::TrainingGraphCompiler *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void fst::DeterministicOnDemandFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::Final(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  (*(*a1 + 8))(a1, a2, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1B564DA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterministicOnDemandFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::GetArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = (*(*a1 + 24))(a1, a2, a3, a4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1B564DBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::LmeFst::CreateFst(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v6 = a2[1];
      v7 = v6 - *a2;
      if (v6 != *a2)
      {
        v10 = *a1;
        v9 = *(a1 + 8);
        if (v9 != *a1)
        {
          v11 = v9 - 16;
          v12 = (v9 - 16);
          v13 = (v9 - 16);
          do
          {
            v14 = *v13;
            v13 -= 2;
            (*v14)(v12);
            v11 -= 16;
            v15 = v12 == v10;
            v12 = v13;
          }

          while (!v15);
          *(a1 + 8) = v10;
          v16 = *(*(a1 + 32) + 8);
          __p[0] = &unk_1F2D06B30;
          __p[1] = v16;
          ++v16[42];
          fst::SymbolTable::operator=(a1 + 40, __p);
          fst::SymbolTable::~SymbolTable(__p);
        }

        v17 = *(a5 + 8);
        __p[0] = &unk_1F2D06B30;
        __p[1] = v17;
        ++v17[42];
        v18 = a1 + 192;
        fst::SymbolTable::operator=(a1 + 192, __p);
        fst::SymbolTable::~SymbolTable(__p);
        v19 = (*(*(a1 + 192) + 120))(a1 + 192);
        v20 = (*(*(a1 + 192) + 128))(a1 + 192, 0);
        if (v19)
        {
          v21 = v20;
          v22 = 1;
          v23 = v19;
          do
          {
            (*(*v18 + 88))(__p, a1 + 192, v21);
            fst::SymbolTable::MutateCheck(a1 + 40);
            fst::SymbolTableImpl::AddSymbol(*(a1 + 48), __p, v21);
            if (SBYTE7(v28) < 0)
            {
              operator delete(__p[0]);
            }

            if (v22 < v19)
            {
              v21 = (*(*v18 + 128))(a1 + 192, v22);
            }

            ++v22;
            --v23;
          }

          while (v23);
        }

        std::__tree<std::string>::destroy(a1 + 152, *(a1 + 160));
        *(a1 + 152) = a1 + 160;
        *(a1 + 160) = 0;
        v24 = *(a1 + 240);
        *(a1 + 168) = 0;
        std::__tree<std::string>::destroy(a1 + 232, v24);
        *(a1 + 240) = 0;
        *(a1 + 248) = 0;
        *(a1 + 232) = a1 + 240;
        std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::vector[abi:ne200100](v26, 0xAAAAAAAAAAAAAAABLL * (v7 >> 3));
        *__p = 0u;
        v28 = 0u;
        v29 = 1065353216;
        operator new();
      }

      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the number of templates in the user data is zero", 48);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
      }
    }

    else if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the base symbol table is empty", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
    }
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the base lexicon is empty", 25);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
  }

  return 0;
}

void sub_1B564EE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char ****a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char ***a33, uint64_t a34, uint64_t a35, char **a36, uint64_t a37, uint64_t a38, char *a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  a28 = &a33;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a33 = &a36;
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a33);
  a36 = &a39;
  std::vector<std::unordered_map<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a36);
  a39 = &a42;
  std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::__destroy_vector::operator()[abi:ne200100](&a39);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::unordered_map<std::string,unsigned long>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_map<std::string,unsigned long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

void std::vector<std::vector<std::vector<std::string>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::vector<std::string>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void std::vector<std::vector<std::string>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::string>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

uint64_t kaldi::quasar::LmeFst::GetNumberOfWordDisambiguationSymbols(kaldi::quasar::LmeFst *this, const fst::SymbolTable *a2)
{
  v3 = (*(*this + 120))(this, a2);
  v4 = (*(*this + 128))(this, 0);
  if (!v3)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    (*(*this + 88))(&v21, this, v5);
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    v9 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    if (size >= 3)
    {
      v10 = std::string::at(&v21, 0);
      v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      v9 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
      if (*v10 == 47)
      {
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = v21.__r_.__value_.__l.__size_;
        }

        v12 = std::string::at(&v21, v11 - 1);
        v13 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
        v9 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
        if (*v12 == 47)
        {
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v21;
          }

          else
          {
            v14 = v21.__r_.__value_.__r.__words[0];
          }

          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v13 = v21.__r_.__value_.__l.__size_;
          }

          if (v13 >= 10)
          {
            v15 = (v14 + v13);
            v16 = v14;
            do
            {
              v17 = memchr(v16, 47, v13 - 9);
              if (!v17)
              {
                break;
              }

              if (v17->__r_.__value_.__r.__words[0] == 0x49442D44524F572FLL && LOWORD(v17->__r_.__value_.__r.__words[1]) == 11603)
              {
                if (v17 == v14)
                {
                  v19 = v6 + 1;
                }

                else
                {
                  v19 = v6;
                }

                if (v17 != v15)
                {
                  v6 = v19;
                }

                break;
              }

              v16 = (&v17->__r_.__value_.__l.__data_ + 1);
              v13 = v15 - v16;
            }

            while (v15 - v16 >= 10);
          }
        }
      }
    }

    if (v9 < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (++v7 < v3)
    {
      v5 = (*(*this + 128))(this, v7);
    }
  }

  while (v7 != v3);
  return v6;
}

void sub_1B564F574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::LmeFst::RemoveWordSetContent(uint64_t a1, const void ***a2, uint64_t a3)
{
  if (a2[2])
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "has to remove ", 14);
      v7 = MEMORY[0x1B8C84C30](v6, a2[2]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " words, rebuild the FST now", 27);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v23);
    }

    v8 = *a2;
    if (*a2 != (a2 + 1))
    {
      do
      {
        std::__tree<std::string>::__erase_unique<std::string>((a1 + 152), v8 + 4);
        v9 = v8[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v8 = v10;
      }

      while (v10 != a2 + 1);
    }

    v24 = 0;
    v12 = 0uLL;
    v23 = 0u;
    v14 = *a3;
    v13 = *(a3 + 8);
    if (*a3 == v13)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v15 = (*v14 + 24);
        if (*(a1 + 56))
        {
          __p = 0uLL;
          v22 = 0;
          v16 = v14[1];
          memset(v20, 0, sizeof(v20));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(v20, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
          v17 = (a1 + 208);
          if (*(a1 + 231) < 0)
          {
            v17 = *(a1 + 208);
          }

          kaldi::JoinVectorToString(v20, v17, 1, &__p);
          v25 = v20;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
          if (!std::__tree<std::string>::__count_unique<std::string>(a2, &__p))
          {
            std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v23, v14);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          while (v15 != v14[1])
          {
            if (std::__tree<std::string>::__count_unique<std::string>(a2, v15))
            {
              goto LABEL_23;
            }

            v15 += 3;
          }

          std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v23, v14);
        }

LABEL_23:
        v14 += 3;
        v13 = *(a3 + 8);
      }

      while (v14 != v13);
      v14 = *a3;
      v12 = v23;
      v18 = v24;
    }

    *a3 = v12;
    *&v23 = v14;
    *(&v23 + 1) = v13;
    v19 = *(a3 + 16);
    *(a3 + 16) = v18;
    v24 = v19;
    *&__p = &v23;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "remove excessive homophone prons without removing words, rebuild the FST now", 76);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v23);
  }
}

uint64_t kaldi::quasar::LmeFst::CreateFstDirect(uint64_t a1, uint64_t *a2, int a3, int a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!*(a1 + 24))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the base lexicon is empty", 25);
LABEL_64:
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
    return 0;
  }

  if (!*(a1 + 32))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the base symbol table is empty", 30);
    goto LABEL_64;
  }

  if (*(a1 + 56) != 1)
  {
    goto LABEL_37;
  }

  if (*(a1 + 96) == -1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the optional silence ", 21);
      v16 = *(a1 + 64);
      v15 = a1 + 64;
      v14 = v16;
      v17 = *(v15 + 23);
      if (v17 >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v14;
      }

      if (v17 >= 0)
      {
        v19 = *(v15 + 23);
      }

      else
      {
        v19 = *(v15 + 8);
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v18, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " is not defined in the symbol table", 35);
      goto LABEL_64;
    }

    return 0;
  }

  v11 = *(a1 + 231);
  if (v11 < 0)
  {
    v12 = *(a1 + 208);
    v11 = *(a1 + 216);
    if (!v11)
    {
      goto LABEL_37;
    }

LABEL_21:
    v21 = &v12[v11];
    v22 = v12;
LABEL_22:
    v23 = 0;
    while (*v22 != asc_1B5C3B95D[v23])
    {
      if (++v23 == 3)
      {
        if (++v22 != v21)
        {
          goto LABEL_22;
        }

        goto LABEL_37;
      }
    }

    if (v22 == v21 || v22 - v12 == -1)
    {
      goto LABEL_37;
    }

    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the word boundary string can only have non-space characters, you set it (", 73);
    v25 = *(a1 + 231);
    if (v25 >= 0)
    {
      v26 = a1 + 208;
    }

    else
    {
      v26 = *(a1 + 208);
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 231);
    }

    else
    {
      v27 = *(a1 + 216);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ")", 1);
    goto LABEL_64;
  }

  v12 = (a1 + 208);
  if (*(a1 + 231))
  {
    goto LABEL_21;
  }

LABEL_37:
  v30 = *a2;
  v29 = a2[1];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a2) >> 3);
  a5[1] = *a5;
  std::vector<kaldi::quasar::LmeFst::Stats>::resize(a5, v31);
  if (v29 == v30)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the number of templates in the user data is zero", 48);
    goto LABEL_64;
  }

  v32 = v29 - v30 == 24 || a8 == 0;
  if (v32)
  {
    v34 = *a1;
    v33 = *(a1 + 8);
    if (v33 != *a1)
    {
      v35 = v33 - 16;
      v36 = (v33 - 16);
      v37 = (v33 - 16);
      do
      {
        v38 = *v37;
        v37 -= 2;
        (*v38)(v36);
        v35 -= 16;
        v32 = v36 == v34;
        v36 = v37;
      }

      while (!v32);
      *(a1 + 8) = v34;
      v39 = *(*(a1 + 32) + 8);
      __p[0] = &unk_1F2D06B30;
      __p[1] = v39;
      ++v39[42];
      fst::SymbolTable::operator=(a1 + 40, __p);
      fst::SymbolTable::~SymbolTable(__p);
    }

    v40 = *(a7 + 8);
    __p[0] = &unk_1F2D06B30;
    __p[1] = v40;
    ++v40[42];
    v41 = a1 + 192;
    fst::SymbolTable::operator=(a1 + 192, __p);
    fst::SymbolTable::~SymbolTable(__p);
    v42 = (*(*(a1 + 192) + 120))(a1 + 192);
    v43 = (*(*(a1 + 192) + 128))(a1 + 192, 0);
    if (v42)
    {
      v44 = v43;
      v45 = 1;
      v46 = v42;
      do
      {
        (*(*v41 + 88))(__p, a1 + 192, v44);
        fst::SymbolTable::MutateCheck(a1 + 40);
        fst::SymbolTableImpl::AddSymbol(*(a1 + 48), __p, v44);
        if (SBYTE7(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (v45 < v42)
        {
          v44 = (*(*v41 + 128))(a1 + 192, v45);
        }

        ++v45;
        --v46;
      }

      while (v46);
    }

    std::__tree<std::string>::destroy(a1 + 152, *(a1 + 160));
    *(a1 + 152) = a1 + 160;
    *(a1 + 160) = 0;
    v47 = *(a1 + 240);
    *(a1 + 168) = 0;
    std::__tree<std::string>::destroy(a1 + 232, v47);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = a1 + 240;
    std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::vector[abi:ne200100](v60, v31);
    if (v60[0] != v60[1])
    {
      *__p = 0u;
      v54 = 0u;
      v55 = 1065353216;
      operator new();
    }

    std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::vector[abi:ne200100](v59, v31);
    if (v59[0] != v59[1])
    {
      *__p = 0u;
      v54 = 0u;
      v55 = 1065353216;
      operator new();
    }

    memset(v58, 0, sizeof(v58));
    std::vector<std::unordered_map<std::string,unsigned long>>::resize(v58, v31);
    memset(v57, 0, sizeof(v57));
    std::vector<std::vector<std::vector<std::string>>>::resize(v57, v31);
    memset(v56, 0, sizeof(v56));
    std::vector<std::vector<std::string>>::resize(v56, v31);
    std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::resize(a1, v31);
    kaldi::quasar::LmeFst::GetNumberOfWordDisambiguationSymbols(*(a1 + 32), v48);
    kaldi::quasar::ExtractLexiconForLmeSlot(*a2, *(a1 + 24), a3, a4, *v60[0]);
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "incomplete_fst should not be used with more than 1 FST", 54);
    goto LABEL_64;
  }

  return 0;
}

void sub_1B56510B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  __p = (v23 - 240);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v23 - 216);
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v23 - 192);
  std::vector<std::unordered_map<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v23 - 168);
  std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v23 - 144);
  std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::LmeFst::Stats>::resize(void *a1, unint64_t a2)
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
    std::vector<kaldi::quasar::LmeFst::Stats>::__append(a1, a2 - v2);
  }
}

uint64_t kaldi::quasar::LmeFst::BuildCompoundLexicon(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = (*(*a2 + 56))(a2);
  v7 = std::unordered_set<std::string>::unordered_set(v71, v6);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v7, (a1 + 64));
  kaldi::quasar::Lexicon::MergePhoneSet(a4, v71);
  v69 = 1;
  kaldi::Timer::Reset(v68, v8);
  v70 = 0;
  v9 = *a3;
  if (*a3 != a3[1])
  {
    v55 = *MEMORY[0x1E69E54E8];
    v56 = *(MEMORY[0x1E69E54E8] + 24);
    v50 = a4;
    do
    {
      std::vector<std::vector<std::string>>::vector[abi:ne200100](v67, -1 - 0x5555555555555555 * ((v9[1] - *v9) >> 3));
      v10 = (*v9 + 24);
      if (v10 != v9[1])
      {
        v11 = 0;
        v53 = v9;
        do
        {
          v66[0] = 0;
          v66[1] = 0;
          v65 = v66;
          kaldi::quasar::Lexicon::GetPron(a2, v10, &v65);
          v54 = v10;
          p_first = &v65->__first_;
          if (v65 != v66)
          {
            do
            {
              v63 = 0uLL;
              v64 = 0;
              kaldi::JoinVectorToString(p_first + 4, " ", 1, &v63);
              v13 = v67[0];
              if (v11 < -1 - 0x5555555555555555 * ((v67[1] - v67[0]) >> 3))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](v57);
                if (v64 >= 0)
                {
                  v14 = &v63;
                }

                else
                {
                  v14 = v63;
                }

                if (v64 >= 0)
                {
                  v15 = HIBYTE(v64);
                }

                else
                {
                  v15 = *(&v63 + 1);
                }

                v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v14, v15);
                v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
                v18 = *(a1 + 87);
                if (v18 >= 0)
                {
                  v19 = a1 + 64;
                }

                else
                {
                  v19 = *(a1 + 64);
                }

                if (v18 >= 0)
                {
                  v20 = *(a1 + 87);
                }

                else
                {
                  v20 = *(a1 + 72);
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
                v21 = v67[0];
                std::stringbuf::str();
                v22 = v21 + 24 * v11;
                v23 = *(v22 + 8);
                v24 = *(v22 + 16);
                if (v23 >= v24)
                {
                  v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v22) >> 3);
                  v28 = v27 + 1;
                  if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v22) >> 3);
                  if (2 * v29 > v28)
                  {
                    v28 = 2 * v29;
                  }

                  if (v29 >= 0x555555555555555)
                  {
                    v30 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v30 = v28;
                  }

                  v72.__end_cap_.__value_ = v22;
                  if (v30)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v22, v30);
                  }

                  v31 = 24 * v27;
                  v32 = __p;
                  *(v31 + 16) = v62;
                  *v31 = v32;
                  v62 = 0;
                  __p = 0uLL;
                  v26 = 24 * v27 + 24;
                  v33 = *(v22 + 8) - *v22;
                  v34 = 24 * v27 - v33;
                  memcpy((v31 - v33), *v22, v33);
                  v35 = *v22;
                  *v22 = v34;
                  v72.__begin_ = v35;
                  *(v22 + 8) = v26;
                  v72.__end_ = v35;
                  v36 = *(v22 + 16);
                  *(v22 + 16) = 0;
                  v72.__end_cap_.__value_ = v36;
                  v72.__first_ = v35;
                  std::__split_buffer<std::string>::~__split_buffer(&v72);
                }

                else
                {
                  v25 = __p;
                  *(v23 + 16) = v62;
                  *v23 = v25;
                  v62 = 0;
                  __p = 0uLL;
                  v26 = v23 + 24;
                }

                *(v22 + 8) = v26;
                if (SHIBYTE(v62) < 0)
                {
                  operator delete(__p);
                }

                v57[0] = v55;
                *(v57 + *(v55 - 3)) = v56;
                v57[1] = (MEMORY[0x1E69E5548] + 16);
                if (v59 < 0)
                {
                  operator delete(v58[7].__locale_);
                }

                v57[1] = (MEMORY[0x1E69E5538] + 16);
                std::locale::~locale(v58);
                std::ostream::~ostream();
                MEMORY[0x1B8C85200](&v60);
                v13 = v67[0];
              }

              std::vector<std::string>::push_back[abi:ne200100](v13 + 24 * v11, &v63);
              if (SHIBYTE(v64) < 0)
              {
                operator delete(v63);
              }

              v37 = p_first[1];
              if (v37)
              {
                do
                {
                  v38 = v37;
                  v37 = *v37;
                }

                while (v37);
              }

              else
              {
                do
                {
                  v38 = p_first[2];
                  v39 = *v38 == p_first;
                  p_first = v38;
                }

                while (!v39);
              }

              p_first = v38;
            }

            while (v38 != v66);
          }

          std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&v65, v66[0]);
          ++v11;
          v9 = v53;
          v10 = v54 + 3;
        }

        while (v54 + 3 != v53[1]);
      }

      v57[0] = 0;
      v57[1] = 0;
      v58[0].__locale_ = 0;
      v40 = v9[1];
      v41 = *v9 + 24;
      memset(&v72, 0, 24);
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v72, v41, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 3));
      v42 = (a1 + 208);
      a4 = v50;
      if (*(a1 + 231) < 0)
      {
        v42 = *(a1 + 208);
      }

      kaldi::JoinVectorToString(&v72, v42, 1, v57);
      v65 = &v72;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
      kaldi::quasar::LmeFst::Permutation(a1, v57, v67, v50);
      if (SHIBYTE(v58[0].__locale_) < 0)
      {
        operator delete(v57[0]);
      }

      v57[0] = v67;
      std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v57);
      v9 += 3;
    }

    while (v9 != a3[1]);
  }

  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v57, 2);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "LME: spent ", 11);
    Seconds = kaldi::Timer::GetSeconds(5, v44);
    v46 = MEMORY[0x1B8C84BE0](v43, Seconds - v68[0]);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " seconds on creating the compound lexicon for ", 46);
    v48 = MEMORY[0x1B8C84C30](v47, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " items", 6);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v57);
  }

  kaldi::quasar::Lexicon::SetPronView(a4, 3u, 1);
  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v71);
}

void kaldi::quasar::LmeFst::BuildCompoundChainFst(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, float a7)
{
  v67 = 0uLL;
  v68 = 0;
  v13 = (a1 + 208);
  if (*(a1 + 231) < 0)
  {
    v13 = *v13;
  }

  kaldi::JoinVectorToString(a2, v13, 1, &v67);
  v14 = *(a1 + 48);
  v15 = fst::internal::DenseSymbolMap::Find(v14 + 5, &v67);
  if (v15 != -1)
  {
    v16 = v14[4];
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v18 < 0 == v17)
    {
      v15 = *(v14[15] + 8 * v18);
    }
  }

  v53 = v15;
  if (*(a1 + 176))
  {
    v19 = (*(*(*a1 + 16 * a5) + 272))(*a1 + 16 * a5);
    (*(*v19 + 24))(v19, &v67, v53);
  }

  if (kaldi::quasar::Lexicon::WordHasDisambigLabel(a4, &v67) || std::__tree<std::string>::__count_unique<std::string>(a1 + 232, &v67))
  {
    kaldi::quasar::LmeFst::BuildChainFst(a1, &v67, a4, a5, a6, a7);
  }

  else
  {
    memset(&v66, 0, sizeof(v66));
    v20 = *a2;
    if (a2[1] != *a2)
    {
      v57 = a5;
      v49 = a6;
      v21 = 0;
      v22 = 0;
      v55 = -1;
      v23 = -1;
      do
      {
        v64 = 0;
        v65 = 0;
        v63 = &v64;
        kaldi::quasar::Lexicon::GetPron(a3, (v20 + 24 * v21), &v63);
        if (v21)
        {
          v24 = v22;
        }

        else
        {
          v24 = 1;
        }

        v51 = v65;
        v52 = v24;
        v25 = v63;
        v58 = v21;
        v56 = v21 + 1;
        if (v63 == &v64)
        {
          v59 = -1;
        }

        else
        {
          v59 = -1;
          v54 = 1;
          do
          {
            v26 = *(v25 + 4);
            if (*(v25 + 5) != v26)
            {
              v27 = 0;
              v28 = 0;
              v29 = v58;
              do
              {
                std::string::operator=(&v66, (v26 + v27));
                if (v28 | v29)
                {
                  size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = v66.__r_.__value_.__l.__size_;
                  }

                  v31 = std::string::at(&v66, size - 2);
                  v32 = 0;
                  if (v28)
                  {
                    v33 = v23;
                  }

                  else
                  {
                    v33 = v55;
                  }

                  *v31 = 73;
                  v34 = 0.0;
                }

                else
                {
                  v33 = *(a1 + 104);
                  v35 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v35 = v66.__r_.__value_.__l.__size_;
                  }

                  *std::string::at(&v66, v35 - 2) = 66;
                  v34 = a7;
                  v32 = v53;
                }

                if (v56 == 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) && v28 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 5) - *(v25 + 4)) >> 3))
                {
                  v23 = *(a1 + 108);
                  v36 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v36 = v66.__r_.__value_.__l.__size_;
                  }

                  *std::string::at(&v66, v36 - 2) = 69;
                }

                else if (v59 == -1 || (v23 = v59, v28 + 1 != 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 5) - *(v25 + 4)) >> 3)))
                {
                  v23 = (*(*(*a1 + 16 * v57) + 200))(*a1 + 16 * v57);
                }

                if (!v29 && !v28 && v56 == 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) && *(v25 + 5) - *(v25 + 4) == 24)
                {
                  v43 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v43 = v66.__r_.__value_.__l.__size_;
                  }

                  v44 = &v66;
                  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v44 = v66.__r_.__value_.__r.__words[0];
                  }

                  v44->__r_.__value_.__s.__data_[v43 - 2] = 83;
                }

                v60 = &v66;
                v37 = *(std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 112), &v66.__r_.__value_.__l.__data_) + 10);
                v38 = *a1 + 16 * v57;
                v60 = __PAIR64__(v32, v37);
                v61 = v34;
                v62 = v23;
                (*(*v38 + 208))(v38, v33, &v60);
                if (v54)
                {
                  v39 = v59;
                  if (v28 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 5) - *(v25 + 4)) >> 3))
                  {
                    v39 = v23;
                  }

                  v59 = v39;
                }

                if (v58 && !v28)
                {
                  v40 = (*(*(*a1 + 16 * v57) + 200))(*a1 + 16 * v57);
                  v41 = *a1 + 16 * v57;
                  v60 = *(a1 + 96);
                  v61 = 0.0;
                  v62 = v40;
                  (*(*v41 + 208))(v41, v55, &v60);
                  v42 = *a1 + 16 * v57;
                  v60 = __PAIR64__(v32, v37);
                  v61 = v34;
                  v62 = v23;
                  (*(*v42 + 208))(v42, v40, &v60);
                }

                ++v28;
                v26 = *(v25 + 4);
                v27 += 24;
                v29 = v58;
              }

              while (v28 < 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 5) - v26) >> 3));
            }

            v45 = *(v25 + 1);
            if (v45)
            {
              do
              {
                v46 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v46 = *(v25 + 2);
                v47 = *v46 == v25;
                v25 = v46;
              }

              while (!v47);
            }

            v54 = 0;
            v25 = v46;
          }

          while (v46 != &v64);
        }

        v22 = v51 * v52;
        std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&v63, v64);
        v20 = *a2;
        v21 = v56;
        v55 = v59;
      }

      while (v56 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      v48 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
      *v49 += v22;
      if (v48 < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }
}

void sub_1B565223C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 113) < 0)
  {
    operator delete(*(v30 - 136));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::LmeFst::BuildChainFst(uint64_t *a1, const void **a2, uint64_t a3, uint64_t a4, void *a5, float a6)
{
  v11 = a1[6];
  v12 = fst::internal::DenseSymbolMap::Find(v11 + 5, a2);
  v13 = v12;
  if (v12 != -1)
  {
    v14 = v11[4];
    v15 = __OFSUB__(v12, v14);
    v16 = v12 - v14;
    if (v16 < 0 == v15)
    {
      v13 = *(v11[15] + 8 * v16);
    }
  }

  if (*(a1 + 176) == 1)
  {
    v17 = (*(*(*a1 + 16 * a4) + 272))(*a1 + 16 * a4);
    (*(*v17 + 24))(v17, a2, v13);
  }

  v34 = v13;
  v37 = 0;
  v38 = 0;
  v36 = &v37;
  kaldi::quasar::Lexicon::GetPron(a3, a2, &v36);
  v18 = v36;
  if (v36 != &v37)
  {
    v19 = *(a1 + 26);
    do
    {
      v20 = *(v18 + 4);
      v21 = *(v18 + 5) - v20;
      if (v21)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
        do
        {
          if (v23)
          {
            v25 = 0;
            v26 = 0.0;
            v27 = v19;
          }

          else
          {
            v27 = *(a1 + 26);
            v26 = a6;
            v25 = v34;
          }

          if (++v23 == v24)
          {
            v19 = *(a1 + 27);
          }

          else
          {
            v19 = (*(*(*a1 + 16 * a4) + 200))(*a1 + 16 * a4);
            v20 = *(v18 + 4);
          }

          v28 = *a1;
          v39 = v20 + v22;
          v35[0] = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 14, (v20 + v22))[5];
          v35[1] = v25;
          *&v35[2] = v26;
          v35[3] = v19;
          (*(*(v28 + 16 * a4) + 208))(v28 + 16 * a4, v27, v35);
          v20 = *(v18 + 4);
          v24 = 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 5) - v20) >> 3);
          v22 += 24;
        }

        while (v23 < v24);
      }

      v29 = *(v18 + 1);
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
          v30 = *(v18 + 2);
          v31 = *v30 == v18;
          v18 = v30;
        }

        while (!v31);
      }

      v18 = v30;
    }

    while (v30 != &v37);
  }

  v32 = v37;
  *a5 += v38;
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&v36, v32);
}

void kaldi::quasar::LmeFst::CompleteFstDirect(uint64_t a1)
{
  fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1);
  v2 = &unk_1F2D0D2F8;
  v3 = a1;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B5652640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::LmeFst::Permutation(uint64_t a1, const void **a2, void *a3, void *a4)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  LODWORD(v23) = 1;
  std::vector<unsigned int>::vector[abi:ne200100](v25, v7);
  v8 = a3[1] - *a3;
  if (v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v10 = v25[0];
    v11 = (*a3 + 8);
    v12 = 1;
    do
    {
      *v10++ = -1431655765 * ((*v11 - *(v11 - 1)) >> 3);
      v11 += 3;
    }

    while (v9 > v12++);
  }

  kaldi::GenerateCombinationIndices(v25, *(a1 + 88) + 1, 0, &v23);
  v14 = v23;
  v15 = v24;
  if (v23 != v24)
  {
    while (!(*(*a4 + 16))(a4, a2) || *(a1 + 88) > kaldi::quasar::Lexicon::GetNumberOfPronsInWord(a4, a2))
    {
      memset(v22, 0, sizeof(v22));
      v16 = *v14;
      if (v14[1] != *v14)
      {
        v17 = 0;
        v18 = 1;
        do
        {
          std::vector<std::string>::push_back[abi:ne200100](v22, (*(*a3 + 24 * v17) + 24 * *(v16 + 4 * v17)));
          v17 = v18;
          v16 = *v14;
          ++v18;
        }

        while (v17 < (v14[1] - *v14) >> 2);
      }

      memset(&__p, 0, sizeof(__p));
      kaldi::JoinVectorToString(v22, " ", 1, &__p);
      memset(v20, 0, sizeof(v20));
      kaldi::SplitStringToVector(&__p, " ", 1, v20);
      kaldi::quasar::Lexicon::AddPron(a4, a2, v20, 1, 0);
      v26 = v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v22;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      v14 += 3;
      if (v14 == v15)
      {
        goto LABEL_15;
      }
    }

    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 232, a2);
  }

LABEL_15:
  v22[0] = &v23;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v22);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }
}

void sub_1B56528B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  a20 = &a23;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LmeFst::SetClassSizeCost(uint64_t this, float a2, float a3)
{
  *(this + 256) = a2;
  *(this + 260) = a3;
  return this;
}

uint64_t kaldi::quasar::LmeFst::ExtractMinimumBaseSymbols(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((*(*a2 + 120))(a2))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "the output symtable is not empty", 32);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v11 = (*(*a1 + 120))(a1);
    v12 = (*(*a1 + 128))(a1, 0);
    std::string::basic_string[abi:ne200100]<0>(__p, "<eps>");
    (*(*a2 + 32))(a2, __p);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = a4;
    v22 = a5;
    v10 = 0;
    if (v11)
    {
      v13 = -1;
      v14 = 1;
      v15 = v11;
      v16 = -1;
      do
      {
        (*(*a1 + 88))(__p, a1, v12);
        if ((*(*a3 + 16))(a3, __p))
        {
          (*(*a2 + 24))(a2, __p, v12);
          v17 = (*(*a3 + 24))(a3, __p);
          if (v12 >= v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = v12;
          }

          if (v13 == -1)
          {
            v18 = v12;
          }

          if (v16 <= v12)
          {
            v19 = v12;
          }

          else
          {
            v19 = v16;
          }

          if (v16 == -1)
          {
            v19 = v12;
          }

          if (v17)
          {
            v16 = v19;
            v13 = v18;
            v10 = (v10 + 1);
          }

          else
          {
            v10 = v10;
          }
        }

        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v14 < v11)
        {
          v12 = (*(*a1 + 128))(a1, v14);
        }

        ++v14;
        --v15;
      }

      while (v15);
    }

    else
    {
      v16 = -1;
      v13 = -1;
    }

    if (v21)
    {
      *v21 = v13;
    }

    if (v22)
    {
      *v22 = v16;
    }
  }

  return v10;
}

__n128 kaldi::quasar::LmeFst::ConvertLmeFstForRescore@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (!(*(**a1 + 64))(*a1, 0x10000, 1))
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = v6;
    fst::quasar::GetWordsAndCosts(*a1, &v5);
    _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_17TropicalWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  result = *a1;
  *a2 = *a1;
  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_1B5652D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, void *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__tree<int>::destroy(&a11, a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LmeFst::DefragLmeFst(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if (a4 <= 0)
  {
    result = (*(*a3 + 112))(a3);
    v4 = result;
  }

  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10 == v8)
  {
    return result;
  }

  do
  {
    v11 = v9[7];
    if (!v11)
    {
      goto LABEL_29;
    }

    result = (*(*v11 + 160))(v9[7]);
    if (!result)
    {
      goto LABEL_29;
    }

    v31 = 0;
    (*(*v11 + 128))(v11, &v29);
    while (1)
    {
      result = v29;
      if (!v29)
      {
        if (v31 >= v30)
        {
          goto LABEL_29;
        }

LABEL_12:
        v13 = v31;
        goto LABEL_13;
      }

      v12 = (*(*v29 + 16))(v29);
      result = v29;
      if (v12)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_12;
      }

      v13 = (*(*v29 + 24))();
LABEL_13:
      v25 = &unk_1F2D04CD8;
      v28 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(v11);
      v14 = v11[1];
      v15 = *(*(v14 + 64) + 8 * v13);
      v26 = v15;
      v27 = v14 + 8;
      for (i = v28; ; v28 = i)
      {
        v17 = *(v15 + 24);
        if (i >= (*(v15 + 32) - v17) >> 4)
        {
          break;
        }

        v24 = *(v17 + 16 * i);
        if (v24.n128_i32[1] >= 1)
        {
          (*(*a2 + 88))(__p, a2);
          v18 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v18 = __p[1];
          }

          if (v18)
          {
            v24.n128_u32[1] = (*(*a3 + 24))(a3, __p, v4);
            v4 = (*(*a3 + 112))(a3);
          }

          fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v25, &v24);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          i = v28;
          v15 = v26;
        }

        ++i;
      }

      if (v29)
      {
        (*(*v29 + 32))(v29);
      }

      else
      {
        ++v31;
      }
    }

    if (v29)
    {
      result = (*(*v29 + 8))();
    }

LABEL_29:
    v19 = v9[1];
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
        v20 = v9[2];
        v21 = *v20 == v9;
        v9 = v20;
      }

      while (!v21);
    }

    v9 = v20;
  }

  while (v20 != v8);
  return result;
}

void sub_1B56530C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::quasar::Lexicon>>::clear[abi:ne200100](void *result)
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
      result = (*(*result + 48))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unordered_map<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::unordered_map<std::string,unsigned long>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>,std::unordered_map<std::string,unsigned long>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::unordered_map<std::string,unsigned long>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B5653450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unordered_map<std::string,unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>,std::unordered_map<std::string,unsigned long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6);
      v6 += 40;
    }
  }
}

uint64_t std::__split_buffer<std::unordered_map<std::string,unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::vector<std::string>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::vector<std::string>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::string>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::string>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::string>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<std::string>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::string>>::~__split_buffer(v18);
  }
}

void kaldi::quasar::LexiconFst::~LexiconFst(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(this);
}

void std::default_delete<kaldi::quasar::LexiconFst []>::operator()[abi:ne200100]<kaldi::quasar::LexiconFst>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = a2 + 48 * v2 - 48;
      v4 = -48 * v2;
      do
      {
        if (*(v3 + 39) < 0)
        {
          operator delete(*(v3 + 16));
        }

        fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v3);
        v3 -= 48;
        v4 += 48;
      }

      while (v4);
    }

    JUMPOUT(0x1B8C85310);
  }
}

void std::default_delete<kaldi::quasar::GrammarFst []>::operator()[abi:ne200100]<kaldi::quasar::GrammarFst>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = (a2 + 24 * v2 - 24);
      v4 = -24 * v2;
      do
      {
        v3 = fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v3) - 3;
        v4 += 24;
      }

      while (v4);
    }

    JUMPOUT(0x1B8C85310);
  }
}

void std::vector<kaldi::quasar::LmeFst::Stats>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      memset(*(a1 + 8), 255, 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    memset(v11, 255, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t quasar::FeatureExtractor::init(uint64_t this)
{
  if (*(this + 32))
  {
    v6 = this;
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Parameters for ", 15);
    v2 = *(v6 + 31);
    if (v2 >= 0)
    {
      v3 = v6 + 8;
    }

    else
    {
      v3 = *(v6 + 8);
    }

    if (v2 >= 0)
    {
      v4 = *(v6 + 31);
    }

    else
    {
      v4 = *(v6 + 16);
    }

    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, v3, v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, " have already been registered.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
  }

  *(this + 32) = 1;
  return this;
}

void quasar::FeatureExtractor::~FeatureExtractor(void **this)
{
  *this = &unk_1F2D22958;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t quasar::OnlineCmnFe::OnlineCmnFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D229A0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = 0;
  kaldi::Matrix<float>::Matrix((v3 + 10));
  return a1;
}

void sub_1B5653E0C(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  quasar::OnlineCmnFe::OnlineCmnFe(v2, v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineCmvnFe::OnlineCmvnFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D229E8;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = 0;
  kaldi::Matrix<float>::Matrix((v3 + 10));
  return a1;
}

void sub_1B5653EA4(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  quasar::OnlineCmnFe::OnlineCmnFe(v2, v1);
  _Unwind_Resume(a1);
}

void *quasar::OnlineFbankFe::OnlineFbankFe(void *a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22A78;
  kaldi::FbankOptions::FbankOptions((v3 + 6));
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 156) = _D0;
  *(a1 + 164) = 0xA4579F000;
  a1[22] = 0;
  a1[23] = 0;
  return a1;
}

void sub_1B5653F38(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineFbankWithPitchFe::OnlineFbankWithPitchFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22B08;
  kaldi::FbankWithPitchOptions::FbankWithPitchOptions((v3 + 6));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  return a1;
}

void sub_1B5653FBC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double quasar::OnlineVadGatedFbankWithAudioAnalyticsFe::OnlineVadGatedFbankWithAudioAnalyticsFe(uint64_t a1, __int128 *a2)
{
  v2 = quasar::OnlineFbankWithAudioAnalyticsFe::OnlineFbankWithAudioAnalyticsFe(a1, a2);
  *v2 = &unk_1F2D22B98;
  *&result = 0x3C000001F4;
  *(v2 + 336) = xmmword_1B5B0F1F0;
  return result;
}

uint64_t quasar::OnlineLdaFe::OnlineLdaFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22BE0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  kaldi::Matrix<float>::Matrix((v3 + 10));
  return a1;
}

void sub_1B565409C(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v3);
  }

  quasar::OnlineCmnFe::OnlineCmnFe(v2, v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineMfccFe::OnlineMfccFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22C28;
  kaldi::MfccOptions::MfccOptions((v3 + 6));
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void sub_1B5654110(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineNnetForwardFe::OnlineNnetForwardFe(void *a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *(v3 + 48) = 0u;
  *v3 = &unk_1F2D22C70;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 208), "");
  a1[29] = 0x2EDBE6FF3F800000;
  a1[30] = 0;
  a1[31] = 0;
  kaldi::nnet1::Nnet::Nnet((a1 + 32));
}

void sub_1B5654204(_Unwind_Exception *exception_object)
{
  v7 = *(v1 + 248);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  if (*(v1 + 207) < 0)
  {
    operator delete(*v5);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v1 + 152) = v8;
    operator delete(v8);
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SpeechActivityDetectorFe::SpeechActivityDetectorFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22CB8;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 80), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 104), "");
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 134) = 1;
  return a1;
}

void sub_1B565432C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::AmFusionEncoderFe::AmFusionEncoderFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22D48;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 112), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 160), "");
  *(a1 + 392) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 400) = -1;
  *(a1 + 404) = 0;
  *(a1 + 408) = 0;
  *(a1 + 412) = 0;
  *(a1 + 414) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 464) = a1 + 472;
  *(a1 + 496) = 0u;
  *(a1 + 488) = a1 + 496;
  *(a1 + 520) = 0u;
  *(a1 + 512) = a1 + 520;
  *(a1 + 624) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 616) = a1 + 624;
  *(a1 + 648) = 0u;
  *(a1 + 640) = a1 + 648;
  *(a1 + 672) = 0u;
  *(a1 + 664) = a1 + 672;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 724) = 1056964608;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 752) = a1 + 760;
  return a1;
}

void sub_1B56544EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 56);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineAcousticEncoderFe::OnlineAcousticEncoderFe(void *a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22D90;
  *(v3 + 48) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 168), "");
  a1[24] = 0x2EDBE6FF3F800000;
  a1[25] = 0;
  a1[26] = 0;
  kaldi::nnet1::Nnet::Nnet((a1 + 27));
}

void sub_1B5654630(_Unwind_Exception *exception_object)
{
  v6 = *(v1 + 208);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*v4);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v7;
    operator delete(v7);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineNnetForwardSkipFe::OnlineNnetForwardSkipFe(void *a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22DD8;
  *(v3 + 48) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 176), "");
  a1[25] = 0x2EDBE6FF3F800000;
  a1[26] = 0;
  a1[27] = 0;
  kaldi::nnet1::Nnet::Nnet((a1 + 28));
}

void sub_1B56547A4(_Unwind_Exception *exception_object)
{
  v6 = *(v1 + 216);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineStaticTransformFe::OnlineStaticTransformFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22E68;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  kaldi::Matrix<float>::Matrix((v3 + 9));
  return a1;
}

void sub_1B56548A8(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v3);
  }

  quasar::OnlineCmnFe::OnlineCmnFe(v2, v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineCacheInputFe::OnlineCacheInputFe(uint64_t a1, __int128 *a2)
{
  result = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *result = &unk_1F2D22EB0;
  *(result + 44) = 257;
  return result;
}

void quasar::OnlineSubsampleFe::registerParams(quasar::OnlineSubsampleFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "subsample");
  quasar::SystemConfig::enforceMinVersion(a2, 23, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "stride");
  std::string::basic_string[abi:ne200100]<0>(v4, "Take every n'th feature, for this value of stride(with negative value, repeats each feature n times)");
  quasar::SystemConfig::Register<int>(a2, __p, this + 44, v4, 0, 23, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 11) = 1;
}

void sub_1B56549E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineSubsampleFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineSubsampleFe,std::allocator<kaldi::OnlineSubsampleFe>,kaldi::OnlineFeatInputItf *,int &,0>();
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

void quasar::FeatureExtractorSimpleFactory::createSyncFeatureExtractorOrNull(std::string *a1@<X0>, void *a2@<X8>)
{
  quasar::FeatureExtractorSimpleFactory::getFeatureExtractorType(a1, __p);
  v4 = v12;
  if (v12 < 0)
  {
    if (__p[1] != 19)
    {
      goto LABEL_13;
    }

    v5 = __p[0];
  }

  else
  {
    if (v12 != 19)
    {
      goto LABEL_13;
    }

    v5 = __p;
  }

  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 11);
  if (v6 != 0x2D657475706D6F63 || v7 != 0x6E692D6461656861 || v8 != 0x7475706E692D6461)
  {
LABEL_13:
    quasar::FeatureExtractorSimpleFactory::createFeatureExtractor(a1, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5654BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::readMatrixFile(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = kaldi::Input::Input(v11, a1, &v12);
  v5 = kaldi::Input::Stream(v4);
  kaldi::Matrix<float>::Read(a2, v5, v12, 0, 0);
  if (quasar::gLogLevel >= 5)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Finished reading matrix file ", 29);
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v10);
  }

  kaldi::Input::~Input(v11);
}

double quasar::OnlineCmnFe::registerParams(quasar::OnlineCmnFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "cmn-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Window in frames for running average CMN computation");
  quasar::SystemConfig::Register<int>(a2, v7, this + 44, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "min-cmn-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minumum CMN window used at start of decoding (adds latency only at start). ");
  quasar::SystemConfig::Register<int>(a2, v7, this + 48, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "init-cmvn-stats-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Stats File for warm-start online CMVN");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 56, __p, 0, 47, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "prior-count");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of frames used from prior CMVN stats file");
  quasar::SystemConfig::Register<int>(a2, v7, this + 120, __p, 0, 47, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "buffer-output");
  std::string::basic_string[abi:ne200100]<0>(__p, "Use OnlineBufferingInput");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 124, __p, 0, 81, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *&result = 0x6400000258;
  *(this + 44) = 0x6400000258;
  *(this + 30) = 0;
  *(this + 124) = 1;
  return result;
}

void sub_1B5654F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineCmnFe::finishInit(quasar::OnlineCmnFe *this, quasar::SystemConfig *a2)
{
  if ((*(this + 79) & 0x8000000000000000) == 0)
  {
    if (!*(this + 79))
    {
      return;
    }

    goto LABEL_3;
  }

  if (*(this + 8))
  {
LABEL_3:
    quasar::readMatrixFile(this + 56, this + 80);
  }
}

void quasar::OnlineCmnFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineCmnInput,std::allocator<kaldi::OnlineCmnInput>,kaldi::OnlineFeatInputItf *,int &,int &,kaldi::Matrix<float> *,int &,0>();
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

double quasar::OnlineCmvnFe::registerParams(quasar::OnlineCmvnFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "cmvn-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Window in frames for running average CMVN computation");
  quasar::SystemConfig::Register<int>(a2, v7, this + 44, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "min-cmvn-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minumum CMVN window used at start of decoding (adds latency only at start). ");
  quasar::SystemConfig::Register<int>(a2, v7, this + 48, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "init-cmvn-stats-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Stats File for warm-start online CMVN");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 56, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "prior-count");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of frames used from prior CMVN stats file");
  quasar::SystemConfig::Register<int>(a2, v7, this + 120, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "norm-vars");
  std::string::basic_string[abi:ne200100]<0>(__p, "(default true) if true, normalize variance to one");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 124, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "buffer-output");
  std::string::basic_string[abi:ne200100]<0>(__p, "Use OnlineBufferingInput");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 125, __p, 0, 81, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *&result = 0x6400000258;
  *(this + 44) = 0x6400000258;
  *(this + 30) = 0;
  *(this + 124) = 1;
  *(this + 125) = 1;
  return result;
}

void sub_1B5655398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineCmvnFe::finishInit(quasar::OnlineCmvnFe *this, quasar::SystemConfig *a2)
{
  if ((*(this + 79) & 0x8000000000000000) == 0)
  {
    if (!*(this + 79))
    {
      return;
    }

    goto LABEL_3;
  }

  if (*(this + 8))
  {
LABEL_3:
    quasar::readMatrixFile(this + 56, this + 80);
  }
}

void quasar::OnlineCmvnFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineCmvnInput,std::allocator<kaldi::OnlineCmvnInput>,kaldi::OnlineFeatInputItf *,int &,int &,BOOL &,kaldi::Matrix<float> *,int &,0>();
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

void kaldi::DeltaFeaturesOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "delta-order");
  std::string::basic_string[abi:ne200100]<0>(__p, "Order of delta computation");
  (*(*a2 + 8))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Parameter controlling window for delta computation (actual window size for each delta order is 1 + 2*delta-window-size)");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5655630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::OnlineDeltaFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineDeltaInput,std::allocator<kaldi::OnlineDeltaInput>,kaldi::DeltaFeaturesOptions &,kaldi::OnlineFeatInputItf *,0>();
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

void quasar::OnlineSimpleWaveformFe::registerParams(quasar::OnlineSimpleWaveformFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "resample-freq");
  std::string::basic_string[abi:ne200100]<0>(__p, "The frequency to resample to.");
  quasar::SystemConfig::Register<float>(a2, v6, this + 48, __p, 0, 271, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-cutoff-hz");
  std::string::basic_string[abi:ne200100]<0>(__p, "The cutoff for the filter for resampling the audio");
  quasar::SystemConfig::Register<float>(a2, v6, this + 52, __p, 0, 271, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-num-zeros");
  std::string::basic_string[abi:ne200100]<0>(__p, "Controls sharpness of filter.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 56, __p, 0, 271, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "normalize");
  std::string::basic_string[abi:ne200100]<0>(__p, "(default true) converts the native sample to floats between -1 and 1 when set");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 60, __p, 0, 271, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  *(this + 60) = 1;
}

void sub_1B5655938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineSimpleWaveformFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v14 = a2;
  if (!*a3)
  {
    *(a1 + 44) = *a4;
    std::allocate_shared[abi:ne200100]<kaldi::SimpleWaveformReader,std::allocator<kaldi::SimpleWaveformReader>,kaldi::OnlineAudioSourceItf *&,kaldi::ResamplerOptions &,BOOL &,0>();
  }

  memset(v13, 0, sizeof(v13));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "'", 1);
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
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "' can only occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v13);
}

void quasar::OnlineFbankFe::registerParams(quasar::OnlineFbankFe *this, const void **a2)
{
  kaldi::FbankOptions::Register(this + 48, a2, 0);
  std::string::basic_string[abi:ne200100]<0>(v6, "low-watermark");
  std::string::basic_string[abi:ne200100]<0>(__p, "Low watermark (in number of frames) for audio buffer read. Ignored if <= 0.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 152, __p, 0, 76, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-freq");
  std::string::basic_string[abi:ne200100]<0>(__p, "The frequency to resample to.");
  quasar::SystemConfig::Register<float>(a2, v6, this + 160, __p, 0, 123, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-cutoff-hz");
  std::string::basic_string[abi:ne200100]<0>(__p, "The cutoff for the filter for resampling the audio");
  quasar::SystemConfig::Register<float>(a2, v6, this + 164, __p, 0, 123, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-num-zeros");
  std::string::basic_string[abi:ne200100]<0>(__p, "Controls sharpness of filter.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 168, __p, 0, 123, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  *(this + 38) = 0;
}

void sub_1B5655C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineFbankWithPitchFe::registerParams(quasar::OnlineFbankWithPitchFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fbankwithpitch");
  quasar::SystemConfig::enforceMinVersion(a2, 54, 0, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::FbankWithPitchOptions::Register(this + 48, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "low-watermark");
  std::string::basic_string[abi:ne200100]<0>(v5, "Low watermark (in number of frames) for audio buffer read. Ignored if <= 0.");
  v4 = (this + 264);
  quasar::SystemConfig::Register<int>(a2, __p, v4, v5, 0, 76, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *v4 = 0;
}

void sub_1B5655D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void kaldi::FbankWithPitchOptions::Register(uint64_t a1, uint64_t a2)
{
  kaldi::FrameExtractionOptions::Register(a1, a2);
  kaldi::MelBanksOptions::Register(a1 + 56, a2);
  kaldi::PitchExtractionOptions::Register(a1 + 80, a2);
  kaldi::ProcessPitchOptions::Register(a1 + 156, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "use-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "Add an extra dimension with energy to the FBANK output.");
  (**a2)(a2, v6, a1 + 204, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "energy-floor");
  std::string::basic_string[abi:ne200100]<0>(__p, "Floor on energy (absolute, not relative) in FBANK computation");
  (*(*a2 + 24))(a2, v6, a1 + 208, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "raw-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, compute energy before preemphasis and windowing");
  (**a2)(a2, v6, a1 + 212, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "htk-compat");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, put energy last.  Warning: not sufficient to get HTK compatible features (need to change other parameters).");
  (**a2)(a2, v6, a1 + 213, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "use-log-fbank");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, produce log-filterbank, else produce linear.");
  (**a2)(a2, v6, a1 + 214, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "cache-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, cache energy values.");
  (**a2)(a2, v6, a1 + 215, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B56560D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::OnlineFbankWithPitchFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v18 = a2;
  if (!*a3)
  {
    *v14 = *(a1 + 48);
    *&v14[13] = *(a1 + 61);
    if (*(a1 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&v14[24], *(a1 + 72), *(a1 + 80));
    }

    else
    {
      *&v14[24] = *(a1 + 72);
      *&v14[40] = *(a1 + 88);
    }

    *&v14[48] = *(a1 + 96);
    *&v14[152] = *(a1 + 200);
    *&v14[168] = *(a1 + 216);
    *&v14[184] = *(a1 + 232);
    *&v14[200] = *(a1 + 248);
    *&v14[88] = *(a1 + 136);
    *&v14[104] = *(a1 + 152);
    *&v14[120] = *(a1 + 168);
    *&v14[136] = *(a1 + 184);
    *&v14[56] = *(a1 + 104);
    *&v14[72] = *(a1 + 120);
    *v14 = *a4;
    std::allocate_shared[abi:ne200100]<kaldi::FbankWithPitch,std::allocator<kaldi::FbankWithPitch>,kaldi::FbankWithPitchOptions &,0>();
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "'", 1);
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v11, v12);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "' can only occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
}

void sub_1B5656358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineFbankWithAudioAnalyticsFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = a2;
  if (!*a3)
  {
    v6 = *(a1 + 312);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(a1 + 328);
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if ((*(a4 + 224) & 1) != 0 || *(a1 + 276) == 1)
    {
      if (quasar::gLogLevel >= 5)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        memset(v25, 0, sizeof(v25));
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        memset(v20, 0, sizeof(v20));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Creating FbankWithAudioAnalytics", 32);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v20);
      }

      *&v20[0] = &unk_1F2D3A0F0;
      *(v20 + 8) = *(a1 + 56);
      *(&v20[1] + 5) = *(a1 + 69);
      if (*(a1 + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        v21 = *(a1 + 80);
        *&v22 = *(a1 + 96);
      }

      *(&v22 + 1) = *(a1 + 104);
      v8 = *(a1 + 128);
      v23 = *(a1 + 112);
      v24 = v8;
      LODWORD(v25[0]) = *(a1 + 144);
      *&v20[0] = &unk_1F2D231C0;
      *(&v25[5] + 4) = *(a1 + 228);
      *(&v25[6] + 4) = *(a1 + 244);
      BYTE4(v25[8]) = *(a1 + 276);
      *(&v25[1] + 4) = *(a1 + 164);
      *(&v25[2] + 4) = *(a1 + 180);
      *(&v25[3] + 4) = *(a1 + 196);
      *(&v25[4] + 4) = *(a1 + 212);
      *(v25 + 4) = *(a1 + 148);
      *(&v25[7] + 4) = *(a1 + 260);
      v9 = *a4;
      v10 = *(a1 + 292);
      *(v20 + 2) = v9;
      *(&v22 + 3) = v10;
      *(a1 + 288) = v9;
      if (v10 > 0.0)
      {
        v9 = v10;
      }

      *(v25 + 1) = v9;
      std::allocate_shared[abi:ne200100]<kaldi::FbankWithAudioAnalytics,std::allocator<kaldi::FbankWithAudioAnalytics>,kaldi::FbankWithAudioAnalyticsOptions &,0>();
    }

    if (quasar::gLogLevel >= 5)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      memset(v25, 0, sizeof(v25));
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Creating Fbank", 14);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v20);
    }

    *&v20[0] = &unk_1F2D3A0F0;
    *(v20 + 8) = *(a1 + 56);
    *(&v20[1] + 5) = *(a1 + 69);
    if (*(a1 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v21 = *(a1 + 80);
      *&v22 = *(a1 + 96);
    }

    *(&v22 + 1) = *(a1 + 104);
    v11 = *(a1 + 128);
    v23 = *(a1 + 112);
    v24 = v11;
    LODWORD(v25[0]) = *(a1 + 144);
    *(v20 + 2) = *a4;
    HIDWORD(v22) = *(a1 + 292);
    *(a1 + 288) = DWORD2(v20[0]);
    std::allocate_shared[abi:ne200100]<kaldi::Fbank,std::allocator<kaldi::Fbank>,kaldi::FbankOptions &,0>();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "'", 1);
  v15 = *(a1 + 8);
  v14 = a1 + 8;
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
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "' can only occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v20);
}

void quasar::OnlineVadGatedFbankWithAudioAnalyticsFe::registerParams(quasar::OnlineVadGatedFbankWithAudioAnalyticsFe *this, quasar::SystemConfig *a2)
{
  quasar::OnlineFbankWithAudioAnalyticsFe::registerParams(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "warmup-silence-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "silence (ms) to be padded at the beginning of a VAD segment");
  quasar::SystemConfig::Register<int>(a2, v6, this + 336, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "activate-speech-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "speech (ms) to start a VAD segment");
  quasar::SystemConfig::Register<int>(a2, v6, this + 340, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "cooldown-silence-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "silence (ms) to pause a VAD segment");
  quasar::SystemConfig::Register<int>(a2, v6, this + 348, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "deactivate-silence-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "silence (ms) to end a VAD segment");
  quasar::SystemConfig::Register<int>(a2, v6, this + 344, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5656A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineVadGatedFbankWithAudioAnalyticsFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a2;
  if (!*a3)
  {
    v6 = *(a1 + 312);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(a1 + 328);
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v22 = *(a4 + 168) > 0;
    if ((*(a4 + 224) & 1) != 0 || *(a1 + 276) == 1)
    {
      if (quasar::gLogLevel >= 5)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        memset(v28, 0, sizeof(v28));
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        memset(v23, 0, sizeof(v23));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Creating VAD gated FbankWithAudioAnalytics with gating enabled: ", 64);
        MEMORY[0x1B8C84BD0](v8, v22);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v23);
      }

      *&v23[0] = &unk_1F2D3A0F0;
      *(v23 + 8) = *(a1 + 56);
      *(&v23[1] + 5) = *(a1 + 69);
      if (*(a1 + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        v24 = *(a1 + 80);
        *&v25 = *(a1 + 96);
      }

      *(&v25 + 1) = *(a1 + 104);
      v9 = *(a1 + 128);
      v26 = *(a1 + 112);
      v27 = v9;
      LODWORD(v28[0]) = *(a1 + 144);
      *&v23[0] = &unk_1F2D231C0;
      *(&v28[5] + 4) = *(a1 + 228);
      *(&v28[6] + 4) = *(a1 + 244);
      BYTE4(v28[8]) = *(a1 + 276);
      *(&v28[1] + 4) = *(a1 + 164);
      *(&v28[2] + 4) = *(a1 + 180);
      *(&v28[3] + 4) = *(a1 + 196);
      *(&v28[4] + 4) = *(a1 + 212);
      *(v28 + 4) = *(a1 + 148);
      *(&v28[7] + 4) = *(a1 + 260);
      v10 = *a4;
      v11 = *(a1 + 292);
      *(v23 + 2) = v10;
      *(&v25 + 3) = v11;
      *(a1 + 288) = v10;
      if (v11 > 0.0)
      {
        v10 = v11;
      }

      *(v28 + 1) = v10;
      std::allocate_shared[abi:ne200100]<kaldi::FbankWithAudioAnalytics,std::allocator<kaldi::FbankWithAudioAnalytics>,kaldi::FbankWithAudioAnalyticsOptions &,0>();
    }

    if (quasar::gLogLevel >= 5)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      memset(v23, 0, sizeof(v23));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Creating VAD gated Fbank  with gating enabled: ", 47);
      MEMORY[0x1B8C84BD0](v12, v22);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v23);
    }

    *&v23[0] = &unk_1F2D3A0F0;
    *(v23 + 8) = *(a1 + 56);
    *(&v23[1] + 5) = *(a1 + 69);
    if (*(a1 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v24 = *(a1 + 80);
      *&v25 = *(a1 + 96);
    }

    *(&v25 + 1) = *(a1 + 104);
    v13 = *(a1 + 128);
    v26 = *(a1 + 112);
    v27 = v13;
    LODWORD(v28[0]) = *(a1 + 144);
    *(v23 + 2) = *a4;
    HIDWORD(v25) = *(a1 + 292);
    *(a1 + 288) = DWORD2(v23[0]);
    std::allocate_shared[abi:ne200100]<kaldi::Fbank,std::allocator<kaldi::Fbank>,kaldi::FbankOptions &,0>();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "'", 1);
  v17 = *(a1 + 8);
  v16 = a1 + 8;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v19, v20);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "' can only occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v23);
}

double quasar::OnlineLdaFe::registerParams(quasar::OnlineLdaFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "lda-matrix-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "LDA matrix filename");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 48, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "left-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames of left context");
  quasar::SystemConfig::Register<int>(a2, v7, this + 72, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<int>(a2, v7, this + 76, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *&result = 0x400000004;
  *(this + 9) = 0x400000004;
  return result;
}

void sub_1B5657154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineLdaFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineLdaInput,std::allocator<kaldi::OnlineLdaInput>,kaldi::OnlineFeatInputItf *,kaldi::Matrix<float> &,int &,int &,0>();
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

void quasar::OnlineMfccFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a2;
  if (!*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::OnlineFeInput<kaldi::Mfcc>,std::allocator<kaldi::OnlineFeInput<kaldi::Mfcc>>,kaldi::OnlineAudioSourceItf *&,kaldi::Mfcc*,float,float,float &,0>();
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
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "' can only occur at the first stage of feature-extract");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
}

void quasar::OnlineNnetForwardFe::registerParams(quasar::OnlineNnetForwardFe *this, const void **a2)
{
  kaldi::nnet1::PdfPriorOptions::Register(this + 208, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Map model into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 98, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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

  std::string::basic_string[abi:ne200100]<0>(v6, "no-softmax");
  std::string::basic_string[abi:ne200100]<0>(__p, "No softmax on MLP output (or remove it if found), the pre-softmax activations will be used as log-likelihoods, log-priors will be subtracted");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 96, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 97, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<int>(a2, v6, this + 100, __p, 0, 14, 2, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 208, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 104, __p, 0, 75, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "batch-left-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames of left context to prepend to the batch as extra rows");
  quasar::SystemConfig::Register<int>(a2, v6, this + 128, __p, 0, 148, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "batch-right-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames of right context to append to the batch as extra rows");
  quasar::SystemConfig::Register<int>(a2, v6, this + 132, __p, 0, 148, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "strict-batch-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Batch size applied just for this extractor. Ignored if <= 0. Unlike feature-read.batch-size, which is just a hint, this batch size is so strict that even the last batch will be padded to exactly this size with copies of the last frame if the last batch is too small. (The padding is removed from the output). Excludes context frames (actual batch size is strict-batch-size + batch-left-context + batch-right-context).");
  quasar::SystemConfig::Register<int>(a2, v6, this + 136, __p, 0, 164, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 168, __p, 0, 166, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 169, __p, 0, 176, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "append-context-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "Append the context matrix along with the input. Ignored if <= 0Add the specified amount of rows as context to the input features and one additional row which has the batch number. The context is obtained from last N rows of output of the previous inference.Context is ignored by the model for the first inference i.e. batch num is 0valid only when strict-batch-size is also specified");
  quasar::SystemConfig::Register<int>(a2, v6, this + 172, __p, 0, 207, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "strict-batch-sizes");
  std::string::basic_string[abi:ne200100]<0>(__p, "Defines an array of 3 sizes - [ModelInterfaceSize, FirstBatchSize, SubsequentBatchSize]ModelInterfaceSize: defines the size of input expected by the modelFirstBatchSize: defines the batch size used for 1st inference, will be padded with zeros                 if less than than ModelInterfaceSizeSubsequentBatchSize: defines the batch size used for the rest of the inferences, will be                     padded with zeros if less than than ModelInterfaceSize(The padding is removed from the output)This feature is added support streaming Acoustic FTM and Hey Siri checker using the same model");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 184, __p, 0, 223, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "input-feats-mask");
  std::string::basic_string[abi:ne200100]<0>(__p, "define whether masking is in the input tensorWhen this is define, features tensors with on the effective frames will be used for model compute and previous contexts will also be used as inputThis feature is added supporting streaming Acoustic FTM for aftm_feats_mask_block, input_buffer, mask_buffer, accum_embed, accum_weight, position_encoding_offset as input tensor");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 176, __p, 0, 255, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "single-row-output");
  std::string::basic_string[abi:ne200100]<0>(__p, "define whether the output from forward nnet will is single row or notstrict-batch-sizes needs to be enabled for this option");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 177, __p, 0, 256, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  *(this + 97) = 0;
  *(this + 96) = 0;
  *(this + 25) = -2;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 84) = 0;
  *(this + 43) = 0;
  *(this + 88) = 0;
}

void sub_1B5657B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::SpeechActivityDetectorFe::registerParams(quasar::SpeechActivityDetectorFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "zero-pad");
  std::string::basic_string[abi:ne200100]<0>(__p, "Zero pad the features, instead of artificial silence, to reach the strict-batch-size requirement");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 132, __p, 0, 166, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "mask-chunk-padding");
  std::string::basic_string[abi:ne200100]<0>(__p, "whether to mask the chunk padding");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 134, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "num-silence-padding-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "pad this many artifical silence frames at the end of audio");
  quasar::SystemConfig::Register<int>(a2, v6, this + 128, __p, 0, 207, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "the AM for realigned-am-fusion-decoder");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 80, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "silence-vector-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "the artifical silence fbank that will be padded to the end of the audio to alleviate CTC's delayed decision");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 104, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "align-frames");
  std::string::basic_string[abi:ne200100]<0>(__p, "align sad score with fbanks");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 133, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5657F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::SpeechActivityDetectorFe::finishInit(quasar::SpeechActivityDetectorFe *this, quasar::SystemConfig *a2)
{
  if ((*(this + 127) & 0x8000000000000000) != 0)
  {
    if (!*(this + 14))
    {
      goto LABEL_6;
    }
  }

  else if (!*(this + 127))
  {
LABEL_6:
    ModelLoader = quasar::SystemConfig::getModelLoader(a2);
    quasar::ModelLoader::getModelInitializeContext(ModelLoader, &v4);
    quasar::ModelLoader::isKeepANEModelLoadedEnabled(ModelLoader, this + 80);
    quasar::ModelLoader::milIsANEReadyOnLowEnd(ModelLoader);
    std::allocate_shared[abi:ne200100]<kaldi::quasar::CEFusedAcousticEncoder,std::allocator<kaldi::quasar::CEFusedAcousticEncoder>,std::string &,std::shared_ptr<kaldi::ModelInitializeContext>,BOOL,BOOL,0>();
  }

  operator new();
}

void sub_1B5658148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void quasar::SpeechActivityDetectorFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::SpeechActivityDetector,std::allocator<kaldi::SpeechActivityDetector>,kaldi::OnlineFeatInputItf *,int &,BOOL &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::Vector<float>> &,BOOL &,BOOL &,0>();
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

void quasar::VoiceActivityGatingFe::createOnlineFeInputImpl(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    std::allocate_shared[abi:ne200100]<kaldi::VoiceActivityGating,std::allocator<kaldi::VoiceActivityGating>,kaldi::OnlineFeatInputItf *,int &,BOOL &,std::shared_ptr<kaldi::quasar::CEFusedAcousticEncoder> &,std::shared_ptr<kaldi::Vector<float>> &,BOOL &,BOOL &,BOOL &,BOOL &,float &,int &,int &,int &,int &,BOOL &,BOOL &,0>();
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

void quasar::AmFusionEncoderFe::registerParams(quasar::AmFusionEncoderFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "zero-pad");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Zero pad the features, instead of artificial silence, to reach the strict-batch-size requirement");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 412, &__p, 0, 166, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "mask-chunk-padding");
  std::string::basic_string[abi:ne200100]<0>(&__p, "whether to mask the chunk padding");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 414, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "num-silence-padding-frames");
  std::string::basic_string[abi:ne200100]<0>(&__p, "pad this many artifical silence frames at the end of audio");
  quasar::SystemConfig::Register<int>(a2, v7, this + 408, &__p, 0, 207, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "model-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the AM for realigned-am-fusion-decoder");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 112, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "fusion-model-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the AM for for realigned-am-fusion-decoder");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 136, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "silence-vector-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the artifical silence fbank that will be padded to the end of the audio to alleviate CTC's delayed decision");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 160, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "fusion-am-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Fusion: Acoustic model (transition model) filename.");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 184, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "fusion-sil-phone-csl-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Fusion: File containing colon-separated list of silence phones.");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 208, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "context-embedding-nobias-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Contextual biasing: File contains context embedding for nobias phrase");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 232, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "task-biasing-symbol-file-list");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Task biasing: List of files contain mappings from tasks to indices");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 256, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "task-biasing-default-symbols");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Task biasing: List of default task symbols");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 304, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "task-biasing-override-signals");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Task biasing: List of override signals: None|Locale|Task");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 352, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "biasing-gating-threshold");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Threshold for the gating in gated contextual biasing model");
  quasar::SystemConfig::Register<float>(a2, v7, this + 724, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "biasing-gating-threshold-map");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Biasing gating threshold configuration. It defines the mapping from task to gating threshold");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 728, &__p, 0, 261, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  quasar::SystemConfig::getPrefix(a2, &__p);
  v4 = std::string::append(&__p, "biasing-gating-threshold-map");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8 = v4->__r_.__value_.__r.__words[2];
  *v7 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::getPtreeOptional(a2, v7);
}

void sub_1B5658AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void quasar::AmFusionEncoderFe::finishInit(std::string *this, quasar::SystemConfig *a2)
{
  quasar::SystemConfig::getModelLoader(a2);
  quasar::SystemConfig::getLmeCompatibilityKey(a2, &__str);
  std::string::operator=(this + 29, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo(a2);
  quasar::SpeechModelInfo::operator=(&this[17].__r_.__value_.__l.__size_, SpeechModelInfo);
  quasar::QuasarG2PFactory::isPronGuesserWordpiece(a2, v5);
}

uint64_t quasar::AmFusionEncoderFe::StringToTaskBiasingSignalType(uint64_t a1, uint64_t a2)
{
  quasar::toLower(a2, &v13);
  if (v15 < 0)
  {
    if (v14 == 4 && *v13 == 1701736302)
    {
      v4 = 0;
    }

    else
    {
      if (v14 != 6 || (*v13 == 1633906540 ? (v5 = *(v13 + 2) == 25964) : (v5 = 0), !v5))
      {
        if (v14 != 4)
        {
          goto LABEL_29;
        }

        v6 = v13;
LABEL_22:
        if (*v6 != 1802723700)
        {
          goto LABEL_29;
        }

        v4 = 2;
        goto LABEL_24;
      }

      v4 = 1;
    }

LABEL_24:
    if (v15 < 0)
    {
      operator delete(v13);
    }

    return v4;
  }

  if (v15 == 4)
  {
    if (v13 == 1701736302)
    {
      return 0;
    }

    v6 = &v13;
    goto LABEL_22;
  }

  if (v15 != 6 || (v13 == 1633906540 ? (v3 = WORD2(v13) == 25964) : (v3 = 0), !v3))
  {
LABEL_29:
    memset(v12, 0, sizeof(v12));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unknown task biasing signal type: ", 34);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
  }

  return 1;
}

void sub_1B5659C8C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::AmFusionEncoderFe::readAndCheckLmeData(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v5 = *a2;
  if (!*a2)
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME container ", 14);
      v20 = MEMORY[0x1B8C84C00](v19, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " is null.", 9);
      goto LABEL_18;
    }

    return 2;
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Reading LME container ", 22);
    v10 = MEMORY[0x1B8C84C00](v9, a3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " for user ", 10);
    v12 = *(*a2 + 39);
    if (v12 >= 0)
    {
      v13 = (*a2 + 2);
    }

    else
    {
      v13 = (*a2)[2];
    }

    if (v12 >= 0)
    {
      v14 = *(*a2 + 39);
    }

    else
    {
      v14 = (*a2)[3];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
    v5 = *a2;
  }

  v15 = *v5;
  if (!*v5)
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME container data ", 19);
      v22 = MEMORY[0x1B8C84C00](v21, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " is null.", 9);
      goto LABEL_18;
    }

    return 2;
  }

  v16 = *(v15 + 268);
  if (v16 == 2)
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream ", 16);
      v18 = MEMORY[0x1B8C84C00](v17, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is null.", 9);
LABEL_18:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
      return 2;
    }

    return 2;
  }

  if ((v16 & 0xFFFFFFFD) == 4)
  {
    return v16;
  }

  v24 = *(v15 + 199);
  if (v24 >= 0)
  {
    v25 = *(v15 + 199);
  }

  else
  {
    v25 = *(v15 + 184);
  }

  v26 = *(a1 + 583);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a1 + 568);
  }

  if (v25 != v26 || (v24 >= 0 ? (v28 = (v15 + 176)) : (v28 = *(v15 + 176)), v27 >= 0 ? (v29 = (a1 + 560)) : (v29 = *(a1 + 560)), memcmp(v28, v29, v25)))
  {
    if (quasar::gLogLevel >= 2)
    {
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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream ", 16);
      v31 = MEMORY[0x1B8C84C00](v30, a3);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " has phone set version ", 23);
      v33 = *(v15 + 199);
      if (v33 >= 0)
      {
        v34 = v15 + 176;
      }

      else
      {
        v34 = *(v15 + 176);
      }

      if (v33 >= 0)
      {
        v35 = *(v15 + 199);
      }

      else
      {
        v35 = *(v15 + 184);
      }

      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " which is different from model phone set version ", 49);
      v38 = *(a1 + 583);
      if (v38 >= 0)
      {
        v39 = a1 + 560;
      }

      else
      {
        v39 = *(a1 + 560);
      }

      if (v38 >= 0)
      {
        v40 = *(a1 + 583);
      }

      else
      {
        v40 = *(a1 + 568);
      }

      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ". This data stream will not be used.", 36);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v100);
    }

    return 5;
  }

  v42 = *(v15 + 392);
  if (v42 != *(a1 + 720))
  {
    if (quasar::gLogLevel < 4)
    {
      return 5;
    }

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
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream useWordpiece=", 29);
    v69 = MEMORY[0x1B8C84BD0](v68, *(v15 + 392));
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " does not match model (model useWordpiece=", 42);
    v71 = MEMORY[0x1B8C84BD0](v70, *(a1 + 720));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "). This data stream will not be used.", 37);
LABEL_110:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
    return 5;
  }

  v43 = *(v15 + 8) < 16 || v42 == 0;
  if (v43 || !std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v15 + 296), (a1 + 696)))
  {
    goto LABEL_73;
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream compatibilityKey=", 33);
    v45 = *(v15 + 319);
    if (v45 >= 0)
    {
      v46 = v15 + 296;
    }

    else
    {
      v46 = *(v15 + 296);
    }

    if (v45 >= 0)
    {
      v47 = *(v15 + 319);
    }

    else
    {
      v47 = *(v15 + 304);
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " does not match model (lmeCompatibilityKey=", 43);
    v50 = *(a1 + 719);
    if (v50 >= 0)
    {
      v51 = a1 + 696;
    }

    else
    {
      v51 = *(a1 + 696);
    }

    if (v50 >= 0)
    {
      v52 = *(a1 + 719);
    }

    else
    {
      v52 = *(a1 + 704);
    }

    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v51, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ")", 1);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
  }

  if (!a4)
  {
    if (quasar::gLogLevel < 4)
    {
      return 5;
    }

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
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "This data stream will not be used.", 34);
    goto LABEL_110;
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Check is disabled! Continuing on the assumption that the LME data is actually compatible", 88);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
  }

LABEL_73:
  v54 = *(v15 + 160);
  if (v54 == -1 || (v55 = *(v15 + 168), v55 == -1))
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Bad LME data (empty): stream=", 29);
      v73 = MEMORY[0x1B8C84C00](v72, a3);
      v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", symTableFirstKey=", 19);
      v75 = MEMORY[0x1B8C84C60](v74, *(v15 + 160));
      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ", symTableLastKey=", 18);
      MEMORY[0x1B8C84C60](v76, *(v15 + 168));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
    }

    return 6;
  }

  if (v55 < v54)
  {
    goto LABEL_113;
  }

  v56 = *(v15 + 224);
  v57 = (*(**(v56 + 96) + 112))(*(v56 + 96));
  if ((v57 & 0x8000000000000000) == 0)
  {
    v57 += *(v56 + 120);
  }

  if (v55 != v57 - 1)
  {
LABEL_113:
    if (quasar::gLogLevel >= 1)
    {
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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Bad LME data (invalid last key): stream=", 40);
      v78 = MEMORY[0x1B8C84C00](v77, a3);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", symTableFirstKey=", 19);
      v80 = MEMORY[0x1B8C84C60](v79, *(v15 + 160));
      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ", symTableLastKey=", 18);
      v82 = MEMORY[0x1B8C84C60](v81, *(v15 + 168));
      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ", symTable->AvailableKey()=", 27);
      (*(**(*(v15 + 224) + 96) + 112))(*(*(v15 + 224) + 96));
      MEMORY[0x1B8C84C60](v83);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v100);
    }

    return 6;
  }

  if (v16 == 1)
  {
    if (!*(a1 + 680) || (v58 = *(v15 + 240), v58 == (v15 + 248)))
    {
LABEL_105:
      if (*(v15 + 264) >= *(a1 + 688))
      {
        return 1;
      }

      if (quasar::gLogLevel >= 4)
      {
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
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v100 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "G2P model version ", 18);
        v66 = MEMORY[0x1B8C84C00](v65, *(v15 + 264));
        v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " in blob is older than datapack's version ", 42);
        MEMORY[0x1B8C84C00](v67, *(a1 + 688));
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
      }
    }

    else
    {
      while (1)
      {
        if (*(v58 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v99, v58[4], v58[5]);
        }

        else
        {
          v99 = *(v58 + 4);
        }

        if (*(v58 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v98, v58[7], v58[8]);
        }

        else
        {
          v98 = *(v58 + 7);
        }

        memset(&v97, 0, sizeof(v97));
        v59 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 616, &v99.__r_.__value_.__l.__data_);
        if (a1 + 624 == v59)
        {
          v60 = &v99;
        }

        else
        {
          v60 = (v59 + 56);
        }

        std::string::operator=(&v97, v60);
        v61 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 664, &v97.__r_.__value_.__l.__data_);
        v62 = v61;
        if (a1 + 672 == v61)
        {
          if (quasar::gLogLevel < 4)
          {
            goto LABEL_142;
          }

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
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Category ", 9);
          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = &v99;
          }

          else
          {
            v85 = v99.__r_.__value_.__r.__words[0];
          }

          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v99.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v99.__r_.__value_.__l.__size_;
          }

          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v85, size);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, " in blob is not supported by datapack.", 38);
          goto LABEL_141;
        }

        if (std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v61 + 56), &v98))
        {
          break;
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        v63 = v58[1];
        if (v63)
        {
          do
          {
            v64 = v63;
            v63 = *v63;
          }

          while (v63);
        }

        else
        {
          do
          {
            v64 = v58[2];
            v43 = *v64 == v58;
            v58 = v64;
          }

          while (!v43);
        }

        v58 = v64;
        if (v64 == (v15 + 248))
        {
          goto LABEL_105;
        }
      }

      if (quasar::gLogLevel < 4)
      {
        goto LABEL_142;
      }

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
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Category ", 9);
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v99;
      }

      else
      {
        v89 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v99.__r_.__value_.__l.__size_;
      }

      v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, v89, v90);
      v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, " in blob uses different enumeration type (", 42);
      v93 = *(v62 + 79);
      if (v93 >= 0)
      {
        v94 = v62 + 56;
      }

      else
      {
        v94 = *(v62 + 56);
      }

      if (v93 >= 0)
      {
        v95 = *(v62 + 79);
      }

      else
      {
        v95 = *(v62 + 64);
      }

      v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v94, v95);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, ") in datapack.", 14);
LABEL_141:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
LABEL_142:
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }
    }

    return 3;
  }

  return v16;
}

void sub_1B565A784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::AmFusionEncoderFe::getNumLmeContextEmbeddings(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v4 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(v4 + 16 * v7);
    v26 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      v29 = v9;
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v29 = v9;
    }

    v10 = quasar::AmFusionEncoderFe::readAndCheckLmeData(a1, &v29, v7, a4);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    if ((v10 & 0xFFFFFFFD) == 1)
    {
      v11 = *v26;
      v12 = *(v26 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::WordPronCache::getPronCache((v11 + 88), &v27);
      v13 = v27;
      if (v27 != v28)
      {
        do
        {
          quasar::Bitmap::~Bitmap((v13 + 88));
          v16 = v14 + 1;
          v15 = *v14;
          if (*v14 != v14 + 1)
          {
            do
            {
              v17 = quasar::PronChoice::compatibleWithEmbeddingDim(*(v15 + 8), (v15 + 5), a3);
              v18 = v15[1];
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
                  v19 = v15[2];
                  v20 = *v19 == v15;
                  v15 = v19;
                }

                while (!v20);
              }

              v8 = (v8 + v17);
              v15 = v19;
            }

            while (v19 != v16);
          }

          v21 = *(v13 + 1);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = *(v13 + 2);
              v20 = *v22 == v13;
              v13 = v22;
            }

            while (!v20);
          }

          v13 = v22;
        }

        while (v22 != v28);
      }

      std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(&v27, v28[0]);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    ++v7;
    v4 = *a2;
  }

  while (v7 < (a2[1] - *a2) >> 4);
  return v8;
}

void sub_1B565AA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
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