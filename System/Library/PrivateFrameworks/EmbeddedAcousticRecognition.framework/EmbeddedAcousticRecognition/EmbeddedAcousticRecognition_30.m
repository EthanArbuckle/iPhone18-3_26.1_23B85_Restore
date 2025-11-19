uint64_t kaldi::WordBoundaryInfo::TypeOfPhone(kaldi::WordBoundaryInfo *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || a2 > ((*(this + 1) - *this) >> 2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Phone ", 6);
    v4 = MEMORY[0x1B8C84C00](v3, a2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, " was not specified in word-boundary file (or options)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return *(*this + 4 * a2);
}

uint64_t kaldi::LatticeWordAligner::ComputationState::OutputUnpronouncedWordArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 32))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    return 0;
  }

  v8 = *v4;
  while (1)
  {
    v9 = *(v5 + 7);
    if (v8 >= v9)
    {
      break;
    }

LABEL_7:
    v5 = *v5;
    if (!v5)
    {
      return 0;
    }
  }

  if (v9 < v8)
  {
    ++v5;
    goto LABEL_7;
  }

  *v15 = 0u;
  v16 = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15[1], 0, 0, 0);
  LODWORD(v17) = v8;
  HIDWORD(v17) = v8;
  v18 = v15[0];
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v15[1], v16, (v16 - v15[1]) >> 2);
  v11 = -1;
  v22 = -1;
  *a4 = v17;
  *(a4 + 8) = v18;
  if (&v17 != a4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), __p, v20, (v20 - __p) >> 2);
    v11 = v22;
  }

  *(a4 + 40) = v11;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15[1])
  {
    *&v16 = v15[1];
    operator delete(v15[1]);
  }

  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = v12 - (v13 + 4);
  if (v12 != v13 + 4)
  {
    memmove(*(a1 + 24), (v13 + 4), v12 - (v13 + 4));
  }

  *(a1 + 32) = v13 + v14;
  return 1;
}

void sub_1B523F920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::LatticeWordAligner::ComputationState::OutputOnePhoneWordArc(uint64_t a1, uint64_t a2, kaldi::TransitionModel *this, uint64_t a4, _BYTE *a5)
{
  if (*a1 == *(a1 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (v6 == *(a1 + 32))
  {
    return 0;
  }

  v11 = *v6;
  for (i = *(a2 + 40); i; i = *i)
  {
    v13 = *(i + 7);
    if (v11 >= v13)
    {
      if (v13 >= v11)
      {
        return 0;
      }

      ++i;
    }
  }

  v14 = kaldi::TransitionModel::TransitionIdToPhone(this, **a1);
  if (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v14) != 3)
  {
    return 0;
  }

  v31 = a4;
  v15 = *(a1 + 8) - *a1;
  v16 = v15 >> 2;
  v17 = 0;
  if (v15)
  {
    if (v16 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v15 >> 2;
    }

    while (1)
    {
      v19 = *(*a1 + 4 * v17);
      if (kaldi::TransitionModel::TransitionIdToPhone(this, v19) != v14 && (*a5 & 1) == 0 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Phone changed before final transition-id found [broken lattice or mismatched model or wrong --reorder option?]", 110);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v39);
      }

      if (kaldi::TransitionModel::IsFinal(this, v19))
      {
        break;
      }

      if (v18 == ++v17)
      {
        v17 = v18;
        break;
      }
    }
  }

  if (v17 == v16)
  {
    return 0;
  }

  v20 = v17 + 1;
  if (v20 < v16 && (*(a2 + 56) & 1) != 0)
  {
    while (kaldi::TransitionModel::IsSelfLoop(this, *(*a1 + 4 * v20)))
    {
      result = 0;
      if (v16 == ++v20)
      {
        return result;
      }
    }
  }

  if (v20 == v16)
  {
    return 0;
  }

  if (kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v20 - 4)) != v14 && (*a5 & 1) == 0)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Phone changed unexpectedly in lattice [broken lattice or mismatched model?]", 75);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v39);
    }

    *a5 = 1;
  }

  v22 = *a1;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v36, v22, &v22[v20], v20);
  v32 = *(a1 + 48);
  v34 = 0;
  v35 = 0;
  v33 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, v36, v37, (v37 - v36) >> 2);
  LODWORD(v39.__locale_) = v11;
  HIDWORD(v39.__locale_) = v11;
  v40 = v32;
  v42 = 0;
  v43 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v33, v34, (v34 - v33) >> 2);
  v23 = -1;
  v44 = -1;
  *v31 = v39;
  *(v31 + 8) = v40;
  if (&v39 != v31)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v31 + 16), __p, v42, (v42 - __p) >> 2);
    v23 = v44;
  }

  *(v31 + 40) = v23;
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v20)
  {
    v25 = *a1;
    v24 = *(a1 + 8);
    v26 = (*a1 + 4 * v20);
    v27 = v24 - v26;
    if (v24 != v26)
    {
      memmove(*a1, v26, v24 - v26);
    }

    *(a1 + 8) = v25 + v27;
  }

  v29 = *(a1 + 24);
  v28 = *(a1 + 32);
  v30 = v28 - (v29 + 4);
  if (v28 != v29 + 4)
  {
    memmove(*(a1 + 24), (v29 + 4), v28 - (v29 + 4));
  }

  *(a1 + 32) = v29 + v30;
  *(a1 + 48) = 0;
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return 1;
}

uint64_t kaldi::LatticeWordAligner::ComputationState::OutputNormalWordArc(uint64_t a1, uint64_t a2, kaldi::TransitionModel *this, uint64_t a4, _BYTE *a5)
{
  if (*a1 == *(a1 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (v6 == *(a1 + 32))
  {
    return 0;
  }

  v11 = *v6;
  for (i = *(a2 + 40); i; i = *i)
  {
    v13 = *(i + 7);
    if (v11 >= v13)
    {
      if (v13 >= v11)
      {
        return 0;
      }

      ++i;
    }
  }

  v14 = kaldi::TransitionModel::TransitionIdToPhone(this, **a1);
  if (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v14) != 1)
  {
    return 0;
  }

  v15 = *(a1 + 8) - *a1;
  v16 = v15 >> 2;
  v17 = 0;
  if (v15)
  {
    if (v16 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v15 >> 2;
    }

    while (!kaldi::TransitionModel::IsFinal(this, *(*a1 + 4 * v17)))
    {
      if (v18 == ++v17)
      {
        v17 = v18;
        break;
      }
    }
  }

  if (v17 == v16)
  {
    return 0;
  }

  v19 = v17 + 1;
  if (v19 < v16 && (*(a2 + 56) & 1) != 0)
  {
    while (kaldi::TransitionModel::IsSelfLoop(this, *(*a1 + 4 * v19)))
    {
      result = 0;
      if (v16 == ++v19)
      {
        return result;
      }
    }
  }

  if (v19 == v16)
  {
    return 0;
  }

  if (kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v19 - 4)) != v14 && (*a5 & 1) == 0)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Phone changed unexpectedly in lattice [broken lattice or mismatched model?]", 75);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v42);
    }

    *a5 = 1;
  }

  if (v19 < v16)
  {
    do
    {
      v21 = kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v19));
      if (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v21) == 2)
      {
        break;
      }

      if (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v21) != 4 && (*a5 & 1) == 0)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Unexpected phone ", 17);
          v23 = MEMORY[0x1B8C84C00](v22, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " found inside a word.", 21);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v42);
        }

        *a5 = 1;
      }

      result = 0;
      ++v19;
    }

    while (v16 != v19);
  }

  if (v19 == v16)
  {
    return 0;
  }

  v24 = kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v19));
  if (v19 < v16)
  {
    do
    {
      if (kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v19)) != v24 && (*a5 & 1) == 0)
      {
        *a5 = 1;
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Phone changed before final transition-id found [broken lattice or mismatched model or wrong --reorder option?]", 110);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v42);
        }
      }

      if (kaldi::TransitionModel::IsFinal(this, *(*a1 + 4 * v19)))
      {
        break;
      }

      result = 0;
      ++v19;
    }

    while (v16 != v19);
  }

  if (v19 == v16)
  {
    return 0;
  }

  v25 = v19 + 1;
  if (v19 + 1 < v16 && (*(a2 + 56) & 1) != 0)
  {
    while (kaldi::TransitionModel::IsSelfLoop(this, *(*a1 + 4 * v25)))
    {
      result = 0;
      if (v16 == ++v25)
      {
        return result;
      }
    }
  }

  if (v25 == v16)
  {
    return 0;
  }

  if (kaldi::TransitionModel::TransitionIdToPhone(this, *(*a1 + 4 * v25 - 4)) != v24 && (*a5 & 1) == 0)
  {
    *a5 = 1;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Phone changed while following final self-loop [broken lattice or mismatched model or wrong --reorder option?]", 109);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v42);
    }
  }

  v26 = *a1;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v39, v26, &v26[v25], v25);
  v35 = *(a1 + 48);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, v39, v40, (v40 - v39) >> 2);
  LODWORD(v42.__locale_) = v11;
  HIDWORD(v42.__locale_) = v11;
  v43 = v35;
  v45 = 0;
  v46 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v36, v37, (v37 - v36) >> 2);
  v27 = -1;
  v47 = -1;
  *a4 = v42;
  *(a4 + 8) = v43;
  if (&v42 != a4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), __p, v45, (v45 - __p) >> 2);
    v27 = v47;
  }

  *(a4 + 40) = v27;
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v25)
  {
    v29 = *a1;
    v28 = *(a1 + 8);
    v30 = (*a1 + 4 * v25);
    v31 = v28 - v30;
    if (v28 != v30)
    {
      memmove(*a1, v30, v28 - v30);
    }

    *(a1 + 8) = v29 + v31;
  }

  v33 = *(a1 + 24);
  v32 = *(a1 + 32);
  v34 = v32 - (v33 + 4);
  if (v32 != v33 + 4)
  {
    memmove(*(a1 + 24), (v33 + 4), v32 - (v33 + 4));
  }

  *(a1 + 32) = v33 + v34;
  *(a1 + 48) = 0;
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return 1;
}

void kaldi::LatticeWordAligner::ComputationState::OutputArcForce(uint64_t a1, uint64_t a2, kaldi::TransitionModel *this, uint64_t a4, _BYTE *a5)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  if (*a1 == v11)
  {
    if ((*a5 & 1) == 0)
    {
      *a5 = 1;
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Discarding word-ids at the end of a sentence, that don't have alignments.", 73);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v45);
        v10 = *a1;
        v11 = *(a1 + 8);
      }
    }

    v38 = *(a1 + 48);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, v10, v11, (v11 - v10) >> 2);
    v45.__locale_ = 0;
    v46 = v38;
    v48 = 0;
    v49 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v42, v43, (v43 - v42) >> 2);
    v25 = -1;
    v50 = -1;
    *a4 = v45;
    *(a4 + 8) = v46;
    if (&v45 != a4)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), __p, v48, (v48 - __p) >> 2);
      v25 = v50;
    }

    *(a4 + 40) = v25;
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    *(a1 + 48) = 0;
    v26 = *(a1 + 24);
LABEL_50:
    *(a1 + 32) = v26;
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    return;
  }

  v12 = *(a1 + 24);
  if (v12 != *(a1 + 32))
  {
    v13 = *v12;
    if ((*a5 & 1) == 0)
    {
      v14 = kaldi::TransitionModel::TransitionIdToPhone(this, *v10);
      v15 = kaldi::TransitionModel::TransitionIdToPhone(this, *(*(a1 + 8) - 4));
      v16 = kaldi::WordBoundaryInfo::TypeOfPhone(a2, v14) == 3 && v14 == v15;
      if (!v16 && (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v14) != 1 || kaldi::WordBoundaryInfo::TypeOfPhone(a2, v15) != 2) && (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v14) != 5 || kaldi::WordBoundaryInfo::TypeOfPhone(a2, v15) != 5))
      {
        goto LABEL_41;
      }

      v17 = *(a1 + 8);
      if (*(a2 + 56))
      {
        v18 = (v17 - *a1) >> 2;
        v19 = 4 * (v18 - 1);
        v20 = v18 - 1;
        while (1)
        {
          v21 = v19;
          v22 = *a1;
          if (v20 < 1)
          {
            break;
          }

          IsSelfLoop = kaldi::TransitionModel::IsSelfLoop(this, v22[v20 & 0x7FFFFFFF]);
          v19 = v21 - 4;
          --v20;
          if (!IsSelfLoop)
          {
            v22 = *a1;
            break;
          }
        }

        v24 = (v22 + v21);
      }

      else
      {
        v24 = (v17 - 4);
      }

      if (!kaldi::TransitionModel::IsFinal(this, *v24))
      {
LABEL_41:
        *a5 = 1;
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Invalid word at end of lattice [partial lattice, forced out?]", 61);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v45);
        }
      }
    }

    v40 = *(a1 + 48);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
    LODWORD(v45.__locale_) = v13;
    HIDWORD(v45.__locale_) = v13;
    v46 = v40;
    v48 = 0;
    v49 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v42, v43, (v43 - v42) >> 2);
    v34 = -1;
    v50 = -1;
    *a4 = v45;
    *(a4 + 8) = v46;
    if (&v45 != a4)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), __p, v48, (v48 - __p) >> 2);
      v34 = v50;
    }

    *(a4 + 40) = v34;
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    *(a1 + 48) = 0;
    *(a1 + 8) = *a1;
    v36 = *(a1 + 24);
    v35 = *(a1 + 32);
    v37 = v35 - (v36 + 4);
    if (v35 != v36 + 4)
    {
      memmove(*(a1 + 24), (v36 + 4), v35 - (v36 + 4));
    }

    v26 = v36 + v37;
    goto LABEL_50;
  }

  v27 = kaldi::TransitionModel::TransitionIdToPhone(this, *v10);
  if (kaldi::WordBoundaryInfo::TypeOfPhone(a2, v27) == 5)
  {
    if (v27 == kaldi::TransitionModel::TransitionIdToPhone(this, *(*(a1 + 8) - 4)))
    {
      if ((*a5 & 1) == 0)
      {
        v28 = *a1;
        v29 = (*(a1 + 8) - *a1) >> 2;
        if (*(a2 + 56) == 1)
        {
          v30 = v29 - 1;
          do
          {
            v31 = kaldi::TransitionModel::IsSelfLoop(this, *(*a1 + 4 * v30));
            LODWORD(v29) = v29 - 1;
            v32 = v30-- < 1;
          }

          while (!v32 && v31);
          v28 = *a1;
        }

        else
        {
          LODWORD(v29) = v29 - 1;
        }

        if (!kaldi::TransitionModel::IsFinal(this, *(v28 + 4 * v29)))
        {
          *a5 = 1;
          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Broken silence arc at end of utterance (does not reach end of silence)", 70);
            kaldi::KaldiLogMessage::~KaldiLogMessage(&v45);
          }
        }
      }
    }

    else if ((*a5 & 1) == 0)
    {
      *a5 = 1;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v45, "Broken silence arc at end of utterance (the phone changed); code error");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v45);
    }

    v41 = *(a1 + 48);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
    LODWORD(v45.__locale_) = *(a2 + 24);
    HIDWORD(v45.__locale_) = v45.__locale_;
    v46 = v41;
    v48 = 0;
    v49 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v42, v43, (v43 - v42) >> 2);
    v33 = -1;
    v50 = -1;
    *a4 = v45;
    *(a4 + 8) = v46;
    if (&v45 == a4)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if ((*a5 & 1) == 0)
    {
      *a5 = 1;
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Partial word detected at end of utterance", 41);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v45);
      }
    }

    v39 = *(a1 + 48);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
    LODWORD(v45.__locale_) = *(a2 + 28);
    HIDWORD(v45.__locale_) = v45.__locale_;
    v46 = v39;
    v48 = 0;
    v49 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v42, v43, (v43 - v42) >> 2);
    v33 = -1;
    v50 = -1;
    *a4 = v45;
    *(a4 + 8) = v46;
    if (&v45 == a4)
    {
      goto LABEL_60;
    }
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 16), __p, v48, (v48 - __p) >> 2);
  v33 = v50;
LABEL_60:
  *(a4 + 40) = v33;
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  *(a1 + 8) = *a1;
  *(a1 + 48) = 0;
}

void kaldi::LoadUnpronouncedWords(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v19 = 0;
  v3 = kaldi::Input::Input(v18, a1, &v19);
  v4 = kaldi::Input::Stream(v3);
  if (v19 == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Not expecting binary unpronounced words file.", 45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v17);
  }

  v5 = v4;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v6 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v7 = std::locale::use_facet(&v17, v6);
    v8 = (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v17);
    v9 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, &__p, v8);
    if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v13 = 0;
    if ((kaldi::ConvertStringToInteger<int>(&__p, &v13) & 1) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v17);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Invalid line in unpronounced words file: ", 41);
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v16 >= 0)
      {
        v12 = HIBYTE(v16);
      }

      else
      {
        v12 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, p_p, v12);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v17);
    }

    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a2, &v13);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  kaldi::Input::~Input(v18);
}

void sub_1B5240AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::Input::~Input((v17 - 64));
  std::__tree<int>::destroy(v16, *(v16 + 8));
  _Unwind_Resume(a1);
}

uint64_t kaldi::WordAlignLattice(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  kaldi::LatticeWordAligner::LatticeWordAligner(v7, a1, a2, a3, a4, a5);
  v5 = kaldi::LatticeWordAligner::AlignLattice(v7);
  std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::~__hash_table(&v12);
  std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::~deque[abi:ne200100](v11);
  std::__tree<int>::destroy(v10, v10[1]);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(v7);
  return v5;
}

uint64_t kaldi::LatticeWordAligner::AlignLattice(kaldi::LatticeWordAligner *this)
{
  (*(**(this + 13) + 224))(*(this + 13));
  v2 = *(*(this + 1) + 88);
  if (v2 == -1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Trying to word-align empty lattice.", 35);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v20);
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    *v16 = 0u;
    kaldi::LatticeWordAligner::ComputationState::ComputationState(v9, v16);
    LODWORD(v12) = v2;
    kaldi::LatticeWordAligner::ComputationState::ComputationState(v13, v9);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }

    StateForTuple = kaldi::LatticeWordAligner::GetStateForTuple(this, &v12, 1);
    (*(**(this + 13) + 176))(*(this + 13), StateForTuple);
    do
    {
      if (!*(this + 19))
      {
        kaldi::LatticeWordAligner::RemoveEpsilonsFromLattice(this);
      }

      if (*(this + 24) >= 1 && (*(**(this + 13) + 160))(*(this + 13)) > *(this + 24))
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
          v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Number of states in lattice exceeded max-states of ", 51);
          v5 = MEMORY[0x1B8C84C00](v4, *(this + 24));
          v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", original lattice had ", 23);
          v7 = MEMORY[0x1B8C84C00](v6, (*(*(this + 1) + 72) - *(*(this + 1) + 64)) >> 3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " states.  Returning what we have.", 33);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v20);
        }

        kaldi::LatticeWordAligner::RemoveEpsilonsFromLattice(this);
      }

      kaldi::LatticeWordAligner::ProcessQueueElement(this);
    }

    while (*(this + 200) != 1);
    (*(**(this + 13) + 224))(*(this + 13));
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (*(&v17 + 1))
    {
      *&v18 = *(&v17 + 1);
      operator delete(*(&v17 + 1));
    }

    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }
  }

  return 0;
}

void sub_1B5240E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  kaldi::LatticeWordAligner::Tuple::~Tuple(va);
  kaldi::LatticeWordAligner::ComputationState::~ComputationState(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::LatticeWordAligner::LatticeWordAligner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 8);
  *(a1 + 8) = v11;
  ++*(v11 + 56);
  *a1 = &unk_1F2CFC270;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<kaldi::WordBoundaryInfo::PhoneType>::__init_with_size[abi:ne200100]<kaldi::WordBoundaryInfo::PhoneType*,kaldi::WordBoundaryInfo::PhoneType*>(a1 + 32, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  *(a1 + 56) = *(a4 + 24);
  std::set<int>::set[abi:ne200100]((a1 + 64), a4 + 32);
  *(a1 + 88) = *(a4 + 56);
  *(a1 + 96) = a5;
  *(a1 + 104) = a6;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0;
  v17[0] = 0;
  v12 = fst::TestProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, 17039360, v17);
  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v17[0] | 4) | v17[0] & v12;
  if ((v12 & 0x1040000) != 0x40000 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "[Lattice has input epsilons and/or is not input-deterministic ", 62);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "(in Mohri sense)]-- i.e. lattice is not deterministic.  ", 56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Word-alignment may be slow and-or blow up in memory.", 52);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
  }

  v19 = 0;
  fst::CreateSuperFinal<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, v18);
  std::__function::__value_func<void ()(int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const&)>::~__value_func[abi:ne200100](v18);
  if (!*(a1 + 60) || !*(a1 + 56))
  {
    v15 = fst::HighestNumberedOutputSymbol<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2) + 1;
    if (!*(a1 + 60))
    {
      *(a1 + 60) = v15;
    }

    if (!*(a1 + 56))
    {
      *(a1 + 56) = v15;
    }
  }

  return a1;
}

void sub_1B52410BC(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::~__hash_table(v4);
  std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::~deque[abi:ne200100](v3);
  kaldi::WordBoundaryInfo::~WordBoundaryInfo(v2);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(v1);
  _Unwind_Resume(a1);
}

void sub_1B5241130(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5241128);
}

uint64_t fst::HighestNumberedOutputSymbol<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1)
{
  v12 = 0;
  (*(*a1 + 128))(a1, &v10);
  v2 = 0;
  while (1)
  {
    if (!v10)
    {
      if (v12 >= v11)
      {
        return v2;
      }

LABEL_7:
      v3 = v12;
      goto LABEL_8;
    }

    if ((*(*v10 + 16))(v10))
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_7;
    }

    v3 = (*(*v10 + 24))();
LABEL_8:
    v9 = 0;
    (*(*a1 + 136))(a1, v3, v7);
    while (1)
    {
      if (!v7[0])
      {
        if (v9 >= v7[2])
        {
          goto LABEL_24;
        }

LABEL_18:
        v5 = *(v7[1] + 48 * v9 + 4);
        if (v2 <= v5)
        {
          v2 = v5;
        }

        else
        {
          v2 = v2;
        }

        goto LABEL_21;
      }

      if ((*(*v7[0] + 24))(v7[0]))
      {
        break;
      }

      if (!v7[0])
      {
        goto LABEL_18;
      }

      v4 = *((*(*v7[0] + 32))() + 4);
      if (v2 <= v4)
      {
        v2 = v4;
      }

      else
      {
        v2 = v2;
      }

      if (v7[0])
      {
        (*(*v7[0] + 40))();
      }

      else
      {
LABEL_21:
        ++v9;
      }
    }

    if (v7[0])
    {
      (*(*v7[0] + 8))();
      goto LABEL_26;
    }

LABEL_24:
    if (v8)
    {
      --*v8;
    }

LABEL_26:
    if (v10)
    {
      (*(*v10 + 32))(v10);
    }

    else
    {
      ++v12;
    }
  }

  if (v10)
  {
    (*(*v10 + 8))();
  }

  return v2;
}

void sub_1B52413D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::WordBoundaryInfo::PhoneType>::__init_with_size[abi:ne200100]<kaldi::WordBoundaryInfo::PhoneType*,kaldi::WordBoundaryInfo::PhoneType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52414C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<kaldi::LatticeWordAligner::Tuple const,int>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<kaldi::LatticeWordAligner::Tuple const,int>,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void kaldi::LatticeWordAligner::Tuple::~Tuple(kaldi::LatticeWordAligner::Tuple *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void kaldi::LatticeWordAligner::ComputationState::~ComputationState(kaldi::LatticeWordAligner::ComputationState *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0x38];
    v7 = *v6 + 72 * (v5 % 0x38);
    v8 = v2[(a1[5] + v5) / 0x38] + 72 * ((a1[5] + v5) % 0x38);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::destroy[abi:ne200100](a1, v7);
        v7 += 72;
        if (v7 - *v6 == 4032)
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
    v11 = 28;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 56;
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

void std::allocator<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;

    operator delete(v4);
  }
}

void kaldi::WordBoundaryInfo::~WordBoundaryInfo(kaldi::WordBoundaryInfo *this)
{
  std::__tree<int>::destroy(this + 32, *(this + 5));
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t kaldi::LatticeWordAligner::GetStateForTuple(int64x2_t *this, int **a2, int a3)
{
  v6 = std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::find<kaldi::LatticeWordAligner::Tuple>(this[10].i64, a2);
  if (v6)
  {
    return *(v6 + 20);
  }

  v7 = (*(*this[6].i64[1] + 200))(this[6].i64[1]);
  v9 = a2;
  *(std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::__emplace_unique_key_args<kaldi::LatticeWordAligner::Tuple,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeWordAligner::Tuple const&>,std::tuple<>>(this[10].i64, a2) + 20) = v7;
  if (a3)
  {
    LODWORD(v9) = *a2;
    kaldi::LatticeWordAligner::ComputationState::ComputationState(v10, (a2 + 1));
    v13 = v7;
    std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::push_front(this + 7, &v9);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }
  }

  return v7;
}

void kaldi::LatticeWordAligner::RemoveEpsilonsFromLattice(kaldi::LatticeWordAligner *this)
{
  v1 = *(this + 13);
  v2 = vneg_f32(0x7F0000007FLL);
  v4 = 0;
  v5 = 0;
  __p = 0;
  fst::RmEpsilon<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v1);
}

void sub_1B5241A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::LatticeWordAligner::ProcessQueueElement(kaldi::LatticeWordAligner *this)
{
  v2 = *(this + 19) + *(this + 18) - 1;
  v3 = (*(*(this + 15) + 8 * (v2 / 0x38)) + 72 * (v2 % 0x38));
  LODWORD(v46) = *v3;
  kaldi::LatticeWordAligner::ComputationState::ComputationState(v47, (v3 + 2));
  v4 = *(this + 19) + *(this + 18) - 1;
  v5 = *(*(*(this + 15) + 8 * (v4 / 0x38)) + 72 * (v4 % 0x38) + 64);
  std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::pop_back(this + 14);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v37 = v46;
  kaldi::LatticeWordAligner::ComputationState::ComputationState(v38, v47);
  if (kaldi::LatticeWordAligner::ComputationState::OutputArc(v47, this + 32, *(this + 2), v41, this + 200))
  {
    StateForTuple = kaldi::LatticeWordAligner::GetStateForTuple(this, &v46, 1);
    (*(**(this + 13) + 208))(*(this + 13), v5, v41);
    goto LABEL_29;
  }

  v6 = *(*(*(this + 1) + 64) + 8 * v46);
  v27 = *v6;
  v29 = 0;
  v30 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 2);
  LODWORD(v21[0]) = v27;
  v26.i32[0] = 2139095040;
  v50 = INFINITY;
  if (*&v27 == INFINITY)
  {
    v8 = __p;
    if (*(&v27 + 1) == v50)
    {
      v7 = v29 != __p;
      if (!__p)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 1;
      if (!__p)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

  v7 = 1;
  v8 = __p;
  if (__p)
  {
LABEL_5:
    v29 = v8;
    operator delete(v8);
  }

LABEL_6:
  if (v7)
  {
    v9 = *(*(*(this + 1) + 64) + 8 * v46);
    v27 = *v9;
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v9 + 8), *(v9 + 16), (*(v9 + 16) - *(v9 + 8)) >> 2);
    LODWORD(v21[0]) = v27;
    v26.i32[0] = 0;
    v50 = 0.0;
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    v33 = v46;
    kaldi::LatticeWordAligner::ComputationState::ComputationState(v34, v47);
    kaldi::LatticeWordAligner::ProcessFinal(this, &v33, v5);
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v34[0])
    {
      v34[1] = v34[0];
      operator delete(v34[0]);
    }
  }

  v10 = *(*(*(this + 1) + 64) + 8 * v46);
  v12 = *(v10 + 48);
  v11 = *(v10 + 56);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v10 + 48);
  }

  if (v11 != v12)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 4) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 4);
    }

    do
    {
      LODWORD(v27) = v46;
      kaldi::LatticeWordAligner::ComputationState::ComputationState(&__p, v47);
      kaldi::LatticeWordAligner::ComputationState::Advance(&__p, v13, &v26);
      LODWORD(v27) = v13[5].i32[0];
      v15 = kaldi::LatticeWordAligner::GetStateForTuple(this, &v27, 1);
      v16 = *(this + 13);
      v17 = v26;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, 0, 0, 0);
      v21[0] = 0;
      v21[1] = v17;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, v18, v19, (v19 - v18) >> 2);
      v25 = v15;
      (*(*v16 + 208))(v16, v5, v21);
      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      v13 += 6;
      --v14;
    }

    while (v14);
  }

LABEL_29:
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }
}

void sub_1B5241F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  kaldi::LatticeWordAligner::Tuple::~Tuple(&a29);
  kaldi::LatticeWordAligner::Tuple::~Tuple(&a37);
  v39 = *(v37 - 192);
  if (v39)
  {
    *(v37 - 184) = v39;
    operator delete(v39);
  }

  kaldi::LatticeWordAligner::Tuple::~Tuple((v37 - 160));
  _Unwind_Resume(a1);
}

kaldi::LatticeWordAligner::ComputationState *kaldi::LatticeWordAligner::ComputationState::ComputationState(kaldi::LatticeWordAligner::ComputationState *this, const kaldi::LatticeWordAligner::ComputationState *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  *(this + 6) = *(a2 + 6);
  return this;
}

void sub_1B5242004(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::push_front(int64x2_t *a1, _DWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x38));
  v7 = *v6 + 72 * (v4 % 0x38);
  if (a1[1].i64[0] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 4032;
  }

  *(v8 - 72) = *a2;
  kaldi::LatticeWordAligner::ComputationState::ComputationState((v8 - 64), (a2 + 2));
  *(v8 - 8) = a2[16];
  result = vaddq_s64(a1[2], xmmword_1B5AE1340);
  a1[2] = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::find<kaldi::LatticeWordAligner::Tuple>(void *a1, int **this)
{
  v4 = (this + 1);
  v5 = *this;
  v6 = kaldi::LatticeWordAligner::ComputationState::Hash(this + 1);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v5 + 102763 * v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v8 >= *&v7)
    {
      v11 = v8 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v8;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (*(i + 4) == *this && kaldi::LatticeWordAligner::ComputationState::operator==((i + 3), v4))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t kaldi::LatticeWordAligner::ComputationState::Hash(int **this)
{
  v1 = *this;
  v2 = this[1];
  if (*this == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v1++;
      v3 = v4 + 7853 * v3;
    }

    while (v1 != v2);
  }

  v5 = this[3];
  v6 = this[4];
  if (v5 == v6)
  {
    v9 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v5++;
      v7 = v8 + 7853 * v7;
    }

    while (v5 != v6);
    v9 = 90647 * v7;
  }

  return v9 + v3;
}

BOOL kaldi::LatticeWordAligner::ComputationState::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  v7 = *a2;
  if (v6 == *(a2 + 8) - v7 && !memcmp(v4, v7, v6) && (v9 = *(a1 + 24), v10 = *(a1 + 32) - v9, v11 = *(a2 + 24), v10 == *(a2 + 32) - v11) && !memcmp(v9, v11, v10) && *(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 52) == *(a2 + 52);
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::__emplace_unique_key_args<kaldi::LatticeWordAligner::Tuple,std::piecewise_construct_t const&,std::tuple<kaldi::LatticeWordAligner::Tuple const&>,std::tuple<>>(void *a1, int **this)
{
  v5 = (this + 1);
  v4 = *this;
  v6 = v4 + 102763 * kaldi::LatticeWordAligner::ComputationState::Hash(this + 1);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<kaldi::LatticeWordAligner::Tuple const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 4) != *this || !kaldi::LatticeWordAligner::ComputationState::operator==((v12 + 3), v5))
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_1B5242598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<kaldi::LatticeWordAligner::Tuple const,int>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x38)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 56;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(a1, v11);
}

void sub_1B5242894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::RemoveSomeInputSymbols<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>(uint64_t *a1, uint64_t a2)
{
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v7, a1);
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v3, v7);
  fst::Map<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>>(a2, v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    operator delete(v4);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v8)
  {
    operator delete(v8);
  }
}

void sub_1B5242964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a9);
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a17);
  _Unwind_Resume(a1);
}

void fst::Map<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>>(uint64_t a1, uint64_t a2)
{
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v3, a2);
  fst::ArcMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>>(a1, v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

uint64_t kaldi::ConstIntegerSet<int>::ConstIntegerSet(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 40, *a2, a2[1], (a2[1] - *a2) >> 2);
  std::__sort<std::__less<int,int> &,int *>();
  v3 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(*(a1 + 40), *(a1 + 48));
  if (v3 != *(a1 + 48))
  {
    *(a1 + 48) = v3;
  }

  kaldi::ConstIntegerSet<int>::InitInternal(a1);
  return a1;
}

void sub_1B5242AA4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 280))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v11 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v5 = 0;
      do
      {
        (*(*a1 + 296))(a1, v5, v25);
        while (!(*(*v25[0] + 24))(v25[0]))
        {
          v6 = (*(*v25[0] + 32))(v25[0]);
          fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>::operator()(a2, v6, v30);
          (*(*v25[0] + 88))(v25[0], v30);
          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          (*(*v25[0] + 40))(v25[0]);
        }

        if (v25[0])
        {
          (*(*v25[0] + 8))();
        }

        (*(*a1 + 32))(&v22, a1, v5);
        v25[0] = 0;
        v25[1] = v22;
        v27 = 0;
        v28 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v23, v24, (v24 - v23) >> 2);
        v29 = -1;
        fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>::operator()(a2, v25, v30);
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        if (v23)
        {
          v24 = v23;
          operator delete(v23);
        }

        if (!v30[0])
        {
          goto LABEL_26;
        }

        v7 = FLAGS_fst_error_fatal;
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v19, "FATAL");
          v8 = fst::LogMessage::LogMessage(&v21, v19);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v16, "ERROR");
          v8 = fst::LogMessage::LogMessage(&v18, v16);
        }

        v9 = fst::cerr(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ArcMap: non-zero arc labels for superfinal arc", 46);
        if (v7)
        {
          fst::LogMessage::~LogMessage(&v21);
          if (v20 < 0)
          {
            v10 = v19[0];
LABEL_24:
            operator delete(v10);
          }
        }

        else
        {
          fst::LogMessage::~LogMessage(&v18);
          if (v17 < 0)
          {
            v10 = v16[0];
            goto LABEL_24;
          }
        }

        (*(*a1 + 192))(a1, 4, 4);
LABEL_26:
        v12 = v30[1];
        v14 = 0;
        v15 = 0;
        v13 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, v31, v32, (v32 - v31) >> 2);
        (*(*a1 + 184))(a1, v5, &v12);
        if (v13)
        {
          v14 = v13;
          operator delete(v13);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        v5 = (v5 + 1);
      }

      while (v5 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v11 & 0xFFFFFFFFCD70FFFFLL, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B5242F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v43 = *(v41 - 120);
  if (v43)
  {
    *(v41 - 112) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>::operator()@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a2;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(a3 + 40) = *(a2 + 40);
  result = kaldi::ConstIntegerSet<int>::count(a1, *a3);
  if (result)
  {
    *a3 = 0;
  }

  return result;
}

void sub_1B524310C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ProjectMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1 || ((*(*a1 + 280))(a1, 0), *a2 != 2))
  {
    (*(*a1 + 288))(a1, 0);
  }

  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v12 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v5 = 0;
      do
      {
        (*(*a1 + 296))(a1, v5, v26);
        while (!(*(*v26[0] + 24))(v26[0]))
        {
          v6 = (*(*v26[0] + 32))(v26[0]);
          fst::ProjectMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::operator()(a2, v6, v31);
          (*(*v26[0] + 88))(v26[0], v31);
          if (v32)
          {
            v33 = v32;
            operator delete(v32);
          }

          (*(*v26[0] + 40))(v26[0]);
        }

        if (v26[0])
        {
          (*(*v26[0] + 8))();
        }

        (*(*a1 + 32))(&v23, a1, v5);
        v26[0] = 0;
        v26[1] = v23;
        v28 = 0;
        v29 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v24, v25, (v25 - v24) >> 2);
        v30 = -1;
        fst::ProjectMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::operator()(a2, v26, v31);
        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (!v31[0])
        {
          goto LABEL_29;
        }

        v7 = FLAGS_fst_error_fatal;
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "FATAL");
          v8 = fst::LogMessage::LogMessage(&v22, v20);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v17, "ERROR");
          v8 = fst::LogMessage::LogMessage(&v19, v17);
        }

        v9 = fst::cerr(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ArcMap: non-zero arc labels for superfinal arc", 46);
        if (v7)
        {
          fst::LogMessage::~LogMessage(&v22);
          if (v21 < 0)
          {
            v10 = v20[0];
LABEL_27:
            operator delete(v10);
          }
        }

        else
        {
          fst::LogMessage::~LogMessage(&v19);
          if (v18 < 0)
          {
            v10 = v17[0];
            goto LABEL_27;
          }
        }

        (*(*a1 + 192))(a1, 4, 4);
LABEL_29:
        v13 = v31[1];
        v15 = 0;
        v16 = 0;
        v14 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, v32, v33, (v33 - v32) >> 2);
        (*(*a1 + 184))(a1, v5, &v13);
        if (v14)
        {
          v15 = v14;
          operator delete(v14);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v5 = (v5 + 1);
      }

      while (v5 < (*(*a1 + 160))(a1));
    }

    v11 = fst::ProjectProperties(v12, *a2 == 1);
    return (*(*a1 + 192))(a1, v11, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B52435E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v43 = *(v41 - 120);
  if (v43)
  {
    *(v41 - 112) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ProjectMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::operator()@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 4 * (*a1 != 1));
  v5 = *(a2 + 40);
  *a3 = v4;
  *(a3 + 4) = v4;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(a3 + 40) = v5;
  return result;
}

uint64_t std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::destroy[abi:ne200100](a1, (*(a1[1] + 8 * (v2 / 0x38)) + 72 * (v2 % 0x38)));
  --a1[5];

  return std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t kaldi::LatticeWordAligner::ComputationState::OutputArc(uint64_t a1, uint64_t a2, kaldi::TransitionModel *a3, uint64_t a4, _BYTE *a5)
{
  if (kaldi::LatticeWordAligner::ComputationState::OutputUnpronouncedWordArc(a1, a2, a3, a4) & 1) != 0 || (kaldi::LatticeWordAligner::ComputationState::OutputNormalWordArc(a1, a2, a3, a4, a5) & 1) != 0 || (kaldi::LatticeWordAligner::ComputationState::OutputSilenceArc(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  return kaldi::LatticeWordAligner::ComputationState::OutputOnePhoneWordArc(a1, a2, a3, a4, a5);
}

void kaldi::LatticeWordAligner::ProcessFinal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != *(a2 + 16) || *(a2 + 32) != *(a2 + 40))
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
    kaldi::LatticeWordAligner::ComputationState::OutputArcForce(a2 + 8, a1 + 32, *(a1 + 16), &v20, (a1 + 200));
    StateForTuple = kaldi::LatticeWordAligner::GetStateForTuple(a1, a2, 1);
    (*(**(a1 + 104) + 208))(*(a1 + 104), a3, &v20);
    v6 = __p;
    if (!__p)
    {
      return;
    }

    v23 = __p;
    goto LABEL_5;
  }

  v20 = *(a2 + 56);
  __p = 0;
  v23 = 0;
  v21 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, 0, 0, 0);
  v7 = *(a1 + 104);
  (*(*v7 + 32))(&v26, v7, a3);
  if ((*&v26 + *(&v26 + 1)) < (*&v20 + *(&v20 + 1)))
  {
    goto LABEL_8;
  }

  if ((*&v26 + *(&v26 + 1)) > (*&v20 + *(&v20 + 1)))
  {
    goto LABEL_10;
  }

  if (*&v26 < *&v20)
  {
LABEL_8:
    v8 = &v26;
    goto LABEL_11;
  }

  if (*&v26 > *&v20)
  {
    goto LABEL_10;
  }

  v10 = v27;
  v11 = (v28 - v27) >> 2;
  v12 = v21;
  v13 = (__p - v21) >> 2;
  if (v11 > v13)
  {
    goto LABEL_10;
  }

  v8 = &v26;
  if (v11 >= 1 && v11 >= v13)
  {
    v14 = (((v28 - v27) >> 2) & 0x7FFFFFFF) - 1;
    while (1)
    {
      v16 = *v10++;
      v15 = v16;
      v18 = *v12++;
      v17 = v18;
      if (v15 < v18)
      {
        break;
      }

      v19 = v15 > v17 || v14-- == 0;
      v8 = &v26;
      if (v19)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v8 = &v20;
  }

LABEL_11:
  v9 = *(v8 + 1);
  v29[0] = *v8;
  v29[1] = v9;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, v8[1], v8[2], (v8[2] - v8[1]) >> 2);
  (*(*v7 + 184))(v7, a3, v29);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  v6 = v21;
  if (v21)
  {
    __p = v21;
LABEL_5:
    operator delete(v6);
  }
}

void sub_1B5243ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v19 = *(v17 - 56);
  if (v19)
  {
    *(v17 - 48) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t kaldi::LatticeWordAligner::ComputationState::Advance(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a1, *&a1[1], *&a2[2], *&a2[3], (*&a2[3] - *&a2[2]) >> 2);
  if (a2->i32[0])
  {
    std::vector<int>::push_back[abi:ne200100](&a1[3], a2);
  }

  result = vadd_f32(a1[6], a2[1]);
  *a3 = result;
  a1[6] = 0;
  return result;
}

uint64_t std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x38)
  {
    a2 = 1;
  }

  if (v5 < 0x70)
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

void kaldi::LatticeWordAligner::~LatticeWordAligner(kaldi::LatticeWordAligner *this)
{
  std::__hash_table<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,std::__unordered_map_hasher<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleHash,kaldi::LatticeWordAligner::TupleEqual,true>,std::__unordered_map_equal<kaldi::LatticeWordAligner::Tuple,std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>,kaldi::LatticeWordAligner::TupleEqual,kaldi::LatticeWordAligner::TupleHash,true>,std::allocator<std::__hash_value_type<kaldi::LatticeWordAligner::Tuple,int>>>::~__hash_table(this + 160);
  std::deque<std::pair<kaldi::LatticeWordAligner::Tuple,int>>::~deque[abi:ne200100](this + 14);
  std::__tree<int>::destroy(this + 64, *(this + 9));
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(this);
}

void *fst::operator<<<fst::LatticeWeightTpl<float>,int>(void *a1, uint64_t a2)
{
  fst::operator<<<float>(a1, a2);
  v4 = strlen(FLAGS_fst_weight_separator) == 1;
  FstCheck(v4, "strlen(FLAGS_fst_weight_separator) == 1", "../libquasar/libkaldi/src/fstext/lattice-weight.h", 810);
  v9 = *FLAGS_fst_weight_separator;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v9, 1);
  v5 = *(a2 + 8);
  if (*(a2 + 16) != v5)
  {
    v6 = 0;
    do
    {
      MEMORY[0x1B8C84C00](a1, *(v5 + 4 * v6++));
      v5 = *(a2 + 8);
      v7 = *(a2 + 16) - v5;
      if (v6 < v7 >> 2)
      {
        v10 = 95;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v10, 1);
        v5 = *(a2 + 8);
        v7 = *(a2 + 16) - v5;
      }
    }

    while (v6 < v7 >> 2);
  }

  return a1;
}

void *fst::operator<<<float>(void *a1, float *a2)
{
  if (*a2 == INFINITY)
  {
    v4 = "Infinity";
    v5 = 8;
LABEL_5:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
    goto LABEL_6;
  }

  if (*a2 == -INFINITY)
  {
    v4 = "-Infinity";
    v5 = 9;
    goto LABEL_5;
  }

  std::ostream::operator<<();
LABEL_6:
  v6 = strlen(FLAGS_fst_weight_separator) == 1;
  FstCheck(v6, "strlen(FLAGS_fst_weight_separator) == 1", "../libquasar/libkaldi/src/fstext/lattice-weight.h", 335);
  v12 = *FLAGS_fst_weight_separator;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v12, 1);
  v7 = a2[1];
  if (v7 == INFINITY)
  {
    v8 = "Infinity";
    v9 = a1;
    v10 = 8;
  }

  else
  {
    if (v7 != -INFINITY)
    {
      std::ostream::operator<<();
      return a1;
    }

    v8 = "-Infinity";
    v9 = a1;
    v10 = 9;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8, v10);
  return a1;
}

void fst::ArcSort<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1)
{
  v3 = a1;
  v4 = &v6;
  memset(v5, 0, sizeof(v5));
  v1[0] = a1;
  v1[1] = &v6;
  memset(v2, 0, sizeof(v2));
  fst::StateMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>(a1, v1);
  v7 = v2;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = v5;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B5243F3C(_Unwind_Exception *a1)
{
  v4 = v1;
  *(v3 - 40) = v2;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  *(v3 - 40) = v4;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  _Unwind_Resume(a1);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0xAAAAAAAAAAAAAAABLL * ((a2[3] - v9) >> 4))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 48 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }

        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B524421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](a1 + 2);
  v4 = (*(**a1 + 40))(*a1, a2);
  std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::reserve(a1 + 2, v4);
  v5 = *a1;
  v13 = 0;
  (*(*v5 + 136))(v5, a2, v11);
  while (1)
  {
    if (!v11[0])
    {
      if (v13 >= v11[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v6 = v11[1] + 48 * v13;
      goto LABEL_8;
    }

    if ((*(*v11[0] + 24))(v11[0]))
    {
      break;
    }

    if (!v11[0])
    {
      goto LABEL_7;
    }

    v6 = (*(*v11[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::push_back[abi:ne200100](a1 + 2, v6);
    if (v11[0])
    {
      (*(*v11[0] + 40))(v11[0]);
    }

    else
    {
      ++v13;
    }
  }

  if (v11[0])
  {
    (*(*v11[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v12)
  {
    --*v12;
  }

LABEL_15:
  v7 = a1[2];
  v8 = a1[3];
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,false>(v7, v8, v11, v10, 1);
}

void sub_1B5244424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

void std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,false>(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 4);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v9, v9 + 48, (a2 - 6));
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v9, v9 + 48, v9 + 96, (a2 - 6));
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v9, v9 + 48, v9 + 96, v9 + 144, (a2 - 6));
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v24 = *(a2 - 6);
        v23 = a2 - 6;
        v44 = v24;
        v45 = v23[1];
        v47 = 0;
        v48 = 0;
        v46 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, v23[2], v23[3], (v23[3] - v23[2]) >> 2);
        v49 = *(v23 + 10);
        v38 = *v9;
        v39 = *(v9 + 8);
        v41 = 0;
        v42 = 0;
        v40 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v40, *(v9 + 16), *(v9 + 24), (*(v9 + 24) - *(v9 + 16)) >> 2);
        v43 = *(v9 + 40);
        v25 = v44;
        v26 = v38;
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v25 < v26)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v9, v23);
        }

        return;
      }
    }

    if (v12 <= 1151)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(v9, a2);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 48 * (v13 >> 1));
    if (v12 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v15, v9, (a2 - 6));
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v9, v15, (a2 - 6));
      v16 = 3 * v14;
      v17 = v9 + 48 * v14 - 48;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v9 + 48, v17, (a2 - 12));
      v18 = v9 + 48 + 16 * v16;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1 + 96, v18, (a2 - 18));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(v17, v15, v18);
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, v15);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v32 = *(a1 - 48);
    v33 = *(a1 - 40);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, *(a1 - 32), *(a1 - 24), (*(a1 - 24) - *(a1 - 32)) >> 2);
    v37 = *(a1 - 8);
    v27 = *a1;
    v29 = 0;
    v30 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
    v31 = *(a1 + 40);
    v19 = v32;
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v19 >= v27)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &>(a1, a2);
      goto LABEL_26;
    }

LABEL_21:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &>(a1, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(a1, v20);
    v9 = (v20 + 6);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>((v20 + 6), a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_24:
      std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,false>(a1, v20, a3, -v11, a5 & 1);
      v9 = (v20 + 6);
LABEL_26:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(v9, a2, a2, a3);
  }
}

void sub_1B5244840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 - 120);
  if (v23)
  {
    *(v21 - 112) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = *a2;
  v68 = *(a2 + 8);
  v70 = 0;
  v71 = 0;
  v69 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v69, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v72 = *(a2 + 40);
  v61 = *a1;
  v62 = *(a1 + 8);
  v64 = 0;
  v65 = 0;
  v63 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v63, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  v66 = *(a1 + 40);
  v6 = v67;
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v6 < v61)
  {
    v31 = *a3;
    v32 = *(a3 + 8);
    v34 = 0;
    v35 = 0;
    v33 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
    v36 = *(a3 + 40);
    v25 = *a2;
    v26 = *(a2 + 8);
    v28 = 0;
    v29 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    v30 = *(a2 + 40);
    v7 = v31;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v7 >= v25)
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2);
      v19 = *a3;
      v20 = *(a3 + 8);
      v22 = 0;
      v23 = 0;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
      v24 = *(a3 + 40);
      v14 = *a2;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      v18 = *(a2 + 40);
      v12 = v19;
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v12 >= v14)
      {
        return 1;
      }

      v8 = a2;
    }

    else
    {
      v8 = a1;
    }

    v11 = a3;
LABEL_30:
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v8, v11);
    return 1;
  }

  v55 = *a3;
  v56 = *(a3 + 8);
  v58 = 0;
  v59 = 0;
  v57 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v57, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  v60 = *(a3 + 40);
  v49 = *a2;
  v50 = *(a2 + 8);
  v52 = 0;
  v53 = 0;
  v51 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v54 = *(a2 + 40);
  v9 = v55;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v9 < v49)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2, a3);
    v43 = *a2;
    v44 = *(a2 + 8);
    v46 = 0;
    v47 = 0;
    v45 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v45, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    v48 = *(a2 + 40);
    v37 = *a1;
    v38 = *(a1 + 8);
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
    v42 = *(a1 + 40);
    v10 = v43;
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v10 >= v37)
    {
      return 1;
    }

    v8 = a1;
    v11 = a2;
    goto LABEL_30;
  }

  return 0;
}

void sub_1B5244C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (__p)
  {
    *v41 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1, a2, a3);
  v40 = *a4;
  v41 = *(a4 + 8);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
  v45 = *(a4 + 40);
  v34 = *a3;
  v35 = *(a3 + 8);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  v39 = *(a3 + 40);
  v8 = v40;
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v8 < v34)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a3, a4);
    v28 = *a3;
    v29 = *(a3 + 8);
    v31 = 0;
    v32 = 0;
    v30 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
    v33 = *(a3 + 40);
    v22 = *a2;
    v23 = *(a2 + 8);
    v25 = 0;
    v26 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
    v27 = *(a2 + 40);
    v9 = v28;
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v9 < v22)
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2, a3);
      v16 = *a2;
      v17 = *(a2 + 8);
      v19 = 0;
      v20 = 0;
      v18 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      v21 = *(a2 + 40);
      v11 = *a1;
      v13 = 0;
      v14 = 0;
      v12 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v12, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
      v15 = *(a1 + 40);
      v10 = v16;
      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v10 < v11)
      {
        std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2);
      }
    }
  }
}

void sub_1B5244EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    *v29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1, a2, a3, a4);
  v55 = *a5;
  v56 = *(a5 + 8);
  v58 = 0;
  v59 = 0;
  v57 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v57, *(a5 + 16), *(a5 + 24), (*(a5 + 24) - *(a5 + 16)) >> 2);
  v60 = *(a5 + 40);
  v49 = *a4;
  v50 = *(a4 + 8);
  v52 = 0;
  v53 = 0;
  v51 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
  v54 = *(a4 + 40);
  v10 = v55;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v10 < v49)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a4, a5);
    v43 = *a4;
    v44 = *(a4 + 8);
    v46 = 0;
    v47 = 0;
    v45 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v45, *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
    v48 = *(a4 + 40);
    v37 = *a3;
    v38 = *(a3 + 8);
    v40 = 0;
    v41 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
    v42 = *(a3 + 40);
    v11 = v43;
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v11 < v37)
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a3, a4);
      v31 = *a3;
      v32 = *(a3 + 8);
      v34 = 0;
      v35 = 0;
      v33 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
      v36 = *(a3 + 40);
      v25 = *a2;
      v26 = *(a2 + 8);
      v28 = 0;
      v29 = 0;
      v27 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      v30 = *(a2 + 40);
      v12 = v31;
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v12 < v25)
      {
        std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2, a3);
        v19 = *a2;
        v20 = *(a2 + 8);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
        v24 = *(a2 + 40);
        v14 = *a1;
        v16 = 0;
        v17 = 0;
        v15 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
        v18 = *(a1 + 40);
        v13 = v19;
        if (v15)
        {
          v16 = v15;
          operator delete(v15);
        }

        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        if (v13 < v14)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2);
        }
      }
    }
  }
}

void sub_1B524525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    *v29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        v6 = v3;
        v37 = v5[6];
        v38 = v5[7];
        v40 = 0;
        v41 = 0;
        v39 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, v5[8], v5[9], (v5[9] - v5[8]) >> 2);
        v42 = *(v5 + 22);
        v31 = *v5;
        v32 = v5[1];
        v34 = 0;
        v35 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v5[2], v5[3], (v5[3] - v5[2]) >> 2);
        v36 = *(v5 + 10);
        v7 = v37;
        v8 = v31;
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (v7 < v8)
        {
          v25 = *v6;
          v26 = v5[7];
          v28 = 0;
          v29 = 0;
          v27 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, v5[8], v5[9], (v5[9] - v5[8]) >> 2);
          v30 = *(v5 + 22);
          for (i = v4; ; i -= 48)
          {
            *(a1 + i + 48) = *(a1 + i);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a1 + i + 56), a1 + i + 8);
            *(a1 + i + 88) = *(a1 + i + 40);
            if (!i)
            {
              v11 = a1;
              goto LABEL_19;
            }

            v19 = v25;
            v20 = v26;
            v22 = 0;
            v23 = 0;
            v21 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v27, v28, (v28 - v27) >> 2);
            v24 = v30;
            v14 = *(a1 + i - 48);
            v16 = 0;
            v17 = 0;
            v15 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, *(a1 + i - 32), *(a1 + i - 24), (*(a1 + i - 24) - *(a1 + i - 32)) >> 2);
            v18 = *(a1 + i - 8);
            v10 = v19;
            if (v15)
            {
              v16 = v15;
              operator delete(v15);
            }

            if (v21)
            {
              v22 = v21;
              operator delete(v21);
            }

            if (v10 >= v14)
            {
              break;
            }
          }

          v11 = (a1 + i);
LABEL_19:
          *v11 = v25;
          v12 = HIDWORD(v26);
          *(a1 + i + 8) = v26;
          *(v11 + 3) = v12;
          if (v11 != &v25)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 + 2, v27, v28, (v28 - v27) >> 2);
          }

          *(v11 + 10) = v30;
          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }
        }

        v3 = v6 + 6;
        v4 += 48;
        v5 = v6;
      }

      while (v6 + 6 != a2);
    }
  }
}

void sub_1B524553C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v2 = a1;
    v3 = (a1 + 48);
    if ((a1 + 48) != a2)
    {
      v4 = (a1 + 88);
      do
      {
        v5 = v3;
        v34 = v2[6];
        v35 = v2[7];
        v37 = 0;
        v38 = 0;
        v36 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, v2[8], v2[9], (v2[9] - v2[8]) >> 2);
        v39 = *(v2 + 22);
        v28 = *v2;
        v29 = v2[1];
        v31 = 0;
        v32 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v2[2], v2[3], (v2[3] - v2[2]) >> 2);
        v33 = *(v2 + 10);
        v6 = v34;
        v7 = v28;
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v6 < v7)
        {
          v22 = *v5;
          v23 = v2[7];
          v25 = 0;
          v26 = 0;
          v24 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, v2[8], v2[9], (v2[9] - v2[8]) >> 2);
          v27 = *(v2 + 22);
          v8 = v4;
          do
          {
            *(v8 - 5) = *(v8 - 11);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v8 - 4, (v8 - 20));
            *v8 = *(v8 - 12);
            v16 = v22;
            v17 = v23;
            v19 = 0;
            v20 = 0;
            v18 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, v24, v25, (v25 - v24) >> 2);
            v21 = v27;
            v11 = *(v8 - 17);
            v13 = 0;
            v14 = 0;
            v12 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v12, *(v8 - 15), *(v8 - 14), (*(v8 - 14) - *(v8 - 15)) >> 2);
            v15 = *(v8 - 24);
            v9 = v16;
            if (v12)
            {
              v13 = v12;
              operator delete(v12);
            }

            if (v18)
            {
              v19 = v18;
              operator delete(v18);
            }

            v8 -= 12;
          }

          while (v9 < v11);
          *(v8 - 5) = v22;
          *(v8 - 4) = v23;
          if (v8 - 10 != &v22)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8 - 3, v24, v25, (v25 - v24) >> 2);
          }

          *v8 = v27;
          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }
        }

        v3 = v5 + 6;
        v4 += 12;
        v2 = v5;
      }

      while (v5 + 6 != a2);
    }
  }
}

void sub_1B52457F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &>(unint64_t a1, uint64_t *a2)
{
  v85 = *a1;
  v4 = (a1 + 8);
  v86 = *(a1 + 8);
  v88 = 0;
  v89 = 0;
  v87 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v87, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  v90 = *(a1 + 40);
  v79 = v85;
  v80 = v86;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v81, v87, v88, (v88 - v87) >> 2);
  v84 = v90;
  v73 = *(a2 - 6);
  v74 = *(a2 - 5);
  v76 = 0;
  v77 = 0;
  v75 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v75, *(a2 - 4), *(a2 - 3), (*(a2 - 3) - *(a2 - 4)) >> 2);
  v78 = *(a2 - 2);
  v5 = v79;
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v5 >= v73)
  {
    for (i = a1 + 48; i < a2; i += 48)
    {
      v55 = v85;
      v56 = v86;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v57, v87, v88, (v88 - v87) >> 2);
      v60 = v90;
      v49 = *i;
      v50 = *(i + 8);
      v52 = 0;
      v53 = 0;
      v51 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *(i + 16), *(i + 24), (*(i + 24) - *(i + 16)) >> 2);
      v54 = *(i + 40);
      v8 = v55;
      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v8 < v49)
      {
        break;
      }
    }
  }

  else
  {
    i = a1;
    do
    {
      v67 = v85;
      v68 = v86;
      v70 = 0;
      v71 = 0;
      v69 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v69, v87, v88, (v88 - v87) >> 2);
      v72 = v90;
      v61 = *(i + 48);
      v62 = *(i + 56);
      v64 = 0;
      v65 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(i + 64), *(i + 72), (*(i + 72) - *(i + 64)) >> 2);
      v66 = *(i + 88);
      v7 = v67;
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      i += 48;
    }

    while (v7 >= v61);
  }

  if (i < a2)
  {
    do
    {
      v43 = v85;
      v44 = v86;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v45, v87, v88, (v88 - v87) >> 2);
      v48 = v90;
      v37 = *(a2 - 6);
      v38 = *(a2 - 5);
      v40 = 0;
      v41 = 0;
      v39 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, *(a2 - 4), *(a2 - 3), (*(a2 - 3) - *(a2 - 4)) >> 2);
      v42 = *(a2 - 2);
      v9 = v43;
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      a2 -= 6;
    }

    while (v9 < v37);
  }

  while (i < a2)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(i, a2);
    do
    {
      v31 = v85;
      v32 = v86;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, v87, v88, (v88 - v87) >> 2);
      v36 = v90;
      v25 = *(i + 48);
      v26 = *(i + 56);
      v28 = 0;
      v29 = 0;
      v27 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, *(i + 64), *(i + 72), (*(i + 72) - *(i + 64)) >> 2);
      v30 = *(i + 88);
      v10 = v31;
      v11 = v25;
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      i += 48;
    }

    while (v10 >= v11);
    do
    {
      v19 = v85;
      v20 = v86;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v87, v88, (v88 - v87) >> 2);
      v24 = v90;
      v14 = *(a2 - 6);
      v16 = 0;
      v17 = 0;
      v15 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, *(a2 - 4), *(a2 - 3), (*(a2 - 3) - *(a2 - 4)) >> 2);
      v18 = *(a2 - 2);
      v12 = v19;
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      a2 -= 6;
    }

    while (v12 < v14);
  }

  if (i - 48 != a1)
  {
    *a1 = *(i - 48);
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v4, i - 40);
    *(a1 + 40) = *(i - 8);
  }

  *(i - 48) = v85;
  *(i - 40) = v86;
  if ((i - 40) != &v86)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((i - 32), v87, v88, (v88 - v87) >> 2);
  }

  *(i - 8) = v90;
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  return i;
}

void sub_1B5245D54(_Unwind_Exception *a1)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 120);
  if (v4)
  {
    *(v1 - 112) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &>(uint64_t a1, unint64_t a2)
{
  v82 = *a1;
  v21 = (a1 + 8);
  v83 = *(a1 + 8);
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  v4 = 0;
  v22 = a1;
  v87 = *(a1 + 40);
  do
  {
    v76 = *(a1 + v4 + 48);
    v77 = *(a1 + v4 + 56);
    v79 = 0;
    v80 = 0;
    v78 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v78, *(a1 + v4 + 64), *(a1 + v4 + 72), (*(a1 + v4 + 72) - *(a1 + v4 + 64)) >> 2);
    v81 = *(a1 + v4 + 88);
    v70 = v82;
    v71 = v83;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v72, v84, v85, (v85 - v84) >> 2);
    v75 = v87;
    v5 = v76;
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }

    v4 += 48;
  }

  while (v5 < v70);
  v6 = a1 + v4;
  if (v4 == 48)
  {
    if (v6 >= a2)
    {
      i = a2;
    }

    else
    {
      for (i = a2 - 48; ; i -= 48)
      {
        v64 = *i;
        v65 = *(i + 8);
        v67 = 0;
        v68 = 0;
        v66 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v66, *(i + 16), *(i + 24), (*(i + 24) - *(i + 16)) >> 2);
        v69 = *(i + 40);
        v58 = v82;
        v59 = v83;
        v61 = 0;
        v62 = 0;
        v60 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v60, v84, v85, (v85 - v84) >> 2);
        v63 = v87;
        v10 = v64;
        if (v60)
        {
          v61 = v60;
          operator delete(v60);
        }

        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (v10 < v58 || v6 >= i)
        {
          break;
        }
      }
    }
  }

  else
  {
    i = a2;
    do
    {
      v8 = *(i - 48);
      i -= 48;
      v52 = v8;
      v53 = *(i + 8);
      v55 = 0;
      v56 = 0;
      v54 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(i + 16), *(i + 24), (*(i + 24) - *(i + 16)) >> 2);
      v57 = *(a2 - 8);
      v46 = v82;
      v47 = v83;
      v49 = 0;
      v50 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v84, v85, (v85 - v84) >> 2);
      v51 = v87;
      v9 = v52;
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      a2 = i;
    }

    while (v9 >= v46);
  }

  v11 = (v22 + v4);
  if (v6 < i)
  {
    v12 = i;
    do
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v11, v12);
      v13 = v11;
      do
      {
        v14 = v11[6];
        v11 += 6;
        v40 = v14;
        v41 = v11[1];
        v43 = 0;
        v44 = 0;
        v42 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, v11[2], v11[3], (v11[3] - v11[2]) >> 2);
        v45 = *(v13 + 22);
        v34 = v82;
        v35 = v83;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, v84, v85, (v85 - v84) >> 2);
        v39 = v87;
        v15 = v40;
        v16 = v34;
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        v13 = v11;
      }

      while (v15 < v16);
      v17 = v12;
      do
      {
        v18 = *(v12 - 6);
        v12 -= 6;
        v28 = v18;
        v29 = v12[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, v12[2], v12[3], (v12[3] - v12[2]) >> 2);
        v33 = *(v17 - 2);
        v23 = v82;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, v84, v85, (v85 - v84) >> 2);
        v27 = v87;
        v19 = v28;
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        v17 = v12;
      }

      while (v19 >= v23);
    }

    while (v11 < v12);
  }

  if (v11 - 6 != v22)
  {
    *v22 = *(v11 - 6);
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v21, (v11 - 5));
    *(v22 + 40) = *(v11 - 2);
  }

  *(v11 - 6) = v82;
  *(v11 - 5) = v83;
  if (v11 - 5 != &v83)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 - 4, v84, v85, (v85 - v84) >> 2);
  }

  *(v11 - 2) = v87;
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  return v11 - 6;
}

void sub_1B52462CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59)
{
  v61 = *(v59 - 120);
  if (v61)
  {
    *(v59 - 112) = v61;
    operator delete(v61);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, uint64_t a2)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v52 = *(a2 - 48);
        v53 = *(a2 - 40);
        v55 = 0;
        v56 = 0;
        v54 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
        v57 = *(a2 - 8);
        v46 = *a1;
        v47 = *(a1 + 8);
        v49 = 0;
        v50 = 0;
        v48 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v48, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
        v51 = *(a1 + 40);
        v4 = v52;
        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }

        if (v4 < v46)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, (a2 - 48));
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1, a1 + 48, a2 - 48);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1, a1 + 48, a1 + 96, a2 - 48);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48);
      return 1;
  }

LABEL_15:
  v5 = a1 + 96;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,0>(a1, a1 + 48, a1 + 96);
  v6 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v40 = *v6;
    v41 = *(v6 + 8);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 2);
    v45 = *(v6 + 40);
    v34 = *v5;
    v35 = *(v5 + 8);
    v37 = 0;
    v38 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v5 + 16), *(v5 + 24), (*(v5 + 24) - *(v5 + 16)) >> 2);
    v39 = *(v5 + 40);
    v9 = v40;
    v10 = v34;
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v9 < v10)
    {
      v28 = *v6;
      v29 = *(v6 + 8);
      v31 = 0;
      v32 = 0;
      v30 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 2);
      v33 = *(v6 + 40);
      for (i = v7; ; i -= 48)
      {
        *(a1 + i + 144) = *(a1 + i + 96);
        fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a1 + i + 152), a1 + i + 104);
        *(a1 + i + 184) = *(a1 + i + 136);
        if (i == -96)
        {
          v13 = a1;
          goto LABEL_32;
        }

        v22 = v28;
        v23 = v29;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, v30, v31, (v31 - v30) >> 2);
        v27 = v33;
        v17 = *(a1 + i + 48);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *(a1 + i + 64), *(a1 + i + 72), (*(a1 + i + 72) - *(a1 + i + 64)) >> 2);
        v21 = *(a1 + i + 88);
        v12 = v22;
        if (v18)
        {
          v19 = v18;
          operator delete(v18);
        }

        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v12 >= v17)
        {
          break;
        }
      }

      v13 = a1 + i + 96;
LABEL_32:
      *v13 = v28;
      v14 = HIDWORD(v29);
      *(a1 + i + 104) = v29;
      *(v13 + 12) = v14;
      if (v13 != &v28)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v13 + 16), v30, v31, (v31 - v30) >> 2);
      }

      *(v13 + 40) = v33;
      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (++v8 == 8)
      {
        return v6 + 48 == a2;
      }
    }

    v5 = v6;
    v7 += 48;
    v6 += 48;
    if (v6 == a2)
    {
      return 1;
    }
  }
}

void sub_1B524678C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = *(v37 - 120);
  if (v39)
  {
    *(v37 - 112) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1 + 1;
  v6 = a1[1];
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a1[2], a1[3], (a1[3] - a1[2]) >> 2);
  v10 = *(a1 + 10);
  *a1 = *a2;
  fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v4, (a2 + 1));
  *(a1 + 10) = *(a2 + 10);
  *a2 = v5;
  a2[1] = v6;
  if (&v5 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2 + 2, __p, v8, (v8 - __p) >> 2);
  }

  *(a2 + 10) = v10;
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1B52468BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    v17 = a2 - a1;
    if (a2 - a1 >= 49)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 48 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(a1, a4, v8, v11);
        v11 -= 6;
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
        v23 = *v12;
        v24 = *(v12 + 8);
        v26 = 0;
        v27 = 0;
        v25 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *(v12 + 16), *(v12 + 24), (*(v12 + 24) - *(v12 + 16)) >> 2);
        v28 = *(v12 + 40);
        v18 = *a1;
        v20 = 0;
        v21 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
        v22 = *(a1 + 40);
        v13 = v23;
        if (__p)
        {
          v20 = __p;
          operator delete(__p);
        }

        if (v25)
        {
          v26 = v25;
          operator delete(v25);
        }

        if (v13 < v18)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(v12, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(a1, a4, v8, a1);
        }

        v12 += 48;
      }

      while (v12 != a3);
    }

    if (v17 >= 49)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(a1, v6, a4, v14);
        v6 -= 48;
      }

      while (v14-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_1B5246AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v9 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v10 = (a1 + 48 * v9);
      v11 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v11 < a3)
      {
        v69 = *v10;
        v70 = v10[1];
        v72 = 0;
        v73 = 0;
        v71 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v71, v10[2], v10[3], (v10[3] - v10[2]) >> 2);
        v12 = v10[6];
        v74 = *(v10 + 10);
        v63 = v12;
        v64 = v10[7];
        v66 = 0;
        v67 = 0;
        v65 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v65, v10[8], v10[9], (v10[9] - v10[8]) >> 2);
        v68 = *(v10 + 22);
        v13 = v69;
        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        if (v13 < v63)
        {
          v10 += 6;
          v9 = v11;
        }
      }

      v57 = *v10;
      v58 = v10[1];
      v60 = 0;
      v61 = 0;
      v59 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v59, v10[2], v10[3], (v10[3] - v10[2]) >> 2);
      v62 = *(v10 + 10);
      v51 = *v5;
      v52 = v5[1];
      v54 = 0;
      v55 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v5[2], v5[3], (v5[3] - v5[2]) >> 2);
      v56 = *(v5 + 10);
      v14 = v57;
      if (__p)
      {
        v54 = __p;
        operator delete(__p);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v14 >= v51)
      {
        v45 = *v5;
        v46 = v5[1];
        v48 = 0;
        v49 = 0;
        v47 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v47, v5[2], v5[3], (v5[3] - v5[2]) >> 2);
        v50 = *(v5 + 10);
        do
        {
          v15 = v10;
          *v5 = *v10;
          fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v5 + 1, (v10 + 1));
          *(v5 + 10) = *(v10 + 10);
          if (v7 < v9)
          {
            break;
          }

          v16 = 2 * v9;
          v9 = (2 * v9) | 1;
          v10 = (a1 + 48 * v9);
          v17 = v16 + 2;
          if (v16 + 2 < a3)
          {
            v39 = *v10;
            v40 = v10[1];
            v42 = 0;
            v43 = 0;
            v41 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v41, v10[2], v10[3], (v10[3] - v10[2]) >> 2);
            v18 = v10[6];
            v44 = *(v10 + 10);
            v33 = v18;
            v34 = v10[7];
            v36 = 0;
            v37 = 0;
            v35 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v35, v10[8], v10[9], (v10[9] - v10[8]) >> 2);
            v38 = *(v10 + 22);
            v19 = v39;
            v20 = v33;
            if (v35)
            {
              v36 = v35;
              operator delete(v35);
            }

            if (v41)
            {
              v42 = v41;
              operator delete(v41);
            }

            if (v19 < v20)
            {
              v10 += 6;
              v9 = v17;
            }
          }

          v27 = *v10;
          v28 = v10[1];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v29, v10[2], v10[3], (v10[3] - v10[2]) >> 2);
          v32 = *(v10 + 10);
          v22 = v45;
          v24 = 0;
          v25 = 0;
          v23 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v23, v47, v48, (v48 - v47) >> 2);
          v26 = v50;
          v21 = v27;
          if (v23)
          {
            v24 = v23;
            operator delete(v23);
          }

          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          v5 = v15;
        }

        while (v21 >= v22);
        *v15 = v45;
        v15[1] = v46;
        if (v15 != &v45)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v15 + 2, v47, v48, (v48 - v47) >> 2);
        }

        *(v15 + 10) = v50;
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }
      }
    }
  }
}

void sub_1B5246ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v10 = *a1;
    v11 = *(a1 + 8);
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
    v15 = *(a1 + 40);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(a1, a3, a4);
    v9 = v8;
    if (v8 == (a2 - 48))
    {
      *v8 = v10;
      v8[1] = v11;
      if (v8 != &v10)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8 + 2, __p, v13, (v13 - __p) >> 2);
      }

      *(v9 + 10) = v15;
    }

    else
    {
      *v8 = *(a2 - 48);
      fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v8 + 1, a2 - 40);
      *(v9 + 10) = *(a2 - 8);
      *(a2 - 48) = v10;
      *(a2 - 40) = v11;
      if ((a2 - 40) != &v11)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 - 32), __p, v13, (v13 - __p) >> 2);
      }

      *(a2 - 8) = v15;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(a1, (v9 + 6), a3, 0xAAAAAAAAAAAAAAABLL * ((v9 - a1 + 48) >> 4));
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B52470B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = a1 + 48 * v5;
    a1 = v8 + 48;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v19 = *(v8 + 48);
      v20 = *(v8 + 56);
      v22 = 0;
      v23 = 0;
      v21 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, *(v8 + 64), *(v8 + 72), (*(v8 + 72) - *(v8 + 64)) >> 2);
      v24 = *(v8 + 88);
      v11 = v8 + 96;
      v14 = *(v8 + 96);
      v16 = 0;
      v17 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v8 + 112), *(v8 + 120), (*(v8 + 120) - *(v8 + 112)) >> 2);
      v18 = *(v8 + 136);
      v12 = v19;
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v12 < v14)
      {
        a1 = v11;
        v5 = v10;
      }
    }

    *v7 = *a1;
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((v7 + 8), a1 + 8);
    *(v7 + 40) = *(a1 + 40);
  }

  while (v5 <= v6);
  return a1;
}

void sub_1B524722C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 48 * (v4 >> 1));
    v37 = *v8;
    v38 = v8[1];
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, v8[2], v8[3], (v8[3] - v8[2]) >> 2);
    v10 = (a2 - 48);
    v9 = *(a2 - 48);
    v42 = *(v8 + 10);
    v31 = v9;
    v32 = *(a2 - 40);
    v34 = 0;
    v35 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
    v36 = *(a2 - 8);
    v11 = v37;
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v11 < v31)
    {
      v25 = *(a2 - 48);
      v26 = *(a2 - 40);
      v28 = 0;
      v29 = 0;
      v27 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
      v30 = *(a2 - 8);
      do
      {
        v12 = v8;
        *v10 = *v8;
        fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v10 + 1, (v8 + 1));
        *(v10 + 10) = *(v8 + 10);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 48 * v7);
        v19 = *v8;
        v20 = v8[1];
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v8[2], v8[3], (v8[3] - v8[2]) >> 2);
        v24 = *(v8 + 10);
        v14 = v25;
        v16 = 0;
        v17 = 0;
        v15 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, v27, v28, (v28 - v27) >> 2);
        v18 = v30;
        v13 = v19;
        if (v15)
        {
          v16 = v15;
          operator delete(v15);
        }

        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        v10 = v12;
      }

      while (v13 < v14);
      *v12 = v25;
      v12[1] = v26;
      if (v12 != &v25)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v12 + 2, v27, v28, (v28 - v27) >> 2);
      }

      *(v12 + 10) = v30;
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }
    }
  }
}

void sub_1B52474A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D07B20;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, 0, 0, 0);
  *(a1 + 96) = -1;
  *(a1 + 106) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MemoryPool((a1 + 112), 1);
}

void sub_1B5247754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~MemoryPool((v18 + 14));
  v20 = v18[9];
  if (v20)
  {
    v18[10] = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 106))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D07BC8;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D07BC8;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D07C08;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5247B14(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D07C08;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D07B20;
  v2 = a1[3];
  v3 = (a1 + 14);
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v4 = v2[3];
      if (v4)
      {
        --*v4;
      }
    }

    v2[5] = a1[21];
    a1[21] = v2;
  }

  v5 = a1[1];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[14] = &unk_1F2D07BC8;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::Link>::~MemoryArena(a1 + 15);
  quasar::Bitmap::~Bitmap(v3);
  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D07B20;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 106) = *(a2 + 106);
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MemoryPool((a1 + 112), 1);
}

void sub_1B5247E54(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v11, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 106) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 168);
      if (v7)
      {
        *(v3 + 168) = v7[5];
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate((v3 + 120), 1);
        v7[5] = 0;
      }

      v8 = *(v3 + 8);
      v7[4] = 0;
      (*(*v8 + 136))(v8, a2, v7);
      *(v3 + 24) = v7;
    }

    if (*v7)
    {
      (*(**v7 + 80))(*v7, 16, 16);
    }

    result = (*(**(v3 + 8) + 40))(*(v3 + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 96) = a2;
  }

  return result;
}

void sub_1B524802C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Reinit(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_5;
  }

  result = (*(*v6 + 16))(v6, a3);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  else
  {
LABEL_5:
    v8 = a1[3];
    if (v8)
    {
      --*v8;
    }
  }

  a1[4] = 0;
  v9 = *(*a2 + 136);

  return v9(a2, a3, a1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 105) = 1;
  if (*(a1 + 106) == 1)
  {
    v3 = 0;
    *(a1 + 104) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 104) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 104);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Search(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(*v2 + 80))(v2, v3, 15);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    if (*v4)
    {
      (*(**v4 + 56))(*v4);
    }

    else
    {
      v4[4] = 0;
    }

    while (1)
    {
      v14 = *(a1 + 24);
      if (*v14)
      {
        if ((*(**v14 + 24))(*v14))
        {
          return 0;
        }
      }

      else if (v14[4] >= v14[2])
      {
        return 0;
      }

      v15 = *(a1 + 24);
      v16 = *v15;
      if (*(a1 + 32))
      {
        v17 = v16 ? (*(*v16 + 32))(v16) : v15[1] + 48 * v15[4];
        v18 = (v17 + 4);
      }

      else
      {
        v18 = (v16 ? (*(*v16 + 32))(v16) : v15[1] + 48 * v15[4]);
      }

      v19 = *(a1 + 40);
      v20 = *v18 <= v19 ? 0 : 7;
      if (*v18 == v19)
      {
        v20 = 1;
      }

      if (v20)
      {
        break;
      }

      v21 = *(a1 + 24);
      if (*v21)
      {
        (*(**v21 + 40))(*v21);
      }

      else
      {
        ++v21[4];
      }
    }

    return v20 == 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
LABEL_53:
    v23 = *(a1 + 24);
    result = *v23;
    if (!*v23)
    {
      v23[4] = v6;
      return result;
    }

    (*(*result + 64))(result, v6);
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + v5) >> 1;
    v8 = *(a1 + 24);
    if (*v8)
    {
      (*(**v8 + 64))(*v8, (v6 + v5) >> 1);
    }

    else
    {
      v8[4] = v7;
    }

    v9 = *(a1 + 24);
    v10 = *v9;
    if (*(a1 + 32))
    {
      v11 = v10 ? (*(*v10 + 32))(v10) : v9[1] + 48 * v9[4];
      v12 = (v11 + 4);
    }

    else
    {
      v12 = (v10 ? (*(*v10 + 32))(v10) : v9[1] + 48 * v9[4]);
    }

    v13 = *(a1 + 40);
    if (*v12 <= v13)
    {
      break;
    }

    v5 = (v6 + v5) >> 1;
LABEL_25:
    if (v6 >= v5)
    {
      goto LABEL_53;
    }
  }

  if (*v12 < v13)
  {
    v6 = v7 + 1;
    goto LABEL_25;
  }

  while (v7 > v6)
  {
    v24 = *(a1 + 24);
    --v7;
    if (*v24)
    {
      (*(**v24 + 64))(*v24, v7);
    }

    else
    {
      v24[4] = v7;
    }

    v25 = *(a1 + 24);
    v26 = *v25;
    if (*(a1 + 32))
    {
      if (v26)
      {
        v27 = (*(*v26 + 32))(v26);
      }

      else
      {
        v27 = v25[1] + 48 * v25[4];
      }

      v28 = (v27 + 4);
    }

    else if (v26)
    {
      v28 = (*(*v26 + 32))(v26);
    }

    else
    {
      v28 = (v25[1] + 48 * v25[4]);
    }

    if (*v28 != *(a1 + 40))
    {
      v29 = *(a1 + 24);
      v30 = v7 + 1;
      if (*v29)
      {
        (*(**v29 + 64))(*v29, v30);
      }

      else
      {
        v29[4] = v30;
      }

      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Done(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 24))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 105) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = **(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 80))(v5, v6, 15);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 24);
  v8 = *v7;
  if (v4)
  {
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8);
    }

    else
    {
      v9 = v7[1] + 48 * v7[4];
    }

    v10 = (v9 + 4);
  }

  else if (v8)
  {
    v10 = (*(*v8 + 32))(v8);
  }

  else
  {
    v10 = (v7[1] + 48 * v7[4]);
  }

  return *v10 != *(a1 + 40);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Value(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 48 * v3[4];
  }

  (*(**v3 + 80))(*v3, 15, 15);
  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 48 * v3[4];
  }

  v4 = *(**v3 + 32);

  return v4();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Next(uint64_t result)
{
  if (*(result + 104) == 1)
  {
    *(result + 104) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t quasar::SentencePieceOptions::options@<X0>(quasar::SentencePieceOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 320;
  v3[3] = this + 480;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 4uLL);
}

void quasar::SentencePieceBlock::init(quasar::SentencePieceBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 41);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8) != 6)
    {
      goto LABEL_10;
    }

    v2 = *v2;
  }

  else if (v3 != 6)
  {
    goto LABEL_10;
  }

  if (*v2 == 1868787301 && *(v2 + 4) == 25956)
  {
    v14 = 0;
    goto LABEL_42;
  }

LABEL_10:
  v5 = quasar::OptionValue<std::string>::value(this + 41);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (*(v5 + 8) != 6)
    {
      goto LABEL_19;
    }

    v5 = *v5;
  }

  else if (v6 != 6)
  {
    goto LABEL_19;
  }

  if (*v5 == 1868784996 && *(v5 + 4) == 25956)
  {
    v14 = 1;
    goto LABEL_42;
  }

LABEL_19:
  v8 = quasar::OptionValue<std::string>::value(this + 41);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 10)
    {
      goto LABEL_28;
    }

    v8 = *v8;
  }

  else if (v9 != 10)
  {
    goto LABEL_28;
  }

  if (*v8 == 0x612D65646F636564 && *(v8 + 8) == 26992)
  {
    v14 = 2;
    goto LABEL_42;
  }

LABEL_28:
  v11 = quasar::OptionValue<std::string>::value(this + 41);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    if (*(v11 + 8) != 12)
    {
      goto LABEL_46;
    }

    v11 = *v11;
  }

  else if (v12 != 12)
  {
    goto LABEL_46;
  }

  if (*v11 != 0x732D65646F636564 || *(v11 + 8) != 1701011824)
  {
LABEL_46:
    memset(v20, 0, sizeof(v20));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unknown sentence piece action: ", 31);
    v19 = quasar::OptionValue<std::string>::value(this + 41);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, v19);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v20);
  }

  v14 = 3;
LABEL_42:
  *(this + 162) = v14;
  v15 = quasar::OptionValue<std::string>::value(this + 3);
  quasar::SentencePieceBlock::getModel(v15, v20);
  v16 = v20[0];
  v20[0] = 0uLL;
  v17 = *(this + 80);
  *(this + 632) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    if (*(&v20[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20[0] + 1));
    }
  }
}

void quasar::SentencePieceBlock::getModel(const void **a1@<X1>, void *a2@<X8>)
{
  {
    operator new();
  }

  {
    operator new();
  }

  v4 = quasar::SentencePieceBlock::getModel(std::string const&)::m;
  std::mutex::lock(quasar::SentencePieceBlock::getModel(std::string const&)::m);
  v5 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(quasar::SentencePieceBlock::getModel(std::string const&)::modelFileMap, a1);
  v6 = v5;
  if (quasar::SentencePieceBlock::getModel(std::string const&)::modelFileMap + 8 == v5 || (*a2 = 0, a2[1] = 0, (v7 = *(v5 + 64)) == 0))
  {
LABEL_11:
    operator new();
  }

  v8 = std::__shared_weak_count::lock(v7);
  a2[1] = v8;
  if (v8)
  {
    v9 = *(v6 + 56);
    *a2 = v9;
    if (!v9)
    {
LABEL_9:
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      goto LABEL_11;
    }
  }

  else if (!*a2)
  {
    goto LABEL_9;
  }

  std::mutex::unlock(v4);
}

void sub_1B5248EF0()
{
  sentencepiece::util::Status::~Status((v2 - 56));
  v3 = *(v0 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::mutex::unlock(v1);
  JUMPOUT(0x1B5248F44);
}

void quasar::SentencePieceBlock::process(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v180 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v121 = a3[1];
  if (*a3 != v121)
  {
    memset(v159, 0, sizeof(v159));
    if (*(a1 + 648))
    {
      v131[0] = 0;
      v131[1] = 0;
      v132 = 0;
      sentencepiece::SentencePieceText::SentencePieceText(v155, 0);
      marisa::Trie::Trie(&v128);
      if (*(v4 + 145) == 1)
      {
        __src[0] = 0;
        __src[1] = 0;
        *&v139 = 0;
        v5 = *(v4 + 200);
        v6 = *(v4 + 208);
        if (v5 != v6)
        {
          v7 = 0;
          do
          {
            if (v7 >= v139)
            {
              v8 = __src[0];
              v9 = v7 - __src[0];
              v10 = (v7 - __src[0]) >> 2;
              v11 = v10 + 1;
              if ((v10 + 1) >> 62)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v12 = v139 - __src[0];
              if ((v139 - __src[0]) >> 1 > v11)
              {
                v11 = v12 >> 1;
              }

              v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
              v14 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v13)
              {
                v14 = v11;
              }

              if (v14)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v14);
              }

              v15 = (v7 - __src[0]) >> 2;
              v16 = (4 * v10);
              v17 = (4 * v10 - 4 * v15);
              *v16 = *(v5 + 64);
              v7 = (v16 + 1);
              memcpy(v17, v8, v9);
              v18 = __src[0];
              __src[0] = v17;
              __src[1] = v7;
              *&v139 = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              *v7 = *(v5 + 64);
              v7 += 4;
            }

            __src[1] = v7;
            v5 += 136;
          }

          while (v5 != v6);
        }

        (*(**(a1 + 632) + 232))(v133);
        sentencepiece::util::Status::operator=(&v128, v133);
        sentencepiece::util::Status::~Status(v133);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }
      }

      else
      {
        __src[0] = 0;
        __src[1] = 0;
        *&v139 = 0;
        v19 = *(v4 + 200);
        v20 = *(v4 + 208);
        while (v19 != v20)
        {
          std::vector<std::string>::push_back[abi:ne200100](__src, v19);
          v19 = (v19 + 136);
        }

        (*(**(v3 + 632) + 224))(v133);
        sentencepiece::util::Status::operator=(&v128, v133);
        sentencepiece::util::Status::~Status(v133);
        v133[0].__r_.__value_.__r.__words[0] = __src;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v133);
      }

      if (v128)
      {
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        *__src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
        v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "SentencePiece error while decoding: ", 36);
        sentencepiece::util::Status::ToString(&v128, v133);
        if ((v133[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v116 = v133;
        }

        else
        {
          v116 = v133[0].__r_.__value_.__r.__words[0];
        }

        if ((v133[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v133[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v133[0].__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, v116, size);
        if (SHIBYTE(v133[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133[0].__r_.__value_.__l.__data_);
        }

        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__src);
      }

      if (0xF0F0F0F0F0F0F0F1 * ((*(v4 + 208) - *(v4 + 200)) >> 3) != v156)
      {
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        *__src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
        v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "Inconsistent sentencepiece decoding length, expected ", 53);
        v109 = MEMORY[0x1B8C84C30](v108, 0xF0F0F0F0F0F0F0F1 * ((*(v4 + 208) - *(v4 + 200)) >> 3));
        v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, " got ", 5);
        v111 = MEMORY[0x1B8C84C00](v110, v156);
        v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ", status = ", 11);
        sentencepiece::util::Status::ToString(&v128, v133);
        if ((v133[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v113 = v133;
        }

        else
        {
          v113 = v133[0].__r_.__value_.__r.__words[0];
        }

        if ((v133[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v114 = HIBYTE(v133[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v114 = v133[0].__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, v113, v114);
        if (SHIBYTE(v133[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133[0].__r_.__value_.__l.__data_);
        }

        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__src);
      }

      quasar::TranslationPhraseInternal::TranslationPhraseInternal(v133, v4);
      if (v157)
      {
        v21 = (v157 + 8);
      }

      else
      {
        v21 = 0;
      }

      v22 = v135;
      if (v156)
      {
        v23 = 0;
        v24 = 8 * v156;
        do
        {
          v25 = *v21;
          std::string::operator=((v22 + v23 * 8), (*(*v21 + 48) & 0xFFFFFFFFFFFFFFFELL));
          std::string::operator=(&v135[v23 + 9], (*(v25 + 56) & 0xFFFFFFFFFFFFFFFELL));
          v22 = v135;
          v26 = &v135[v23];
          v26[8].i32[0] = *(v25 + 64);
          v26[16] = *(v25 + 68);
          v26[3].i8[0] = 1;
          ++v21;
          v23 += 17;
          v24 -= 8;
        }

        while (v24);
      }

      if (v22 != v136)
      {
        v136[-14].i8[0] = 0;
      }

      v27 = v158 & 0xFFFFFFFFFFFFFFFELL;
      if (*((v158 & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v27, *(v27 + 8));
      }

      else
      {
        v28 = *v27;
        __str.__r_.__value_.__r.__words[2] = *(v27 + 16);
        *&__str.__r_.__value_.__l.__data_ = v28;
      }

      std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](v131, v133);
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(&v165, v133);
      v29 = v177;
      if ((*(a1 + 648) - 1) >= 2)
      {
        v46 = v178;
        goto LABEL_71;
      }

      std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](&v177, v177);
      v176 = 0;
      v30 = v135;
      v31 = v136;
      if (v135 == v136)
      {
        v45 = 1.0;
        goto LABEL_69;
      }

      v32 = 1;
      while (1)
      {
        v33 = v178;
        if (v177 != v178)
        {
          v34 = *(v178 - 4);
          if (*(v178 - 8) == v34 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v35 = &__str) : (v35 = __str.__r_.__value_.__r.__words[0]), v35->__r_.__value_.__s.__data_[v34 - 1] != 32))
          {
            v36 = v30[16].i32[0];
            if (v36 == v30[16].i32[1] || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), p_str->__r_.__value_.__s.__data_[v36] != 32))
            {
              if (v34 != v36 && quasar::gLogLevel >= 1)
              {
                v153 = 0u;
                v154 = 0u;
                v151 = 0u;
                v152 = 0u;
                v149 = 0u;
                v150 = 0u;
                v147 = 0u;
                v148 = 0u;
                v145 = 0u;
                v146 = 0u;
                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                *__src = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
                v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "Inconsistent token sequence: previous end = ", 44);
                v40 = MEMORY[0x1B8C84C00](v39, *(v33 - 4));
                v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", current start = ", 18);
                MEMORY[0x1B8C84C00](v41, v30[16].u32[0]);
                quasar::QuasarErrorMessage::~QuasarErrorMessage(__src);
              }

              v42 = v30[2].i8[7];
              if (v42 >= 0)
              {
                v43 = v30;
              }

              else
              {
                v43 = *v30;
              }

              if (v42 >= 0)
              {
                v44 = v30[2].u8[7];
              }

              else
              {
                v44 = v30[1];
              }

              std::string::append((v33 - 136), v43, v44);
              *(v33 - 4) = v30[16].i32[1];
              *(v33 - 80) = vadd_f32(v30[7], *(v33 - 80));
              *(v33 - 40) = vadd_f32(v30[12], *(v33 - 40));
              std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>((v33 - 104), *(v33 - 96), *&v30[4], *&v30[5], (*&v30[5] - *&v30[4]) >> 2);
              ++v32;
              goto LABEL_65;
            }
          }

          *(v178 - 80) = *(v178 - 80) / v32;
        }

        std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v177, v30);
        *(v178 - 72) = -1;
        v32 = 1;
LABEL_65:
        v30 += 17;
        if (v30 == v31)
        {
          v45 = v32;
LABEL_69:
          v29 = v177;
          v46 = v178;
          if (v177 != v178)
          {
            *(v178 - 80) = *(v178 - 80) / v45;
          }

LABEL_71:
          memset(&v129, 0, sizeof(v129));
          if (v29 == v46)
          {
            v48 = 0;
            v49 = 0;
            v51 = 0.0;
            v77 = v46;
            v50 = 0.0;
          }

          else
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0.0;
            v51 = 0.0;
            do
            {
              v29[3].i8[0] = 0;
              v52 = v29[16].i32[0];
              v53 = v29[16].i32[1];
              v54 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if (v53)
              {
                v55 = v53 == v52;
              }

              else
              {
                v55 = 1;
              }

              if (!v55)
              {
                v56 = v53;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v57 = &__str;
                }

                else
                {
                  v57 = __str.__r_.__value_.__r.__words[0];
                }

                v58 = v53 - 1;
                v59 = (v57 + v56 - 1);
                while (1)
                {
                  v60 = v59->__r_.__value_.__s.__data_[0];
                  v59 = (v59 - 1);
                  if (v60 != 32)
                  {
                    break;
                  }

                  v29[3].i8[0] = 1;
                  v29[16].i32[1] = v58;
                  v61 = v58 - 1;
                  if (v58)
                  {
                    v55 = v52 == v58--;
                    if (!v55)
                    {
                      continue;
                    }
                  }

                  v53 = v61 + 1;
                  goto LABEL_87;
                }

                v53 = v58 + 1;
              }

LABEL_87:
              v62 = v52;
              if ((v54 & 0x80u) == 0)
              {
                v63 = v54;
              }

              else
              {
                v63 = __str.__r_.__value_.__l.__size_;
              }

              if (v52 != v53 && v63 != v52)
              {
                v65 = 0;
                if ((v54 & 0x80u) == 0)
                {
                  v66 = &__str;
                }

                else
                {
                  v66 = __str.__r_.__value_.__r.__words[0];
                }

                v67 = v66 + v52;
                v68 = v52 - v63 + 1;
                while (v67[v65] == 32)
                {
                  if (v47)
                  {
                    v47[3].i8[0] = 1;
                  }

                  v29[16].i32[0] = v52 + v65 + 1;
                  v69 = v65 + 1;
                  if (v52 + 1 - v53 + v65)
                  {
                    if (v68 + v65++)
                    {
                      continue;
                    }
                  }

                  v52 += v69;
                  v62 += v69;
                  goto LABEL_105;
                }

                v52 += v65;
                v62 += v65;
              }

LABEL_105:
              std::string::basic_string(__src, &__str, v62, v53 - v52, &v160);
              if (v29[2].i8[7] < 0)
              {
                operator delete(*v29);
              }

              v71 = *__src;
              v29[2] = v139;
              *v29->f32 = v71;
              std::to_string(&v160, v29[7].f32[0]);
              v72 = std::string::insert(&v160, 0, " ");
              v73 = *&v72->__r_.__value_.__l.__data_;
              *&v139 = *(&v72->__r_.__value_.__l + 2);
              *__src = v73;
              v72->__r_.__value_.__l.__size_ = 0;
              v72->__r_.__value_.__r.__words[2] = 0;
              v72->__r_.__value_.__r.__words[0] = 0;
              if ((SBYTE7(v139) & 0x80u) == 0)
              {
                v74 = __src;
              }

              else
              {
                v74 = __src[0];
              }

              if ((SBYTE7(v139) & 0x80u) == 0)
              {
                v75 = BYTE7(v139);
              }

              else
              {
                v75 = __src[1];
              }

              std::string::append(&v129, v74, v75);
              if (SBYTE7(v139) < 0)
              {
                operator delete(__src[0]);
              }

              if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v160.__r_.__value_.__l.__data_);
              }

              v76 = v29[7].f32[0];
              v51 = v51 + v76;
              v50 = v50 + v29[7].f32[1];
              v49 = vadd_f32(v49, v29[12]);
              v48 |= v76 == -1.0;
              v47 = v29;
              v29 += 17;
            }

            while (v29 != v46);
            v77 = v178;
            v46 = v177;
          }

          v78 = v77 - v46;
          if (!v78 || (v48 & 1) != 0)
          {
            v82 = *(v4 + 224);
            v165.__r_.__value_.__r.__words[0] = *v4;
            v179 = v82;
            v81 = *(v4 + 8);
            v80 = a1;
          }

          else
          {
            v79 = (v51 / (0xF0F0F0F0F0F0F0F1 * (v78 >> 3)));
            *(v165.__r_.__value_.__r.__words + 1) = v79;
            *&v165.__r_.__value_.__l.__data_ = v50;
            v179 = v49;
            v80 = a1;
            v81 = v79 != -1 && *quasar::OptionValue<double>::value((a1 + 488)) > v79;
          }

          v165.__r_.__value_.__s.__data_[8] = v81;
          quasar::PTree::PTree(__src);
          if ((*quasar::OptionValue<BOOL>::value((v80 + 184)) & 1) == 0)
          {
            v83 = quasar::MetaInfo::get((v4 + 256));
            LODWORD(__src[0]) = *v83;
            std::string::operator=(&__src[1], (v83 + 8));
            if (__src != v83)
            {
              std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&v140, *(v83 + 32), *(v83 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v83 + 40) - *(v83 + 32)) >> 3));
            }

            BYTE8(v141) = *(v83 + 56);
          }

          std::string::basic_string[abi:ne200100]<0>(&v160, quasar::SENTENCEPIECE_DECODER_INPUT_META);
          std::string::basic_string[abi:ne200100]<0>(v161, quasar::SENTENCEPIECE_DECODER_OUTPUT_META);
          std::set<std::string>::set[abi:ne200100](&v123, &v160.__r_.__value_.__l.__data_, 2);
          std::string::basic_string[abi:ne200100]<0>(__p, "firstleg ");
          quasar::backupMetaInfo(__src, &v123, __p);
          if (v127 < 0)
          {
            operator delete(__p[0]);
          }

          std::__tree<std::string>::destroy(&v123, v124);
          v84 = 0;
          while (1)
          {
            if (SHIBYTE(v163[v84]) < 0)
            {
              operator delete(*(&v160 + v84 * 8 + 24));
            }

            v84 -= 3;
            if (v84 == -6)
            {
              std::string::basic_string[abi:ne200100]<0>(&v123, quasar::SENTENCEPIECE_DECODER_INPUT_META);
              quasar::TranslationPhraseInternal::convertTokensToString(__p, v133);
              quasar::PTree::PTree(&v160, __p);
              quasar::PTree::putChild(__src, &v123, &v160, 1);
              quasar::PTree::~PTree(&v160);
              if (v127 < 0)
              {
                operator delete(__p[0]);
              }

              if (v125 < 0)
              {
                operator delete(v123);
              }

              std::string::basic_string[abi:ne200100]<0>(&v123, quasar::SENTENCEPIECE_DECODER_OUTPUT_META);
              quasar::PTree::PTree(&v160, &__str);
              quasar::PTree::putChild(__src, &v123, &v160, 1);
              quasar::PTree::~PTree(&v160);
              if (v125 < 0)
              {
                operator delete(v123);
              }

              std::string::basic_string[abi:ne200100]<0>(&v123, quasar::SENTENCE_CONFIDENCE_META);
              v85 = *(v165.__r_.__value_.__r.__words + 1);
              LODWORD(v160.__r_.__value_.__l.__data_) = quasar::getType(*(v165.__r_.__value_.__r.__words + 1));
              std::to_string(&v160.__r_.__value_.__r.__words[1], v85);
              v162 = 0;
              v163[0] = 0;
              v163[1] = 0;
              v164 = 1;
              quasar::PTree::putChild(__src, &v123, &v160, 1);
              quasar::PTree::~PTree(&v160);
              if (v125 < 0)
              {
                operator delete(v123);
              }

              std::string::basic_string[abi:ne200100]<0>(&v123, quasar::LOW_CONFIDENCE_META);
              if (v165.__r_.__value_.__s.__data_[8])
              {
                v86 = "true";
              }

              else
              {
                v86 = "false";
              }

              std::string::basic_string[abi:ne200100]<0>(__p, v86);
              quasar::PTree::PTree(&v160, __p);
              quasar::PTree::putChild(__src, &v123, &v160, 1);
              quasar::PTree::~PTree(&v160);
              if (v127 < 0)
              {
                operator delete(__p[0]);
              }

              if (v125 < 0)
              {
                operator delete(v123);
              }

              std::string::basic_string[abi:ne200100]<0>(&v160, quasar::WORD_CONFIDENCES_META);
              quasar::PTree::getStringOptional(__src, &v160);
            }
          }
        }
      }
    }

    v88 = &unk_1EB908000;
    while (1)
    {
      quasar::TranslationPhraseInternal::convertTokensToString(&v160, v4);
      quasar::TranslationPhraseInternal::computeTokenRanges(v4, &v123);
      sentencepiece::SentencePieceText::SentencePieceText(v155, 0);
      (*(**(v3 + 632) + 184))(__p);
      if (__p[0])
      {
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        *__src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
        v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "SentencePiece error while encoding: ", 36);
        sentencepiece::util::Status::ToString(__p, v133);
        if ((v133[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v119 = v133;
        }

        else
        {
          v119 = v133[0].__r_.__value_.__r.__words[0];
        }

        if ((v133[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = HIBYTE(v133[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v120 = v133[0].__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, v119, v120);
        if (SHIBYTE(v133[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133[0].__r_.__value_.__l.__data_);
        }

        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__src);
      }

      quasar::TranslationPhraseInternal::TranslationPhraseInternal(v133, v4);
      std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](&v135, v135);
      v89 = v157 ? (v157 + 8) : 0;
      if (v156)
      {
        break;
      }

LABEL_190:
      if (v135 != v136)
      {
        v136[-14].i8[0] = 0;
      }

      quasar::TranslationPhraseInternal::convertTokensToString(v131, v133);
      v134 = 1;
      quasar::PTree::PTree(__src);
      if ((*quasar::OptionValue<BOOL>::value((v3 + 184)) & 1) == 0)
      {
        v105 = quasar::MetaInfo::get((v4 + 256));
        LODWORD(__src[0]) = *v105;
        std::string::operator=(&__src[1], (v105 + 8));
        if (__src != v105)
        {
          std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&v140, *(v105 + 32), *(v105 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v105 + 40) - *(v105 + 32)) >> 3));
        }

        BYTE8(v141) = *(v105 + 56);
      }

      std::string::basic_string[abi:ne200100]<0>(&v165, v88[173]);
      std::string::basic_string[abi:ne200100]<0>(&v166, quasar::SENTENCEPIECE_ENCODER_OUTPUT_META);
      std::set<std::string>::set[abi:ne200100](&__str, &v165.__r_.__value_.__l.__data_, 2);
      std::string::basic_string[abi:ne200100]<0>(&v129, "firstleg ");
      quasar::backupMetaInfo(__src, &__str, &v129.__r_.__value_.__l.__data_);
      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }

      std::__tree<std::string>::destroy(&__str, __str.__r_.__value_.__l.__size_);
      for (i = 0; i != -6; i -= 3)
      {
        if (SHIBYTE(v168[i]) < 0)
        {
          operator delete(*(&v165 + i * 8 + 24));
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, v88[173]);
      quasar::PTree::PTree(&v165, &v160);
      quasar::PTree::putChild(__src, &__str, &v165, 1);
      quasar::PTree::~PTree(&v165);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, quasar::SENTENCEPIECE_ENCODER_OUTPUT_META);
      quasar::PTree::PTree(&v165, v131);
      quasar::PTree::putChild(__src, &__str, &v165, 1);
      quasar::PTree::~PTree(&v165);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      quasar::MetaInfo::replace(&v137, __src);
      std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](v159, v133);
      quasar::PTree::~PTree(__src);
      if (SHIBYTE(v132) < 0)
      {
        operator delete(v131[0]);
      }

      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v133);
      sentencepiece::util::Status::~Status(__p);
      sentencepiece::SentencePieceText::~SentencePieceText(v155);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v160.__r_.__value_.__l.__data_);
      }

      v4 += 264;
      if (v4 == v121)
      {
        v107 = *(*v3 - 24);
        std::string::basic_string[abi:ne200100]<0>(__src, "tokens");
        quasar::ProcessingBlock::send(v3 + v107, __src, v159, 1);
        if (SBYTE7(v139) < 0)
        {
          operator delete(__src[0]);
        }

        quasar::ProcessingBlock::send(v3 + *(*v3 - 24), v159, 0);
        __src[0] = v159;
        std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](__src);
        return;
      }
    }

    v90 = 0;
    v91 = 0;
    v92 = 1;
    v93 = &v89[v156];
    while (1)
    {
      v94 = *v89;
      v168[0] = 0;
      v168[1] = 0;
      v167 = 0;
      memset(&v165, 0, sizeof(v165));
      v166 = 0;
      v169 = 3212836864;
      v170 = -1;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
      v175 = -1;
      std::string::operator=(&v165, (*(v94 + 48) & 0xFFFFFFFFFFFFFFFELL));
      std::string::operator=(&v171, (*(v94 + 56) & 0xFFFFFFFFFFFFFFFELL));
      v170 = *(v94 + 64);
      v95 = *(v94 + 68);
      v175 = v95;
      LOBYTE(v166) = 1;
      v96 = (v124 - v123) >> 3;
      if (v96 <= v90)
      {
        goto LABEL_174;
      }

      v97 = v123 + 8 * v90;
      if (v95 >= *(v97 + 1))
      {
        break;
      }

LABEL_168:
      if (quasar::gLogLevel >= 6)
      {
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        *__src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
        v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "Taking confidence from input token at pos ", 42);
        v102 = MEMORY[0x1B8C84C00](v101, v90);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, " : ", 3);
        std::ostream::operator<<();
        quasar::QuasarTraceMessage::~QuasarTraceMessage(__src);
      }

      v103 = *(v4 + 200) + 136 * v90;
      LODWORD(v169) = *(v103 + 56);
      if (v92)
      {
        HIDWORD(v169) = *(v103 + 60);
        *(&v172 + 1) = *(v103 + 96);
        if (&v165 != v103)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v167, *(v103 + 32), *(v103 + 40), (*(v103 + 40) - *(v103 + 32)) >> 2);
        }
      }

LABEL_179:
      std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v135, &v165);
      if (v173)
      {
        *(&v173 + 1) = v173;
        operator delete(v173);
      }

      if (SBYTE7(v172) < 0)
      {
        operator delete(v171);
      }

      if (v167)
      {
        v168[0] = v167;
        operator delete(v167);
      }

      if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v165.__r_.__value_.__l.__data_);
      }

      v92 = 0;
      if (++v89 == v93)
      {
        v3 = a1;
        v88 = &unk_1EB908000;
        if ((v91 & (quasar::gLogLevel > 3)) != 0)
        {
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          *__src = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "Dropping confidence scores in sentence piece encoding", 53);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__src);
        }

        goto LABEL_190;
      }
    }

    v98 = (v97 + 12);
    v99 = v90 + 1;
    while (v96 > v99)
    {
      v100 = *v98;
      v98 += 2;
      v90 = (v90 + 1);
      ++v99;
      if (v95 < v100)
      {
        v92 = 1;
        goto LABEL_168;
      }
    }

    v90 = (v90 + 1);
LABEL_174:
    if (quasar::gLogLevel >= 2)
    {
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      *__src = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__src);
      v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__src, "Invalid range for input token position: ", 40);
      MEMORY[0x1B8C84C00](v104, v90);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(__src);
    }

    if (*(v133[0].__r_.__value_.__r.__words + 1) == 1000.0)
    {
      LODWORD(v169) = 1148846080;
    }

    else
    {
      LODWORD(v169) = -1082130432;
      v91 |= *(v133[0].__r_.__value_.__r.__words + 1) != -1.0;
    }

    goto LABEL_179;
  }

  v87 = a1 + *(*a1 - 24);

  quasar::ProcessingBlock::send(v87, a3, 0);
}

void sub_1B524A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::PTree::~PTree(&STACK[0x348]);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 == 1 && a19 < 0)
  {
    operator delete(a14);
  }

  quasar::PTree::~PTree(&a71);
  JUMPOUT(0x1B524A9B0);
}

void sub_1B524A658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&a35);
  sentencepiece::util::Status::~Status(&a18);
  sentencepiece::SentencePieceText::~SentencePieceText(&STACK[0x2D0]);
  if (a14)
  {
    operator delete(a14);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  a68 = &STACK[0x328];
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a68);
  _Unwind_Resume(a1);
}

void sub_1B524A664()
{
  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  JUMPOUT(0x1B524A8CCLL);
}

void sub_1B524A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(a18);
  }

  JUMPOUT(0x1B524A88CLL);
}

void sub_1B524A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  JUMPOUT(0x1B524A88CLL);
}

void sub_1B524A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  quasar::PTree::~PTree(&a65);
  JUMPOUT(0x1B524A9B0);
}

void sub_1B524A8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B524AA30);
}

void sub_1B524A93C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B524AA60);
}

void sub_1B524A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a32 = &a65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a32);
  JUMPOUT(0x1B524AA30);
}

void sub_1B524A978()
{
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  JUMPOUT(0x1B524A9B0);
}

void sub_1B524A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&STACK[0x388]);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  JUMPOUT(0x1B524AA28);
}

uint64_t std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](uint64_t *a1, const quasar::TranslationTokenInternal *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal const&>(a1, a2);
  }

  else
  {
    quasar::TranslationTokenInternal::TranslationTokenInternal(a1[1], a2);
    result = v3 + 136;
    a1[1] = v3 + 136;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](uint64_t a1, const quasar::TranslationPhraseInternal *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(a1, a2);
  }

  else
  {
    quasar::TranslationPhraseInternal::TranslationPhraseInternal(*(a1 + 8), a2);
    result = v3 + 264;
    *(a1 + 8) = v3 + 264;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::ConfiguredProcessingBlock<quasar::SentencePieceOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B524AC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::SentencePieceBlock::~SentencePieceBlock(quasar::SentencePieceBlock *this)
{
  *this = off_1F2D07C88;
  v2 = (this + 656);
  *(this + 82) = &unk_1F2D07D30;
  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D07DC8;
  *(this + 82) = off_1F2D07E50;
  quasar::SentencePieceOptions::~SentencePieceOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = off_1F2D07C88;
  v2 = (this + 656);
  *(this + 82) = &unk_1F2D07D30;
  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F2D07DC8;
  *(this + 82) = off_1F2D07E50;
  quasar::SentencePieceOptions::~SentencePieceOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v2);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::SentencePieceBlock::~SentencePieceBlock(quasar::SentencePieceBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = off_1F2D07C88;
  *(v1 + 82) = &unk_1F2D07D30;
  v2 = *(v1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *v1 = &unk_1F2D07DC8;
  *(v1 + 82) = off_1F2D07E50;
  quasar::SentencePieceOptions::~SentencePieceOptions((v1 + 8));

  quasar::ProcessingBlock::~ProcessingBlock(v1 + 82);
}

{
  v1 = this + *(*this - 24);
  *v1 = off_1F2D07C88;
  *(v1 + 82) = &unk_1F2D07D30;
  v2 = *(v1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *v1 = &unk_1F2D07DC8;
  *(v1 + 82) = off_1F2D07E50;
  quasar::SentencePieceOptions::~SentencePieceOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 82);

  JUMPOUT(0x1B8C85350);
}

void quasar::SentencePieceOptions::~SentencePieceOptions(quasar::SentencePieceOptions *this)
{
  *this = &unk_1F2D07C48;
  *(this + 60) = &unk_1F2D07F00;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v2 = *(this + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
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

  *(this + 40) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 456, *(this + 58));
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  *(this + 40) = &unk_1F2D08890;
  v3 = *(this + 52);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 22) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 296, *(this + 38));
  *(this + 22) = &unk_1F2D08890;
  v4 = *(this + 34);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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
  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
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

void sub_1B524B370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t quasar::OptionValue<double>::debugInfo(uint64_t a1)
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
  v8 = MEMORY[0x1B8C84BE0](v7, *(v2 + 104));
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
          v21 = *(v17 + 4);
        }

        if (v20 >= 0)
        {
          v22 = *(v17 + 55);
        }

        else
        {
          v22 = *(v17 + 5);
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 3);
        MEMORY[0x1B8C84BE0](v24, v17[7]);
        v25 = *v18;
        v26 = (a1 + 128);
        if (*v18)
        {
          do
          {
            v27 = v25;
            v25 = *(v25 + 1);
          }

          while (v25);
        }

        else
        {
          do
          {
            v27 = *(v26 + 2);
            v28 = *v27 == v26;
            v26 = v27;
          }

          while (v28);
        }

        if (v17 != v27)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", ", 2);
        }

        v29 = *(v17 + 1);
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
            v30 = *(v17 + 2);
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

void sub_1B524B6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<double>::addOverride(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a3;
  quasar::PTree::getOptional<double>(a4, a1 + 8);
}

void sub_1B524B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B524B92C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1B524B9B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<sentencepiece::SentencePieceProcessor>::shared_ptr[abi:ne200100]<sentencepiece::SentencePieceProcessor,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<sentencepiece::SentencePieceProcessor *,std::shared_ptr<sentencepiece::SentencePieceProcessor>::__shared_ptr_default_delete<sentencepiece::SentencePieceProcessor,sentencepiece::SentencePieceProcessor>,std::allocator<sentencepiece::SentencePieceProcessor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<sentencepiece::SentencePieceProcessor *,std::shared_ptr<sentencepiece::SentencePieceProcessor>::__shared_ptr_default_delete<sentencepiece::SentencePieceProcessor,sentencepiece::SentencePieceProcessor>,std::allocator<sentencepiece::SentencePieceProcessor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<sentencepiece::SentencePieceProcessor *,std::shared_ptr<sentencepiece::SentencePieceProcessor>::__shared_ptr_default_delete<sentencepiece::SentencePieceProcessor,sentencepiece::SentencePieceProcessor>,std::allocator<sentencepiece::SentencePieceProcessor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t quasar::OptionValue<double>::value(void *a1)
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

uint64_t kaldi::CuWorkspace::GetMatrix<float>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a3 * a2;
  if (a1[8] < (4 * v7))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Failed to create a ", 19);
    v11 = MEMORY[0x1B8C84C00](v10, a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " by ", 4);
    v13 = MEMORY[0x1B8C84C00](v12, a3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " matrix with only ", 18);
    v15 = MEMORY[0x1B8C84C60](v14, a1[8]);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, " bytes available in the workspace");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::CuWorkspace::GetVector<float>(a1, v7, a4, v17);
  return kaldi::CuSubMatrix<float>::CuSubMatrix(a5, v17, a2);
}

void *kaldi::CuWorkspace::GetVector<float>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = 4 * a2;
  if (v6 > a1[8])
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Failed to create a vector of ", 29);
    v11 = MEMORY[0x1B8C84C00](v10, a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " elements with only ", 20);
    v13 = MEMORY[0x1B8C84C60](v12, a1[8]);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " bytes available in the workspace");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v7 = a1[1];
  a4[2] = 0;
  a4[3] = 0;
  *a4 = &unk_1F2CFCA48;
  a4[1] = v7;
  *(a4 + 4) = a2;
  if (a3 == 3 || !a3)
  {
    kaldi::CuVectorBase<float>::SetZero(a4);
  }

  result = std::deque<char *>::push_back(a1 + 2, a1 + 1);
  a1[1] += v6;
  a1[8] -= v6;
  return result;
}

void sub_1B524BDE0(_Unwind_Exception *a1)
{
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  _Unwind_Resume(a1);
}

kaldi::CuWorkspace *kaldi::CuWorkspace::CuWorkspace(kaldi::CuWorkspace *this, size_t a2)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  kaldi::CuWorkspace::Allocate(this, a2);
  return this;
}

void *kaldi::CuWorkspace::Allocate(kaldi::CuWorkspace *this, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "size >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::CuWorkspace::Destroy(this);
  *(this + 8) = a2;
  result = malloc_type_malloc(a2, 0x100004077774924uLL);
  *this = result;
  *(this + 1) = result;
  return result;
}

void kaldi::CuWorkspace::Destroy(kaldi::CuWorkspace *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = v2[7] - 1;
    v4 = *(*(v2[3] + (((v3 + v2[6]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + v2[6]) & 0x1FF));
    v5 = v2[1] - v4 + v2[8];
    v2[1] = v4;
    v2[7] = v3;
    v2[8] = v5;
    std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::__maybe_remove_back_spare[abi:ne200100](v2 + 2, 1);
  }

  else
  {
    v6 = *this;
    if (*this)
    {
      free(v6);
    }
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
}

void kaldi::CuWorkspace::GetChildWorkspace(kaldi::CuWorkspace *this, uint64_t a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v2 = *(this + 8);
  }

  if (v2 < 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "mem_size_bytes >= 0");
  }

  else
  {
    if (v2 <= *(this + 8))
    {
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Can't create a child workspace of ", 34);
    v5 = MEMORY[0x1B8C84C60](v4, v2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ". Only have ", 12);
    v7 = MEMORY[0x1B8C84C60](v6, *(this + 8));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " bytes");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

void *std::deque<char *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<char *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<char *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B524C2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B524C6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  __p = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B524C8E0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B524D1B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B524D1D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B524D1F4);
}

void sub_1B524DA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  STACK[0x208] = v18 - 224;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x208]);
  if (*(v18 - 177) < 0)
  {
    operator delete(*(v18 - 200));
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B524DF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v16 - 113) < 0)
  {
    operator delete(*(v16 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BOOL (*)(std::string const&),std::allocator<BOOL (*)(std::string const&)>,BOOL ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D07FC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(std::string const&),std::allocator<BOOL (*)(std::string const&)>,BOOL ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void quasar::EndpointConfigHelper::computeFeats(int **a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int **a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>, float a10@<S3>, float a11@<S4>, float a12@<S5>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v27 = a5;
    v18 = a12;
    v19 = a11;
    v20 = a10;
    v21 = a9;
    v22 = a8;
    v23 = expf(-a7);
    do
    {
      v24 = *v12;
      if (*v12 > 4)
      {
        if (v24 <= 6)
        {
          if (v24 == 5)
          {
            *v28 = v21;
            std::vector<double>::push_back[abi:ne200100](a6, v28);
          }

          else
          {
            if (v24 != 6)
            {
              goto LABEL_28;
            }

            *v28 = v20;
            std::vector<double>::push_back[abi:ne200100](a6, v28);
          }
        }

        else
        {
          switch(v24)
          {
            case 7:
              *v28 = v19;
              std::vector<double>::push_back[abi:ne200100](a6, v28);
              break;
            case 8:
              *v28 = v18;
              std::vector<double>::push_back[abi:ne200100](a6, v28);
              break;
            case 9:
              *v28 = v27;
              std::vector<double>::push_back[abi:ne200100](a6, v28);
              break;
            default:
              goto LABEL_28;
          }
        }
      }

      else if (v24 <= 1)
      {
        if (v24)
        {
          if (v24 != 1)
          {
            goto LABEL_28;
          }

          *v28 = a3;
          std::vector<double>::push_back[abi:ne200100](a6, v28);
        }

        else
        {
          *v28 = a2;
          std::vector<double>::push_back[abi:ne200100](a6, v28);
        }
      }

      else
      {
        switch(v24)
        {
          case 2:
            *v28 = v23;
            std::vector<double>::push_back[abi:ne200100](a6, v28);
            break;
          case 3:
            v25 = *a4;
            v26 = a4[1];
            while (v25 != v26)
            {
              *v28 = *v25;
              std::vector<double>::push_back[abi:ne200100](a6, v28);
              ++v25;
            }

            break;
          case 4:
            *v28 = v22;
            std::vector<double>::push_back[abi:ne200100](a6, v28);
            break;
          default:
LABEL_28:
            if (quasar::gLogLevel >= 5)
            {
              memset(v28, 0, sizeof(v28));
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Feature type unknown. Ignoring feature ..", 41);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(v28);
            }

            break;
        }
      }

      ++v12;
    }

    while (v12 != v13);
  }
}

void sub_1B524E394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void quasar::EndpointConfigHelper::initModels(uint64_t a1, kaldi::nnet1::Nnet *a2, int a3)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
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
    v11 = 0u;
    v12 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Endpoint model file cannot be empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  if (a3)
  {
    fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
    LODWORD(v13) = 2;
    kaldi::nnet1::Nnet::ReadMapped(a2, __p);
  }

  kaldi::nnet1::Nnet::Read(a2, a1);
  if (quasar::gLogLevel >= 4)
  {
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
    v11 = 0u;
    v12 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Initialized nnet with Model file =", 34);
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
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }
}

void quasar::EndpointConfigHelper::initFeatures(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
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
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v38, "endpoint-feature-list cannot be empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v38);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  kaldi::SplitStringToVector(a1, ",", 0, &v55);
  v4 = v55;
  v5 = v56;
  while (v4 != v5)
  {
    v6 = strlen(quasar::EP_NUM_OF_WORDS_STR[0]);
    v7 = v6;
    v8 = *(v4 + 23);
    if (v8 < 0)
    {
      if (v6 != v4[1])
      {
        goto LABEL_12;
      }

      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v9 = *v4;
    }

    else
    {
      v9 = v4;
      if (v7 != v8)
      {
        goto LABEL_12;
      }
    }

    if (!memcmp(v9, quasar::EP_NUM_OF_WORDS_STR[0], v7))
    {
      LODWORD(v38) = 0;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_12:
    v10 = strlen(quasar::EP_NUM_TRAILING_SIL_STR[0]);
    v11 = v10;
    if ((v8 & 0x80000000) != 0)
    {
      if (v10 != v4[1])
      {
        goto LABEL_19;
      }

      if (v10 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *v4;
    }

    else
    {
      v12 = v4;
      if (v11 != v8)
      {
        goto LABEL_19;
      }
    }

    if (!memcmp(v12, quasar::EP_NUM_TRAILING_SIL_STR[0], v11))
    {
      LODWORD(v38) = 1;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_19:
    v13 = strlen(quasar::EP_EOS_LIKELIHOOD_STR[0]);
    v14 = v13;
    if ((v8 & 0x80000000) != 0)
    {
      if (v13 != v4[1])
      {
        goto LABEL_26;
      }

      if (v13 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v15 = *v4;
    }

    else
    {
      v15 = v4;
      if (v14 != v8)
      {
        goto LABEL_26;
      }
    }

    if (!memcmp(v15, quasar::EP_EOS_LIKELIHOOD_STR[0], v14))
    {
      LODWORD(v38) = 2;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_26:
    v16 = strlen(quasar::EP_PAUSE_COUNTS_STR[0]);
    v17 = v16;
    if ((v8 & 0x80000000) != 0)
    {
      if (v16 != v4[1])
      {
        goto LABEL_33;
      }

      if (v16 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *v4;
    }

    else
    {
      v18 = v4;
      if (v17 != v8)
      {
        goto LABEL_33;
      }
    }

    if (!memcmp(v18, quasar::EP_PAUSE_COUNTS_STR[0], v17))
    {
      LODWORD(v38) = 3;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_33:
    v19 = strlen(quasar::EP_SILENCE_POSTERIOR_STR[0]);
    v20 = v19;
    if ((v8 & 0x80000000) != 0)
    {
      if (v19 != v4[1])
      {
        goto LABEL_41;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v21 = *v4;
    }

    else
    {
      v21 = v4;
      if (v20 != v8)
      {
        goto LABEL_41;
      }
    }

    if (!memcmp(v21, quasar::EP_SILENCE_POSTERIOR_STR[0], v20))
    {
      LODWORD(v38) = 4;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_41:
    v22 = strlen(quasar::EP_CLIENT_SILENCE_FRAMES_COUNT_MS_STR[0]);
    v23 = v22;
    if ((v8 & 0x80000000) != 0)
    {
      if (v22 != v4[1])
      {
        goto LABEL_49;
      }

      if (v22 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v24 = *v4;
    }

    else
    {
      v24 = v4;
      if (v23 != v8)
      {
        goto LABEL_49;
      }
    }

    if (!memcmp(v24, quasar::EP_CLIENT_SILENCE_FRAMES_COUNT_MS_STR[0], v23))
    {
      LODWORD(v38) = 5;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_49:
    v25 = strlen(quasar::EP_CLIENT_SILENCE_PROBABILITY_STR[0]);
    v26 = v25;
    if ((v8 & 0x80000000) != 0)
    {
      if (v25 != v4[1])
      {
        goto LABEL_57;
      }

      if (v25 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v27 = *v4;
    }

    else
    {
      v27 = v4;
      if (v26 != v8)
      {
        goto LABEL_57;
      }
    }

    if (!memcmp(v27, quasar::EP_CLIENT_SILENCE_PROBABILITY_STR[0], v26))
    {
      LODWORD(v38) = 6;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

LABEL_57:
    v28 = strlen(quasar::EP_SILENCE_POSTERIOR_NF_STR[0]);
    v29 = v28;
    if ((v8 & 0x80000000) != 0)
    {
      if (v28 == v4[1])
      {
        if (v28 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v30 = *v4;
LABEL_64:
        if (!memcmp(v30, quasar::EP_SILENCE_POSTERIOR_NF_STR[0], v29))
        {
          LODWORD(v38) = 7;
          std::vector<int>::push_back[abi:ne200100](a2, &v38);
          goto LABEL_85;
        }
      }
    }

    else
    {
      v30 = v4;
      if (v29 == v8)
      {
        goto LABEL_64;
      }
    }

    v31 = strlen(quasar::EP_SERVER_FEATURES_LATENCY_STR[0]);
    v32 = v31;
    if ((v8 & 0x80000000) != 0)
    {
      if (v31 != v4[1])
      {
        goto LABEL_73;
      }

      if (v31 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v33 = *v4;
    }

    else
    {
      v33 = v4;
      if (v32 != v8)
      {
        goto LABEL_73;
      }
    }

    if (memcmp(v33, quasar::EP_SERVER_FEATURES_LATENCY_STR[0], v32))
    {
LABEL_73:
      v34 = strlen(quasar::EP_EAGER_RESULT_END_TIME_STR);
      v35 = v34;
      if ((v8 & 0x80000000) != 0)
      {
        if (v34 != v4[1])
        {
          goto LABEL_87;
        }

        if (v34 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v36 = *v4;
      }

      else
      {
        v36 = v4;
        if (v35 != v8)
        {
          goto LABEL_87;
        }
      }

      if (memcmp(v36, quasar::EP_EAGER_RESULT_END_TIME_STR, v35))
      {
LABEL_87:
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
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Feature unknown, ", 17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "features allowed are (num-of-words,num-trailing-sil, num-frames,end-of-sentence,pause-counts,num-input-label-words,stream-conf,silence-posterior,client-silence-frames-count-ms,client-silence-probability,silence-posterior-nf,server-features-latency, eager-result-end-time)", 297);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v38);
      }

      LODWORD(v38) = 9;
      std::vector<int>::push_back[abi:ne200100](a2, &v38);
      goto LABEL_85;
    }

    LODWORD(v38) = 8;
    std::vector<int>::push_back[abi:ne200100](a2, &v38);
LABEL_85:
    v4 += 3;
  }

  *&v38 = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
}

void sub_1B524EB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B524F1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);

  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v46 - 256), 8);

  _Block_object_dispose((v46 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B524F594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B524F6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

_DWORD *kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ConfidenceFeatureExtractor(_DWORD *a1, int a2, std::string **a3, int a4, uint64_t a5, float a6)
{
  v9 = a1;
  v97 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  std::unordered_map<std::string,float>::unordered_map((a1 + 2), a5);
  *(v9 + 12) = a6;
  std::string::basic_string[abi:ne200100]<0>(&v83, "token_post_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v86, "max_post_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v87, "secondmax_post_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v88, "num_arcs_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v89, "logpost");
  std::string::basic_string[abi:ne200100]<0>(v90, "avg_loglike");
  std::string::basic_string[abi:ne200100]<0>(v91, "hyp_len");
  std::string::basic_string[abi:ne200100]<0>(v92, "token_pos_in_hyp");
  std::string::basic_string[abi:ne200100]<0>(v93, "token_freq");
  std::string::basic_string[abi:ne200100]<0>(v94, "token_logfreq");
  std::string::basic_string[abi:ne200100]<0>(v95, "num_frames");
  std::string::basic_string[abi:ne200100]<0>(v96, "spk_rate");
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 9) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>((v9 + 14), &v83, &v97, 0xCuLL);
  v10 = 36;
  do
  {
    if (*(&v83 + 8 * v10 - 1) < 0)
    {
      operator delete((&v80)[v10]);
    }

    v10 -= 3;
  }

  while (v10 * 8);
  *(v9 + 40) = 0;
  if (a4 < 0)
  {
    a4 = *v9;
  }

  else if (!a4 || *v9 < a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "(num_hyps_out > 0) && (num_hyps_out <= num_hyps_in_)", 52);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v83);
  }

  v9[1] = a4;
  v12 = *a3;
  v11 = a3[1];
  if (v11 == *a3)
  {
    if (*(v9 + 4))
    {
      goto LABEL_64;
    }

    v27 = (v9 + 14);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v29 = *(v9 + 7);
    v28 = *(v9 + 8);
    if (v28 == v29)
    {
LABEL_61:
      if (v27 != &v83)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v27, v83, v84, 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 3));
      }

      v80 = &v83;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
      goto LABEL_64;
    }

    v30 = 0;
    v31 = 0;
    while (1)
    {
      v32 = (v29 + v30);
      if (*(v29 + v30 + 23) < 0)
      {
        if (*(v32 + 1) == 10 && **v32 == 0x72665F6E656B6F74 && *(*v32 + 8) == 29029)
        {
          goto LABEL_60;
        }

        if (*(v32 + 1) == 13)
        {
          v33 = *v32;
LABEL_49:
          v35 = *v33;
          v36 = *(v33 + 5);
          if (v35 == 0x6F6C5F6E656B6F74 && v36 == 0x71657266676F6C5FLL)
          {
            goto LABEL_60;
          }
        }
      }

      else if (*(v29 + v30 + 23) == 10)
      {
        if (*v32 == 0x72665F6E656B6F74 && *(v32 + 4) == 29029)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v33 = (v29 + v30);
        if (*(v29 + v30 + 23) == 13)
        {
          goto LABEL_49;
        }
      }

      std::vector<std::string>::push_back[abi:ne200100](&v83, v32);
      v29 = *(v9 + 7);
      v28 = *(v9 + 8);
LABEL_60:
      ++v31;
      v30 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3) <= v31)
      {
        goto LABEL_61;
      }
    }
  }

  v76 = a3[1];
  v77 = a3;
  v78 = v9;
  v79 = (v9 + 14);
  v13 = 0;
  v14 = (v11 - *a3) >> 3;
  v15 = 0xAAAAAAAAAAAAAAABLL * v14;
  v17 = *(v9 + 7);
  v16 = *(v9 + 8);
  if (0xAAAAAAAAAAAAAAABLL * v14 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * v14;
  }

  do
  {
    v19 = v17;
    if (v17 != v16)
    {
      v20 = &v12[v13];
      v21 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
      if (v21 >= 0)
      {
        size = HIBYTE(v20->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20->__r_.__value_.__l.__size_;
      }

      if (v21 >= 0)
      {
        v23 = &v12[v13];
      }

      else
      {
        v23 = v20->__r_.__value_.__r.__words[0];
      }

      v19 = v17;
      while (1)
      {
        v24 = *(v19 + 23);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v19 + 8);
        }

        if (v24 == size)
        {
          v26 = v25 >= 0 ? v19 : *v19;
          if (!memcmp(v26, v23, size))
          {
            break;
          }
        }

        v19 += 24;
        if (v19 == v16)
        {
          goto LABEL_146;
        }
      }
    }

    if (v19 == v16)
    {
LABEL_146:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "std::find(feature_list_.begin(), feature_list_.end(), feature_list[i]) != feature_list_.end() && Unknown feature provided in the feature list", 143);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v83);
    }

    ++v13;
  }

  while (v13 != v18);
  v9 = v78;
  if (v79 != v77)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v79, v12, v76, v15);
  }

LABEL_64:
  v39 = *(v9 + 7);
  v40 = *(v9 + 8);
  v41 = v39;
  if (v39 != v40)
  {
    v42 = *(v9 + 7);
    while (1)
    {
      v43 = *(v42 + 23);
      if (v43 < 0)
      {
        if (v42[1] != 10)
        {
          goto LABEL_75;
        }

        v44 = *v42;
      }

      else
      {
        v44 = v42;
        if (v43 != 10)
        {
          goto LABEL_75;
        }
      }

      v45 = *v44;
      v46 = *(v44 + 4);
      if (v45 == 0x72665F6E656B6F74 && v46 == 29029)
      {
        if (v42 != v40)
        {
          goto LABEL_91;
        }

LABEL_76:
        v41 = *(v9 + 7);
        while (2)
        {
          v48 = *(v41 + 23);
          if (v48 < 0)
          {
            if (*(v41 + 8) != 13)
            {
              goto LABEL_86;
            }

            v49 = *v41;
          }

          else
          {
            v49 = v41;
            if (v48 != 13)
            {
LABEL_86:
              v41 += 24;
              if (v41 == v40)
              {
                goto LABEL_92;
              }

              continue;
            }
          }

          break;
        }

        v50 = *v49;
        v51 = *(v49 + 5);
        if (v50 == 0x6F6C5F6E656B6F74 && v51 == 0x71657266676F6C5FLL)
        {
          break;
        }

        goto LABEL_86;
      }

LABEL_75:
      v42 += 3;
      if (v42 == v40)
      {
        goto LABEL_76;
      }
    }
  }

  if (v41 != v40)
  {
LABEL_91:
    if (!*(v9 + 4))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "token_unigram_frequencies_.size() > 0", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v83);
    }
  }

LABEL_92:
  if (v39 != v40)
  {
    v53 = *(v9 + 7);
    while (1)
    {
      v54 = *(v53 + 23);
      if (v54 < 0)
      {
        if (v53[1] != 10)
        {
          goto LABEL_103;
        }

        v55 = *v53;
      }

      else
      {
        v55 = v53;
        if (v54 != 10)
        {
          goto LABEL_103;
        }
      }

      v56 = *v55;
      v57 = *(v55 + 4);
      if (v56 == 0x6D6172665F6D756ELL && v57 == 29541)
      {
        if (v53 != v40)
        {
LABEL_115:
          *(v9 + 80) = 1;
          goto LABEL_116;
        }

LABEL_104:
        v59 = *(v39 + 23);
        if (v59 < 0)
        {
          if (*(v39 + 8) != 8)
          {
            goto LABEL_110;
          }

          v60 = *v39;
        }

        else
        {
          v60 = v39;
          if (v59 != 8)
          {
            goto LABEL_110;
          }
        }

        if (*v60 == 0x657461725F6B7073)
        {
          break;
        }

LABEL_110:
        v39 += 24;
        if (v39 == v40)
        {
          goto LABEL_116;
        }

        goto LABEL_104;
      }

LABEL_103:
      v53 += 3;
      if (v53 == v40)
      {
        goto LABEL_104;
      }
    }
  }

  if (v39 != v40)
  {
    goto LABEL_115;
  }

LABEL_116:
  std::string::basic_string[abi:ne200100]<0>(&v83, "token_post_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v86, "max_post_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v87, "secondmax_post_in_cnet_slot");
  std::string::basic_string[abi:ne200100]<0>(v88, "num_arcs_in_cnet_slot");
  v80 = 0;
  v81 = 0;
  v82 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v80, &v83, v89, 4uLL);
  for (i = 0; i != -96; i -= 24)
  {
    if (v88[i + 23] < 0)
    {
      operator delete(*&v88[i]);
    }
  }

  v62 = v80;
  if (v81 != v80)
  {
    v63 = 0;
    v64 = *(v9 + 7);
    v65 = *(v9 + 8);
    if (0xAAAAAAAAAAAAAAABLL * (v81 - v80) <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = 0xAAAAAAAAAAAAAAABLL * (v81 - v80);
    }

    while (1)
    {
      v67 = v64;
      if (v64 != v65)
      {
        v68 = &v62[3 * v63];
        v69 = *(v68 + 23);
        if (v69 >= 0)
        {
          v70 = *(v68 + 23);
        }

        else
        {
          v70 = v68[1];
        }

        if (v69 >= 0)
        {
          v71 = &v62[3 * v63];
        }

        else
        {
          v71 = *v68;
        }

        v67 = v64;
        while (1)
        {
          v72 = *(v67 + 23);
          v73 = v72;
          if ((v72 & 0x80u) != 0)
          {
            v72 = *(v67 + 8);
          }

          if (v72 == v70)
          {
            v74 = v73 >= 0 ? v67 : *v67;
            if (!memcmp(v74, v71, v70))
            {
              break;
            }
          }

          v67 += 24;
          if (v67 == v65)
          {
            goto LABEL_142;
          }
        }
      }

      if (v67 != v65)
      {
        break;
      }

LABEL_142:
      if (++v63 == v66)
      {
        goto LABEL_145;
      }
    }

    *(v9 + 81) = 1;
  }

LABEL_145:
  v83 = &v80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v83);
  return v9;
}

void sub_1B52502D4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5250308);
}

void kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t *a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v66 = a4;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v5 != *a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v78);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v78, "nbest_hyps.size() == num_hyps_in_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v78);
  }

  if (v5 != (a3[1] - *a3) >> 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v78);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v78, "nbest_loglikes.size() == num_hyps_in_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v78);
  }

  if (a4 <= 0 && (*(a1 + 80) & 1) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v78);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v78, "num_frames > 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v78);
  }

  v10 = *a5;
    ;
  }

  a5[1] = v10;
  if (*(a1 + 4) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      kaldi::Matrix<float>::Matrix(&v78, -1431655765 * ((*(*a2 + v11 + 8) - *(*a2 + v11)) >> 3), -1431655765 * ((*(a1 + 64) - *(a1 + 56)) >> 3), 0, 0);
      v13 = a5[1];
      if (v13 >= a5[2])
      {
        v14 = std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(a5, &v78);
      }

      else
      {
        kaldi::Matrix<float>::Matrix(a5[1], &v78);
        v14 = v13 + 40;
        a5[1] = v13 + 40;
      }

      a5[1] = v14;
      kaldi::Matrix<float>::~Matrix(&v78);
      ++v12;
      v11 += 24;
    }

    while (v12 < *(a1 + 4));
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "hyp_len");
  v78 = &unk_1F2D08068;
  v79 = a2;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "token_pos_in_hyp");
  v78 = &unk_1F2D080F8;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "token_freq");
  v78 = &unk_1F2D08178;
  v79 = a1;
  v80 = a2;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "token_logfreq");
  v78 = &unk_1F2D081F8;
  v79 = a1;
  v80 = a2;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_frames");
  v78 = &unk_1F2D08278;
  v79 = &v66;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "spk_rate");
  v78 = &unk_1F2D082F8;
  v79 = a2;
  v80 = &v66;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "avg_loglike");
  v78 = &unk_1F2D08378;
  v79 = a3;
  v80 = a2;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v63, *a3, a3[1], (a3[1] - *a3) >> 2);
  kaldi::quasar::ApplySoftMax(&v63);
  std::string::basic_string[abi:ne200100]<0>(&__p, "logpost");
  v78 = &unk_1F2D083F8;
  v79 = &v63;
  v81 = &v78;
  kaldi::quasar::ConfidenceFeatureExtractor<std::string>::ExtractFeature(a1, &__p, &v78, a2, a5);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v78);
  if (v71 < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 81) == 1)
  {
    v68[0] = &unk_1F2D08478;
    v68[3] = v68;
    v67[0] = &unk_1F2D08508;
    v67[3] = v67;
    kaldi::quasar::ConfusionNetwork<std::string>::ConfusionNetwork(&__p, a2, &v63, v68, v67);
    std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v67);
    std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](v68);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__init_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>*,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(&v60, v76, v77, 0x2E8BA2E8BA2E8BA3 * ((v77 - v76) >> 4));
    v15 = *(a1 + 4);
    v78 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](v59, v15);
    v17 = v60;
    v16 = v61;
    if (v61 == v60)
    {
      goto LABEL_115;
    }

    v18 = 0;
    LODWORD(v19) = *(a1 + 4);
    while (1)
    {
      if (v19 < 1)
      {
        goto LABEL_114;
      }

      v20 = 0;
      do
      {
        if ((kaldi::quasar::ConfusionNetworkSlot<std::string>::HasTokenFromSequence(v60 + 176 * v18, v20) & 1) == 0)
        {
          goto LABEL_104;
        }

        if (!kaldi::quasar::ConfusionNetworkSlot<std::string>::HasToken(v60 + 176 * v18, *(*a2 + 24 * v20) + 24 * *(v59[0] + v20)))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v78);
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "Hypothesis token (", 18);
          v53 = *(*a2 + 24 * v20) + 24 * *(v59[0] + v20);
          v54 = *(v53 + 23);
          if (v54 >= 0)
          {
            v55 = *(*a2 + 24 * v20) + 24 * *(v59[0] + v20);
          }

          else
          {
            v55 = *v53;
          }

          if (v54 >= 0)
          {
            v56 = *(v53 + 23);
          }

          else
          {
            v56 = *(v53 + 8);
          }

          v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v55, v56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ") does not match any arc in the confusion network slot", 54);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v78);
        }

        v21 = *(a1 + 56);
        v22 = *(a1 + 64);
        v23 = v21;
        if (v21 != v22)
        {
          v23 = *(a1 + 56);
          while (1)
          {
            if (*(v23 + 23) < 0 && *(v23 + 8) == 23)
            {
              v24 = **v23 == 0x6F705F6E656B6F74 && *(*v23 + 8) == 0x6E635F6E695F7473;
              if (v24 && *(*v23 + 15) == 0x746F6C735F74656ELL)
              {
                break;
              }
            }

            v23 += 24;
            if (v23 == v22)
            {
              goto LABEL_52;
            }
          }
        }

        if (v23 != v22)
        {
          TokenWeight = kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTokenWeight(v60 + 176 * v18, *(*a2 + 24 * v20) + 24 * *(v59[0] + v20));
          v21 = *(a1 + 56);
          *(*(*a5 + 40 * v20) + 4 * (*(*a5 + 40 * v20 + 16) * *(v59[0] + v20)) + ((0xAAAAAAAB00000000 * ((v23 - v21) >> 3)) >> 30)) = LODWORD(TokenWeight);
          v22 = *(a1 + 64);
        }

LABEL_52:
        if (v21 == v22)
        {
LABEL_67:
          v36 = 0;
          v37 = 0;
          goto LABEL_68;
        }

        v27 = -v21;
        v28 = v21;
        while (1)
        {
          v29 = *(v28 + 23);
          if (v29 < 0)
          {
            break;
          }

          v30 = v28;
          if (v29 == 21)
          {
            goto LABEL_59;
          }

LABEL_66:
          v28 += 24;
          v27 -= 24;
          if (v28 == v22)
          {
            goto LABEL_67;
          }
        }

        if (*(v28 + 8) != 21)
        {
          goto LABEL_66;
        }

        v30 = *v28;
LABEL_59:
        v31 = *v30;
        v32 = v30[1];
        v33 = *(v30 + 13);
        if (v31 != 0x74736F705F78616DLL || v32 != 0x74656E635F6E695FLL || v33 != 0x746F6C735F74656ELL)
        {
          goto LABEL_66;
        }

        if (v28 == v22)
        {
          goto LABEL_67;
        }

        kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTopWeights(v60 + 176 * v18, 2uLL, &v78, 0.0);
        v37 = v78;
        v36 = v79;
        v21 = *(a1 + 56);
        *(*(*a5 + 40 * v20) + 4 * (*(*a5 + 40 * v20 + 16) * *(v59[0] + v20)) + ((0xAAAAAAAB00000000 * (-(v21 + v27) >> 3)) >> 30)) = *v78;
        v22 = *(a1 + 64);
LABEL_68:
        if (v21 != v22)
        {
          v38 = -v21;
          v39 = v21;
          while (1)
          {
            if (*(v39 + 23) < 0 && *(v39 + 8) == 27)
            {
              v40 = **v39 == 0x616D646E6F636573 && *(*v39 + 8) == 0x695F74736F705F78;
              v41 = v40 && *(*v39 + 16) == 0x735F74656E635F6ELL;
              if (v41 && *(*v39 + 19) == 0x746F6C735F74656ELL)
              {
                break;
              }
            }

            v39 += 24;
            v38 -= 24;
            if (v39 == v22)
            {
              goto LABEL_83;
            }
          }

          if (v39 != v22)
          {
            if ((v36 - v37) <= 4)
            {
              kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTopWeights(v60 + 176 * v18, 2uLL, &v78, 0.0);
              if (v37)
              {
                operator delete(v37);
              }

              v37 = v78;
              v21 = *(a1 + 56);
              v22 = *(a1 + 64);
            }

            *(*(*a5 + 40 * v20) + 4 * (*(*a5 + 40 * v20 + 16) * *(v59[0] + v20)) + ((0xAAAAAAAB00000000 * (-(v21 + v38) >> 3)) >> 30)) = *(v37 + 1);
          }
        }

LABEL_83:
        v43 = v21;
        v44 = v21;
        if (v21 == v22)
        {
          goto LABEL_99;
        }

        while (2)
        {
          v45 = *(v21 + 23);
          if (v45 < 0)
          {
            if (*(v21 + 8) != 21)
            {
              goto LABEL_96;
            }

            v46 = *v21;
          }

          else
          {
            v46 = v21;
            if (v45 != 21)
            {
              goto LABEL_96;
            }
          }

          v47 = *v46;
          v48 = v46[1];
          v49 = *(v46 + 13);
          if (v47 == 0x736372615F6D756ELL && v48 == 0x74656E635F6E695FLL && v49 == 0x746F6C735F74656ELL)
          {
            goto LABEL_98;
          }

LABEL_96:
          v21 += 24;
          if (v21 != v22)
          {
            continue;
          }

          break;
        }

        v21 = v22;
LABEL_98:
        v44 = v21;
LABEL_99:
        if (v22 != v44)
        {
          *(*(*a5 + 40 * v20) + 4 * (*(*a5 + 40 * v20 + 16) * *(v59[0] + v20)) + ((0xAAAAAAAB00000000 * ((v44 - v43) >> 3)) >> 30)) = *(v60 + 176 * v18 + 32);
        }

        if (v37)
        {
          operator delete(v37);
        }

        ++*(v59[0] + v20);
LABEL_104:
        ++v20;
        v19 = *(a1 + 4);
      }

      while (v20 < v19);
      v17 = v60;
      v16 = v61;
LABEL_114:
      if (0x2E8BA2E8BA2E8BA3 * ((v16 - v17) >> 4) <= ++v18)
      {
LABEL_115:
        if (v59[0])
        {
          v59[1] = v59[0];
          operator delete(v59[0]);
        }

        v78 = &v60;
        std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&v78);
        v78 = &v76;
        std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&v78);
        v78 = &v75;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v78);
        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v72);
        std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](&v70);
        break;
      }
    }
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}