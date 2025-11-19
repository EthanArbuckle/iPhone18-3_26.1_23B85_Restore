void sub_1B566DB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *__p, char *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  std::locale::~locale(&a18);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  __p = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  v39 = *(v37 - 200);
  if (v39)
  {
    *(v37 - 192) = v39;
    operator delete(v39);
  }

  v40 = *(v37 - 176);
  if (v40)
  {
    *(v37 - 168) = v40;
    operator delete(v40);
  }

  v41 = *(v37 - 152);
  if (v41)
  {
    *(v37 - 144) = v41;
    operator delete(v41);
  }

  v42 = *(v37 - 128);
  if (v42)
  {
    *(v37 - 120) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorRegion::GetTransitionIds(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 == a3)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
  }

  else
  {
    v9 = a2;
    LocationOfTransIdInList = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(a1, a2, a4, a5);
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *a6 = 0;
    if (v9 < a3)
    {
      v11 = HIDWORD(LocationOfTransIdInList);
      v12 = *a5;
      v13 = a5[1];
      v14 = LocationOfTransIdInList;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3) <= v14)
        {
          break;
        }

        v15 = v14;
        std::vector<int>::push_back[abi:ne200100](a6, (*(v12 + 24 * v14) + 4 * v11));
        LODWORD(v11) = v11 + 1;
        v12 = *a5;
        v13 = a5[1];
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a5) >> 3);
        if (v16 > v14)
        {
          v17 = (v12 + 24 * v14 + 8);
          while (v11 >= ((*v17 - *(v17 - 1)) >> 2))
          {
            LODWORD(v11) = 0;
            v18 = 0;
            ++v15;
            v17 += 3;
            if (v16 <= v15)
            {
              goto LABEL_12;
            }
          }

          v18 = v11;
LABEL_12:
          LODWORD(v11) = v18;
          v14 = v15;
        }

        ++v9;
      }

      while (v9 != a3);
    }
  }
}

void sub_1B566DE6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ErrorRegion::Analyze(kaldi::quasar::ErrorRegion *this, kaldi::quasar::AttributeFactory *a2, const kaldi::TransitionModel *a3, int a4)
{
  v9[0] = &unk_1F2D09070;
  v9[1] = 0x3F80000000000000;
  v10 = 0;
  HasAttribute = kaldi::quasar::ErrorRegion::HasAttribute(this, v9);
  kaldi::quasar::ErrorRegion::AddPdfAttributes(this, a2, a3, HasAttribute);
  kaldi::quasar::ErrorRegion::AddPhoneAttributes(this, a2, a3, HasAttribute);
  kaldi::quasar::ErrorRegion::AddWordAttributes(this, a2, a3, a4, HasAttribute);
  quasar::Bitmap::~Bitmap(v9);
}

void sub_1B566DF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorRegion::AddPdfAttributes(kaldi::quasar::ErrorRegion *this, kaldi::quasar::AttributeFactory *a2, const kaldi::TransitionModel *a3, int a4)
{
  kaldi::quasar::ErrorRegion::GetSequence(a3, this + 31, 1, 0, &__p);
  kaldi::quasar::ErrorRegion::GetSequence(a3, this + 34, 1, 0, &v25);
  if (a4)
  {
    v8 = v25;
    if (v26 != v25)
    {
      v9 = 0;
      do
      {
        BaseAttribute = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, *&v8[4 * v9], 1, 0, 1);
        LocationOfTransIdInList = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(BaseAttribute, v9 + *(this + 11), *(this + 11), this + 34);
        kaldi::quasar::ErrorRegion::AddAttribute(this, BaseAttribute, LocationOfTransIdInList);
        ++v9;
        v8 = v25;
      }

      while (v9 < (v26 - v25) >> 2);
    }
  }

  else
  {
    v12 = *(this + 10);
    v13 = *(this + 11);
    v14 = v12 - v13;
    v15 = (v12 - v13) & ~((v12 - v13) >> 31);
    v17 = __p;
    v16 = v28;
    v18 = v12 - v13 + ((v28 - __p) >> 2);
    v8 = v25;
    v19 = v26;
    if ((v26 - v25) >> 2 < v18)
    {
      v18 = (v26 - v25) >> 2;
    }

    if (v18 > v15)
    {
      v20 = 4 * v13 - 4 * v12;
      do
      {
        v21 = *&v8[4 * v15];
        if (*&v17[4 * v15 + v20] != v21)
        {
          v22 = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, v21, 1, 0, 1);
          v23 = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(v22, v15 + *(this + 11), *(this + 11), this + 34);
          kaldi::quasar::ErrorRegion::AddAttribute(this, v22, v23);
          v17 = __p;
          v16 = v28;
          v8 = v25;
          v19 = v26;
        }

        ++v15;
        v24 = v14 + ((v16 - v17) >> 2);
        if ((v19 - v8) >> 2 < v24)
        {
          v24 = (v19 - v8) >> 2;
        }
      }

      while (v24 > v15);
    }
  }

  if (v8)
  {
    v26 = v8;
    operator delete(v8);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_1B566E104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ErrorRegion::AddPhoneAttributes(kaldi::quasar::ErrorRegion *this, kaldi::quasar::AttributeFactory *a2, const kaldi::TransitionModel *a3, int a4)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  kaldi::quasar::ErrorRegion::GetSequence(a3, this + 34, 2, 0, v35);
  kaldi::quasar::ErrorRegion::GetSequence(a3, this + 31, 2, 0, &__p);
  kaldi::quasar::ErrorRegion::ComputePhoneAlignment(&__p, *(this + 10), v35, *(this + 11), 1, &v39, &v36);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (*(this + 38) != *(this + 39))
  {
    memset(v28, 0, sizeof(v28));
    std::vector<std::vector<int>>::push_back[abi:ne200100](v28, this + 38);
    v8 = *(this + 11);
    kaldi::quasar::ErrorRegion::GetSequence(a3, v28, 2, 0, v27);
    kaldi::quasar::ErrorRegion::ComputePhoneAlignment(v35, v8, v27, *(this + 11), 1, &__p, &v29);
    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    v27[0] = v28;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
  }

  v9 = v39;
  if (v40 != v39)
  {
    v10 = 0;
    LODWORD(i) = 0;
    v12 = __p;
    v13 = v33;
    while (1)
    {
      if (v12 != v13)
      {
        v14 = (v13 - v12) >> 3;
        if (v14 > i)
        {
          i = i;
          v15 = &v12[8 * i];
          do
          {
            v16 = *v15;
            v15 += 2;
            if (v16 == v9[2 * v10 + 1])
            {
              break;
            }

            ++i;
          }

          while (v14 > i);
        }
      }

      if (a4)
      {
        break;
      }

      v18 = &v9[2 * v10];
      v17 = v18[1];
      if (*v18 != v17)
      {
        goto LABEL_17;
      }

LABEL_26:
      ++v10;
      v9 = v39;
      if (v10 >= (v40 - v39) >> 3)
      {
        goto LABEL_27;
      }
    }

    v17 = v9[2 * v10 + 1];
LABEL_17:
    BaseAttribute = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, v17, 2, 0, 1);
    LocationOfTransIdInList = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(BaseAttribute, *(v36 + v10), *(this + 11), this + 34);
    kaldi::quasar::ErrorRegion::AddAttribute(this, BaseAttribute, LocationOfTransIdInList);
    v13 = __p;
    if (__p == v33)
    {
      v12 = __p;
    }

    else
    {
      v21 = 8 * i;
      for (i = i; ; ++i)
      {
        v12 = __p;
        v13 = v33;
        if (i >= (v33 - __p) >> 3 || *(__p + v21) != v39[2 * v10 + 1])
        {
          break;
        }

        if (*(__p + v21 + 8) == *(__p + v21 + 12))
        {
          v22 = 7;
        }

        else
        {
          v22 = 6;
        }

        v23 = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, *(__p + 2 * v10 + 1), 2, v22, 2);
        v24 = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(v23, *(v36 + v10), *(this + 11), this + 34);
        v25 = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(v24, *(v29 + i + 1), *(this + 11), this + 34);
        v26 = kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(v25, *(v36 + v10), *(this + 11), this + 34);
        v21 += 8;
        kaldi::quasar::ErrorRegion::AddAttribute(this, v23, v26);
      }
    }

    goto LABEL_26;
  }

LABEL_27:
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_1B566E468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ErrorRegion::AddWordAttributes(kaldi::quasar::ErrorRegion *this, kaldi::quasar::AttributeFactory *a2, const kaldi::TransitionModel *a3, int a4, char a5)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  kaldi::quasar::ErrorRegion::ComputeWordAlignment(this, a3, &v54);
  v8 = (*(this + 11) - *(this + 10)) >> 2;
  LOBYTE(v50) = 0;
  std::vector<BOOL>::vector(v53, v8);
  v9 = v54;
  if (v55 != v54)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v50, *(v9 + 48 * v10), *(v9 + 48 * v10 + 8), (*(v9 + 48 * v10 + 8) - *(v9 + 48 * v10)) >> 2);
      v48 = 0;
      v49 = 0;
      v47 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v47, *(v54 + 48 * v10 + 24), *(v54 + 48 * v10 + 32), (*(v54 + 48 * v10 + 32) - *(v54 + 48 * v10 + 24)) >> 2);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v12 = v50;
      v13 = v51;
      if (v51 != v50)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *&v12[v14];
          v17 = v16 == a4 || v16 == 0;
          if (!v17)
          {
            std::vector<int>::push_back[abi:ne200100](&v44, &v12[v14]);
            v12 = v50;
            v13 = v51;
          }

          ++v15;
          v14 += 4;
        }

        while (v15 < (v13 - v12) >> 2);
      }

      __p = 0;
      v42 = 0;
      v43 = 0;
      v18 = v47;
      v19 = v48;
      if (v48 == v47)
      {
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = v18[v20];
          if (v22 != a4 && v22 != 0)
          {
            std::vector<int>::push_back[abi:ne200100](&__p, &v18[v20]);
            v18 = v47;
            v19 = v48;
          }

          ++v21;
          ++v20;
        }

        while (v21 < (v19 - v18) >> 2);
        v24 = __p;
        v25 = v42;
      }

      if (v45 - v44 == v25 - v24)
      {
        v26 = memcmp(v44, v24, v45 - v44);
        v27 = v26 != 0;
        if ((a5 & 1) == 0 && !v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v27 = 1;
      }

      if (v19 == v18)
      {
        v19 = v18;
        if (v27)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v37 = v27;
        v39 = v10;
        v28 = v11;
        v29 = 0;
        v30 = 24 * v28;
        v38 = v28;
        v31 = v28;
        do
        {
          BaseAttribute = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, v18[v29], 3, 0, 1);
          kaldi::quasar::ErrorRegion::AddAttribute(this, BaseAttribute, v31 + v29);
          kaldi::quasar::ErrorRegion::AddMinDurationAttributes(this, a2, (*(this + 34) + v30), *(v47 + v29), v31 + v29, 3, 1, a3);
          ++v29;
          v18 = v47;
          v19 = v48;
          v30 += 24;
        }

        while (v29 < (v48 - v47) >> 2);
        v10 = v39;
        v11 = v38;
        if (v37)
        {
LABEL_32:
          v17 = v19 == v18;
          v19 = v18;
          if (!v17)
          {
            v33 = 0;
            v34 = v11;
            do
            {
              WordConfusionAttribute = kaldi::quasar::AttributeFactory::CreateWordConfusionAttribute(a2, v33, &v50, &v47);
              kaldi::quasar::ErrorRegion::AddAttribute(this, WordConfusionAttribute, v11);
              ++v33;
              v18 = v47;
              v19 = v48;
              v11 = (v11 + 1);
            }

            while (v33 < (v48 - v47) >> 2);
            LODWORD(v11) = v34;
          }
        }
      }

LABEL_36:
      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      v11 = v11 + ((v19 - v18) >> 2);
      ++v10;
      v9 = v54;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 4) > v10);
  }

  if (v53[0])
  {
    operator delete(v53[0]);
  }

  v53[0] = &v54;
  std::vector<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::__destroy_vector::operator()[abi:ne200100](v53);
}

void sub_1B566E880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p)
{
  __p = (v26 - 112);
  std::vector<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t **kaldi::quasar::ErrorRegion::AddMinDurationAttributes(kaldi::quasar::ErrorRegion *a1, kaldi::quasar::AttributeFactory *a2, uint64_t *a3, int a4, uint64_t a5, int a6, int a7, kaldi::TransitionModel *this)
{
  v13 = *a3;
  if (a3[1] != *a3)
  {
    v16 = 0;
    v17 = 1;
LABEL_3:
    v27 = v17;
    do
    {
      v18 = *(v13 + 4 * v16);
      result = kaldi::TransitionModel::IsSelfLoop(this, v18);
      if (result)
      {
        v17 = 0;
        ++v16;
        v13 = *a3;
        if (v16 < (a3[1] - *a3) >> 2)
        {
          goto LABEL_3;
        }

        return result;
      }

      result = kaldi::TransitionModel::IsFinal(this, v18);
      if ((result & v17) == 1)
      {
        v20 = kaldi::TransitionModel::TransitionIdToTransitionState(this, v18);
        v21 = kaldi::TransitionModel::TransitionStateToPhone(this, v20);
        BaseAttribute = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, v21, 2, 0, a7);
        result = kaldi::quasar::ErrorRegion::HasAttribute(a1, BaseAttribute);
        if (result)
        {
          v23 = kaldi::TransitionModel::TransitionStateToPhone(this, v20);
          v24 = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, v23, 2, a6, a7);
          result = kaldi::quasar::ErrorRegion::AddAttribute(a1, v24, a5);
        }

        v17 = 1;
      }

      else
      {
        v17 |= result;
      }

      ++v16;
      v13 = *a3;
    }

    while (v16 < (a3[1] - *a3) >> 2);
    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  v25 = kaldi::quasar::AttributeFactory::CreateBaseAttribute(a2, a4, 3, a6, a7);

  return kaldi::quasar::ErrorRegion::AddAttribute(a1, v25, a5);
}

unint64_t kaldi::quasar::ErrorRegion::GetLocationOfTransIdInList(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2 < a3)
  {
    goto LABEL_12;
  }

  v4 = *a4;
  v5 = ((*(*a4 + 8) - **a4) >> 2) + a3;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
  if (v5 <= a2)
  {
    v7 = 0;
    v8 = (v4 + 32);
    while (v6 != v7)
    {
      ++v7;
      v5 += (*v8 - *(v8 - 1)) >> 2;
      v8 += 3;
      if (v5 > a2)
      {
        goto LABEL_9;
      }
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
LABEL_9:
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if (v6 <= v7)
  {
LABEL_12:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "Supplied frame is not part of given transition ids");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return v7 | ((a2 - v5 + ((*(v4 + 24 * v7 + 8) - *(v4 + 24 * v7)) >> 2)) << 32);
}

void kaldi::quasar::ErrorRegion::AddErrorRegion(kaldi::quasar::ErrorRegion *this, const kaldi::quasar::ErrorRegion *a2)
{
  *(this + 6) = *(a2 + 6);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(this + 7, *(this + 8), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(this + 10, *(this + 11), *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 13, *(this + 14), *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 16, *(this + 17), *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 19, *(this + 20), *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 22, *(this + 23), *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 25, *(this + 26), *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 28, *(this + 29), *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 2);
  std::vector<std::vector<int>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<int> const*>,std::__wrap_iter<std::vector<int> const*>>(this + 31, *(this + 32), *(a2 + 31), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 31)) >> 3));
  std::vector<std::vector<int>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<int> const*>,std::__wrap_iter<std::vector<int> const*>>(this + 34, *(this + 35), *(a2 + 34), *(a2 + 35), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 35) - *(a2 + 34)) >> 3));
  if (*(a2 + 3) != *(a2 + 2))
  {
    v4 = 0;
    do
    {
      v8 = 0u;
      v9 = 0u;
      v10 = 1065353216;
      std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::push_back[abi:ne200100](this + 16, &v8);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v8);
      v5 = *(a2 + 2);
      v6 = *(v5 + 40 * v4 + 16);
      if (v6)
      {
        do
        {
          v7 = (*(this + 3) - 40);
          *&v8 = (*(*v6[2] + 32))(v6[2]);
          std::__hash_table<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AbstractAttribute * const&>(v7, &v8);
          v6 = *v6;
        }

        while (v6);
        v5 = *(a2 + 2);
      }

      ++v4;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 3) - v5) >> 3) > v4);
  }

  *&v8 = &unk_1F2D09070;
  *(&v8 + 1) = 0x3F80000000000000;
  LODWORD(v9) = 0;
  if (kaldi::quasar::ErrorRegion::HaveSameWordSequence(this))
  {
    kaldi::quasar::ErrorRegion::AddAttribute(this, &v8);
  }

  else
  {
    kaldi::quasar::ErrorRegion::RemoveAttribute(this, &v8);
  }

  quasar::Bitmap::~Bitmap(&v8);
}

uint64_t std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__emplace_back_slow_path<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>(a1, a2);
  }

  else
  {
    result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(v3, a2) + 40;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__append(uint64_t result, unint64_t a2)
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
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>,std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B566F15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>,std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6);
      v6 += 40;
    }
  }
}

uint64_t std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<std::vector<int>,std::vector<int>>>::__emplace_back_slow_path<std::pair<std::vector<int>,std::vector<int>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<int>,std::vector<int>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  v15 = 48 * v2;
  v16 = 0;
  std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100]((48 * v2), a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::pair<std::vector<int>,std::vector<int>>>::~__split_buffer(&v13);
  return v7;
}

void sub_1B566F33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::vector<int>,std::vector<int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  return a1;
}

void sub_1B566F3B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::vector<int>,std::vector<int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<std::vector<int>,std::vector<int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::vector<int>,std::vector<int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::vector<int>,std::vector<int>>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<kaldi::quasar::SeevaBeamSearchBigLm::Cookiecrumb>::destroy[abi:ne200100](v4, i - 48);
  }
}

uint64_t std::vector<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::__emplace_back_slow_path<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>,std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B566F5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::unordered_set<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,std::allocator<kaldi::quasar::AbstractAttribute *>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t TDataManager::getBoolVar(TDataManager *this, const char *a2, uint64_t a3)
{
  if ((*(*this + 40))(this))
  {
    operator new[]();
  }

  return a3;
}

void sub_1B566F8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t TDataManager::getIntVar(TDataManager *this, const char *a2, uint64_t a3)
{
  if ((*(*this + 40))(this))
  {
    operator new[]();
  }

  return a3;
}

void TDataManager::getStringVar(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    operator new[]();
  }

  JUMPOUT(0x1B8C84820);
}

off_t TDataManager::getVar(TDataManager *this, char *a2, char *a3, size_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  __filename = v23;
  v21 = 256;
  v24 = 1;
  v7 = this + 16;
  if (*(this + 39) < 0)
  {
    v7 = *v7;
  }

  v8 = 0;
  v22 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, 0, v7, v8 - 1);
  DirSep = getDirSep();
  TBuffer<char>::insert(&__filename, v22, &DirSep, 1uLL);
  v10 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, v22, a2, v10 - 1);
  v12 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, v22, FILE_EXTENSION, v12 - 1);
  if (v22 >= v21)
  {
    if (v24)
    {
      DirSep = 0;
      TBuffer<char>::insert(&__filename, v22--, &DirSep, 1uLL);
    }

    else if (v21)
    {
      __filename[v21 - 1] = 0;
    }
  }

  else
  {
    __filename[v22] = 0;
  }

  v14 = fopen(__filename, "rb");
  v15 = v14;
  if (v14)
  {
    fseek(v14, 0, 2);
    v16 = ftello(v15);
    v17 = v16;
    if (a4 && v16)
    {
      fseek(v15, 0, 0);
      fread(a3, 1uLL, a4, v15);
    }

    fclose(v15);
  }

  else
  {
    v17 = 0;
  }

  if (v24 == 1 && __filename != v23 && __filename)
  {
    MEMORY[0x1B8C85310]();
  }

  return v17;
}

void sub_1B566FDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a10 != v45)
  {
    if (a10)
    {
      MEMORY[0x1B8C85310]();
    }
  }

  _Unwind_Resume(exception_object);
}

void TDataSaver::~TDataSaver(char **this)
{
  v2 = (this + 1);
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v4 = *(v3 + 7);
      if (v4)
      {
        MEMORY[0x1B8C85350](v4, 0x1000C4077774924);
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

    while (v6 != v2);
  }

  std::__tree<std::string>::destroy(this, this[1]);
}

void TDataSaver::load(TDataSaver *this, const TDataManager *a2, char *a3, char *a4)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if ((*(*a2 + 40))(a2, a3, 0, 0))
  {
    operator new[]();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  v9 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::pair<char *,unsigned long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<char *,unsigned long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<char *,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B566FFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TDataManager::~TDataManager(void **this)
{
  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F2D24588;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<char *,unsigned long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<char *,unsigned long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<char *,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL quasar::WordSet::containsWord(void *a1, uint64_t a2)
{
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

  quasar::utf8::convertToLowerCase(v5, v6, v19);
  if ((v21 & 1) == 0)
  {
    memset(v18, 0, sizeof(v18));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unable to convert string: '", 27);
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
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "' to lower case, error: ", 24);
    if ((v20 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = v19[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v17 = v20;
    }

    else
    {
      v17 = v19[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
  }

  v7 = tl::expected<std::string,std::string>::value<std::string,(void *)0>(v19);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, v7);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  return v8 != 0;
}

void sub_1B56702C4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B567037C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::exception a16)
{
  tl::bad_expected_access<std::string>::~bad_expected_access(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::NgramFstConfig::NgramFstConfig(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *a1 = &unk_1F2D245D8;
  *(a1 + 8) = 0x3F80000000000000;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  quasar::LmBuildConfig::readSysConfig(a1, a2, a3);
}

void sub_1B5670648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::pair<std::string,std::string>::~pair(v23);
  quasar::LmBuildConfig::~LmBuildConfig(v22);
  _Unwind_Resume(a1);
}

void quasar::NgramFstConfig::makeFstFileName(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *a2, *(a2 + 8));
  }

  else
  {
    v45 = *a2;
  }

  v5 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  size = v45.__r_.__value_.__l.__size_;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v45.__r_.__value_.__l.__size_;
  }

  if (!v8)
  {
    MEMORY[0x1B8C84820](&v45, "squeezed_acceptor");
    v5 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    size = v45.__r_.__value_.__l.__size_;
    v6 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  v9 = "vector";
  v10 = v45.__r_.__value_.__r.__words[0];
  v11 = 12;
  while (1)
  {
    v12 = strlen(v9);
    v13 = v12;
    if (v6 < 0)
    {
      break;
    }

    if (v12 == v5)
    {
      v14 = &v45;
      goto LABEL_15;
    }

LABEL_16:
    v9 += 30;
    if (!--v11)
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
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Unsupported FST type: ", 22);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v45;
      }

      else
      {
        v16 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v45.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v29);
    }
  }

  if (v12 != size)
  {
    goto LABEL_16;
  }

  v14 = v10;
  if (size == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_15:
  if (memcmp(v14, v9, v13))
  {
    goto LABEL_16;
  }

  if (*(a1 + 23) >= 0)
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[1];
  }

  if (v18)
  {
    v19 = &v28;
    std::string::basic_string[abi:ne200100](&v28, v18 + 1);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v28.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    memmove(v19, v20, v18);
    *(&v19->__r_.__value_.__l.__data_ + v18) = 46;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v45;
    }

    else
    {
      v21 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v45.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v28, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *&v29[16] = *(&v23->__r_.__value_.__l + 2);
    *v29 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(v29, ".fst");
  }

  else
  {
    std::operator+<char>();
    v26 = std::string::append(&v28, ".fst");
    v27 = *&v26->__r_.__value_.__l.__data_;
    *&v29[16] = *(&v26->__r_.__value_.__l + 2);
    *v29 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::insert(v29, 0, "bigG");
  }

  *a3 = *&v25->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v25->__r_.__value_.__l + 2);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((v29[23] & 0x80000000) != 0)
  {
    operator delete(*v29);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_1B56710C4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B567110CLL);
}

void sub_1B56710DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::__tree<std::string>::destroy(&a10, a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  quasar::NgramSrilmCountConfig::NgramCountSysConfigParameters::~NgramCountSysConfigParameters(v19);
  quasar::NgramFstConfig::~NgramFstConfig(v18);
  _Unwind_Resume(a1);
}

void sub_1B5671114(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B56710E0);
}

void quasar::NgramSrilmCountConfig::NgramCountSysConfigParameters::~NgramCountSysConfigParameters(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void quasar::NgramFstConfig::~NgramFstConfig(void **this)
{
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);

  JUMPOUT(0x1B8C85350);
}

void sub_1B5671534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v17 - 49) < 0)
  {
    operator delete(*(v17 - 72));
  }

  quasar::NgramFstConfig::~NgramFstConfig(v16);
  _Unwind_Resume(a1);
}

void sub_1B5671CB0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5671CF8);
}

void sub_1B5671CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::__tree<std::string>::destroy(&a10, a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  quasar::NgramSrilmCountConfig::NgramCountSysConfigParameters::~NgramCountSysConfigParameters(v19);
  quasar::NgramFstConfig::~NgramFstConfig(v18);
  _Unwind_Resume(a1);
}

void sub_1B5671D00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5671CCCLL);
}

BOOL quasar::addUnseenWords(uint64_t a1, void *a2)
{
  if (*(a1 + 100) == 1)
  {
    v4 = (*(**(a1 + 16) + 120))(*(a1 + 16)) - 5;
  }

  else
  {
    v4 = *(a1 + 72);
  }

  v5 = *(a1 + 76) - 1;
  v6 = v4 - v5;
  if (v4 == v5)
  {
    return 1;
  }

  v8 = *(a1 + 16);
  v9 = (*(*v8 + 120))(v8);
  v10 = (*(*v8 + 128))(v8, 0);
  if (*(a1 + 100))
  {
    if (v9)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a1 + 80);
        v13.i64[0] = v12;
        v13.i64[1] = SDWORD1(v12);
        v14 = v13;
        v13.i64[0] = SDWORD2(v12);
        v13.i64[1] = SHIDWORD(v12);
        v15 = vdupq_n_s64(v10);
        if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v15, v14), vceqq_s64(v15, v13)))) & 1) == 0 && v10 && ((*(*(a1 + 48) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          break;
        }

        if (++v11 < v9)
        {
          v10 = (*(*v8 + 128))(v8, v11);
        }

        if (v9 == v11)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v17) = v10;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = 0;
      while ((*(*(a1 + 24) + 8 * (v17 >> 6)) & (1 << v17)) == 0 || (*(*(a1 + 48) + 8 * (v17 >> 6)) & (1 << v17)) != 0)
      {
        if (v16 == ++v17)
        {
          goto LABEL_21;
        }
      }

      v11 = 0;
LABEL_27:
      v18 = *(a2[1] + 72) - *(a2[1] + 64);
      if ((v18 >> 3) < 1)
      {
        goto LABEL_52;
      }

      v19 = logf(v6);
      v20 = 0;
      v42 = (v18 >> 3) & 0x7FFFFFFF;
      v21 = 0xFFFFFFFFLL;
      while (2)
      {
        v43 = &unk_1F2D04CD8;
        v46 = 0;
        fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a2);
        v22 = a2[1];
        v23 = *(*(v22 + 64) + 8 * v20);
        v44 = v23;
        v45 = v22 + 8;
        for (i = v46; ; v46 = ++i)
        {
          v25 = *(v23 + 24);
          if (i >= (*(v23 + 32) - v25) >> 4)
          {
            break;
          }

          v26 = v25 + 16 * i;
          if (*v26 == *(a1 + 88))
          {
            if (v21 != -1)
            {
              if (quasar::gLogLevel >= 1)
              {
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
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v48 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Encountered more than 1 arc with <unseen>", 41);
                quasar::QuasarErrorMessage::~QuasarErrorMessage(&v48);
              }

              return 0;
            }

            v47.n128_u64[1] = *(v26 + 8);
            v47.n128_u32[0] = v17;
            v47.n128_u32[1] = v17;
            v47.n128_f32[2] = v19 + *(v26 + 8);
            fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(&v43, &v47);
            i = v46;
            v23 = v44;
            v21 = v20;
          }
        }

        if (++v20 != v42)
        {
          continue;
        }

        break;
      }

      if (v21 == -1)
      {
LABEL_52:
        if (quasar::gLogLevel >= 4)
        {
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
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "No arc with <unseen>", 20);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v48);
        }

        return 1;
      }

      v27 = (*(*a2 + 40))(a2, v21);
      v28 = v6 - 1;
      (*(*a2 + 256))(a2, v21, v27 + v28);
      if (*(a1 + 100))
      {
        if (v11 + 1 < v9)
        {
          v10 = (*(*v8 + 128))(v8, v11 + 1);
        }

        if (v11 + 1 != v9)
        {
          v29 = 0;
          v30 = ~v11 + v9;
          v31 = v11 + 2;
          do
          {
            v32 = *(a1 + 80);
            v33.i64[0] = v32;
            v33.i64[1] = SDWORD1(v32);
            v34 = v33;
            v33.i64[0] = SDWORD2(v32);
            v33.i64[1] = SHIDWORD(v32);
            v35 = vdupq_n_s64(v10);
            if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v35, v34), vceqq_s64(v35, v33)))) & 1) == 0 && v10 && ((*(*(a1 + 48) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              v47.n128_u32[0] = v10;
              v47.n128_u32[1] = v10;
              (*(*a2 + 208))(a2, v21, &v47);
              v29 = (v29 + 1);
            }

            if (v31 < v9)
            {
              v10 = (*(*v8 + 128))(v8, v31);
            }

            ++v31;
            --v30;
          }

          while (v30);
          goto LABEL_62;
        }
      }

      else
      {
        v36 = (v17 + 1);
        v37 = *(a1 + 32);
        if (v37 > v36)
        {
          v29 = 0;
          do
          {
            if ((*(*(a1 + 24) + 8 * (v36 >> 6)) & (1 << v36)) != 0 && (*(*(a1 + 48) + 8 * (v36 >> 6)) & (1 << v36)) == 0)
            {
              v47.n128_u32[0] = v36;
              v47.n128_u32[1] = v36;
              (*(*a2 + 208))(a2, v21, &v47);
              v29 = (v29 + 1);
              v37 = *(a1 + 32);
            }

            ++v36;
          }

          while (v37 > v36);
LABEL_62:
          v38 = quasar::gLogLevel;
          if (quasar::gLogLevel >= 4)
          {
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
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v48 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
            v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "numArcsAdded ", 13);
            v40 = MEMORY[0x1B8C84C00](v39, v29);
            v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " numArcsToAdd ", 14);
            MEMORY[0x1B8C84C00](v41, v28);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(&v48);
            v38 = quasar::gLogLevel;
          }

          result = v29 == v28;
          if (v29 != v28 && v38 >= 1)
          {
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
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v48 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Incorrect number of arcs added. This is a bug.", 46);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(&v48);
            return 0;
          }

          return result;
        }
      }

      v29 = 0;
      goto LABEL_62;
    }
  }

LABEL_21:
  if (quasar::gLogLevel >= 1)
  {
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
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "There are no unseen words in vocab", 34);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v48);
  }

  return 0;
}

uint64_t quasar::NgramLmModel2::NgramLmModel2(uint64_t a1, uint64_t *a2, void ***a3, uint64_t *a4, const std::string **a5)
{
  v10 = *a4 + *(**a4 - 24);
  *(a1 + 1048) = &unk_1F2D0AF10;
  v11 = *(v10 + 8);
  *(a1 + 1064) = *(v10 + 16);
  *(a1 + 1056) = v11;
  v12 = quasar::FstLmHandle::FstLmHandle(a1, &off_1F2D24728, a4);
  v13 = v12 + 656;
  if (*a4)
  {
    v14 = *a4 + *(**a4 - 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = a4[1];
  *&v24[0] = v14;
  *(&v24[0] + 1) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::LmModel2::LmModel2(v12 + 656, off_1F2D24738);
  if (*(&v24[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24[0] + 1));
  }

  *a1 = &unk_1F2D24680;
  *(a1 + 1048) = &unk_1F2D24708;
  *(a1 + 656) = &unk_1F2D246C0;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1001) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1032) = 0;
  quasar::LmModel2::setModelSysConfigParams(v13, &(*a5)->__r_.__value_.__l.__size_);
  std::string::operator=((a1 + 920), *a5 + 6);
  std::string::operator=((a1 + 896), *a5 + 5);
  v17 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1024) = v17;
  v18 = *(a1 + 1032);
  *(a1 + 1032) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *a3;
  *a3 = 0;
  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100]((a1 + 1040), v19);
  v20 = (*((*a5)->__r_.__value_.__r.__words[0] + 16))(*a5);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      return a1;
    }

    if (v20 == 4)
    {
      v22 = *a5;
      v21 = a5[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::operator=((a1 + 968), v22 + 9);
      goto LABEL_23;
    }

LABEL_26:
    memset(v24, 0, sizeof(v24));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Unsupported LmBuildConfig type", 30);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v24);
  }

  if (v20 == 1)
  {
    return a1;
  }

  if (v20 != 2)
  {
    goto LABEL_26;
  }

  v22 = *a5;
  v21 = a5[1];
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::operator=((a1 + 992), v22 + 9);
  std::string::operator=((a1 + 968), v22 + 8);
LABEL_23:
  *(a1 + 1016) = v22[10].__r_.__value_.__s.__data_[0];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return a1;
}

void sub_1B56727DC(_Unwind_Exception *a1)
{
  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100]((v1 + 1040), 0);
  v5 = *(v1 + 1032);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  quasar::NgramSrilmCountConfig::NgramCountSysConfigParameters::~NgramCountSysConfigParameters((v1 + 944));
  std::pair<std::string,std::string>::~pair(v3);
  quasar::LmModel2::~LmModel2(v2, off_1F2D24738);
  quasar::FstLmHandle::~FstLmHandle(v1, &off_1F2D24728);
  _Unwind_Resume(a1);
}

uint64_t quasar::NgramLmModel2::NgramLmModel2(uint64_t a1, uint64_t *a2)
{
  v4 = *a2 + *(**a2 - 24);
  *(a1 + 1048) = &unk_1F2D0AF10;
  v5 = *(v4 + 8);
  *(a1 + 1064) = *(v4 + 16);
  *(a1 + 1056) = v5;
  v6 = quasar::FstLmHandle::FstLmHandle(a1, &off_1F2D24728, a2);
  v7 = a2[1];
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::LmModel2::LmModel2(v6 + 656, off_1F2D24738);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *a1 = &unk_1F2D24680;
  *(a1 + 1048) = &unk_1F2D24708;
  *(a1 + 656) = &unk_1F2D246C0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1001) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1032) = 0;
  return a1;
}

void sub_1B56729D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  quasar::FstLmHandle::~FstLmHandle(v10, &off_1F2D24728);
  _Unwind_Resume(a1);
}

void quasar::NgramLmModel2::writeImpl(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v4 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v15.__r_.__value_.__r.__words[0];
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
  quasar::NgramFstConfig::makeFstFileName((a1 + 920), a1 + 896, v13);
  if ((v14 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v13[1];
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v12 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  quasar::filesystem::Path::Path(&v16, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1B5672C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 64) = &unk_1F2CFAA28;
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::NgramLmModel2::writeFst(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1024);
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = __p;
  }

  v8 = 16777217;
  v4 = (*(*v2 + 96))(v2, v3, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1B5672E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::NgramLmModel2::getArpaFileName(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a1 + 1016) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        std::string::__init_copy_ctor_external(__p, *a2, v5);
        goto LABEL_11;
      }
    }

    else if (*(a2 + 23))
    {
      *__p = *a2;
      *&v17 = *(a2 + 16);
      goto LABEL_11;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "/current");
LABEL_11:
    if ((*(a1 + 991) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 976))
      {
        goto LABEL_13;
      }
    }

    else if (*(a1 + 991))
    {
LABEL_13:
      if ((SBYTE7(v17) & 0x80u) == 0)
      {
        v6 = BYTE7(v17);
      }

      else
      {
        v6 = __p[1];
      }

      v7 = &v33;
      std::string::basic_string[abi:ne200100](&v33, v6 + 1);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v33.__r_.__value_.__r.__words[0];
      }

      if (v6)
      {
        if ((SBYTE7(v17) & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        memmove(v7, v8, v6);
      }

      *(&v7->__r_.__value_.__l.__data_ + v6) = 47;
      v9 = *(a1 + 991);
      if (v9 >= 0)
      {
        v10 = (a1 + 968);
      }

      else
      {
        v10 = *(a1 + 968);
      }

      if (v9 >= 0)
      {
        v11 = *(a1 + 991);
      }

      else
      {
        v11 = *(a1 + 976);
      }

      v12 = std::string::append(&v33, v10, v11);
      v13 = *&v12->__r_.__value_.__l.__data_;
      *(a3 + 2) = *(&v12->__r_.__value_.__l + 2);
      *a3 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

LABEL_43:
      if (SBYTE7(v17) < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v14 = BYTE7(v17);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::basic_string[abi:ne200100](a3, v14 + 8);
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    if (v14)
    {
      if ((SBYTE7(v17) & 0x80u) == 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      memmove(a3, v15, v14);
    }

    strcpy(&a3[v14], "/lm.arpa");
    goto LABEL_43;
  }

  if (quasar::gLogLevel >= 4)
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Config not set to write ARPA file", 33);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
}

void sub_1B567310C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::NgramLmModel2::writeArpa(quasar::NgramLmModel2 *this, const quasar::filesystem::Path *a2)
{
  if (*(*(this + 130) + 48))
  {
    kaldi::quasar::Vocab::OOvWord(a2, __p);
    if ((SBYTE7(v10) & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    File::File(v8, v3, "w", 0);
    if (SBYTE7(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = (*(**(*(this + 130) + 48) + 248))(*(*(this + 130) + 48), v8);
    v5 = v4 != 0;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = quasar::gLogLevel < 1;
    }

    if (!v6)
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
      v11 = 0u;
      *__p = 0u;
      v10 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ARPA LM write error", 19);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
    }

    File::close(v8);
    File::~File(v8);
  }

  else
  {
    if (quasar::gLogLevel >= 1)
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
      v11 = 0u;
      *__p = 0u;
      v10 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "ngramCountCtx is null", 21);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
    }

    return 0;
  }

  return v5;
}

BOOL quasar::NgramLmModel2::writeArpa(quasar::NgramLmModel2 *a1, uint64_t *a2)
{
  v15[19] = *MEMORY[0x1E69E9840];
  quasar::filesystem::TemporaryDirectoryPath::TemporaryDirectoryPath(v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "arpa");
  quasar::filesystem::Path::operator/(v11, __p, v9);
  if ((v14[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  v4 = quasar::NgramLmModel2::writeArpa(a1, v9);
  if (v4)
  {
    kaldi::quasar::Vocab::OOvWord(v9, &v12);
    std::ifstream::basic_ifstream(__p);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    *(&__p[1] + *(__p[0] - 3)) &= ~0x1000u;
    std::istream_iterator<unsigned char,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](&v7, __p);
    v5.n128_f64[0] = std::__copy_impl::operator()[abi:ne200100]<std::istream_iterator<unsigned char,char,std::char_traits<char>,long>,std::istream_iterator<unsigned char,char,std::char_traits<char>,long>,std::ostream_iterator<unsigned char,char,std::char_traits<char>>>(v7, v8, 0, *a2, 0, &v12);
    __p[0] = *MEMORY[0x1E69E54C8];
    *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54C8] + 24);
    MEMORY[0x1B8C84A00](v14, v5);
    std::istream::~istream();
    MEMORY[0x1B8C85200](v15);
  }

  v9[0] = &unk_1F2CFAA28;
  if (v10 < 0)
  {
    operator delete(v9[1]);
  }

  quasar::filesystem::TemporaryDirectoryPath::~TemporaryDirectoryPath(v11);
  return v4;
}

void sub_1B5673590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  quasar::filesystem::TemporaryDirectoryPath::~TemporaryDirectoryPath(&a19);
  _Unwind_Resume(a1);
}

void sub_1B56736F8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void quasar::_populateNgramCountArgv(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = v2;
      if (*(v2 + 23) < 0)
      {
        v5 = *v2;
      }

      v7 = *(a1 + 8);
      v6 = *(a1 + 16);
      if (v7 >= v6)
      {
        v9 = (v7 - *a1) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v10 = v6 - *a1;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v12);
        }

        v13 = (8 * v9);
        *v13 = v5;
        v8 = 8 * v9 + 8;
        v14 = *(a1 + 8) - *a1;
        v15 = v13 - v14;
        memcpy(v13 - v14, *a1, v14);
        v16 = *a1;
        *a1 = v15;
        *(a1 + 8) = v8;
        *(a1 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      *(a1 + 8) = v8;
      v2 += 3;
    }

    while (v2 != v3);
  }
}

void quasar::_populateNgramCountContext(std::string **a1, const std::string *a2, std::string *__str, quasar::LmData *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 26);
  v8 = *a1;
  LODWORD((*a1)[3].__r_.__value_.__r.__words[2]) = v7;
  if ((v7 | 2) == 2)
  {
    std::string::operator=(v8 + 4, a2);
    v8 = *a1;
  }

  std::string::operator=(v8 + 6, __str);
  SymbolTableData = quasar::LmData::getSymbolTableData(a4);
  v10 = *a1;
  v12 = *SymbolTableData;
  v11 = SymbolTableData[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v10[1].__r_.__value_.__r.__words[2];
  v10[1].__r_.__value_.__l.__size_ = v12;
  v10[1].__r_.__value_.__r.__words[2] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  quasar::LmData::getSentences(a4, 0);
  operator new();
}

void sub_1B5673B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::~__value_func[abi:ne200100](va2);
  MEMORY[0x1B8C85350](v3, v2);
  _Unwind_Resume(a1);
}

void quasar::_generateArpaLm(quasar::LmData *a1, std::string **a2, uint64_t **a3, const std::string *a4)
{
  if (*(a1 + 26) < 3u)
  {
    memset(v7, 0, sizeof(v7));
    quasar::_populateNgramCountArgv(v7, a3);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::_populateNgramCountContext(a2, a4, __p, a1);
  }

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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "other input types not yet implemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void quasar::_adaptArpaLm(quasar::LmData *a1, std::string **a2, uint64_t **a3, std::string *a4)
{
  if (*(a1 + 26) < 3u)
  {
    memset(v7, 0, sizeof(v7));
    quasar::_populateNgramCountArgv(v7, a3);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::_populateNgramCountContext(a2, __p, a4, a1);
  }

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
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "other input types not yet implemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B567450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  JUMPOUT(0x1B5674520);
}

void sub_1B5674530(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B567455CLL);
}

void sub_1B5674558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::generateNgramCountsStr(uint64_t **this, const quasar::NgramSrilmCountConfig *a2, quasar::LmData *a3)
{
  if ((*(a2 + 26) | 2) == 2)
  {
    memset(v3, 0, sizeof(v3));
    quasar::_populateNgramCountArgv(v3, this + 21);
    operator new();
  }

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
  *v4 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Ngram counts can only be generated from plain text or phrase counts");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
}

void sub_1B56747C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100](&a16, 0);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::_buildFst(quasar::lm::SymbolTableData *a1, uint64_t a2, void ***a3, uint64_t a4, uint64_t a5, int a6, const kaldi::Timer *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Arpa2Fst");
  v46[0] = __p;
  v17 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a8, __p);
  quasar::ScopedTimer::ScopedTimer(v47, a7, (v17 + 56));
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "conversion");
  v48 = __p;
  v18 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a8, __p);
  quasar::ScopedTimer::ScopedTimer(v46, a7, (v18 + 56));
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
    if (a11)
    {
LABEL_5:
      quasar::lm::SymbolTableData::generateTrainToBigGIdRemapping(a1);
    }
  }

  else if (a11)
  {
    goto LABEL_5;
  }

  v19 = *(a1 + 2);
  v44 = 0;
  v45 = 0;
  v20 = quasar::lm::arpa2fst::ConvertToFST::create(1, v19, &v44, 0, 0, 0);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v21 = (**v20)(v20, a2);
  if (v21)
  {
  }

  else
  {
    v22 = 0;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Arpa2Fst", 8);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  (*(*v20 + 16))(v20);
  quasar::ScopedTimer::~ScopedTimer(v46);
  quasar::ScopedTimer::~ScopedTimer(v47);
  if (a6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "free");
    v46[0] = __p;
    v23 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a8, __p);
    quasar::ScopedTimer::ScopedTimer(v47, a7, (v23 + 56));
    if (SBYTE7(v28) < 0)
    {
      operator delete(__p[0]);
    }

    std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100](a3, 0);
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    LMThreads::freeThread(v24);
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "free", 4);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    quasar::ScopedTimer::~ScopedTimer(v47);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MinimizeEncoded");
  v46[0] = __p;
  v25 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a8, __p);
  quasar::ScopedTimer::ScopedTimer(v47, a7, (v25 + 56));
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "optimization");
  v48 = __p;
  v26 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a8, __p);
  quasar::ScopedTimer::ScopedTimer(v46, a7, (v26 + 56));
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
  }

  fst::MinimizeEncoded<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v22, 0.00097656);
}

void sub_1B56759E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  quasar::ScopedTimer::~ScopedTimer((v17 - 168));
  quasar::ScopedTimer::~ScopedTimer((v17 - 144));
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1B5675CF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5675CF0);
}

void **std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    srilm::NgramCountContext::~NgramCountContext(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t fst::Verify<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, char a2, int a3)
{
  v6 = (*(*a1 + 24))(a1);
  v7 = (*(*a1 + 112))(a1);
  v8 = (*(*a1 + 120))(a1);
  LODWORD(v99) = 0;
  (*(*a1 + 128))(a1, &__p);
  v9 = 0;
  while (1)
  {
    while (!__p)
    {
      if (v99 >= v98)
      {
        goto LABEL_11;
      }

      ++v9;
LABEL_8:
      LODWORD(v99) = v99 + 1;
    }

    if ((*(*__p + 16))(__p))
    {
      break;
    }

    ++v9;
    if (!__p)
    {
      goto LABEL_8;
    }

    (*(*__p + 32))();
  }

  if (__p)
  {
    (*(*__p + 8))();
  }

LABEL_11:
  if (v6 == -1 && v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v10 = fst::LogMessage::LogMessage(&v102, &__p);
    v11 = fst::cerr(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Verify: Fst start state ID unset", 32);
    goto LABEL_69;
  }

  if ((*(*a1 + 16))(a1))
  {
    v12 = v6 < v9;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v24 = fst::LogMessage::LogMessage(&v102, &__p);
    v25 = fst::cerr(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Verify: Fst start state ID exceeds number of states ", 52);
    goto LABEL_69;
  }

  v104 = 0;
  (*(*a1 + 128))(a1, &v102);
  while (2)
  {
    if (!v102)
    {
      if (v104 < v103)
      {
        goto LABEL_25;
      }

LABEL_99:
      v81 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
      if ((v81 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v83 = fst::LogMessage::LogMessage(&v102, &__p);
        v84 = fst::cerr(v83);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "Verify: Fst error property is set", 33);
      }

      else
      {
        if (a3)
        {
          v82 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 1);
        }

        else
        {
          __p = 0;
          v82 = fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, 0x3FFFFFFF0007, &__p, 0);
        }

        if (fst::CompatProperties(v81, v82))
        {
          return 1;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v85 = fst::LogMessage::LogMessage(&v102, &__p);
        v86 = fst::cerr(v85);
        v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "Verify: stored Fst properties incorrect ", 40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "(props1 = stored props, props2 = tested)", 40);
      }

LABEL_69:
      fst::LogMessage::~LogMessage(&v102);
      if (SHIBYTE(v99) < 0)
      {
        operator delete(__p);
      }

      return 0;
    }

    if ((*(*v102 + 16))(v102))
    {
      if (v102)
      {
        (*(*v102 + 8))();
      }

      goto LABEL_99;
    }

    if (v102)
    {
      v13 = (*(*v102 + 24))();
      goto LABEL_26;
    }

LABEL_25:
    v13 = v104;
LABEL_26:
    v101 = 0;
    v92 = v13;
    (*(*a1 + 136))(a1);
    v14 = 0;
    while (2)
    {
      if (!__p)
      {
        if (v101 >= v99)
        {
          goto LABEL_61;
        }

        goto LABEL_32;
      }

      if (((*(*__p + 24))(__p) & 1) == 0)
      {
        if (__p)
        {
          v15 = (*(*__p + 32))();
          goto LABEL_33;
        }

LABEL_32:
        v15 = (v98 + 16 * v101);
LABEL_33:
        v16 = *v15;
        if ((a2 & 1) == 0 && (LODWORD(v16) & 0x80000000) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
          v26 = fst::LogMessage::LogMessage(&v96, &v93);
          v27 = fst::cerr(v26);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Verify: Fst input label ID of arc at position ", 46);
          v29 = MEMORY[0x1B8C84C30](v28, v14);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " of state ", 10);
          v31 = MEMORY[0x1B8C84C00](v30, v92);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " is negative", 12);
          goto LABEL_88;
        }

        if (v7)
        {
          (*(*v7 + 88))(&v93, v7, SLODWORD(v16));
          if (v95 < 0)
          {
            v17 = v94;
            operator delete(v93);
            if (!v17)
            {
LABEL_75:
              std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
              v56 = fst::LogMessage::LogMessage(&v96, &v93);
              v57 = fst::cerr(v56);
              v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Verify: Fst input label ID ", 27);
              v59 = MEMORY[0x1B8C84C00](v58, *v15);
              v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " of arc at position ", 20);
              v61 = MEMORY[0x1B8C84C30](v60, v14);
              v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " of state ", 10);
              v63 = MEMORY[0x1B8C84C00](v62, v92);
              v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " is missing from input symbol table ", 37);
              v65 = (*(*v7 + 48))(v7);
              v66 = *(v65 + 23);
              if (v66 >= 0)
              {
                v67 = v65;
              }

              else
              {
                v67 = *v65;
              }

              if (v66 >= 0)
              {
                v68 = *(v65 + 23);
              }

              else
              {
                v68 = *(v65 + 8);
              }

LABEL_87:
              v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v67, v68);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "", 1);
              goto LABEL_88;
            }
          }

          else if (!v95)
          {
            goto LABEL_75;
          }
        }

        v18 = *(v15 + 1);
        if ((a2 & 1) == 0 && v18 < 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
          v32 = fst::LogMessage::LogMessage(&v96, &v93);
          v33 = fst::cerr(v32);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Verify: Fst output label ID of arc at position ", 47);
          v35 = MEMORY[0x1B8C84C30](v34, v14);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " of state ", 10);
          v37 = MEMORY[0x1B8C84C00](v36, v92);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " is negative", 12);
          goto LABEL_88;
        }

        if (v8)
        {
          (*(*v8 + 88))(&v93, v8, v18);
          if (v95 < 0)
          {
            v19 = v94;
            operator delete(v93);
            if (!v19)
            {
LABEL_81:
              std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
              v69 = fst::LogMessage::LogMessage(&v96, &v93);
              v70 = fst::cerr(v69);
              v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Verify: Fst output label ID ", 28);
              v72 = MEMORY[0x1B8C84C00](v71, *(v15 + 1));
              v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " of arc at position ", 20);
              v74 = MEMORY[0x1B8C84C30](v73, v14);
              v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " of state ", 10);
              v76 = MEMORY[0x1B8C84C00](v75, v92);
              v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " is missing from output symbol table ", 38);
              v77 = (*(*v8 + 48))(v8);
              v78 = *(v77 + 23);
              if (v78 >= 0)
              {
                v67 = v77;
              }

              else
              {
                v67 = *v77;
              }

              if (v78 >= 0)
              {
                v68 = *(v77 + 23);
              }

              else
              {
                v68 = *(v77 + 8);
              }

              goto LABEL_87;
            }
          }

          else if (!v95)
          {
            goto LABEL_81;
          }
        }

        v20 = v15[2];
        if (v20 >= -INFINITY && v20 <= -INFINITY)
        {
          std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
          v38 = fst::LogMessage::LogMessage(&v96, &v93);
          v39 = fst::cerr(v38);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Verify: Fst weight of arc at position ", 38);
          v41 = MEMORY[0x1B8C84C30](v40, v14);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " of state ", 10);
          v43 = MEMORY[0x1B8C84C00](v42, v92);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " is invalid", 11);
LABEL_88:
          fst::LogMessage::~LogMessage(&v96);
          if (v95 < 0)
          {
            operator delete(v93);
          }

          if (__p)
          {
            (*(*__p + 8))(__p);
          }

          else if (v100)
          {
            --*v100;
          }

          goto LABEL_94;
        }

        if ((v15[3] & 0x80000000) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
          v44 = fst::LogMessage::LogMessage(&v96, &v93);
          v45 = fst::cerr(v44);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Verify: Fst destination state ID of arc at position ", 52);
          v47 = MEMORY[0x1B8C84C30](v46, v14);
          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " of state ", 10);
          v49 = MEMORY[0x1B8C84C00](v48, v92);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " is negative", 12);
          goto LABEL_88;
        }

        v21 = (*(*a1 + 16))(a1);
        if (*(v15 + 3) >= v9)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v22 == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v93, "ERROR");
          v50 = fst::LogMessage::LogMessage(&v96, &v93);
          v51 = fst::cerr(v50);
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Verify: Fst destination state ID of arc at position ", 52);
          v53 = MEMORY[0x1B8C84C30](v52, v14);
          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " of state ", 10);
          v55 = MEMORY[0x1B8C84C00](v54, v92);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " exceeds number of states", 25);
          goto LABEL_88;
        }

        if (__p)
        {
          (*(*__p + 40))(__p);
        }

        else
        {
          ++v101;
        }

        ++v14;
        continue;
      }

      break;
    }

    if (__p)
    {
      (*(*__p + 8))();
    }

    else
    {
LABEL_61:
      if (v100)
      {
        --*v100;
      }
    }

    v23 = (*(*a1 + 32))(a1, v92);
    if (v23 < -INFINITY || v23 > -INFINITY)
    {
      if (v102)
      {
        (*(*v102 + 32))(v102);
      }

      else
      {
        ++v104;
      }

      continue;
    }

    break;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
  v88 = fst::LogMessage::LogMessage(&v93, &__p);
  v89 = fst::cerr(v88);
  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "Verify: Fst final weight of state ", 34);
  v91 = MEMORY[0x1B8C84C00](v90, v92);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, " is invalid", 11);
  fst::LogMessage::~LogMessage(&v93);
  if (SHIBYTE(v99) < 0)
  {
    operator delete(__p);
  }

LABEL_94:
  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  return 0;
}

void sub_1B567693C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    (*(*a29 + 8))(a29);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<quasar::FstLmHandle>::operator=[abi:ne200100]<quasar::FstLmHandle,std::default_delete<quasar::FstLmHandle>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::FstLmHandle>::shared_ptr[abi:ne200100]<quasar::FstLmHandle,std::default_delete<quasar::FstLmHandle>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void quasar::trainOrAdaptNgramSrilmModel()
{
  quasar::PTree::PTree(v5);
  v3[24] = 1;
  kaldi::Timer::Reset(v3, v0);
  v4 = 0;
  v2[0] = 0;
  v2[1] = 0;
  v1 = v2;
  operator new();
}

void sub_1B56773AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  quasar::PTree::~PTree(&a37);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  quasar::ScopedTimer::~ScopedTimer(&v40);
  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100]((v38 - 240), 0);
  std::__tree<std::string>::destroy(v38 - 232, *(v38 - 224));
  quasar::PTree::~PTree((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_1B5677474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100]((v29 - 240), 0);
  JUMPOUT(0x1B5677514);
}

void sub_1B5677530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    JUMPOUT(0x1B5677540);
  }

  JUMPOUT(0x1B5677508);
}

void sub_1B5677870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a36 == 1 && a35 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  _Unwind_Resume(exception_object);
}

void quasar::interpolateNgramSrilmArpaFiles(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v20 = *MEMORY[0x1E69E9840];
  v15[24] = 1;
  kaldi::Timer::Reset(v15, v3);
  v16 = 0;
  v14[1] = 0;
  v14[0] = 0;
  v13 = v14;
  v11 = 0;
  v10 = 0;
  v12 = 0;
  v8 = 0;
  v7 = 0;
  v9 = 0;
  if (*(v2 + 23) < 0)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      std::string::__init_copy_ctor_external(&v6, *v2, v4);
      goto LABEL_7;
    }
  }

  else if (*(v2 + 23))
  {
    v6 = *v2;
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "lm-personalize.data");
LABEL_7:
  __p = 0u;
  v18 = 0u;
  LODWORD(v19) = 1065353216;
  quasar::SystemConfig::SystemConfig(v5);
}

void sub_1B56782B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::NgramSrilmCountConfig::~NgramSrilmCountConfig(void **this)
{
  *this = &unk_1F2D24600;
  v2 = this + 21;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D24600;
  v2 = this + 21;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
  MEMORY[0x1B8C85350]();
}

void quasar::NgramSrilmInterpolationConfig::~NgramSrilmInterpolationConfig(void **this)
{
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::NgramSrilmAdaptationConfig::~NgramSrilmAdaptationConfig(void **this)
{
  *this = &unk_1F2D24650;
  v2 = this + 21;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D24650;
  v2 = this + 21;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F2D245D8;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
  MEMORY[0x1B8C85350]();
}

void quasar::NgramLmModel2::~NgramLmModel2(quasar::NgramLmModel2 *this)
{
}

{

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toquasar::NgramLmModel2::~NgramLmModel2(quasar::NgramLmModel2 *this)
{
}

{

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::NgramLmModel2::~NgramLmModel2(quasar::NgramLmModel2 *this)
{
}

{

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::srilm::Interpolate::~Interpolate(quasar::lm::srilm::Interpolate *this)
{
  *this = &unk_1F2D26C98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_1F2D26C98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_1F2D26C98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x1B8C85350](this, 0xA1C40D2948F72);
}

void quasar::lm::SymbolTableData::~SymbolTableData(quasar::lm::SymbolTableData *this)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 144);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 104);
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void quasar::NgramLmModel2::~NgramLmModel2(quasar::NgramLmModel2 *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 82) = a2[6];
  std::unique_ptr<srilm::NgramCountContext>::reset[abi:ne200100](this + 130, 0);
  v5 = *(this + 129);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 1015) < 0)
  {
    operator delete(*(this + 124));
  }

  if (*(this + 991) < 0)
  {
    operator delete(*(this + 121));
  }

  v8 = (this + 944);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 943) < 0)
  {
    operator delete(*(this + 115));
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

uint64_t std::istream_iterator<unsigned char,char,std::char_traits<char>,long>::istream_iterator[abi:ne200100](uint64_t a1, void *a2)
{
  *a1 = a2;
  v3 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a2, (a1 + 8));
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

void *std::operator>>[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2)
{
  MEMORY[0x1B8C84A90](&v8, a1, 0);
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    v5 = v4[3];
    if (v5 == v4[4])
    {
      LODWORD(v4) = (*(*v4 + 80))(v4);
      if (v4 == -1)
      {
        v6 = 6;
        goto LABEL_6;
      }
    }

    else
    {
      v4[3] = v5 + 1;
      LOBYTE(v4) = *v5;
    }

    v6 = 0;
    *a2 = v4;
LABEL_6:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v6);
  }

  return a1;
}

void sub_1B5678FC8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B5678F88);
  }

  __cxa_rethrow();
}

double std::__copy_impl::operator()[abi:ne200100]<std::istream_iterator<unsigned char,char,std::char_traits<char>,long>,std::istream_iterator<unsigned char,char,std::char_traits<char>,long>,std::ostream_iterator<unsigned char,char,std::char_traits<char>>>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, _OWORD *a6@<X8>)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *&v10 = a4;
  *(&v10 + 1) = a5;
  if (a1 != a3)
  {
    do
    {
      std::ostream_iterator<unsigned char,char,std::char_traits<char>>::operator=[abi:ne200100](&v10, &v11 + 8);
      std::istream_iterator<unsigned char,char,std::char_traits<char>,long>::operator++[abi:ne200100](&v11);
    }

    while (v11 != a3);
  }

  v9 = v10;
  result = *&v11;
  *a6 = v11;
  a6[1] = v9;
  return result;
}

uint64_t std::ostream_iterator<unsigned char,char,std::char_traits<char>>::operator=[abi:ne200100](uint64_t a1, char *a2)
{
  v3 = *a1;
  v7 = *a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v7, 1);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = strlen(*(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v4, v5);
  }

  return a1;
}

uint64_t std::istream_iterator<unsigned char,char,std::char_traits<char>,long>::operator++[abi:ne200100](uint64_t a1)
{
  v2 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(*a1, (a1 + 8));
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_0,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_0>,quasar::lm::TokenStringAndCount * ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D24910;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_0,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_0>,quasar::lm::TokenStringAndCount * ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

quasar::lm::TokenStringAndCount *quasar::lm::TokenStringAndCount::TokenStringAndCount(quasar::lm::TokenStringAndCount *this, const quasar::lm::TokenStringAndCount *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 104, *(a2 + 13), *(a2 + 14), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 14) - *(a2 + 13)) >> 3));
  return this;
}

void sub_1B56793F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 88) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v3 + 64) = v8;
    operator delete(v8);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_1,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_1>,BOOL ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D249A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_1,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_1>,BOOL ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_2,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_2>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D24A30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_2,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *quasar::lm::Generator<quasar::lm::TokenStringAndCount>::Generator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F2D24AC0;
  v7 = (a1 + 5);
  std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::__value_func[abi:ne200100]((a1 + 1), a2);
  std::__function::__value_func<BOOL ()(long long)>::__value_func[abi:ne200100](v7, a3);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 9), a4);
  a1[13] = 0;
  a1[14] = 0;
  return a1;
}

void sub_1B5679840(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

void *quasar::lm::Generator<quasar::lm::TokenStringAndCount>::~Generator(void *a1)
{
  *a1 = &unk_1F2D24AC0;
  v2 = (a1 + 1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100]((a1 + 5));
  std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::~__value_func[abi:ne200100](v2);
  return a1;
}

void quasar::lm::Generator<quasar::lm::TokenStringAndCount>::~Generator(void *a1)
{
  *a1 = &unk_1F2D24AC0;
  v2 = (a1 + 1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 9));
  std::__function::__value_func<BOOL ()(long long)>::~__value_func[abi:ne200100]((a1 + 5));
  std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::~__value_func[abi:ne200100](v2);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::lm::Generator<quasar::lm::TokenStringAndCount>::next(uint64_t a1)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = v2 + 1;
  *(a1 + 112) = std::function<quasar::lm::TokenStringAndCount * ()(long long)>::operator()(a1 + 8, v2);
  return a1 + 112;
}

uint64_t quasar::lm::Generator<quasar::lm::TokenStringAndCount>::has_next(uint64_t a1)
{
  FstCheck(*(a1 + 104) >= 0, "(current_idx_) >= (0)", "../libquasar/liblm/include/lm/streams_liblm.h", 41);
  v2 = *(a1 + 104);

  return std::function<BOOL ()(long long)>::operator()(a1 + 40, v2);
}

uint64_t quasar::lm::Generator<quasar::lm::TokenStringAndCount>::reset(void *a1)
{
  v2 = a1[12];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2);
  a1[13] = 0;
  a1[14] = 0;
  return result;
}

uint64_t std::__function::__value_func<quasar::lm::TokenStringAndCount * ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<quasar::lm::TokenStringAndCount * ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::function<BOOL ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_3,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_3>,quasar::lm::TokenStringAndCount * ()(long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D24B10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_3,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_3>,quasar::lm::TokenStringAndCount * ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_4,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_4>,BOOL ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D24B90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_4,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_4>,BOOL ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_5,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_5>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D24C10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_5,std::allocator<quasar::_populateNgramCountContext(std::unique_ptr<srilm::NgramCountContext> &,std::string const&,std::string const&,quasar::LmData &,BOOL)::$_5>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24C90;
  fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::ConstFst();
}

void std::__shared_ptr_emplace<fst::ConstFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ConstFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,unsigned int>::ConstFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D211D8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "const");
  std::string::operator=((a1 + 16), &__str);
  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 112) = (*(*a2 + 24))(a2);
  v16 = 0;
  (*(*a2 + 128))(a2, &v14);
  while (v14)
  {
    v6 = (*(*v14 + 16))(v14);
    v7 = v14;
    if (v6)
    {
      if (v14)
      {
        (*(*v14 + 8))();
      }

LABEL_26:
      fst::MappedFile::Allocate((20 * *(a1 + 96)), 16);
    }

    ++*(a1 + 96);
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = (*(*v7 + 24))(v7);
LABEL_9:
    v13 = 0;
    (*(*a2 + 136))(a2, v8, v11);
    while (1)
    {
      while (!v11[0])
      {
        if (v13 >= v11[2])
        {
          goto LABEL_19;
        }

        ++*(a1 + 104);
LABEL_16:
        ++v13;
      }

      v9 = (*(*v11[0] + 24))(v11[0]);
      v10 = v11[0];
      if (v9)
      {
        break;
      }

      ++*(a1 + 104);
      if (!v10)
      {
        goto LABEL_16;
      }

      (*(*v10 + 40))(v10);
    }

    if (v11[0])
    {
      (*(*v11[0] + 8))();
    }

    else
    {
LABEL_19:
      if (v12)
      {
        --*v12;
      }
    }

    if (v14)
    {
      (*(*v14 + 32))(v14);
    }

    else
    {
      ++v16;
    }
  }

  if (v16 >= v15)
  {
    goto LABEL_26;
  }

  ++*(a1 + 96);
LABEL_8:
  v8 = v16;
  goto LABEL_9;
}

void sub_1B567A8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v23);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24CE0;
  fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NGramFst();
}

void std::__shared_ptr_emplace<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D24CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFst(void *a1)
{
  *a1 = &unk_1F2D24D30;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);
}

{
  *a1 = &unk_1F2D24D30;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);
}

void fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFst(void *a1)
{
  *a1 = &unk_1F2D24D30;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NumArcs(uint64_t a1, int a2)
{
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(*(a1 + 8), a2, a1 + 16);
  if (a2)
  {
    return *(a1 + 24) + 1;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 104);
  return result;
}

void fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::InitArcIterator(uint64_t a1, int a2)
{
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(*(a1 + 8), a2, a1 + 16);
  v3 = *(a1 + 16);
  if (*(a1 + 48) != v3)
  {
    v4 = *(a1 + 8);
    *(a1 + 48) = v3;
    *(a1 + 40) = fst::BitmapIndex::Select1((v4 + 216), v3);
  }

  operator new();
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NGramFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 68) = _D0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D24E30;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__str, "ngram");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v9 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v9);
  v10 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v10);
  *(a1 + 8) = *(a1 + 8) & 4 | 0x25A555550001;
  if ((*(*a2 + 64))(a2, 0x10011050000, 1) == 0x10011050000)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
    operator new[]();
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
  }

  v11 = fst::LogMessage::LogMessage(__p, &__str);
  v12 = fst::cerr(v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "NGramFst only accepts OpenGRM langauge models as input", 54);
  fst::LogMessage::~LogMessage(__p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) |= 4uLL;
  return a1;
}

void sub_1B567C53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48)
{
  fst::LogMessage::~LogMessage((v48 - 216));
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a42);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v48 - 200));
  v50 = *(v48 - 184);
  if (v50)
  {
    operator delete(v50);
  }

  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100]((v48 - 160));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((a13 + 344));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((a13 + 280));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer(a9);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a13);
  _Unwind_Resume(a1);
}

void fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v25 = 0;
  (*(*a1 + 128))(a1, &v23);
  v10 = 0;
  while (1)
  {
    if (!v23)
    {
      if (v25 >= v24)
      {
        goto LABEL_37;
      }

LABEL_7:
      v11 = v25;
      goto LABEL_8;
    }

    if ((*(*v23 + 16))(v23))
    {
      break;
    }

    if (!v23)
    {
      goto LABEL_7;
    }

    v11 = (*(*v23 + 24))();
LABEL_8:
    if (v11 == -1)
    {
      goto LABEL_32;
    }

    v22 = 0;
    (*(*a1 + 136))(a1, v11, &__p);
    while (1)
    {
      if (!__p)
      {
        if (v22 >= v20)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (*(v19 + 16 * v22) > v10)
        {
          v10 = *(v19 + 16 * v22);
        }

        goto LABEL_25;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      if (!__p)
      {
        goto LABEL_23;
      }

      (*(*__p + 32))();
      if (!__p)
      {
        goto LABEL_23;
      }

      (*(*__p + 32))(__p);
      if (!__p)
      {
        goto LABEL_23;
      }

      v12 = *(*(*__p + 32))(__p);
      if (v12 > v10)
      {
        v10 = v12;
      }

      if (__p)
      {
        v13 = *((*(*__p + 32))() + 4);
        if (v13 > v10)
        {
          v10 = v13;
        }

        if (!__p)
        {
          goto LABEL_27;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_25:
        if (*(v19 + 16 * v22 + 4) > v10)
        {
          v10 = *(v19 + 16 * v22 + 4);
        }

LABEL_27:
        ++v22;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_32;
    }

LABEL_30:
    if (v21)
    {
      --*v21;
    }

LABEL_32:
    if (v23)
    {
      (*(*v23 + 32))(v23);
    }

    else
    {
      ++v25;
    }
  }

  if (v23)
  {
    (*(*v23 + 8))();
  }

LABEL_37:
  v14 = __clz(v10);
  *a3 = v14;
  if (v10 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v15 = fst::LogMessage::LogMessage(&v23, &__p);
    v16 = fst::cerr(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v17, *a3);
    fst::LogMessage::~LogMessage(&v23);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    v14 = *a3;
  }

  *a4 = 1065353216;
  *a5 = 1065353216;
  *a2 = 2 * ~(-1 << (v14 - 1));
}

void sub_1B567CC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Init(uint64_t a1, const unint64_t *a2, char a3, uint64_t a4)
{
  if (*(a1 + 96) == 1)
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      MEMORY[0x1B8C85310](v8, 0x1000C8077774924);
    }
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 96) = a3;
  *(a1 + 80) = a4;
  *(a1 + 88) = a2;
  v10 = *a2;
  *(a1 + 104) = *a2;
  v11 = a2[1];
  *(a1 + 112) = v11;
  *(a1 + 120) = a2[2];
  v12 = (2 * v10) | 1;
  v13 = v11 + v10;
  v14 = 2 * v10 + 64;
  *(a1 + 144) = a2 + 3;
  *(a1 + 152) = &a2[(v14 >> 6) + 3];
  v15 = ((v11 + v10 + 64) >> 6) + (v14 >> 6);
  *(a1 + 160) = &a2[v15 + 3];
  v16 = &a2[v15 + 3 + ((v10 + 63) >> 6)];
  v17 = 4 * v10 + 4;
  *(a1 + 176) = v16;
  *(a1 + 184) = v16 + v17;
  v18 = v16 + v17 + 4 * v11;
  v19 = v18 + v17;
  *(a1 + 192) = v18;
  *(a1 + 200) = v19;
  *(a1 + 208) = v19 + 4 * v11;
  fst::BitmapIndex::BuildIndex((a1 + 216), a2 + 3, v12);
  fst::BitmapIndex::BuildIndex((a1 + 280), *(a1 + 152), v13 + 1);
  fst::BitmapIndex::BuildIndex((a1 + 344), *(a1 + 160), *(a1 + 104));
  *(a1 + 128) = fst::BitmapIndex::Select0s((a1 + 216), 0);
  *(a1 + 136) = v20;
  if (!fst::BitmapIndex::Rank1((a1 + 216), 0) && *(a1 + 128) == 1 && (**(a1 + 216) & 4) != 0)
  {
    v23 = *(a1 + 176);
    *(a1 + 168) = v23 + 4 * fst::BitmapIndex::Rank1((a1 + 216), 2uLL);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v21 = fst::LogMessage::LogMessage(&v26, __p);
    v22 = fst::cerr(v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Malformed file", 14);
    fst::LogMessage::~LogMessage(&v26);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
  }
}

void sub_1B567CF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFstImpl(uint64_t a1)
{
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::deque<std::pair<int,int>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<std::pair<int,int>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<std::pair<int,int>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B567D204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D24E30;
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
    }
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 360);
  if (v5)
  {
    *(a1 + 368) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    *(a1 + 328) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    *(a1 + 304) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    *(a1 + 264) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    *(a1 + 240) = v9;
    operator delete(v9);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

uint64_t fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = fst::BitmapIndex::Select0s((v2 + 35), a2);
  }

  else
  {
    v3 = v2[16];
    v4 = v2[17];
  }

  return v4 + ~v3;
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(uint64_t result, int a2, uint64_t a3)
{
  if (*a3 != a2)
  {
    v4 = result;
    *a3 = a2;
    v5 = fst::BitmapIndex::Select0s((result + 280), a2);
    *(a3 + 8) = v6 + ~v5;
    result = fst::BitmapIndex::Rank1((v4 + 280), v5 + 1);
    *(a3 + 16) = result;
  }

  return result;
}

void *fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D24EB0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

float fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Final(uint64_t a1, int a2)
{
  if (((*(*(a1 + 344) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    return INFINITY;
  }

  v2 = *(a1 + 208);
  return *(v2 + 4 * fst::BitmapIndex::Rank1((a1 + 344), a2));
}

BOOL fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Write(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = 0u;
  v16 = 0u;
  *v15 = 0u;
  *v14 = 0u;
  v5 = *(a1 + 104);
  v18 = 1;
  v19 = v5;
  v20 = 0;
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteHeader(a1, a2, a3, 4, v13);
  if (a3[27] == 1 && !fst::AlignOutput(a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v7 = fst::LogMessage::LogMessage(&v12, __p);
    v8 = fst::cerr(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Could not align file during write after header", 46);
    fst::LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = 0;
  }

  else
  {
    std::ostream::write();
    v6 = (*(a2 + *(*a2 - 24) + 32) & 5) == 0;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(v14[0]);
  }

  return v6;
}

void sub_1B567D634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, uint64_t a5)
{
  if (a3[24] == 1)
  {
    std::string::operator=((a5 + 8), (a1 + 16));
    v10 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
    std::string::operator=((a5 + 32), v10);
    *(a5 + 56) = a4;
    *(a5 + 64) = *(a1 + 8);
    v11 = a3[25];
    if (!*(a1 + 40))
    {
      v11 = 0;
    }

    if (a3[26])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (*(a1 + 48))
    {
      v11 = v12;
    }

    if (a3[27])
    {
      v11 |= 4u;
    }

    *(a5 + 60) = v11;
    fst::FstHeader::Write();
  }

  v13 = *(a1 + 40);
  if (v13 && a3[25] == 1)
  {
    (*(*v13 + 72))(v13, a2);
  }

  result = *(a1 + 48);
  if (result && a3[26] == 1)
  {
    v15 = *(*result + 72);

    return v15();
  }

  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::ArcIterator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D24F68;
  *(a1 + 24) = -1;
  v6 = *(a2 + 8);
  *(a1 + 32) = v6;
  *(a1 + 40) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 15;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  *(a1 + 72) = *(a2 + 48);
  *(a1 + 56) = v8;
  *(a1 + 40) = v7;
  if (a1 + 40 != a2 + 16)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 80), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    v6 = *(a1 + 32);
  }

  *(a1 + 104) = *(a2 + 80);
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(v6, a3, a1 + 40);
  v9 = *(a1 + 40);
  if (*(a1 + 72) != v9)
  {
    v10 = *(a1 + 32);
    *(a1 + 72) = v9;
    *(a1 + 64) = fst::BitmapIndex::Select1((v10 + 216), v9);
  }

  return a1;
}

void sub_1B567D8D0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D24F68;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D24F68;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

BOOL fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::Done_(void *a1)
{
  v1 = a1[6];
  if (a1[8])
  {
    ++v1;
  }

  return a1[14] >= v1;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::Next_(uint64_t result)
{
  ++*(result + 112);
  *(result + 24) = -1;
  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::Reset_(uint64_t result)
{
  *(result + 112) = 0;
  *(result + 24) = -1;
  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::Seek_(uint64_t result, uint64_t a2)
{
  if (*(result + 112) != a2)
  {
    *(result + 112) = a2;
    *(result + 24) = -1;
  }

  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>>::Value(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 112);
  if (v2)
  {
    v4 = v3 == 0;
    LODWORD(v5) = v3 - 1;
    v6 = *(a1 + 120);
    v7 = *(a1 + 24);
    if ((v6 & v7 & 3) == 0)
    {
      goto LABEL_9;
    }

    if (!v3)
    {
      v8 = 0;
      LODWORD(v3) = -1;
      v4 = 1;
      goto LABEL_8;
    }

    LODWORD(v3) = v3 - 1;
  }

  else
  {
    v6 = *(a1 + 120);
    v7 = *(a1 + 24);
    if ((v6 & v7 & 3) == 0)
    {
      if ((v6 & v7 & 8) == 0)
      {
        if ((v6 & v7 & 4) == 0)
        {
          return a1 + 8;
        }

        goto LABEL_22;
      }

      v5 = *(a1 + 112);
LABEL_14:
      if ((v7 & 8) != 0)
      {
        fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstContext(*(a1 + 32), (a1 + 40));
      }

      v12 = fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Transition(*(a1 + 32), (a1 + 80), *(*(*(a1 + 32) + 184) + 4 * *(a1 + 56) + 4 * v5));
      v4 = 0;
      goto LABEL_17;
    }
  }

  v4 = 0;
  v8 = *(*(*(a1 + 32) + 184) + 4 * *(a1 + 56) + 4 * v3);
LABEL_8:
  *(a1 + 8) = v8;
  *(a1 + 12) = v8;
  v7 &= 0xFFFFFFFC;
  *(a1 + 24) = v7;
  LODWORD(v5) = v3;
LABEL_9:
  if ((v6 & v7 & 8) == 0)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 32);
  v10 = fst::BitmapIndex::Rank1((v9 + 216), v2);
  v11 = fst::BitmapIndex::Select1((v9 + 216), v2 + ~v10);
  v12 = fst::BitmapIndex::Rank1((v9 + 216), v11);
  v4 = 1;
LABEL_17:
  v7 = *(a1 + 24) & 0xFFFFFFF7;
  *(a1 + 20) = v12;
  *(a1 + 24) = v7;
  v6 = *(a1 + 120);
LABEL_18:
  if ((v6 & v7 & 4) != 0)
  {
    if (v4)
    {
      v13 = (*(*(a1 + 32) + 192) + 4 * *(a1 + 40));
LABEL_23:
      *(a1 + 16) = *v13;
      *(a1 + 24) = v7 & 0xFFFFFFFB;
      return a1 + 8;
    }

    LODWORD(v3) = v5;
LABEL_22:
    v13 = (*(*(a1 + 32) + 200) + 4 * *(a1 + 56) + 4 * v3);
    goto LABEL_23;
  }

  return a1 + 8;
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstContext(uint64_t result, int *a2)
{
  v3 = result;
  v4 = a2[8];
  v5 = *a2;
  if (v4 != *a2)
  {
    a2[8] = v5;
    result = fst::BitmapIndex::Select1((result + 216), v5);
    *(a2 + 3) = result;
    v4 = *a2;
  }

  if (a2[16] != v4)
  {
    v7 = *(a2 + 5);
    v6 = a2 + 10;
    v6[6] = v4;
    *(v6 + 1) = v7;
    v8 = *(v6 - 2);
    if (v8)
    {
      do
      {
        v9 = *(v3 + 176);
        v11 = *(v9 + 4 * fst::BitmapIndex::Rank1((v3 + 216), v8));
        std::vector<int>::push_back[abi:ne200100](v6, &v11);
        v10 = fst::BitmapIndex::Rank1((v3 + 216), v8);
        result = fst::BitmapIndex::Select1((v3 + 216), v8 + ~v10);
        v8 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Transition(void *a1, void *a2, int a3)
{
  v5 = a1[21];
  if (4 * a1[17] == 8)
  {
    v7 = a1[21];
  }

  else
  {
    v6 = (4 * a1[17] - 8) >> 2;
    v7 = a1[21];
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[v6 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v6 += ~(v6 >> 1);
      if (v11 < a3)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  if (v7 == (v5 + 4 * a1[17] - 8) || *v7 != a3)
  {
    v17 = (a1 + 27);
    v18 = 0;
  }

  else
  {
    v12 = (v7 - v5 + 8) >> 2;
    v13 = fst::BitmapIndex::Rank1((a1 + 27), v12);
    if (v13)
    {
      v14 = fst::BitmapIndex::Select0s((a1 + 27), v13);
      v16 = v15;
    }

    else
    {
      v14 = a1[16];
      v16 = a1[17];
    }

    v19 = v14 + 1;
    if ((*(a1[27] + (((v14 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v14 + 1)))
    {
      v20 = ((a2[1] - *a2) >> 2) - 1;
      if (v20 >= 0)
      {
        do
        {
          v21 = a1[22];
          v22 = fst::BitmapIndex::Rank1((a1 + 27), v19);
          v23 = v21 + 4 * v22;
          v24 = *(*a2 + 4 * v20);
          if (4 * v16 == 4 * v19)
          {
            v26 = (v21 + 4 * v22);
          }

          else
          {
            v25 = (4 * v16 - 4 * v19) >> 2;
            v26 = (v21 + 4 * v22);
            do
            {
              v27 = v25 >> 1;
              v28 = &v26[v25 >> 1];
              v30 = *v28;
              v29 = v28 + 1;
              v25 += ~(v25 >> 1);
              if (v30 < v24)
              {
                v26 = v29;
              }

              else
              {
                v25 = v27;
              }
            }

            while (v25);
          }

          if (v26 == (v23 + 4 * v16 - 4 * v19) || *v26 != v24)
          {
            break;
          }

          v12 = (&v26[v19] - v23) >> 2;
          v31 = fst::BitmapIndex::Rank1((a1 + 27), v12);
          if (v31)
          {
            v32 = fst::BitmapIndex::Select0s((a1 + 27), v31);
            v16 = v33;
          }

          else
          {
            v32 = a1[16];
            v16 = a1[17];
          }

          v19 = v32 + 1;
          if (((*(a1[27] + (((v32 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v32 + 1)) & 1) == 0)
          {
            break;
          }
        }

        while (v20-- > 0);
      }
    }

    v17 = (a1 + 27);
    v18 = v12;
  }

  return fst::BitmapIndex::Rank1(v17, v18);
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NGramFstMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D24FE8;
  *(a1 + 8) = a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 56) = 0;
  v9 = a1 + 56;
  *(a1 + 48) = v8;
  *(a1 + 32) = v7;
  *(a1 + 16) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(v9 + 24) = *(a2 + 80);
  *(v9 + 32) = a3;
  *(v9 + 56) = 0;
  *(v9 + 60) = xmmword_1B5AE3080;
  if (a3 == 1)
  {
    *(a1 + 116) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void *fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFstMatcher(void *a1)
{
  *a1 = &unk_1F2D24FE8;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::~NGramFstMatcher(void *a1)
{
  *a1 = &unk_1F2D24FE8;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetState_(uint64_t a1, int a2)
{
  result = fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(*(*(a1 + 8) + 8), a2, a1 + 16);
  *(a1 + 112) = 0;
  return result;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Find_(uint64_t a1, int a2)
{
  *(a1 + 92) = 1;
  if ((a2 + 1) > 1)
  {
    *(a1 + 112) = 0;
    v5 = *(a1 + 8);
    v6 = *(v5 + 8);
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = *(v6 + 184) + 4 * v7;
    v10 = (v9 + 4 * v8);
    if (v8)
    {
      v11 = (*(v6 + 184) + 4 * v7);
      do
      {
        v12 = v8 >> 1;
        v13 = &v11[v8 >> 1];
        v15 = *v13;
        v14 = v13 + 1;
        v8 += ~(v8 >> 1);
        if (v15 < a2)
        {
          v11 = v14;
        }

        else
        {
          v8 = v12;
        }
      }

      while (v8);
    }

    else
    {
      v11 = (*(v6 + 184) + 4 * v7);
    }

    if (v11 != v10 && *v11 == a2)
    {
      *(a1 + 96) = a2;
      *(a1 + 100) = a2;
      *(a1 + 104) = *(&v11[v7] + *(v6 + 200) - v9);
      fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstContext(*(v5 + 8), (a1 + 16));
      *(a1 + 108) = fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Transition(*(*(a1 + 8) + 8), (a1 + 56), a2);
LABEL_21:
      *(a1 + 92) = 0;
    }
  }

  else
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        return (*(*a1 + 72))(a1) ^ 1;
      }

      goto LABEL_13;
    }

    *(a1 + 112) = 1;
    v4 = *(a1 + 16);
    *(a1 + 128) = v4;
    if (v4)
    {
LABEL_13:
      *(a1 + 96) = 0;
      if (*(a1 + 48) == v4)
      {
        v16 = *(a1 + 40);
      }

      else
      {
        v17 = *(*(a1 + 8) + 8);
        *(a1 + 48) = v4;
        v16 = fst::BitmapIndex::Select1((v17 + 216), v4);
        *(a1 + 40) = v16;
      }

      v18 = *(*(a1 + 8) + 8);
      v19 = fst::BitmapIndex::Rank1((v18 + 216), v16);
      v20 = fst::BitmapIndex::Select1((v18 + 216), v16 + ~v19);
      *(a1 + 108) = fst::BitmapIndex::Rank1((v18 + 216), v20);
      *(a1 + 104) = *(*(*(*(a1 + 8) + 8) + 192) + 4 * *(a1 + 16));
      goto LABEL_21;
    }
  }

  return (*(*a1 + 72))(a1) ^ 1;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Done_(uint64_t a1)
{
  if (*(a1 + 112))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 92);
  }

  return v1 & 1;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Value_(uint64_t a1)
{
  v1 = 96;
  if (*(a1 + 112))
  {
    v1 = 116;
  }

  return a1 + v1;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::Next_(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    *(result + 112) = 0;
  }

  else
  {
    *(result + 92) = 1;
  }

  return result;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::NGramFstMatcher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2D24FE8;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 48);
  *(a1 + 56) = 0;
  v7 = a1 + 56;
  *(a1 + 48) = v4;
  *(a1 + 32) = v6;
  *(a1 + 16) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(v7 + 24) = *(a2 + 80);
  v8 = *(a2 + 88);
  *(v7 + 32) = v8;
  *(v7 + 56) = 0;
  *(v7 + 60) = xmmword_1B5AE3080;
  if (v8 == 1)
  {
    *(a1 + 116) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void std::__shared_ptr_emplace<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D25080;
  fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NGramFst();
}

void std::__shared_ptr_emplace<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D25080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFst(void *a1)
{
  *a1 = &unk_1F2D250D0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);
}

{
  *a1 = &unk_1F2D250D0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);
}

void fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFst(void *a1)
{
  *a1 = &unk_1F2D250D0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NumArcs(uint64_t a1, int a2)
{
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(*(a1 + 8), a2, a1 + 16);
  if (a2)
  {
    return *(a1 + 24) + 1;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 104);
  return result;
}

void fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::InitArcIterator(uint64_t a1, int a2)
{
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(*(a1 + 8), a2, a1 + 16);
  v3 = *(a1 + 16);
  if (*(a1 + 48) != v3)
  {
    v4 = *(a1 + 8);
    *(a1 + 48) = v3;
    *(a1 + 40) = fst::BitmapIndex::Select1((v4 + 216), v3);
  }

  operator new();
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NGramFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 68) = _D0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D251D0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::TypeString(&__str);
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v9 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v9);
  v10 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v10);
  *(a1 + 8) = *(a1 + 8) & 4 | 0x25A555550001;
  if ((*(*a2 + 64))(a2, 0x10011050000, 1) == 0x10011050000)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
    operator new[]();
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
  }

  v11 = fst::LogMessage::LogMessage(__p, &__str);
  v12 = fst::cerr(v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "NGramFst only accepts OpenGRM langauge models as input", 54);
  fst::LogMessage::~LogMessage(__p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) |= 4uLL;
  return a1;
}

void sub_1B567FF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46)
{
  fst::LogMessage::~LogMessage((v46 - 216));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a40);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v46 - 200));
  v48 = *(v46 - 184);
  if (v48)
  {
    operator delete(v48);
  }

  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100]((v46 - 160));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((a30 + 344));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((a30 + 280));
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer(a10);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a30);
  _Unwind_Resume(a1);
}

void sub_1B56802F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, _DWORD *a2, unsigned int *a3, float *a4, float *a5)
{
  v35 = 0;
  (*(*a1 + 128))(a1, &v33);
  v10 = 0;
  v11 = -INFINITY;
  v12 = INFINITY;
  while (1)
  {
    if (!v33)
    {
      if (v35 >= v34)
      {
        goto LABEL_45;
      }

LABEL_7:
      v13 = v35;
      goto LABEL_8;
    }

    if ((*(*v33 + 16))(v33))
    {
      break;
    }

    if (!v33)
    {
      goto LABEL_7;
    }

    v13 = (*(*v33 + 24))();
LABEL_8:
    if (v13 == -1)
    {
      goto LABEL_40;
    }

    v32 = 0;
    (*(*a1 + 136))(a1, v13, &__p);
    while (1)
    {
      if (!__p)
      {
        if (v32 >= v30)
        {
          goto LABEL_38;
        }

LABEL_27:
        if (*(v29 + 16 * v32 + 8) >= v11)
        {
          v11 = *(v29 + 16 * v32 + 8);
        }

LABEL_29:
        if (v12 >= *(v29 + 16 * v32 + 8))
        {
          v12 = *(v29 + 16 * v32 + 8);
        }

LABEL_31:
        if (*(v29 + 16 * v32) > v10)
        {
          v10 = *(v29 + 16 * v32);
        }

        goto LABEL_33;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      if (!__p)
      {
        goto LABEL_27;
      }

      v14 = (*(*__p + 32))();
      if (*(v14 + 8) >= v11)
      {
        v11 = *(v14 + 8);
      }

      if (!__p)
      {
        goto LABEL_29;
      }

      v15 = (*(*__p + 32))();
      if (v12 >= *(v15 + 8))
      {
        v12 = *(v15 + 8);
      }

      if (!__p)
      {
        goto LABEL_31;
      }

      v16 = *(*(*__p + 32))();
      if (v16 > v10)
      {
        v10 = v16;
      }

      if (__p)
      {
        v17 = *((*(*__p + 32))() + 4);
        if (v17 > v10)
        {
          v10 = v17;
        }

        if (!__p)
        {
          goto LABEL_35;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_33:
        if (*(v29 + 16 * v32 + 4) > v10)
        {
          v10 = *(v29 + 16 * v32 + 4);
        }

LABEL_35:
        ++v32;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (v31)
    {
      --*v31;
    }

LABEL_40:
    if (v33)
    {
      (*(*v33 + 32))(v33);
    }

    else
    {
      ++v35;
    }
  }

  if (v33)
  {
    (*(*v33 + 8))();
  }

LABEL_45:
  v18 = __clz(v10);
  *a3 = v18;
  if (v10 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v19 = fst::LogMessage::LogMessage(&v33, &__p);
    v20 = fst::cerr(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v21, *a3);
    fst::LogMessage::~LogMessage(&v33);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    v18 = *a3;
  }

  v22 = v18 - 1;
  v23 = fabsf(v11);
  v24 = fabsf(v12);
  if (v23 < v24)
  {
    v23 = v24;
  }

  if (v23 <= 0.0)
  {
    v25 = (1 << v22) + -1.0;
  }

  else
  {
    v25 = v23;
  }

  v26 = ((1 << v22) + -1.0) / v25;
  *a4 = v26;
  result = 1.0 / v26;
  *a5 = result;
  *a2 = (2 << v22) - 2;
  return result;
}

void sub_1B5680794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Init(uint64_t a1, const unint64_t *a2, char a3, uint64_t a4)
{
  if (*(a1 + 96) == 1)
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      MEMORY[0x1B8C85310](v8, 0x1000C8077774924);
    }
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 96) = a3;
  *(a1 + 80) = a4;
  *(a1 + 88) = a2;
  v10 = *a2;
  *(a1 + 104) = *a2;
  v11 = a2[1];
  *(a1 + 112) = v11;
  *(a1 + 120) = a2[2];
  v12 = (2 * v10) | 1;
  v13 = v11 + v10;
  v14 = 2 * v10 + 64;
  *(a1 + 144) = a2 + 3;
  *(a1 + 152) = &a2[(v14 >> 6) + 3];
  v15 = ((v11 + v10 + 64) >> 6) + (v14 >> 6);
  *(a1 + 160) = &a2[v15 + 3];
  v16 = &a2[v15 + 3 + ((v10 + 63) >> 6)];
  v17 = v16 + 4 * v10 + 4;
  *(a1 + 176) = v16;
  *(a1 + 184) = v17;
  *(a1 + 192) = v16;
  *(a1 + 200) = v17;
  *(a1 + 208) = v17 + 4 * v11;
  fst::BitmapIndex::BuildIndex((a1 + 216), a2 + 3, v12);
  fst::BitmapIndex::BuildIndex((a1 + 280), *(a1 + 152), v13 + 1);
  fst::BitmapIndex::BuildIndex((a1 + 344), *(a1 + 160), *(a1 + 104));
  *(a1 + 128) = fst::BitmapIndex::Select0s((a1 + 216), 0);
  *(a1 + 136) = v18;
  if (!fst::BitmapIndex::Rank1((a1 + 216), 0) && *(a1 + 128) == 1 && (**(a1 + 216) & 4) != 0)
  {
    v21 = *(a1 + 176);
    *(a1 + 168) = v21 + 4 * fst::BitmapIndex::Rank1((a1 + 216), 2uLL);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v19 = fst::LogMessage::LogMessage(&v24, __p);
    v20 = fst::cerr(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Malformed file", 14);
    fst::LogMessage::~LogMessage(&v24);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
  }
}

void sub_1B5680A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFstImpl(uint64_t a1)
{
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D251D0;
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
    }
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 360);
  if (v5)
  {
    *(a1 + 368) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    *(a1 + 328) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    *(a1 + 304) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    *(a1 + 264) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    *(a1 + 240) = v9;
    operator delete(v9);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

uint64_t fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = fst::BitmapIndex::Select0s((v2 + 35), a2);
  }

  else
  {
    v3 = v2[16];
    v4 = v2[17];
  }

  return v4 + ~v3;
}

void *fst::ImplToFst<fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D25250;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

BOOL fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Write(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = 0u;
  v17 = 0u;
  *v16 = 0u;
  *v15 = 0u;
  v6 = *(a1 + 104);
  v19 = 1;
  v20 = v6;
  v21 = 0;
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteHeader(a1, a2, a3, 4, v14);
  if (a3[27] == 1 && !fst::AlignOutput(a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v8 = fst::LogMessage::LogMessage(&v13, __p);
    v9 = fst::cerr(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Could not align file during write after header", 46);
    fst::LogMessage::~LogMessage(&v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = 0;
  }

  else
  {
    LODWORD(__p[0]) = *(a1 + 68);
    std::ostream::write();
    LODWORD(__p[0]) = *(a1 + 72);
    std::ostream::write();
    LODWORD(__p[0]) = *(a1 + 60);
    std::ostream::write();
    LODWORD(__p[0]) = *(a1 + 64);
    std::ostream::write();
    std::ostream::write();
    v7 = (*(a2 + *(*a2 - 24) + 32) & 5) == 0;
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }

  if (SHIBYTE(v16[0]) < 0)
  {
    operator delete(v15[0]);
  }

  return v7;
}

void sub_1B5680E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a19);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::ArcIterator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D25308;
  *(a1 + 24) = -1;
  v6 = *(a2 + 8);
  *(a1 + 32) = v6;
  *(a1 + 40) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 15;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  *(a1 + 72) = *(a2 + 48);
  *(a1 + 56) = v8;
  *(a1 + 40) = v7;
  if (a1 + 40 != a2 + 16)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 80), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    v6 = *(a1 + 32);
  }

  *(a1 + 104) = *(a2 + 80);
  fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(v6, a3, a1 + 40);
  v9 = *(a1 + 40);
  if (*(a1 + 72) != v9)
  {
    v10 = *(a1 + 32);
    *(a1 + 72) = v9;
    *(a1 + 64) = fst::BitmapIndex::Select1((v10 + 216), v9);
  }

  return a1;
}

void sub_1B5680FA4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D25308;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D25308;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

BOOL fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::Done_(void *a1)
{
  v1 = a1[6];
  if (a1[8])
  {
    ++v1;
  }

  return a1[14] >= v1;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::Next_(uint64_t result)
{
  ++*(result + 112);
  *(result + 24) = -1;
  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::Reset_(uint64_t result)
{
  *(result + 112) = 0;
  *(result + 24) = -1;
  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::Seek_(uint64_t result, uint64_t a2)
{
  if (*(result + 112) != a2)
  {
    *(result + 112) = a2;
    *(result + 24) = -1;
  }

  return result;
}

uint64_t fst::ArcIterator<fst::NGramFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>>::Value(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 112);
  if (v2)
  {
    v4 = v3 == 0;
    LODWORD(v5) = v3 - 1;
    v6 = *(a1 + 120);
    v7 = *(a1 + 24);
    if ((v6 & v7 & 3) == 0)
    {
      goto LABEL_9;
    }

    if (!v3)
    {
      v8 = 0;
      LODWORD(v3) = -1;
      v4 = 1;
      goto LABEL_8;
    }

    LODWORD(v3) = v3 - 1;
  }

  else
  {
    v6 = *(a1 + 120);
    v7 = *(a1 + 24);
    if ((v6 & v7 & 3) == 0)
    {
      if ((v6 & v7 & 8) == 0)
      {
        if ((v6 & v7 & 4) == 0)
        {
          return a1 + 8;
        }

        goto LABEL_22;
      }

      v5 = *(a1 + 112);
LABEL_14:
      if ((v7 & 8) != 0)
      {
        fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::SetInstContext(*(a1 + 32), (a1 + 40));
      }

      v12 = fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Transition(*(a1 + 32), (a1 + 80), *(*(*(a1 + 32) + 184) + 4 * *(a1 + 56) + 4 * v5) >> *(*(a1 + 32) + 60));
      v4 = 0;
      goto LABEL_17;
    }
  }

  v4 = 0;
  v8 = *(*(*(a1 + 32) + 184) + 4 * *(a1 + 56) + 4 * v3) >> *(*(a1 + 32) + 60);
LABEL_8:
  *(a1 + 8) = v8;
  *(a1 + 12) = v8;
  v7 &= 0xFFFFFFFC;
  *(a1 + 24) = v7;
  LODWORD(v5) = v3;
LABEL_9:
  if ((v6 & v7 & 8) == 0)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 32);
  v10 = fst::BitmapIndex::Rank1((v9 + 216), v2);
  v11 = fst::BitmapIndex::Select1((v9 + 216), v2 + ~v10);
  v12 = fst::BitmapIndex::Rank1((v9 + 216), v11);
  v4 = 1;
LABEL_17:
  v7 = *(a1 + 24) & 0xFFFFFFF7;
  *(a1 + 20) = v12;
  *(a1 + 24) = v7;
  v6 = *(a1 + 120);
LABEL_18:
  if ((v6 & v7 & 4) == 0)
  {
    return a1 + 8;
  }

  if (!v4)
  {
    LODWORD(v3) = v5;
LABEL_22:
    v13 = *(a1 + 32);
    v14 = (*(v13 + 200) + 4 * *(a1 + 56) + 4 * v3);
    goto LABEL_23;
  }

  v13 = *(a1 + 32);
  v14 = (*(v13 + 192) + 4 * *(a1 + 40));
LABEL_23:
  v15 = *v14;
  v16 = ((*(v13 + 64) & v15) >> 1);
  if (v15)
  {
    v16 = -v16;
  }

  *(a1 + 16) = *(v13 + 72) * v16;
  *(a1 + 24) = v7 & 0xFFFFFFFB;
  return a1 + 8;
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::SetInstContext(uint64_t result, int *a2)
{
  v3 = result;
  v4 = a2[8];
  v5 = *a2;
  if (v4 != *a2)
  {
    a2[8] = v5;
    result = fst::BitmapIndex::Select1((result + 216), v5);
    *(a2 + 3) = result;
    v4 = *a2;
  }

  if (a2[16] != v4)
  {
    v7 = *(a2 + 5);
    v6 = a2 + 10;
    v6[6] = v4;
    *(v6 + 1) = v7;
    v8 = *(v6 - 2);
    if (v8)
    {
      do
      {
        v9 = *(v3 + 176);
        v11 = *(v9 + 4 * fst::BitmapIndex::Rank1((v3 + 216), v8)) >> *(v3 + 60);
        std::vector<int>::push_back[abi:ne200100](v6, &v11);
        v10 = fst::BitmapIndex::Rank1((v3 + 216), v8);
        result = fst::BitmapIndex::Select1((v3 + 216), v8 + ~v10);
        v8 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Transition(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 168);
  v6 = *(a1 + 60);
  if (4 * *(a1 + 136) == 8)
  {
    v8 = *(a1 + 168);
  }

  else
  {
    v7 = (4 * *(a1 + 136) - 8) >> 2;
    v8 = *(a1 + 168);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[v7 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v7 += ~(v7 >> 1);
      if (v12 < a3 << v6)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
  }

  if (v8 == (v5 + 4 * *(a1 + 136) - 8) || *v8 >> v6 != a3)
  {
    v18 = (a1 + 216);
    v19 = 0;
  }

  else
  {
    v13 = (v8 - v5 + 8) >> 2;
    v14 = fst::BitmapIndex::Rank1((a1 + 216), v13);
    if (v14)
    {
      v15 = fst::BitmapIndex::Select0s((a1 + 216), v14);
      v17 = v16;
    }

    else
    {
      v15 = *(a1 + 128);
      v17 = *(a1 + 136);
    }

    v20 = v15 + 1;
    if ((*(*(a1 + 216) + (((v15 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + 1)))
    {
      v21 = ((a2[1] - *a2) >> 2) - 1;
      if (v21 >= 0)
      {
        do
        {
          v22 = *(a1 + 176);
          v23 = fst::BitmapIndex::Rank1((a1 + 216), v20);
          v24 = v22 + 4 * v23;
          v25 = *(*a2 + 4 * v21);
          v26 = *(a1 + 60);
          if (4 * v17 == 4 * v20)
          {
            v28 = (v22 + 4 * v23);
          }

          else
          {
            v27 = (4 * v17 - 4 * v20) >> 2;
            v28 = (v22 + 4 * v23);
            do
            {
              v29 = v27 >> 1;
              v30 = &v28[v27 >> 1];
              v32 = *v30;
              v31 = v30 + 1;
              v27 += ~(v27 >> 1);
              if (v32 < v25 << v26)
              {
                v28 = v31;
              }

              else
              {
                v27 = v29;
              }
            }

            while (v27);
          }

          if (v28 == (v24 + 4 * v17 - 4 * v20) || *v28 >> v26 != v25)
          {
            break;
          }

          v13 = (&v28[v20] - v24) >> 2;
          v33 = fst::BitmapIndex::Rank1((a1 + 216), v13);
          if (v33)
          {
            v34 = fst::BitmapIndex::Select0s((a1 + 216), v33);
            v17 = v35;
          }

          else
          {
            v34 = *(a1 + 128);
            v17 = *(a1 + 136);
          }

          v20 = v34 + 1;
          if (((*(*(a1 + 216) + (((v34 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v34 + 1)) & 1) == 0)
          {
            break;
          }
        }

        while (v21-- > 0);
      }
    }

    v18 = (a1 + 216);
    v19 = v13;
  }

  return fst::BitmapIndex::Rank1(v18, v19);
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NGramFstMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D25388;
  *(a1 + 8) = a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 56) = 0;
  v9 = a1 + 56;
  *(a1 + 48) = v8;
  *(a1 + 32) = v7;
  *(a1 + 16) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(v9 + 24) = *(a2 + 80);
  *(v9 + 32) = a3;
  *(v9 + 56) = 0;
  *(v9 + 60) = xmmword_1B5AE3080;
  if (a3 == 1)
  {
    *(a1 + 116) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void *fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFstMatcher(void *a1)
{
  *a1 = &unk_1F2D25388;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::~NGramFstMatcher(void *a1)
{
  *a1 = &unk_1F2D25388;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::SetState_(uint64_t a1, int a2)
{
  result = fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false>::SetInstFuture(*(*(a1 + 8) + 8), a2, a1 + 16);
  *(a1 + 112) = 0;
  return result;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Find_(uint64_t a1, int a2)
{
  *(a1 + 92) = 1;
  if ((a2 + 1) > 1)
  {
    *(a1 + 112) = 0;
    v5 = *(a1 + 8);
    v6 = *(v5 + 8);
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = *(v6 + 184) + 4 * v7;
    v10 = (v9 + 4 * v8);
    v11 = *(v6 + 60);
    if (v8)
    {
      v12 = a2 << v11;
      v13 = (*(v6 + 184) + 4 * v7);
      do
      {
        v14 = v8 >> 1;
        v15 = &v13[v8 >> 1];
        v17 = *v15;
        v16 = v15 + 1;
        v8 += ~(v8 >> 1);
        if (v17 < v12)
        {
          v13 = v16;
        }

        else
        {
          v8 = v14;
        }
      }

      while (v8);
    }

    else
    {
      v13 = (*(v6 + 184) + 4 * v7);
    }

    if (v13 != v10 && *v13 >> v11 == a2)
    {
      *(a1 + 96) = a2;
      *(a1 + 100) = a2;
      v19 = *(&v13[v7] + *(v6 + 200) - v9);
      v20 = ((*(v6 + 64) & v19) >> 1);
      if (v19)
      {
        v20 = -v20;
      }

      *(a1 + 104) = *(v6 + 72) * v20;
      fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::SetInstContext(*(v5 + 8), (a1 + 16));
      *(a1 + 108) = fst::NGramFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Transition(*(*(a1 + 8) + 8), (a1 + 56), a2);
      goto LABEL_25;
    }
  }

  else
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        return (*(*a1 + 72))(a1) ^ 1;
      }

      goto LABEL_13;
    }

    *(a1 + 112) = 1;
    v4 = *(a1 + 16);
    *(a1 + 128) = v4;
    if (v4)
    {
LABEL_13:
      *(a1 + 96) = 0;
      if (*(a1 + 48) == v4)
      {
        v18 = *(a1 + 40);
      }

      else
      {
        v21 = *(*(a1 + 8) + 8);
        *(a1 + 48) = v4;
        v18 = fst::BitmapIndex::Select1((v21 + 216), v4);
        *(a1 + 40) = v18;
      }

      v22 = *(*(a1 + 8) + 8);
      v23 = fst::BitmapIndex::Rank1((v22 + 216), v18);
      v24 = fst::BitmapIndex::Select1((v22 + 216), v18 + ~v23);
      *(a1 + 108) = fst::BitmapIndex::Rank1((v22 + 216), v24);
      v25 = *(*(a1 + 8) + 8);
      v26 = *(*(v25 + 192) + 4 * *(a1 + 16));
      v27 = ((*(v25 + 64) & v26) >> 1);
      if (v26)
      {
        v27 = -v27;
      }

      *(a1 + 104) = *(v25 + 72) * v27;
LABEL_25:
      *(a1 + 92) = 0;
    }
  }

  return (*(*a1 + 72))(a1) ^ 1;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Done_(uint64_t a1)
{
  if (*(a1 + 112))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 92);
  }

  return v1 & 1;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Value_(uint64_t a1)
{
  v1 = 96;
  if (*(a1 + 112))
  {
    v1 = 116;
  }

  return a1 + v1;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::Next_(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    *(result + 112) = 0;
  }

  else
  {
    *(result + 92) = 1;
  }

  return result;
}

uint64_t fst::NGramFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true>::NGramFstMatcher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2D25388;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 48);
  *(a1 + 56) = 0;
  v7 = a1 + 56;
  *(a1 + 48) = v4;
  *(a1 + 32) = v6;
  *(a1 + 16) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(v7 + 24) = *(a2 + 80);
  v8 = *(a2 + 88);
  *(v7 + 32) = v8;
  *(v7 + 56) = 0;
  *(v7 + 60) = xmmword_1B5AE3080;
  if (v8 == 1)
  {
    *(a1 + 116) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D25420;
  fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ReducedFst();
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D25420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~ReducedFst(void *a1)
{
  fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 72) + a2;
  v3 = *(v2 + 4);
  if (v3 <= 0)
  {
    return 0;
  }

  result = 0;
  v5 = (v2 + 8);
  do
  {
    v6 = *v5;
    v5 += 4;
    if (!v6)
    {
      ++result;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 72);
  v3 = *(v2 + a2 + 4);
  if (v3 <= 0)
  {
    return 0;
  }

  result = 0;
  v5 = (a2 + v2 + 12);
  do
  {
    v6 = *v5;
    v5 += 4;
    if (!v6)
    {
      ++result;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(*(result + 8) + 72) + a2;
  *a3 = 0;
  a3[1] = v3 + 8;
  a3[2] = *(v3 + 4);
  a3[3] = 0;
  return result;
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ReducedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25570;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::TypeString(__str);
  std::string::operator=((a1 + 16), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  memset(__str, 0, sizeof(__str));
  v9 = 1065353216;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 88), (a1 + 80), __str, (a1 + 112), (a1 + 108), (a1 + 104), (a1 + 100));
  LODWORD(v7) = (*(*a2 + 24))(a2);
  v6 = &v7;
  *(a1 + 96) = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(__str, &v7) + 5);
  fst::MappedFile::Allocate((8 * *(a1 + 80) + 16 * *(a1 + 88)), 16);
}

void sub_1B5682594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&__p);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v24);
  _Unwind_Resume(a1);
}

void sub_1B56826B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v39 = 0;
  (*(*a1 + 128))(a1, &v37);
  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (!v37)
    {
      if (v39 >= v38)
      {
        goto LABEL_39;
      }

LABEL_7:
      v15 = v39;
      goto LABEL_8;
    }

    if ((*(*v37 + 16))(v37))
    {
      break;
    }

    if (!v37)
    {
      goto LABEL_7;
    }

    v15 = (*(*v37 + 24))();
LABEL_8:
    v36 = v15;
    if (v15 == -1)
    {
      goto LABEL_34;
    }

    ++*a3;
    __p = &v36;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v36) + 5) = v14;
    v35 = 0;
    (*(*a1 + 136))(a1, v36, &__p);
    v16 = 0;
    v17 = v14 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v35 >= v33)
        {
          goto LABEL_31;
        }

        ++v16;
LABEL_24:
        if (*(v32 + 16 * v35) > v13)
        {
          v13 = *(v32 + 16 * v35);
        }

        goto LABEL_26;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v16;
      if (!__p)
      {
        goto LABEL_24;
      }

      (*(*__p + 32))();
      if (!__p)
      {
        goto LABEL_24;
      }

      (*(*__p + 32))(__p);
      if (!__p)
      {
        goto LABEL_24;
      }

      v18 = *(*(*__p + 32))(__p);
      if (v18 > v13)
      {
        v13 = v18;
      }

      if (__p)
      {
        v19 = *((*(*__p + 32))() + 4);
        if (v19 > v13)
        {
          v13 = v19;
        }

        if (!__p)
        {
          goto LABEL_28;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_26:
        if (*(v32 + 16 * v35 + 4) > v13)
        {
          v13 = *(v32 + 16 * v35 + 4);
        }

LABEL_28:
        ++v35;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_33;
    }

LABEL_31:
    if (v34)
    {
      --*v34;
    }

LABEL_33:
    *a2 += v16;
    v14 = v17 + 16 * v16;
LABEL_34:
    if (v37)
    {
      (*(*v37 + 32))(v37);
    }

    else
    {
      ++v39;
    }
  }

  if (v37)
  {
    (*(*v37 + 8))();
  }

LABEL_39:
  v20 = 8 * *a3 + 16 * *a2;
  if (v20 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v21 = fst::LogMessage::LogMessage(&v37, &__p);
    v22 = fst::cerr(v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v23, v20);
    fst::LogMessage::~LogMessage(&v37);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }
  }

  v24 = __clz(v13);
  if (v13 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v25 = fst::LogMessage::LogMessage(&v37, &__p);
    v26 = fst::cerr(v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v27, v24);
    fst::LogMessage::~LogMessage(&v37);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v24 - 1;
  *a7 = 1065353216;
  *a8 = 1065353216;
  *a5 = 2 * ~(-1 << (v24 - 1));
}

void sub_1B5682BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~ReducedFstImpl(void *a1)
{
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~ReducedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~ReducedFstImpl(void *a1)
{
  *a1 = &unk_1F2D25570;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D255C0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::WriteFst<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>(void *a1, void *a2, _BYTE *a3)
{
  v6 = a3[27];
  v50 = 0;
  v49 = 0;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  v45 = 0;
  v46 = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>(a1, &v50, &v49, v47, &v46 + 1, &v46, &v45 + 1, &v45);
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v43 = 0;
  v44 = 0;
  v42 = -1;
  LODWORD(v30) = (*(*a1 + 24))(a1);
  v26[0] = &v30;
  v42 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v47, &v30) + 5);
  v43 = v49;
  v44 = v50;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::TypeString(&__str);
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 1);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, v7, &__str, v8 | 1, v37);
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  LODWORD(v26[0]) = HIDWORD(v46);
  std::ostream::write();
  if (a3[27] != 1 || fst::AlignOutput(a2))
  {
    v34 = INFINITY;
    v30 = &unk_1F2D25678;
    v31 = 0;
    v9 = a1[1];
    v10 = 8 * *(v9 + 80) + 16 * *(v9 + 88);
    v32 = v9;
    v33 = v10;
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = 0;
    while (1)
    {
      if (v11 == -1)
      {
        v18 = -1;
        goto LABEL_32;
      }

      v34 = (*(*a1 + 32))(a1, v11);
      v35 = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v29 = 0;
      (*(*a1 + 136))(a1, v11, v26);
      while (1)
      {
        if (!v26[0])
        {
          if (v29 >= v27)
          {
            goto LABEL_28;
          }

          goto LABEL_15;
        }

        if ((*(*v26[0] + 24))(v26[0]))
        {
          break;
        }

        if (v26[0])
        {
          v12 = (*(*v26[0] + 32))();
          goto LABEL_16;
        }

LABEL_15:
        v12 = (v26[1] + 16 * v29);
LABEL_16:
        v25 = *v12;
        if (HIDWORD(v25) != -1)
        {
          if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v47, &v25 + 3))
          {
            __p[0] = &v25 + 12;
            v13 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v47, &v25 + 3) + 5);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
            v14 = fst::LogMessage::LogMessage(&v51, __p);
            v15 = fst::cerr(v14);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "State ", 6);
            v17 = MEMORY[0x1B8C84C00](v16, HIDWORD(v25));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " missing in new FST!", 20);
            fst::LogMessage::~LogMessage(&v51);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            v13 = -1;
          }

          HIDWORD(v25) = v13;
        }

        *__p = v25;
        std::ostream::write();
        if (v26[0])
        {
          (*(*v26[0] + 40))(v26[0]);
        }

        else
        {
          ++v29;
        }
      }

      if (v26[0])
      {
        (*(*v26[0] + 8))();
        goto LABEL_30;
      }

LABEL_28:
      if (v28)
      {
        --*v28;
      }

LABEL_30:
      v18 = v31;
      v9 = v32;
      v10 = v33;
LABEL_32:
      v11 = (v18 + 16 * *(*(v9 + 72) + v18 + 4) + 8);
      v31 = v11;
      if (v10 <= v11)
      {
LABEL_33:
        v19 = 1;
        goto LABEL_37;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v26, "ERROR");
  v20 = fst::LogMessage::LogMessage(&v30, v26);
  v21 = fst::cerr(v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Could not align file during write after header", 46);
  fst::LogMessage::~LogMessage(&v30);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  v19 = 0;
LABEL_37:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(*(&v39 + 1));
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v47);
  return v19;
}

void sub_1B5683338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  fst::FstHeader::~FstHeader(&a38);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v38 - 144);
  _Unwind_Resume(a1);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>>(void *a1, void *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v39 = &unk_1F2D25678;
  v40 = 0;
  v13 = a1[1];
  v14 = 8 * *(v13 + 80) + 16 * *(v13 + 88);
  v41 = v13;
  v42 = v14;
  if (!v14)
  {
    v16 = 0;
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 0;
  for (i = 0; i < v14; v40 = i)
  {
    v38 = i;
    if (i == -1)
    {
      goto LABEL_29;
    }

    ++*a3;
    __p = &v38;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v38) + 5) = v15;
    v37 = 0;
    (*(*a1 + 136))(a1, v38, &__p);
    v18 = 0;
    v19 = v15 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v37 >= v35)
        {
          goto LABEL_26;
        }

        ++v18;
LABEL_19:
        if (*(v34 + 16 * v37) > v16)
        {
          v16 = *(v34 + 16 * v37);
        }

        goto LABEL_21;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v18;
      if (!__p)
      {
        goto LABEL_19;
      }

      (*(*__p + 32))();
      if (!__p)
      {
        goto LABEL_19;
      }

      (*(*__p + 32))(__p);
      if (!__p)
      {
        goto LABEL_19;
      }

      v20 = *(*(*__p + 32))(__p);
      if (v20 > v16)
      {
        v16 = v20;
      }

      if (__p)
      {
        v21 = *((*(*__p + 32))() + 4);
        if (v21 > v16)
        {
          v16 = v21;
        }

        if (!__p)
        {
          goto LABEL_23;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_21:
        if (*(v34 + 16 * v37 + 4) > v16)
        {
          v16 = *(v34 + 16 * v37 + 4);
        }

LABEL_23:
        ++v37;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_28;
    }

LABEL_26:
    if (v36)
    {
      --*v36;
    }

LABEL_28:
    *a2 += v18;
    v15 = v19 + 16 * v18;
    i = v40;
    v13 = v41;
    v14 = v42;
LABEL_29:
    i += 16 * *(*(v13 + 72) + i + 4) + 8;
  }

LABEL_32:
  v22 = 8 * *a3 + 16 * *a2;
  if (v22 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v23 = fst::LogMessage::LogMessage(&v39, &__p);
    v24 = fst::cerr(v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v25, v22);
    fst::LogMessage::~LogMessage(&v39);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  v26 = __clz(v16);
  if (v16 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v27 = fst::LogMessage::LogMessage(&v39, &__p);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v29, v26);
    fst::LogMessage::~LogMessage(&v39);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v26 - 1;
  *a7 = 1065353216;
  *a8 = 1065353216;
  *a5 = 2 * ~(-1 << (v26 - 1));
}

void sub_1B5683870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D256D0;
  fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ReducedFst();
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D256D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~ReducedFst(void *a1)
{
  fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 72);
  v3 = *(v2 + a2 + 4);
  if (v3 <= 0)
  {
    return 0;
  }

  result = 0;
  v5 = (a2 + v2 + 12);
  do
  {
    v6 = *v5;
    v5 += 3;
    if (!v6)
    {
      ++result;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 72);
  v3 = *(v2 + a2 + 4);
  if (v3 <= 0)
  {
    return 0;
  }

  result = 0;
  v5 = (a2 + v2 + 12);
  do
  {
    v6 = *v5;
    v5 += 3;
    if (!v6)
    {
      ++result;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ReducedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25820;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::TypeString(__str);
  std::string::operator=((a1 + 16), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  memset(__str, 0, sizeof(__str));
  v9 = 1065353216;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 88), (a1 + 80), __str, (a1 + 112), (a1 + 108), (a1 + 104), (a1 + 100));
  LODWORD(v7) = (*(*a2 + 24))(a2);
  v6 = &v7;
  *(a1 + 96) = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(__str, &v7) + 5);
  fst::MappedFile::Allocate((12 * *(a1 + 88) + 8 * *(a1 + 80)), 16);
}

void sub_1B56843C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&__p);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v24);
  _Unwind_Resume(a1);
}

void sub_1B56844E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v39 = 0;
  (*(*a1 + 128))(a1, &v37);
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (!v37)
    {
      if (v39 >= v38)
      {
        goto LABEL_39;
      }

LABEL_7:
      v14 = v39;
      goto LABEL_8;
    }

    if ((*(*v37 + 16))(v37))
    {
      break;
    }

    if (!v37)
    {
      goto LABEL_7;
    }

    v14 = (*(*v37 + 24))();
LABEL_8:
    v36 = v14;
    if (v14 == -1)
    {
      goto LABEL_34;
    }

    ++*a3;
    __p = &v36;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v36) + 5) = v13;
    v35 = 0;
    (*(*a1 + 136))(a1, v36, &__p);
    v15 = 0;
    v16 = v13 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v35 >= v33)
        {
          goto LABEL_31;
        }

        ++v15;
LABEL_24:
        if (*(v32 + 16 * v35) > v12)
        {
          v12 = *(v32 + 16 * v35);
        }

        goto LABEL_26;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v15;
      if (!__p)
      {
        goto LABEL_24;
      }

      (*(*__p + 32))();
      if (!__p)
      {
        goto LABEL_24;
      }

      (*(*__p + 32))(__p);
      if (!__p)
      {
        goto LABEL_24;
      }

      v17 = *(*(*__p + 32))(__p);
      if (v17 > v12)
      {
        v12 = v17;
      }

      if (__p)
      {
        v18 = *((*(*__p + 32))() + 4);
        if (v18 > v12)
        {
          v12 = v18;
        }

        if (!__p)
        {
          goto LABEL_28;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_26:
        if (*(v32 + 16 * v35 + 4) > v12)
        {
          v12 = *(v32 + 16 * v35 + 4);
        }

LABEL_28:
        ++v35;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_33;
    }

LABEL_31:
    if (v34)
    {
      --*v34;
    }

LABEL_33:
    *a2 += v15;
    v13 = v16 + 12 * v15;
LABEL_34:
    if (v37)
    {
      (*(*v37 + 32))(v37);
    }

    else
    {
      ++v39;
    }
  }

  if (v37)
  {
    (*(*v37 + 8))();
  }

LABEL_39:
  v19 = 12 * *a2 + 8 * *a3;
  if (v19 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v20 = fst::LogMessage::LogMessage(&v37, &__p);
    v21 = fst::cerr(v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v22, v19);
    fst::LogMessage::~LogMessage(&v37);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }
  }

  v23 = __clz(v12);
  if (v12 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v24 = fst::LogMessage::LogMessage(&v37, &__p);
    v25 = fst::cerr(v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v26, v23);
    fst::LogMessage::~LogMessage(&v37);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v23 - 1;
  *a7 = 1065353216;
  *a8 = 1065353216;
  *a5 = 2 * ~(-1 << (v23 - 1));
}

void sub_1B56849E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~ReducedFstImpl(void *a1)
{
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~ReducedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~ReducedFstImpl(void *a1)
{
  *a1 = &unk_1F2D25820;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D25870;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::WriteFst<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>(void *a1, void *a2, _BYTE *a3)
{
  v6 = a3[27];
  v51 = 0;
  v50 = 0;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  memset(v48, 0, sizeof(v48));
  v49 = 1065353216;
  v46 = 0;
  v47 = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>(a1, &v51, &v50, v48, &v47 + 1, &v47, &v46 + 1, &v46);
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v44 = 0;
  v45 = 0;
  v43 = -1;
  LODWORD(v31) = (*(*a1 + 24))(a1);
  v27[0] = &v31;
  v43 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v48, &v31) + 5);
  v44 = v50;
  v45 = v51;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::TypeString(&__str);
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 1);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, v7, &__str, v8 | 1, v38);
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  LODWORD(v27[0]) = HIDWORD(v47);
  std::ostream::write();
  if (a3[27] != 1 || fst::AlignOutput(a2))
  {
    v35 = INFINITY;
    v31 = &unk_1F2D25928;
    v32 = 0;
    v9 = a1[1];
    v10 = 12 * *(v9 + 88) + 8 * *(v9 + 80);
    v33 = v9;
    v34 = v10;
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = 0;
    while (1)
    {
      if (v11 == -1)
      {
        v18 = -1;
        goto LABEL_32;
      }

      v35 = (*(*a1 + 32))(a1, v11);
      v36 = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v30 = 0;
      (*(*a1 + 136))(a1, v11, v27);
      while (1)
      {
        if (!v27[0])
        {
          if (v30 >= v28)
          {
            goto LABEL_28;
          }

          goto LABEL_15;
        }

        if ((*(*v27[0] + 24))(v27[0]))
        {
          break;
        }

        if (v27[0])
        {
          v12 = (*(*v27[0] + 32))();
          goto LABEL_16;
        }

LABEL_15:
        v12 = (v27[1] + 16 * v30);
LABEL_16:
        v26 = *v12;
        v13 = HIDWORD(v26);
        if (HIDWORD(v26) != -1)
        {
          if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v48, &v26 + 3))
          {
            __p = &v26 + 12;
            v13 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v48, &v26 + 3) + 5);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
            v14 = fst::LogMessage::LogMessage(&v52, &__p);
            v15 = fst::cerr(v14);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "State ", 6);
            v17 = MEMORY[0x1B8C84C00](v16, HIDWORD(v26));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " missing in new FST!", 20);
            fst::LogMessage::~LogMessage(&v52);
            if (v25 < 0)
            {
              operator delete(__p);
            }

            v13 = -1;
          }

          HIDWORD(v26) = v13;
        }

        __p = __PAIR64__(v26, DWORD2(v26));
        v24 = v13;
        std::ostream::write();
        if (v27[0])
        {
          (*(*v27[0] + 40))(v27[0]);
        }

        else
        {
          ++v30;
        }
      }

      if (v27[0])
      {
        (*(*v27[0] + 8))();
        goto LABEL_30;
      }

LABEL_28:
      if (v29)
      {
        --*v29;
      }

LABEL_30:
      v18 = v32;
      v9 = v33;
      v10 = v34;
LABEL_32:
      v11 = (v18 + 12 * *(*(v9 + 72) + v18 + 4) + 8);
      v32 = v11;
      if (v10 <= v11)
      {
LABEL_33:
        v19 = 1;
        goto LABEL_37;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "ERROR");
  v20 = fst::LogMessage::LogMessage(&v31, v27);
  v21 = fst::cerr(v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Could not align file during write after header", 46);
  fst::LogMessage::~LogMessage(&v31);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  v19 = 0;
LABEL_37:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*(&v40 + 1));
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(v39);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v48);
  return v19;
}

void sub_1B5685184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  fst::FstHeader::~FstHeader(&a38);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v38 - 144);
  _Unwind_Resume(a1);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>(void *a1, void *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v39 = &unk_1F2D25928;
  v40 = 0;
  v12 = a1[1];
  v13 = 12 * *(v12 + 88) + 8 * *(v12 + 80);
  v41 = v12;
  v42 = v13;
  if (!v13)
  {
    v15 = 0;
    goto LABEL_32;
  }

  v14 = 0;
  v15 = 0;
  for (i = 0; i < v13; v40 = i)
  {
    v38 = i;
    if (i == -1)
    {
      goto LABEL_29;
    }

    ++*a3;
    __p = &v38;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v38) + 5) = v14;
    v37 = 0;
    (*(*a1 + 136))(a1, v38, &__p);
    v17 = 0;
    v18 = v14 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v37 >= v35)
        {
          goto LABEL_26;
        }

        ++v17;
LABEL_19:
        if (*(v34 + 16 * v37) > v15)
        {
          v15 = *(v34 + 16 * v37);
        }

        goto LABEL_21;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v17;
      if (!__p)
      {
        goto LABEL_19;
      }

      (*(*__p + 32))();
      if (!__p)
      {
        goto LABEL_19;
      }

      (*(*__p + 32))(__p);
      if (!__p)
      {
        goto LABEL_19;
      }

      v19 = *(*(*__p + 32))(__p);
      if (v19 > v15)
      {
        v15 = v19;
      }

      if (__p)
      {
        v20 = *((*(*__p + 32))() + 4);
        if (v20 > v15)
        {
          v15 = v20;
        }

        if (!__p)
        {
          goto LABEL_23;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_21:
        if (*(v34 + 16 * v37 + 4) > v15)
        {
          v15 = *(v34 + 16 * v37 + 4);
        }

LABEL_23:
        ++v37;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_28;
    }

LABEL_26:
    if (v36)
    {
      --*v36;
    }

LABEL_28:
    *a2 += v17;
    v14 = v18 + 12 * v17;
    i = v40;
    v12 = v41;
    v13 = v42;
LABEL_29:
    i += 12 * *(*(v12 + 72) + i + 4) + 8;
  }

LABEL_32:
  v21 = 12 * *a2 + 8 * *a3;
  if (v21 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v22 = fst::LogMessage::LogMessage(&v39, &__p);
    v23 = fst::cerr(v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v24, v21);
    fst::LogMessage::~LogMessage(&v39);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  v25 = __clz(v15);
  if (v15 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v26 = fst::LogMessage::LogMessage(&v39, &__p);
    v27 = fst::cerr(v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C10](v28, v25);
    fst::LogMessage::~LogMessage(&v39);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v25 - 1;
  *a7 = 1065353216;
  *a8 = 1065353216;
  *a5 = 2 * ~(-1 << (v25 - 1));
}

void sub_1B56856C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::ArcIterator(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D25980;
  result[1] = a2;
  v3 = (*(a2 + 72) + a3);
  v4 = v3[1];
  result[2] = v3 + 2;
  result[3] = v4;
  result[4] = 0;
  if (v4)
  {
    v5 = v3[3] | (v3[3] << 32);
    v6 = v3[2] | (v3[4] << 32);
    result[5] = v5;
    result[6] = v6;
  }

  return result;
}

uint64_t fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Reinit(void *a1, int a2)
{
  v2 = (*(a1[1] + 72) + a2);
  v3 = v2[1];
  a1[2] = v2 + 2;
  a1[3] = v3;
  a1[4] = 0;
  if (v3)
  {
    v4 = v2[3] | (v2[3] << 32);
    v5 = v2[2] | (v2[4] << 32);
    a1[5] = v4;
    a1[6] = v5;
  }

  return 1;
}

void *fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Reset_(void *result)
{
  result[4] = 0;
  if (result[3])
  {
    v1 = result[2];
    v2 = v1[1] | (v1[1] << 32);
    v3 = *v1 | (v1[2] << 32);
    result[5] = v2;
    result[6] = v3;
  }

  return result;
}

void *fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Seek_(void *result, unint64_t a2)
{
  result[4] = a2;
  if (result[3] > a2)
  {
    v2 = (result[2] + 12 * a2);
    v3 = v2[1] | (v2[1] << 32);
    v4 = *v2 | (v2[2] << 32);
    result[5] = v3;
    result[6] = v4;
  }

  return result;
}

void *fst::ArcIterator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>>::Next(void *result)
{
  v1 = result[3];
  v2 = result[4] + 1;
  result[4] = v2;
  if (v2 < v1)
  {
    v3 = (result[2] + 12 * v2);
    v4 = v3[1] | (v3[1] << 32);
    v5 = *v3 | (v3[2] << 32);
    result[5] = v4;
    result[6] = v5;
  }

  return result;
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D25A00;
  fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ReducedFst();
}

void std::__shared_ptr_emplace<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D25A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~ReducedFst(void *a1)
{
  fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ReducedFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D25B50;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString(__str);
  std::string::operator=((a1 + 16), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  memset(__str, 0, sizeof(__str));
  v10 = 1065353216;
  v6 = fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, (a1 + 88), (a1 + 80), __str, (a1 + 120), (a1 + 112), (a1 + 104), (a1 + 100));
  LODWORD(v8) = (*(*a2 + 24))(a2, v6);
  v7 = &v8;
  *(a1 + 96) = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(__str, &v8) + 5);
  fst::MappedFile::Allocate((12 * *(a1 + 88) + 8 * *(a1 + 80)), 16);
}

void sub_1B56863FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&__p);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v24);
  _Unwind_Resume(a1);
}

std::string *fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString@<X0>(std::string *a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "reduced");
  std::string::append(a1, "_quantized");
  return std::string::append(a1, "_transducer");
}

void sub_1B5686528(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, int *a3, void *a4, void *a5, void *a6, float *a7, float *a8)
{
  *a2 = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a4);
  v49 = 0;
  (*(*a1 + 128))(a1, &v47);
  v12 = 0;
  v13 = 0;
  v14 = -INFINITY;
  v15 = INFINITY;
  while (1)
  {
    if (!v47)
    {
      if (v49 >= v48)
      {
        goto LABEL_47;
      }

LABEL_7:
      v16 = v49;
      goto LABEL_8;
    }

    if ((*(*v47 + 16))(v47))
    {
      break;
    }

    if (!v47)
    {
      goto LABEL_7;
    }

    v16 = (*(*v47 + 24))();
LABEL_8:
    v46 = v16;
    if (v16 == -1)
    {
      goto LABEL_42;
    }

    ++*a3;
    __p = &v46;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a4, &v46) + 5) = v13;
    v45 = 0;
    (*(*a1 + 136))(a1, v46, &__p);
    v17 = 0;
    v18 = v13 + 8;
    while (1)
    {
      if (!__p)
      {
        if (v45 >= v43)
        {
          goto LABEL_39;
        }

        ++v17;
LABEL_28:
        if (*(v42 + 16 * v45 + 8) >= v14)
        {
          v14 = *(v42 + 16 * v45 + 8);
        }

LABEL_30:
        if (v15 >= *(v42 + 16 * v45 + 8))
        {
          v15 = *(v42 + 16 * v45 + 8);
        }

LABEL_32:
        if (*(v42 + 16 * v45) > v12)
        {
          v12 = *(v42 + 16 * v45);
        }

        goto LABEL_34;
      }

      if ((*(*__p + 24))(__p))
      {
        break;
      }

      ++v17;
      if (!__p)
      {
        goto LABEL_28;
      }

      v19 = (*(*__p + 32))();
      if (*(v19 + 8) >= v14)
      {
        v14 = *(v19 + 8);
      }

      if (!__p)
      {
        goto LABEL_30;
      }

      v20 = (*(*__p + 32))();
      if (v15 >= *(v20 + 8))
      {
        v15 = *(v20 + 8);
      }

      if (!__p)
      {
        goto LABEL_32;
      }

      v21 = *(*(*__p + 32))();
      if (v21 > v12)
      {
        v12 = v21;
      }

      if (__p)
      {
        v22 = *((*(*__p + 32))() + 4);
        if (v22 > v12)
        {
          v12 = v22;
        }

        if (!__p)
        {
          goto LABEL_36;
        }

        (*(*__p + 40))();
      }

      else
      {
LABEL_34:
        if (*(v42 + 16 * v45 + 4) > v12)
        {
          v12 = *(v42 + 16 * v45 + 4);
        }

LABEL_36:
        ++v45;
      }
    }

    if (__p)
    {
      (*(*__p + 8))();
      goto LABEL_41;
    }

LABEL_39:
    if (v44)
    {
      --*v44;
    }

LABEL_41:
    *a2 += v17;
    v13 = v18 + 12 * v17;
LABEL_42:
    if (v47)
    {
      (*(*v47 + 32))(v47);
    }

    else
    {
      ++v49;
    }
  }

  if (v47)
  {
    (*(*v47 + 8))();
  }

LABEL_47:
  v23 = 12 * *a2 + 8 * *a3;
  if (v23 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v24 = fst::LogMessage::LogMessage(&v47, &__p);
    v25 = fst::cerr(v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Too much data for reduced file format: ", 39);
    MEMORY[0x1B8C84C70](v26, v23);
    fst::LogMessage::~LogMessage(&v47);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p);
    }
  }

  v27 = __clz(v12);
  if (v12 >> 27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    v28 = fst::LogMessage::LogMessage(&v47, &__p);
    v29 = fst::cerr(v28);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Not enough bits for quantization: ", 34);
    MEMORY[0x1B8C84C70](v30, v27);
    fst::LogMessage::~LogMessage(&v47);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p);
    }
  }

  *a6 = v27 - 1;
  v31 = 1 << (v27 - 1);
  v32 = fabsf(v14);
  v33 = fabsf(v15);
  if (v32 < v33)
  {
    v32 = v33;
  }

  if (v32 <= 0.0)
  {
    v34 = v31 + -1.0;
  }

  else
  {
    v34 = v32;
  }

  v35 = (v31 + -1.0) / v34;
  *a7 = v35;
  result = 1.0 / v35;
  *a8 = result;
  *a5 = 2 * ~(-1 << (v27 - 1));
  return result;
}

void sub_1B5686AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~ReducedFstImpl(void *a1)
{
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~ReducedFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::~ReducedFstImpl(void *a1)
{
  *a1 = &unk_1F2D25B50;
  v2 = a1[8];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void *fst::ImplToFst<fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D25BA0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::NumInputEpsilons(uint64_t a1, int a2)
{
  v2 = *(a1 + 72) + a2;
  v3 = *(v2 + 4);
  if (v3 <= 0)
  {
    return 0;
  }

  result = 0;
  v6 = (v2 + 8);
  v7 = 0xFFFFFFFFLL << (*(a1 + 112) + ((63 - *(a1 + 112)) >> 1) + 1);
  do
  {
    v8 = *v6;
    v6 = (v6 + 12);
    if ((v7 & v8) == 0)
    {
      ++result;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::NumOutputEpsilons(uint64_t a1, int a2)
{
  v2 = *(a1 + 72) + a2;
  v3 = *(v2 + 4);
  if (v3 <= 0)
  {
    return 0;
  }

  result = 0;
  v6 = (v2 + 8);
  v7 = *(a1 + 112);
  v8 = ~(-1 << ((63 - v7) >> 1));
  v9 = v7 + 1;
  do
  {
    v10 = *v6;
    v6 = (v6 + 12);
    if ((v8 & (v10 >> v9)) == 0)
    {
      ++result;
    }

    --v3;
  }

  while (v3);
  return result;
}

uint64_t fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::WriteFst<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>(void *a1, void *a2, _BYTE *a3)
{
  v6 = a3[27];
  v53 = 0;
  v52 = 0;
  v50[1] = 0u;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  v50[0] = 0uLL;
  v51 = 1065353216;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::ComputeReductionInformation<fst::ReducedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>>(a1, &v53, &v52, v50, &v49, &v48, &v47 + 1, &v47);
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v45 = 0;
  v46 = 0;
  v44 = -1;
  LODWORD(v32) = (*(*a1 + 24))(a1);
  v28[0] = &v32;
  v44 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v50, &v32) + 5);
  v45 = v52;
  v46 = v53;
  fst::ReducedFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::TypeString(&__str);
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 1);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFstHeader(a1, a2, a3, v7, &__str, v8 | 1, v39);
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  v28[0] = v49;
  std::ostream::write();
  if (a3[27] != 1 || fst::AlignOutput(a2))
  {
    v36 = INFINITY;
    v32 = &unk_1F2D25C58;
    v33 = 0;
    v9 = a1[1];
    v10 = 12 * *(v9 + 88) + 8 * *(v9 + 80);
    v34 = v9;
    v35 = v10;
    if (!v10)
    {
      goto LABEL_35;
    }

    v11 = 0;
    while (1)
    {
      if (v11 == -1)
      {
        v19 = -1;
        goto LABEL_34;
      }

      v36 = (*(*a1 + 32))(a1, v11);
      v37 = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v31 = 0;
      (*(*a1 + 136))(a1, v11, v28);
      while (1)
      {
        if (!v28[0])
        {
          if (v31 >= v29)
          {
            goto LABEL_30;
          }

          goto LABEL_15;
        }

        if ((*(*v28[0] + 24))(v28[0]))
        {
          break;
        }

        if (v28[0])
        {
          v12 = (*(*v28[0] + 32))();
          goto LABEL_16;
        }

LABEL_15:
        v12 = (v28[1] + 16 * v31);
LABEL_16:
        v27 = *v12;
        v13 = HIDWORD(v27);
        if (HIDWORD(v27) != -1)
        {
          if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v50, &v27 + 3))
          {
            __p = &v27 + 12;
            v13 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v50, &v27 + 3) + 5);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
            v14 = fst::LogMessage::LogMessage(v54, &__p);
            v15 = fst::cerr(v14);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "State ", 6);
            v17 = MEMORY[0x1B8C84C00](v16, HIDWORD(v27));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " missing in new FST!", 20);
            fst::LogMessage::~LogMessage(v54);
            if (v26 < 0)
            {
              operator delete(__p);
            }

            v13 = -1;
          }

          HIDWORD(v27) = v13;
        }

        v18 = roundf(fabsf(*(&v47 + 1) * *(&v27 + 2)));
        if ((1 << v48) + -1.0 < v18)
        {
          v18 = (1 << v48) + -1.0;
        }

        __p = ((((v27 << ((63 - v48) >> 1)) | SDWORD1(v27)) << (v48 + 1)) | ((*(&v47 + 1) * *(&v27 + 2)) < 0.0) | (2 * v18));
        v25 = v13;
        std::ostream::write();
        if (v28[0])
        {
          (*(*v28[0] + 40))(v28[0]);
        }

        else
        {
          ++v31;
        }
      }

      if (v28[0])
      {
        (*(*v28[0] + 8))();
        goto LABEL_32;
      }

LABEL_30:
      if (v30)
      {
        --*v30;
      }

LABEL_32:
      v19 = v33;
      v9 = v34;
      v10 = v35;
LABEL_34:
      v11 = (v19 + 12 * *(*(v9 + 72) + v19 + 4) + 8);
      v33 = v11;
      if (v10 <= v11)
      {
LABEL_35:
        v20 = 1;
        goto LABEL_39;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v28, "ERROR");
  v21 = fst::LogMessage::LogMessage(&v32, v28);
  v22 = fst::cerr(v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Could not align file during write after header", 46);
  fst::LogMessage::~LogMessage(&v32);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v20 = 0;
LABEL_39:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(*(&v41 + 1));
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v50);
  return v20;
}