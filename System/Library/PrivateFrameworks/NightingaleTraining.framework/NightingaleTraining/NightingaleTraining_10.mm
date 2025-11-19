void std::vector<Nightingale::cycleInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::cycleInfo>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*,Nightingale::cycleInfo*,Nightingale::cycleInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(v4 + 61) = *(v6 + 61);
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 16) = v7;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      *(v4 + 72) = 0;
      std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v4 + 72, *(v6 + 72), *(v6 + 80), *(v6 + 80) - *(v6 + 72));
      v6 += 96;
      v4 = v14 + 96;
      v14 += 96;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::vector<Nightingale::cycleInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<Nightingale::cycleInfo>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

_BYTE *OUTLINED_FUNCTION_5(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

uint64_t Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(uint64_t a1, uint64_t a2)
{
  *&v6[12] = *MEMORY[0x277D85DE8];
  *a1 = &unk_286E2A1B8;
  *(a1 + 8) = 0;
  *v5 = xmmword_25C67C690;
  *&v5[12] = *(&xmmword_25C67C690 + 12);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(a1 + 8, v5, v6, 7uLL);
  *(a1 + 32) = a2;
  Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct::slidingWinConfigStruct((a1 + 40));
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation((a1 + 152));
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 236) = 0xFFFFFFFFLL;
  *(a1 + 244) = vneg_f32(0x3F0000003FLL);
  *(a1 + 252) = 2143289344;
  *(a1 + 256) = 0;
  *(a1 + 260) = 0x800000008;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  return a1;
}

void sub_25C650D1C(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::slidingWindowBaseLuna::~slidingWindowBaseLuna(Nightingale::slidingWindowBaseLuna *this)
{
  *this = &unk_286E2A1B8;
  v2 = *(this + 34);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    operator delete(v3);
  }

  v6 = (this + 160);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((this + 152));
  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void Nightingale::slidingWindowBaseLuna::process(_BYTE *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vneg_f32(0x3F0000003FLL);
  *(a4 + 16) = 2143289344;
  *(a4 + 20) = 0;
  *(a4 + 24) = 8;
  if (Nightingale::slidingWindowBaseLuna::validateConfigurationPass(a1))
  {
    (*(*a1 + 8))(a1);
    if (a1[124] == 1 && a1[132] == 1)
    {
      Nightingale::slidingWindowBaseLuna::acquireWTmp(a1, a2, *(a1 + 30) + **(a1 + 4) - *(a1 + 10) + 1, *(a1 + 32) + *(a1 + 11) + **(a1 + 4), v10);
      if (Nightingale::assertVectorOfVectors(v10))
      {
        Nightingale::slidingWindowBaseLuna::validateWTmp(a1, v10, *(a1 + 10), a1 + 6, &v8);
        std::vector<std::vector<float>>::__vdeallocate(a1 + 20);
        *(a1 + 10) = v8;
        *(a1 + 22) = v9;
        v9 = 0;
        v8 = 0uLL;
        v11 = &v8;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
        (*(*a1 + 16))(a1, v10);
        if (a1[232] == 1 && a1[124] == 1)
        {
          *(a1 + 59) = *(a1 + 30) + *(a1 + 54) + **(a1 + 4);
        }

        *(a1 + 66) = (*(*a1 + 40))(a1);
        (*(*a1 + 48))(a1);
        if (a3)
        {
          (*(*a1 + 32))(a1);
        }

        *a4 = *(a1 + 236);
        *(a4 + 12) = *(a1 + 248);
        Nightingale::slidingWindowBaseLuna::reset(a1);
      }

      else
      {
        *(a4 + 4) = 1;
        *(a4 + 24) = 1;
      }

      *&v8 = v10;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }
  }
}

void sub_25C651044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL Nightingale::slidingWindowBaseLuna::validateConfigurationPass(Nightingale::slidingWindowBaseLuna *this)
{
  if ((*(this + 10) & 0x80000000) != 0 || (*(this + 11) & 0x80000000) != 0 || *(this + 19) < 1)
  {
    return 0;
  }

  v1 = *(this + 4);
  v2 = *(v1 + 4);
  if (v2)
  {
    if (v2 >= 1 && *v1 > v2)
    {
      return 0;
    }
  }

  else if ((*(v1 + 12) & 1) == 0)
  {
    return 0;
  }

  return *(this + 6) != *(this + 7);
}

void Nightingale::slidingWindowBaseLuna::acquireWTmp(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v24);
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v23);
  memset(v22, 0, sizeof(v22));
  if (a4 - a3 >= 0 && *(a1 + 132) == 1 && (*(a1 + 124) & 1) != 0)
  {
    v10 = *(a1 + 32);
    if ((*(v10 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(v24, a4 - a3 + 1, a4, a3 - 43, a2, *(v10 + 16), v17);
    if (*(a1 + 132) != 1 || (*(a1 + 124) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(v17, *(a1 + 44) + *(a1 + 40), *(a1 + 128) - *(a1 + 120) + 1, a3, &v11);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a5, v11, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3));
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    v25 = &v11;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v25);
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    v11 = v17;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  v17[0] = v22;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v17);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v23);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v24);
}

void sub_25C65126C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Nightingale::pickSlicesStruct::~pickSlicesStruct(&a10);
  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(&a19);
  a19 = &a29;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a19);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((v29 - 129));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((v29 - 128));
  _Unwind_Resume(a1);
}

void Nightingale::slidingWindowBaseLuna::validateWTmp(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = a3;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (*a4 != a4[1] && (Nightingale::assertVectorOfVectors(a2) & 1) != 0)
  {
    memset(v14, 0, sizeof(v14));
    v16 = &unk_286E2A0F0;
    v17 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
    v18 = 0;
    v19 = &v16;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v14, &v16);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v16);
    v16 = &unk_286E2A0F0;
    v17 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpEarlyWinMissingCntHigh;
    v18 = 0;
    v19 = &v16;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v14, &v16);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v16);
    v16 = &unk_286E2A0F0;
    v17 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpLaterWinMissingCntHigh;
    v18 = 0;
    v19 = &v16;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v14, &v16);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v16);
    v16 = &unk_286E2A0F0;
    v17 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpDay2dayNoiseHigh;
    v18 = 0;
    v19 = &v16;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v14, &v16);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v16);
    v16 = &unk_286E2A0F0;
    v17 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpSnrLow;
    v18 = 0;
    v19 = &v16;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v14, &v16);
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v16);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = (*(*a2 + 8) - **a2) >> 2;
    std::vector<int>::push_back[abi:ne200100](&v16, &v13);
    std::vector<int>::push_back[abi:ne200100](&v16, &v15);
    std::vector<int>::push_back[abi:ne200100](&v16, &v15);
    std::vector<int>::push_back[abi:ne200100](&v16, &v15);
    std::vector<int>::push_back[abi:ne200100](&v16, &v15);
    *(a1 + 156) = (v17 - v16) >> 2;
    Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation(&v12);
    v10 = *a2;
    v9 = a2[1];
    while (v10 != v9)
    {
      Nightingale::wristTemperatureInputValidation::checkListOfConditions(&v12, v14, v10, &v16, a4, *(a1 + 72), __p);
      std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:ne200100](a5, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 += 24;
    }

    Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation(&v12);
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    v16 = v14;
    std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&v16);
  }
}

void sub_25C6515C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p, char *a22)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

float32x2_t Nightingale::slidingWindowBaseLuna::reset(Nightingale::slidingWindowBaseLuna *this)
{
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 20);
  *(this + 25) = 0;
  if (*(this + 232) == 1)
  {
    *(this + 232) = 0;
  }

  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 236) = 0xFFFFFFFFLL;
  result = vneg_f32(0x3F0000003FLL);
  *(this + 244) = result;
  *(this + 63) = 2143289344;
  *(this + 256) = 0;
  *(this + 260) = 0x800000008;
  *(this + 35) = 0;
  *(this + 74) = 0;
  return result;
}

float Nightingale::slidingWindowBaseLuna::getRollingScoreASlice(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 40);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v13, v4, v4 + 4 * v5, v5);
  v6 = a2[1];
  v7 = *a2 + 4 * *(a1 + 40);
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v7, v6, (v6 - v7) >> 2);
  SlidingWinScore = Nightingale::getSlidingWinScore(&v13, &__p, -1.0);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return SlidingWinScore;
}

void sub_25C651798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::slidingWindowBaseLuna::updateRollingBufferWithAVal(float a1, uint64_t a2, const void **a3, int a4)
{
  v8 = a1;
  v6 = *a3;
  v5 = a3[1];
  if (*a3 != v5 && a4 <= ((v5 - v6) >> 2))
  {
    v7 = v5 - (v6 + 4);
    if (v5 != v6 + 4)
    {
      memmove(v6, v6 + 4, v5 - (v6 + 4));
    }

    a3[1] = &v6[v7];
  }

  std::vector<float>::push_back[abi:ne200100](a3, &v8);
}

uint64_t Nightingale::slidingWindowBaseLuna::applyAlgorithm(uint64_t a1, uint64_t *a2)
{
  v3 = ~(*(a1 + 100) + *(a1 + 96)) - 1431655765 * ((a2[1] - *a2) >> 3);
  v4 = v3 & ~(v3 >> 31);
  *(a1 + 184) = v4;
  Nightingale::slidingWindowBaseLuna::findRollingOfRolling(a1, a2, *(a1 + 88), v4, 1, 0, &v6);
  *(a1 + 216) = v6;
  *(a1 + 232) = v7;

  return Nightingale::slidingWindowBaseLuna::updateSearchRsltWeakSignal(a1);
}

void Nightingale::slidingWindowBaseLuna::findRollingOfRolling(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 16) = 0;
  OverallWTmpValidationRsltASlice = Nightingale::assertVectorOfVectors(a2);
  if (!OverallWTmpValidationRsltASlice)
  {
    return;
  }

  if (*(a1 + 148) == 1)
  {
    v15 = *(a1 + 160);
    v16 = *(a1 + 168);
    if (v15 != v16)
    {
      v17 = 0;
      do
      {
        if (**v15 != 1)
        {
          break;
        }

        if (++v17 >= *(a1 + 144))
        {
          return;
        }

        v15 += 3;
      }

      while (v15 != v16);
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v18 = *a2;
  v19 = a2[1];
  if (*a2 == v19)
  {
    v30 = 0;
    LODWORD(v21) = 0;
    v24 = -1.0;
    Mean = 0.0;
    RollingScoreASlice = -1.0;
    if (!a6)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v31 = a6;
    v20 = 0;
    v21 = 0;
    Mean = 0.0;
    RollingScoreASlice = -1.0;
    v24 = -1.0;
    do
    {
      v25 = *(a1 + 160);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - v25) >> 3);
      if (v26 <= v21)
      {
        goto LABEL_45;
      }

      if (**(v25 + v20))
      {
        if (a5)
        {
          v24 = -1.0;
          RollingScoreASlice = -1.0;
        }
      }

      else
      {
        RollingScoreASlice = Nightingale::slidingWindowBaseLuna::getRollingScoreASlice(a1, (v18 + v20));
        v24 = v27;
        v25 = *(a1 + 160);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - v25) >> 3);
      }

      if (v26 <= v21)
      {
LABEL_45:
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (**(v25 + v20) != 1 || a5 != 0)
      {
        Nightingale::slidingWindowBaseLuna::updateRollingBufferWithAVal(RollingScoreASlice, OverallWTmpValidationRsltASlice, &v39, *(a1 + 76));
        Nightingale::slidingWindowBaseLuna::updateRollingBufferWithAVal(v24, v29, &v36, *(a1 + 76));
      }

      if (v21 >= a4)
      {
        OverallWTmpValidationRsltASlice = Nightingale::slidingWindowBaseLuna::getOverallWTmpValidationRsltASlice(a1, v21);
        if ((OverallWTmpValidationRsltASlice & 1) == 0)
        {
          __p = 0;
          v34 = 0;
          v35 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v39, v40, (v40 - v39) >> 2);
          Mean = Nightingale::getMeanWin<float>(&__p, -1);
          if (__p)
          {
            v34 = __p;
            operator delete(__p);
          }

          if (Mean <= *(a1 + 80) || Mean >= *(a1 + 84))
          {
            v32 = 1;
            OverallWTmpValidationRsltASlice = std::vector<BOOL>::push_back(a1 + 272, &v32);
          }

          else
          {
            v32 = 0;
            OverallWTmpValidationRsltASlice = std::vector<BOOL>::push_back(a1 + 272, &v32);
            if (a3)
            {
              *a7 = v21 | (LODWORD(RollingScoreASlice) << 32);
              *(a7 + 8) = LODWORD(v24) | (LODWORD(Mean) << 32);
              v30 = 1;
              *(a7 + 16) = 1;
              goto LABEL_33;
            }
          }
        }
      }

      ++v21;
      v20 += 24;
    }

    while (v18 + v20 != v19);
    v30 = 0;
LABEL_33:
    if (!v31)
    {
      goto LABEL_37;
    }
  }

  *(a1 + 280) = 0;
  v32 = Mean <= *(a1 + 80);
  std::vector<BOOL>::push_back(a1 + 272, &v32);
LABEL_37:
  if ((a3 & 1) == 0)
  {
    *a7 = v21 | (LODWORD(RollingScoreASlice) << 32);
    *(a7 + 8) = LODWORD(v24) | (LODWORD(Mean) << 32);
    if ((v30 & 1) == 0)
    {
      *(a7 + 16) = 1;
    }
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

void sub_25C651BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::slidingWindowBaseLuna::updateSearchRsltWeakSignal(uint64_t this)
{
  if (*(this + 140) == 1 && *(this + 124) == 1 && *(this + 232) == 1 && *(this + 220) < *(this + 108))
  {
    v1 = *(this + 136) - *(this + 120);
    v2 = *(this + 160);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 168) - v2) >> 3) <= v1)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    if ((**(v2 + 24 * v1) & 1) == 0)
    {
      *(this + 216) = v1;
    }
  }

  return this;
}

uint64_t Nightingale::slidingWindowBaseLuna::checkNumContinuousSlicesFailAvailabilityOverThreshold(Nightingale::slidingWindowBaseLuna *this)
{
  if (*(this + 148) != 1)
  {
    return 0;
  }

  v1 = *(this + 20);
  v2 = *(this + 21);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    if (**v1 != 1)
    {
      LODWORD(v2) = 0;
      v4 = 1;
      return v4 & v2;
    }

    if (++v3 >= *(this + 36))
    {
      break;
    }

    v1 += 3;
    if (v1 == v2)
    {
      v4 = 0;
      return v4 & v2;
    }
  }

  v4 = 1;
  LODWORD(v2) = 1;
  return v4 & v2;
}

uint64_t Nightingale::slidingWindowBaseLuna::getOverallWTmpValidationRsltASlice(Nightingale::slidingWindowBaseLuna *this, int a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21);
  if (v2 == v3 || 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) <= a2)
  {
    return 1;
  }

  v4 = (v2 + 24 * a2);
  v6 = *v4;
  v5 = v4[1];
  if (v6 == v5)
  {
    return 0;
  }

  v7 = v6 + 8;
  do
  {
    result = *(v7 - 8);
    if (result)
    {
      break;
    }

    v9 = v7 == v5;
    v7 += 8;
  }

  while (!v9);
  return result;
}

uint64_t Nightingale::slidingWindowBaseLuna::getSliceCenterOffsetRange(uint64_t this)
{
  v1 = *(*(this + 32) + 4) - **(this + 32);
  v2 = ((v1 + 1) + -13.0);
  v3 = (v2 - *(this + 76) - 8) & ~((v2 - *(this + 76) - 8) >> 31);
  v4 = v3 + 6;
  if (v1 >= v2 + 10)
  {
    v1 = v2 + 10;
  }

  v5 = v1 - 5;
  if (v1 - 5 >= v4)
  {
    *(this + 120) = v4;
    *(this + 124) = 1;
    *(this + 128) = v5;
    *(this + 132) = 1;
    if (v5 >= v2 && v4 <= v2)
    {
      *(this + 136) = v2;
      *(this + 140) = 1;
      *(this + 144) = v2 - v3 + *(this + 116) - 6;
      *(this + 148) = 1;
    }
  }

  return this;
}

unint64_t Nightingale::slidingWindowBaseLuna::accumulateFailureReasonOverSlices(Nightingale::slidingWindowBaseLuna *this, char a2)
{
  v4 = *(this + 39);
  LODWORD(v23) = 0;
  std::vector<int>::vector[abi:ne200100](&__p, v4);
  v5 = *(this + 20);
  v6 = *(this + 21);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (v7 >= *(this + 46))
      {
        v8 = *v5;
        v9 = *(v5 + 8);
        if (*v5 != v9)
        {
          v10 = 0;
          v11 = __p;
          v12 = (v27 - __p) >> 2;
          while (1)
          {
            if (*v8 == 1)
            {
              if (v12 <= v10)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              ++v11[v10];
              if (a2)
              {
                break;
              }
            }

            v8 += 8;
            if (v8 == v9)
            {
              break;
            }

            ++v10;
          }
        }
      }

      ++v7;
      v5 += 24;
    }

    while (v5 != v6);
  }

  v13 = *(this + 35);
  v23 = *(this + 34);
  LODWORD(v24) = 0;
  v25 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&v23, v13);
  std::vector<int>::push_back[abi:ne200100](&__p, &v25);
  Nightingale::mapToOrderOffwEndConfirmationFailureReasonACycle_t(&__p, &v23);
  v14 = v23;
  if (v23 == v24)
  {
    v16 = v23;
    if (v23)
    {
LABEL_21:
      v24 = v23;
      operator delete(v23);
    }
  }

  else
  {
    v15 = v23 + 4;
    v16 = v23;
    if (v23 + 4 != v24)
    {
      v17 = *v23;
      v16 = v23;
      v18 = v23 + 4;
      do
      {
        v20 = *v18;
        v18 += 4;
        v19 = v20;
        v21 = v17 < v20;
        if (v17 <= v20)
        {
          v17 = v19;
        }

        if (v21)
        {
          v16 = v15;
        }

        v15 = v18;
      }

      while (v18 != v24);
    }

    if (v23)
    {
      goto LABEL_21;
    }
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return (v16 - v14) >> 2;
}

void sub_25C651FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::mapToOrderOffwEndConfirmationFailureReasonACycle_t(int **a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  std::vector<int>::vector[abi:ne200100](a2, 0xAuLL);
  v16 = xmmword_25C67C750;
  v17 = 0x200000004;
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&__p, &v16, &v18, 6uLL);
  v4 = *a1;
  v5 = a1[1];
  v6 = __p;
  if (*a1 == v5)
  {
    if (!__p)
    {
      return;
    }
  }

  else
  {
    v7 = (v14 - __p) >> 2;
    v8 = *a2;
    v9 = (a2[1] - *a2) >> 2;
    v10 = __p;
    do
    {
      if (!v7 || (v11 = *v10, v9 <= v11))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *v4++;
      *(v8 + 4 * v11) = v12;
      --v7;
      ++v10;
    }

    while (v4 != v5);
  }

  v14 = v6;
  operator delete(v6);
}

void sub_25C6520EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::slidingWindowBaseLuna::getSlidingWindowCAOut(Nightingale::slidingWindowBaseLuna *this)
{
  *(this + 65) = *(this + 66);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v2 = *(this + 20);
  v3 = *(this + 21);
  if (v2 == v3)
  {
    v7 = 0.0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      v6 = v2[1];
      if ((v6 - *v2) >= 0x19)
      {
        std::vector<float>::push_back[abi:ne200100](__p, v5 + 7);
        v5 = *v2;
        v6 = v2[1];
      }

      if (v6 != v5)
      {
        v4 += *v5;
      }

      v2 += 3;
    }

    while (v2 != v3);
    v7 = v4 + v4;
    if (__p[0] != __p[1])
    {
      Nightingale::removeNANFromVector(__p);
      if (__p[0] != __p[1])
      {
        std::__sort<std::__less<float,float> &,float *>();
        *(this + 63) = Nightingale::getPercentile(__p, 0, 0.5);
      }
    }
  }

  v8 = 0.0;
  if (v7 <= (-1431655765 * ((*(this + 21) - *(this + 20)) >> 3)))
  {
    v8 = 1.0;
  }

  *(this + 61) = v8;
  if (*(this + 232) == 1)
  {
    *(this + 62) = *(this + 56);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25C652264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *Nightingale::slidingWindowHistLuna::slidingWindowHistLuna(uint64_t a1, uint64_t a2)
{
  result = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *result = &unk_286E2A200;
  return result;
}

{
  result = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *result = &unk_286E2A200;
  return result;
}

uint64_t Nightingale::slidingWindowDayStreamLuna::slidingWindowDayStreamLuna(uint64_t a1, uint64_t a2)
{
  v3 = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *v3 = &unk_286E2A248;
  Nightingale::slidingWindowDayStreamLuna::setSlidingWinConfig(v3);
  return a1;
}

double Nightingale::slidingWindowDayStreamLuna::setSlidingWinConfig(Nightingale::slidingWindowDayStreamLuna *this)
{
  v6 = *MEMORY[0x277D85DE8];
  *(this + 5) = 0x500000007;
  v3 = xmmword_25C67C6AC;
  v4 = 1050337608;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(this + 6, &v3, v5, 5uLL);
  *(this + 72) = 0;
  *(this + 19) = 3;
  *(this + 10) = 0x3F3AE1483F09E83ELL;
  *(this + 44) = 257;
  *(this + 23) = 1058139013;
  *(this + 12) = 0x300000002;
  *(this + 27) = 1058139013;
  *&result = 0x100000001;
  *(this + 14) = 0x100000001;
  return result;
}

uint64_t Nightingale::slidingWindowDayStreamLuna::getSliceCenterOffsetRange(uint64_t this)
{
  v1 = *(this + 32);
  v2 = *(v1 + 28) - (*(this + 44) + *v1);
  *(this + 128) = v2;
  *(this + 132) = 1;
  v3 = *(this + 76);
  *(this + 120) = v2 - v3 + 1;
  *(this + 124) = 1;
  if (*(v1 + 12) == 1)
  {
    v4 = *(v1 + 8) + -13.0;
    if ((*(this + 140) & 1) == 0)
    {
      *(this + 140) = 1;
    }

    *(this + 136) = v4;
  }

  *(this + 144) = v3;
  *(this + 148) = 1;
  return this;
}

double Nightingale::slidingWindowDayStreamLuna::applyAlgorithm(uint64_t a1, uint64_t *a2)
{
  Nightingale::slidingWindowBaseLuna::findRollingOfRolling(a1, a2, *(a1 + 88), *(a1 + 76) - 1, 0, 1, &v4);
  result = *&v4;
  *(a1 + 216) = v4;
  *(a1 + 232) = v5;
  return result;
}

BOOL Nightingale::slidingWindowDayStreamLuna::validateResults(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    if ((*(a1 + 124) & 1) == 0 || (v3 = *(a1 + 32), (*(v3 + 12) & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v6 = Nightingale::passLutealPhaseCheck((*(a1 + 120) + *a2), *(v3 + 8), *(a1 + 112));
    std::vector<BOOL>::push_back(a1 + 192, &v6);
    return v6;
  }

  else
  {
    return 0;
  }
}

void Nightingale::slidingWindowDayStreamLuna::getSlidingWindowCAOut(Nightingale::slidingWindowDayStreamLuna *this)
{
  *(this + 65) = *(this + 66);
  if (*(this + 232) == 1)
  {
    *(this + 62) = Nightingale::getLogit(this, *(this + 57));
  }

  if (*(this + 148) != 1 || (v2 = *(this + 20), v3 = *(this + 21), v2 == v3))
  {
    v6 = 1;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      if (**v2 != 1)
      {
        v5 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_13;
      }

      if (++v4 >= *(this + 36))
      {
        break;
      }

      v2 += 3;
      if (v2 == v3)
      {
        v5 = 1;
        goto LABEL_13;
      }
    }

    v5 = 0;
    LOBYTE(v3) = 0;
LABEL_13:
    v6 = v5 | v3;
  }

  *(this + 256) = v6 & 1;
}

uint64_t Nightingale::slidingWindowBaseLuna::computeFwEndConfirmationFailureReason(Nightingale::slidingWindowBaseLuna *this)
{
  if (*(this + 232))
  {
    return 9;
  }

  v3 = Nightingale::slidingWindowBaseLuna::accumulateFailureReasonOverSlices(this, *(this + 89));
  v4 = *(this + 1);
  if (v3 >= (*(this + 2) - v4) >> 2)
  {
    return 8;
  }

  else
  {
    return *(v4 + 4 * v3);
  }
}

uint64_t Nightingale::slidingWindowBaseLuna::computeFailureCode(uint64_t this)
{
  v1 = *(this + 264);
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (v1 == 9)
  {
    v2 = 0;
  }

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *(this + 240) = v3;
  return this;
}

uint64_t Nightingale::slidingWindowDayStreamLuna::computeFwEndConfirmationFailureReason(Nightingale::slidingWindowDayStreamLuna *this)
{
  if (*(this + 232))
  {
    return 9;
  }

  v3 = *(this + 21);
  if (*(this + 20) == v3)
  {
    return 8;
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<std::pair<BOOL,float>>::__init_with_size[abi:ne200100]<std::pair<BOOL,float>*,std::pair<BOOL,float>*>(&__p, *(v3 - 24), *(v3 - 16), (*(v3 - 16) - *(v3 - 24)) >> 3);
  if (*(this + 148) == 1)
  {
    v4 = *(this + 20);
    v5 = *(this + 21);
    if (v4 != v5)
    {
      v6 = 0;
      while (1)
      {
        if (**v4 != 1)
        {
          goto LABEL_10;
        }

        if (++v6 >= *(this + 36))
        {
          break;
        }

        v4 += 3;
        if (v4 == v5)
        {
          goto LABEL_10;
        }
      }

      v1 = 1;
      goto LABEL_24;
    }
  }

LABEL_10:
  v7 = *(this + 35);
  if (v7 && ((*(*(this + 34) + (((v7 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 - 1)) & 1) != 0)
  {
    v1 = 3;
    goto LABEL_24;
  }

  if ((v10 - __p) < 0x19)
  {
    goto LABEL_27;
  }

  if (*(__p + 24))
  {
    v1 = 2;
    goto LABEL_24;
  }

  if (v10 - __p == 32)
  {
LABEL_27:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(__p + 32))
  {
    v1 = 4;
  }

  else if (*(__p + 16))
  {
    v1 = 5;
  }

  else
  {
    v1 = 8;
  }

LABEL_24:
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_25C652818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct *Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct::slidingWinConfigStruct(Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct *this)
{
  *&v5[4] = *MEMORY[0x277D85DE8];
  *this = 0x500000007;
  v3 = xmmword_25C67C73C;
  v4 = 1050337608;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(this + 8, &v3, v5, 5uLL);
  *(this + 32) = 0;
  *(this + 9) = 5;
  *(this + 5) = 0x3F3AE1483F0A3D71;
  *(this + 24) = 257;
  *(this + 13) = 1058139013;
  *(this + 7) = 0x500000003;
  *(this + 17) = 1058139013;
  *(this + 9) = 0x100000001;
  return this;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25C652A0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __65__period_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[period_lstm alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__period_lstm_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [period_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(period_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __64__period_lstm_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [period_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(period_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __65__fwEnddet_rf_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[fwEnddet_rf alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__fwEnddet_rf_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [fwEnddet_rfOutput alloc];
    v7 = [v14 featureValueForName:@"classLabel"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(fwEnddet_rfOutput *)v6 initWithClassLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__fwEnddet_rf_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [fwEnddet_rfOutput alloc];
    v7 = [v14 featureValueForName:@"classLabel"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(fwEnddet_rfOutput *)v6 initWithClassLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __67__fwEnddet_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[fwEnddet_lstm alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__fwEnddet_lstm_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [fwEnddet_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(fwEnddet_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __66__fwEnddet_lstm_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [fwEnddet_lstmOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(fwEnddet_lstmOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

BOOL Nightingale::periodPredictorWrapper_t::init(Nightingale::periodPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  v5 = *(a2 + 27);
  v3 = a2 + 216;
  v4 = v5;
  if (v3[23] >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = objc_opt_new();
  v10 = *(this + 2);
  *(this + 2) = v9;

  v11 = *(this + 2);
  if (!v11)
  {
    v14 = 0;
    goto LABEL_13;
  }

  [v11 setComputeUnits:0];
  v12 = *(this + 2);
  v29 = 0;
  v13 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v12 error:&v29];
  v14 = v29;
  v15 = *(this + 4);
  *(this + 4) = v13;

  if (v14)
  {
LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v16 = [*(this + 4) modelDescription];
  v17 = [v16 inputDescriptionsByName];
  v18 = [v17 objectForKeyedSubscript:@"in"];
  v19 = [v18 multiArrayConstraint];
  v20 = [v19 shape];

  v21 = [v20 objectAtIndexedSubscript:0];
  if ([v20 count] == 1 && objc_msgSend(v21, "intValue") == 5)
  {

    v20 = &unk_286E2EB38;
  }

  v28 = 0;
  v22 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v20 dataType:65600 error:&v28];
  v14 = v28;
  v23 = *this;
  *this = v22;

  v24 = *this != 0;
  if (*this)
  {
    v25 = [[model_period_LstmInput alloc] initWithIn:*this lstm_1_h_in:0 lstm_1_c_in:0];
    v26 = *(this + 3);
    *(this + 3) = v25;
  }

LABEL_14:
  return v24;
}

uint64_t Nightingale::periodPredictorWrapper_t::predictPeriod(uint64_t a1, uint64_t **a2, const void **a3)
{
  std::vector<double>::vector[abi:ne200100](&__p, 0xE1uLL);
  v6 = 0;
  v7 = *a2;
  v8 = __p;
  v9 = a2[3];
  v10 = a2[6];
  v11 = a2[9];
  v12 = a2[12];
  do
  {
    v13 = *v7++;
    v14 = &v8[v6];
    *v14 = v13;
    v15 = *v9++;
    *(v14 + 1) = v15;
    v16 = *v10++;
    *(v14 + 2) = v16;
    v17 = *v11++;
    *(v14 + 3) = v17;
    v18 = *v12++;
    *(v14 + 4) = v18;
    v6 += 40;
  }

  while (v6 != 1800);
  v19 = v41;
  v20 = [*a1 dataPointer];
  if (v19 != v8)
  {
    memmove(v20, v8, v19 - v8);
  }

  v22 = *(a1 + 24);
  v21 = *(a1 + 32);
  v39 = 0;
  v23 = [v21 predictionFromFeatures:v22 error:&v39];
  v24 = v39;
  v25 = [model_period_LstmOutput alloc];
  v26 = [v23 featureValueForName:@"out"];
  v27 = [v26 multiArrayValue];
  v28 = [v23 featureValueForName:@"lstm_1_h_out"];
  v29 = [v28 multiArrayValue];
  v30 = [v23 featureValueForName:@"lstm_1_c_out"];
  v31 = [v30 multiArrayValue];
  v32 = [(model_period_LstmOutput *)v25 initWithOut:v27 lstm_1_h_out:v29 lstm_1_c_out:v31];

  for (i = 0; i != 32; ++i)
  {
    v34 = [(model_period_LstmOutput *)v32 out];
    v35 = [v34 objectAtIndexedSubscript:i];
    [v35 doubleValue];
    *&v36 = v36;
    v38 = LODWORD(v36);
    std::vector<float>::push_back[abi:ne200100](a3, &v38);
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25C656448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Nightingale::periodPredictorWrapper_t::periodPredictorWrapper_t(Nightingale::periodPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t Nightingale::periodPredictorTransformerWrapper_t::init(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = objc_opt_new();
  v7 = a1[2];
  a1[2] = v6;

  v8 = a1[2];
  if (v8)
  {
    [v8 setComputeUnits:0];
    v21 = 0;
    v9 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_286E2EB50 dataType:65568 error:&v21];
    v10 = v21;
    v11 = *a1;
    *a1 = v9;

    if (*a1)
    {
      v12 = a1[2];
      v20 = v10;
      v13 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v12 error:&v20];
      v14 = v20;

      v15 = a1[4];
      a1[4] = v13;

      if (v14)
      {
        v16 = 0;
        v10 = v14;
      }

      else
      {
        v17 = [[model_period_TFInput alloc] initWithIn:*a1];
        v18 = a1[3];
        a1[3] = v17;

        v10 = 0;
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v10 = 0;
  }

  return v16;
}

uint64_t Nightingale::periodPredictorTransformerWrapper_t::predictPeriod(uint64_t a1, uint64_t *a2, const void **a3)
{
  std::vector<float>::vector[abi:ne200100](&__p, 0xE1uLL);
  v6 = *a2;
  v7 = __p;
  v8 = a2[3];
  v9 = a2[6];
  v10 = a2[9];
  v11 = a2[12];
  v12 = (__p + 16);
  v13 = -360;
  do
  {
    v14.f64[0] = *(v6 + v13 + 360);
    v15.f64[0] = *(v9 + v13 + 360);
    v15.f64[1] = *(v10 + v13 + 360);
    v14.f64[1] = *(v8 + v13 + 360);
    v12[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v15);
    *v14.f64 = *(v11 + v13 + 360);
    v12->i32[0] = LODWORD(v14.f64[0]);
    v12 = (v12 + 20);
    v13 += 8;
  }

  while (v13);
  v16 = v36;
  v17 = [*a1 dataPointer];
  if (v16 != v7)
  {
    memmove(v17, v7, v16 - v7);
  }

  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  v34 = 0;
  v20 = [v18 predictionFromFeatures:v19 error:&v34];
  v21 = v34;
  v22 = [model_period_TFOutput alloc];
  v23 = [v20 featureValueForName:@"out"];
  v24 = [v23 multiArrayValue];
  v25 = [(model_period_TFOutput *)v22 initWithOut:v24];

  v26 = 0;
  v27 = 1;
  do
  {
    v28 = v27;
    v29 = [(model_period_TFOutput *)v25 out];
    v30 = [v29 objectAtIndexedSubscript:v26];
    [v30 floatValue];
    v33 = v31;
    std::vector<float>::push_back[abi:ne200100](a3, &v33);

    v27 = 0;
    v26 = 1;
  }

  while ((v28 & 1) != 0);

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25C65692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Nightingale::periodPredictorTransformerWrapper_t::periodPredictorTransformerWrapper_t(Nightingale::periodPredictorTransformerWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t Nightingale::periodPredictorEnsembleWrapper_t::init(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = objc_opt_new();
  v7 = a1[2];
  a1[2] = v6;

  v8 = a1[2];
  if (v8)
  {
    [v8 setComputeUnits:0];
    v9 = a1[2];
    v20 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v9 error:&v20];
    v11 = v20;
    v12 = a1[4];
    a1[4] = v10;

    if (v11 || (v19 = 0, v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_286E2EB68 dataType:65568 error:&v19], v11 = v19, v15 = *a1, *a1 = v14, v15, !*a1))
    {
      v13 = 0;
    }

    else
    {
      v16 = [[model_period_EnsembleInput alloc] initWithIn:*a1];
      v17 = a1[3];
      a1[3] = v16;

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  return v13;
}

uint64_t Nightingale::periodPredictorEnsembleWrapper_t::predictPeriod(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  std::vector<double>::vector[abi:ne200100](__p, 0xE1uLL);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = [*a1 dataPointer];
  if (v7 != v6)
  {
    memmove(v8, v6, v7 - v6);
  }

  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v20 = 0;
  v11 = [v9 predictionFromFeatures:v10 error:&v20];
  v12 = v20;
  v13 = [model_period_TFOutput alloc];
  v14 = [v11 featureValueForName:@"out"];
  v15 = [v14 multiArrayValue];
  v16 = [(model_period_TFOutput *)v13 initWithOut:v15];

  v17 = [(model_period_TFOutput *)v16 out];
  v18 = [v17 objectAtIndexedSubscript:0];
  *a3 = [v18 intValue];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_25C656D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Nightingale::periodPredictorEnsembleWrapper_t::periodPredictorEnsembleWrapper_t(Nightingale::periodPredictorEnsembleWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25C656E24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::periodEstimatorCalendar::periodEstimatorCalendar(Nightingale::periodEstimatorCalendar *this, const Nightingale::ngt_Config *a2)
{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

double Nightingale::periodEstimatorCalendar::predict1stPeriodStartCal@<D0>(Nightingale::periodEstimatorCalendar *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Nightingale::CGradient::CGradient(a6);
  if (*(a2 + 36) == 1 && *(a2 + 44) == 1)
  {
    NullPoint = Nightingale::periodEstimatorBase::getNullPoint(a1, (a3 + 1) & ((a3 >> 1) >> 31) | a3 & 0x100000000, a4, *a2);
    if ((*(a2 + 36) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((*(a2 + 44) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v14 = *(a2 + 40);
    v15 = 0.0;
    if (a5 != -2)
    {
      v15 = *(a2 + 40);
    }

    if ((a5 & 0x100000000) != 0)
    {
      v14 = v15;
    }

    Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(a1, NullPoint & 0xFFFFFFFFFFLL, &v17, *(a2 + 32), v14);
    v16 = *a6;
    if (*a6)
    {
      *(a6 + 8) = v16;
      operator delete(v16);
    }

    *a6 = v17;
    *(a6 + 16) = v18;
    *(a6 + 24) = v19[0];
    result = *(v19 + 9);
    *(a6 + 33) = *(v19 + 9);
  }

  return result;
}

void sub_25C656FFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(Nightingale::periodEstimatorCalendar *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  Nightingale::periodEstimatorCalendar::getPeriodStartGradient(a1, a4, a5, a3);
  if ((a2 & 0x100000000) != 0)
  {
    Nightingale::periodEstimatorCalendar::adjustForGradientNull(v9, a2, a3, a4, a5);
  }

  else
  {
    *(a3 + 36) = a4;
    *(a3 + 40) = 1;
    *(a3 + 44) = sqrtf(a5);
    *(a3 + 48) = 1;
  }
}

void sub_25C657090(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double Nightingale::periodEstimatorCalendar::getPeriodStartGradient@<D0>(Nightingale::periodEstimatorCalendar *this@<X0>, float a2@<S0>, float a3@<S1>, uint64_t a4@<X8>)
{
  Nightingale::CGradient::CGradient(a4);
  GradientLength = Nightingale::periodEstimatorCalendar::getGradientLength(this, a2, a3);
  Nightingale::periodEstimatorCalendar::getGradient(a2, a3, GradientLength, &v11);
  v9 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v9;
    operator delete(v9);
  }

  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13[0];
  result = *(v13 + 9);
  *(a4 + 33) = *(v13 + 9);
  return result;
}

void sub_25C657144(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::periodEstimatorCalendar::adjustForGradientNull(int a1, uint64_t a2, Nightingale::CGradient *this, float a4, float a5)
{
  result = Nightingale::CGradient::get_vGrad_empty(this);
  if ((result & 1) == 0 && (a2 & 0x100000000) != 0)
  {
    v10 = a4 + sqrtf(a5) * 1.64999998;
    if (a2 <= llround(v10))
    {
      Nightingale::CGradient::annihilateEarly(this, a2 + 1, *&v10);
      result = Nightingale::CGradient::normalize(this);
      *(this + 34) = 1;
    }

    else
    {
      *(this + 33) = 1;
      *(this + 1) = *this;
    }
  }

  return result;
}

uint64_t Nightingale::periodEstimatorCalendar::getGradientLength(Nightingale::periodEstimatorCalendar *this, float a2, float a3)
{
  v5 = sqrtf(a3) * 10.0;
  if (v5 >= 20.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20.0;
  }

  if (Nightingale::check2Real_t_equal(this, fabsf(a3), 0.0))
  {
    v6 = sqrt(*(this + 6)) * 10.0;
  }

  return (v6 + a2);
}

uint64_t Nightingale::periodEstimatorCalendar::getGradient@<X0>(float a1@<S0>, float a2@<S1>, int a3@<W1>, Nightingale::CGradient *a4@<X8>)
{
  v9 = Nightingale::CGradient::CGradient(a4);
  if (a3 >= 1)
  {
    v10 = 0;
    v11 = a1;
    v12 = a2;
    do
    {
      v13 = Nightingale::gaussian_pdf(v9, v10, v11, v12);
      Nightingale::CGradient::push_back(a4, v13);
      ++v10;
    }

    while (a3 != v10);
  }

  return Nightingale::CGradient::normalize(a4);
}

void sub_25C657300(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::periodEstimatorCalendarWithEnd::periodEstimatorCalendarWithEnd(Nightingale::periodEstimatorCalendarWithEnd *this, const Nightingale::ngt_Config *a2)
{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

{
  result = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = 16;
  if (*(a2 + 52) == 1)
  {
    if ((*(a2 + 12) - 18) >= 0x1B)
    {
      v4 = 36;
    }

    else
    {
      v4 = 16;
    }
  }

  *(result + 24) = v4;
  return result;
}

void Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(uint64_t a1@<X1>, Nightingale::CGradient *a2@<X2>, uint64_t a3@<X8>)
{
  Nightingale::CGradient::CGradient(a3);
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  if (*(a1 + 60) == 1 && *(a1 + 52) == 1)
  {
    v6 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    *v16 = v6;
    *&v16[13] = *(a1 + 61);
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v18 = 0;
    v19 = 0;
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    __p = 0;
    std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&__p, v8, v9, v9 - v8);
    Nightingale::periodEstimatorCalendarWithEnd::get_period_duration_pdf(v15, v20);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    Nightingale::CGradient::get_list_reference(v20, v14);
    Nightingale::CGradient::get_list_reference(a2, v10);
    Nightingale::periodEstimatorCalendarWithEnd::get_period_end_gradient(v14, v10, &v11);
    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }

    if (&v11 != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, v11, v12, (v12 - v11) >> 2);
    }

    *(a3 + 24) = v13[0];
    *(a3 + 33) = *(v13 + 9);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }
  }
}

void sub_25C65752C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v36 = *(v34 - 88);
  if (v36)
  {
    *(v34 - 80) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::periodEstimatorCalendarWithEnd::get_period_duration_pdf(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  Nightingale::CGradient::CGradient(a2);
  if (*(a1 + 52) == 1 && (*(a1 + 60) & 1) != 0)
  {
    Nightingale::periodEstimatorCalendar::getGradient(*(a1 + 48) + -1.0, *(a1 + 56), 60, &v5);
    v4 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7[0];
    *(a2 + 33) = *(v7 + 9);
  }

  else
  {
    *(a2 + 33) = 1;
    *(a2 + 8) = *a2;
  }
}

void sub_25C657660(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::periodEstimatorCalendarWithEnd::get_period_end_gradient(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  Nightingale::convolve_on_top(a2, a1, &__p, 0);
  Nightingale::CGradient::CGradient(a3, &__p);
  Nightingale::CGradient::normalize(a3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25C6576E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(Nightingale::wristTemperatureInputAcquisition *this)
{
  v1 = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

{
  v1 = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(Nightingale::wristTemperatureInputAcquisition *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

int64_t Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v3 = 0xEEEEEEEEEEEEEEEFLL * (v3 >> 2);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    while ((v2[56] & 1) == 0)
    {
      ++v4;
      v2 += 60;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v5 = *v2;
    v3 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5 | (v3 << 32);
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getAWTmpEntryDailyData(uint64_t a1, void *a2, int *a3, int a4)
{
  v4 = *a3;
  v5 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2);
  if (v5 <= v4)
  {
    return 0;
  }

  v6 = v4 + 1;
  for (i = (*a2 + 60 * v4 + 56); *(i - 14) != a4; i += 60)
  {
    ++v4;
    ++v6;
    if (v5 <= v4)
    {
      return 0;
    }
  }

  if (*i == 1)
  {
    result = *(i - 1);
  }

  else
  {
    result = 0;
  }

  *a3 = v6;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(void *a1@<X1>, int a2@<W2>, int a3@<W3>, unint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v6 = a6;
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a6 + 24) = -1;
  *(a6 + 32) = 0u;
  v7 = (a6 + 32);
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  if ((a5 & 1) == 0 || a3 == -1 || a2 == -1 || a3 < a2)
  {
    return;
  }

  v50 = v7;
  v52 = a4;
  v53 = v6;
  v10 = HIDWORD(a4);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  __src = 0;
  v60 = 0;
  v11 = a2;
  v61 = 0;
  do
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 2);
    if (v12 <= v10)
    {
      goto LABEL_36;
    }

    v13 = v12 - v10;
    v14 = (*a1 + 60 * v10 + 56);
    v15 = -1;
    while (*(v14 - 14) != v11)
    {
      --v15;
      v14 += 60;
      if (!--v13)
      {
        goto LABEL_36;
      }
    }

    if ((*v14 & 1) == 0)
    {
      LODWORD(v10) = v10 - v15;
LABEL_36:
      v57 = 0;
      v58 = 0;
      if (v65 != v66 && v60 != __src)
      {
        v29 = 0;
        v30 = 0;
        do
        {
          if (0xAAAAAAAAAAAAAAABLL * (v66 - v65) <= v30)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<float>::push_back[abi:ne200100](&v65[v29], &Nightingale::INVALID_TMP);
          ++v30;
          v29 += 3;
        }

        while (v60 - __src > v30);
      }

      continue;
    }

    v16 = *(v14 - 1);
    v57 = v16;
    v58 = 1;
    if (*(v6 + 24) == -1)
    {
      *(v6 + 24) = v11;
    }

    LODWORD(v10) = v10 - v15;
    v18 = __src;
    v17 = v60;
    if (__src == v60)
    {
      std::vector<unsigned char>::push_back[abi:ne200100](&__src, &v57);
      if ((v58 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      goto LABEL_45;
    }

    v19 = memchr(__src, v16, v60 - __src);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17;
    }

    if (v20 == v17)
    {
      v32 = 0;
      v33 = 0;
      v6 = v53;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * (v66 - v65) <= v33)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<float>::push_back[abi:ne200100](&v65[v32], &Nightingale::INVALID_TMP);
        ++v33;
        v32 += 3;
      }

      while (v60 - __src > v33);
      if ((v58 & 1) == 0 || (std::vector<unsigned char>::push_back[abi:ne200100](&__src, &v57), v63 = v62, std::vector<float>::assign(&v62, ((v65[1] - *v65) >> 2) - 1, &Nightingale::INVALID_TMP, v34), v58 != 1))
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

LABEL_45:
      std::vector<float>::push_back[abi:ne200100](&v62, &v57 + 1);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v65, &v62);
      continue;
    }

    v21 = v65;
    v22 = v66;
    if (v65 == v66)
    {
      v23 = 0;
      __p = 0;
      v55 = 0;
      v56 = 0;
      do
      {
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v65, &__p);
        ++v23;
        v18 = __src;
      }

      while (v60 - __src > v23);
      if (__p)
      {
        v55 = __p;
        operator delete(__p);
        v18 = __src;
      }

      v21 = v65;
      v22 = v66;
    }

    if (0xAAAAAAAAAAAAAAABLL * (v22 - v21) <= v20 - v18)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    if ((v58 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::vector<float>::push_back[abi:ne200100](&v21[3 * (v20 - v18)], &v57 + 1);
    v24 = v20 - __src;
    if (v20 - __src >= 1)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * (v66 - v65) <= v26)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<float>::push_back[abi:ne200100](&v65[v25], &Nightingale::INVALID_TMP);
        ++v26;
        v24 = v20 - __src;
        v25 += 3;
      }

      while (v26 < v20 - __src);
    }

    v27 = v24 + 1;
    v6 = v53;
    while (v60 - __src > v27)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v66 - v65) <= v27)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v28 = &v65[3 * v27++];
      std::vector<float>::push_back[abi:ne200100](v28, &Nightingale::INVALID_TMP);
    }
  }

  while (v11++ != a3);
  *(v6 + 28) = a3;
  v36 = v65;
  v35 = v66;
  if (__src == v60)
  {
    v38 = v65;
    v37 = a2;
    if (v66 != v65)
    {
      v39 = v66;
      do
      {
        v41 = *(v39 - 3);
        v39 -= 3;
        v40 = v41;
        if (v41)
        {
          *(v35 - 2) = v40;
          operator delete(v40);
        }

        v35 = v39;
      }

      while (v39 != v36);
      v38 = v65;
    }

    v66 = v36;
    v35 = v36;
    v36 = v38;
  }

  else
  {
    v37 = a2;
  }

  if (v36 == v35)
  {
    v45 = *(v6 + 24);
    v46 = v45 - v37;
    if (v45 <= v37 || v52 > v37)
    {
      goto LABEL_85;
    }

LABEL_84:
    *(v6 + 24) = v45 - v46;
    goto LABEL_85;
  }

  v42 = v36;
  do
  {
    v43 = *v42;
    v44 = v42[1];
    while (v43 != v44)
    {
      if (*v43 > 38.5)
      {
        *v43 = -1082130432;
      }

      v43 += 4;
    }

    v42 += 3;
  }

  while (v42 != v35);
  v45 = *(v6 + 24);
  v46 = v45 - v37;
  if (v45 > v37 && v52 <= v37)
  {
    if (v36 != v35)
    {
      do
      {
        std::vector<float>::vector[abi:ne200100](&__p, v46);
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v36, *v36, __p, v55, (v55 - __p) >> 2);
        if (__p)
        {
          v55 = __p;
          operator delete(__p);
        }

        v36 += 3;
      }

      while (v36 != v35);
      v45 = *(v6 + 24);
    }

    goto LABEL_84;
  }

LABEL_85:
  if (&v65 != v6)
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v6, v65, v66, 0xAAAAAAAAAAAAAAABLL * (v66 - v65));
  }

  v49 = __src;
  if (v50 != &__src)
  {
    std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v50, __src, v60, v60 - __src);
    v49 = __src;
  }

  if (v49)
  {
    v60 = v49;
    operator delete(v49);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v62 = &v65;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v62);
}

void sub_25C657EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  a21 = (v23 - 104);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a21);
  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(v22);
  _Unwind_Resume(a1);
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25C67C510)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25C67C500)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_25C67C510)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_25C67C500)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void Nightingale::wristTemperatureInputAcquisition::removeOutlierUsingSlidingWin(float a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v5 = a4;
  v6 = *a3;
  if (a4 < ((a3[1] - *a3) >> 2))
  {
    v9 = 0;
    v10 = 4 * a4;
    v11 = a5;
    v12 = v10 + 4 * a5;
    v13 = a4;
    do
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v19, v6 + v9, v6 + v10, v5);
      v14 = *a3;
      v17 = 0;
      v18 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v10 + v14, v12 + v14, v11);
      MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v19, &__p, -1.0);
      if ((MeanDiffOf2Windows & 0x100000000) != 0 && COERCE_FLOAT(MeanDiffOf2Windows & 0x7FFFFFFF) >= a1)
      {
        if (v13 >= (a3[1] - *a3) >> 2)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        *(*a3 + 4 * v13) = -1082130432;
      }

      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      ++v13;
      v6 = *a3;
      v12 += 4;
      v10 += 4;
      v9 += 4;
    }

    while (v13 < (a3[1] - *a3) >> 2);
  }
}

void sub_25C658460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getOutlierRmvSegLen(Nightingale::wristTemperatureInputAcquisition *this, int a2, int a3)
{
  if (a3 - a2 < 30)
  {
    return 30;
  }

  LODWORD(result) = 31;
  do
  {
    result = (result - 1);
  }

  while ((a3 - a2) % result < 7);
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, signed int a4@<W3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v14 = HIDWORD(a6);
  std::vector<std::vector<float>>::clear[abi:ne200100](a1);
  a1[4] = a1[3];
  a1[7] = a1[6];
  v15 = -286331153 * ((a5[1] - *a5) >> 2);
  while (v15 >= 1)
  {
    if (*(*a5 + 60 * --v15) <= a4)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  if (v7 <= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = v7;
  }

  if (v7 > a4)
  {
    v15 = v14;
  }

  v17 = v16 | (v15 << 32);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a1, a3 - a2 + 1 - v16, a3 - a2, a5, v17, v18);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v23 = v18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a1, a2, a3, a5, v17, a7);
}

void Nightingale::wristTemperatureInputAcquisition::reset(Nightingale::wristTemperatureInputAcquisition *this)
{
  std::vector<std::vector<float>>::clear[abi:ne200100](this);
  *(this + 4) = *(this + 3);
  *(this + 7) = *(this + 6);
}

void Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(a4, a3 - a2 + 1, a3, a5, 1, a6);
  v9 = *a6;
  v10 = *(a6 + 8);
  if (*a6 != v10 && *v9 != v9[1])
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    if (a1[3] != a1[4])
    {
      v11 = *(a6 + 32);
      v12 = *(a6 + 40);
      if (v11 != v12)
      {
        v13 = 0;
        do
        {
          v14 = a1[3];
          v15 = a1[4];
          v16 = memchr(v14, *v11, v15 - v14);
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          if (v17 == v15)
          {
            LODWORD(__p) = 0;
            std::vector<int>::push_back[abi:ne200100](&v51, &__p);
          }

          else
          {
            if (0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3) <= v13)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v18 = v17 - v14;
            if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v18)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(*a6 + 24 * v13, *(*a6 + 24 * v13), *(*a1 + 24 * v18), *(*a1 + 24 * v18 + 8), (*(*a1 + 24 * v18 + 8) - *(*a1 + 24 * v18)) >> 2);
            if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v18)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            LODWORD(__p) = (*(*a1 + 24 * v18 + 8) - *(*a1 + 24 * v18)) >> 2;
            std::vector<int>::push_back[abi:ne200100](&v51, &__p);
          }

          ++v13;
          ++v11;
        }

        while (v11 != v12);
        v9 = *a6;
        v10 = *(a6 + 8);
      }
    }

    if (v9 != v10)
    {
      v19 = 0;
      do
      {
        if (v51 == v52)
        {
          goto LABEL_23;
        }

        v20 = (v52 - v51) >> 2;
        if (v20 - 1 < v19)
        {
          goto LABEL_23;
        }

        if (v20 <= v19)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        if (*(v51 + v19) || (v30 = *v9, v31 = v9[1], *v9 == v31))
        {
LABEL_23:
          v21 = 0;
        }

        else
        {
          v32 = 0;
          do
          {
            if (*v30 >= 0.0)
            {
              break;
            }

            ++v32;
            ++v30;
          }

          while (v30 != v31);
          v21 = v32;
        }

        v22 = v9[1];
        v23 = &(*v9)[v21];
        __p = 0;
        v49 = 0;
        v50 = 0;
        v24 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v23, v22, (v22 - v23) >> 2);
        Nightingale::wristTemperatureInputAcquisition::removeOutlierUsingSlidingWin(1.0, v24, &__p, 7, 1);
        if (v49 != __p)
        {
          memmove(&(*v9)[v21], __p, v49 - __p);
        }

        if (v51 != v52)
        {
          if (v19 >= ((v52 - v51) >> 2))
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v25 = *(v51 + v19);
          if (v25)
          {
            v27 = *v9;
            v26 = v9[1];
            v28 = &(*v9)[v25];
            v29 = v26 - v28;
            if (v26 != v28)
            {
              memmove(*v9, v28, v26 - v28);
            }

            v9[1] = (v27 + v29);
          }
        }

        v8 = __p;
        if (__p)
        {
          v49 = __p;
          operator delete(__p);
        }

        ++v19;
        v9 += 3;
      }

      while (v9 != v10);
    }

    LOBYTE(v47) = 0;
    BYTE4(v47) = 0;
    v33 = a1[6];
    v34 = a1[7];
    if (v33 == v34)
    {
      if (*(a6 + 56) == *(a6 + 64))
      {
        v8 = std::vector<std::optional<float>>::assign((a6 + 56), *(a6 + 40) - *(a6 + 32), &v47);
      }

      else
      {
        log = ha_get_log();
        v8 = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
        if (v8)
        {
          Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(log);
        }
      }
    }

    else
    {
      if ((a6 + 56) != a1 + 6)
      {
        v8 = std::vector<std::optional<float>>::__assign_with_size[abi:ne200100]<std::optional<float>*,std::optional<float>*>((a6 + 56), v33, v34, (v34 - v33) >> 3);
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3);
      v37 = *(a6 + 56);
      v36 = *(a6 + 64);
      v38 = &v36[-v37] >> 3;
      v39 = v38 >= v35;
      v40 = v38 - v35;
      if (v40 != 0 && v39)
      {
        v41 = (v37 + 8 * v40);
        v42 = v36 - v41;
        if (v36 != v41)
        {
          v8 = memmove(*(a6 + 56), v41, v42 - 3);
        }

        *(a6 + 64) = v37 + v42;
      }

      else
      {
        while (0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3) != (*(a6 + 64) - *(a6 + 56)) >> 3)
        {
          std::vector<std::optional<float>>::push_back[abi:ne200100](a6 + 56, &v47);
        }
      }
    }

    Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(v8, a6, a1 + 6);
    if (*(*a6 + 8) - **a6 > 0x1BuLL)
    {
      std::vector<std::vector<float>>::clear[abi:ne200100](a1);
      v44 = *a6;
      v45 = *(a6 + 8);
      while (v44 != v45)
      {
        v46 = v44[1];
        __p = 0;
        v49 = 0;
        v50 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v46 - 28, v46, 7uLL);
        std::vector<std::vector<float>>::push_back[abi:ne200100](a1, &__p);
        if (__p)
        {
          v49 = __p;
          operator delete(__p);
        }

        v44 += 3;
      }
    }

    else if (*a1 == a1[1] && a1 != a6)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a1, *a6, *(a6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3));
    }

    if (a1 + 3 != (a6 + 32))
    {
      std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(a1 + 3, *(a6 + 32), *(a6 + 40), *(a6 + 40) - *(a6 + 32));
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }
  }
}

void sub_25C658AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(v15);
  _Unwind_Resume(a1);
}

_BYTE *std::vector<std::optional<float>>::assign(void *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::optional<float>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - result) >> 3;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 3;
  }

  for (; v10; --v10)
  {
    v11 = *a3;
    result[4] = *(a3 + 4);
    *result = v11;
    result += 8;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 8 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[a2 - v9];
    v14 = 8 * a2 - 8 * v9;
    do
    {
      *v12++ = *a3;
      v14 -= 8;
    }

    while (v14);
    a1[1] = v13;
  }

  return result;
}

void Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(Nightingale *a1, float ***a2, void *a3)
{
  if (*a2 != a2[1] && **a2 != (*a2)[1])
  {
    v4 = a2[4];
    v5 = a2[5];
    if (v4 != v5)
    {
      LOBYTE(v17) = 0;
      BYTE4(v17) = 0;
      v7 = a3[1];
      if (*a3 == v7)
      {
        a1 = std::vector<std::optional<float>>::assign(a3, v5 - v4, &v17);
      }

      else
      {
        v8 = v7 - *a3;
        if (v5 - v4 > (v8 >> 3))
        {
          v9 = (v8 >> 3);
          do
          {
            std::vector<std::optional<float>>::push_back[abi:ne200100](a3, &v17);
            ++v9;
          }

          while (a2[5] - a2[4] > v9);
        }
      }

      v10 = *a2;
      v11 = a2[1];
      if (0xAAAAAAAAAAAAAAABLL * (v11 - *a2) > (a3[1] - *a3) >> 3)
      {
        log = ha_get_log();
        if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
        {
          Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(log);
        }

        a3[1] = *a3;
        a1 = std::vector<std::optional<float>>::assign(a3, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2), &v17);
        v10 = *a2;
        v11 = a2[1];
      }

      if (v10 != v11)
      {
        v13 = 0;
        do
        {
          v14 = v10[1];
          while (v14 != *v10)
          {
            v15 = *--v14;
            LOBYTE(a1) = Nightingale::check2Real_t_equal(a1, v15, -1.0);
            if ((a1 & 1) == 0)
            {
              if (v13 >= (a3[1] - *a3) >> 3)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v16 = *a3 + 8 * v13;
              *v16 = *v14;
              *(v16 + 4) = 1;
              break;
            }
          }

          ++v13;
          v10 += 3;
        }

        while (v10 != v11);
      }
    }
  }
}

void Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(Nightingale::extractKaliInputsRtn *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (Nightingale::assertVectorOfVectors(a1))
  {
    v11 = *(a1 + 6);
    if (v11 != -1 && *(a1 + 7) != -1)
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 5);
      if (v13 != v14)
      {
        v15 = v14 - v13;
        if (v15 == 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 3) && v15 == (*(a1 + 8) - *(a1 + 7)) >> 3)
        {
          v16 = (v11 - a4);
          if (v16 >= 1)
          {
            std::vector<float>::vector[abi:ne200100](&__p, v16);
            v17 = *a1;
            v18 = *(a1 + 1);
            while (v17 != v18)
            {
              std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v17, *v17, __p, v47, (v47 - __p) >> 2);
              v17 += 3;
            }

            if (__p)
            {
              v47 = __p;
              operator delete(__p);
            }
          }

          if (a3 >= 1)
          {
            v19 = 0;
            v20 = a2;
            v21 = 4 * a2;
            do
            {
              __p = 0;
              v47 = 0;
              v48 = 0;
              v23 = *a1;
              v22 = *(a1 + 1);
              if (*a1 == v22)
              {
                v25 = 0;
                v27 = 0;
              }

              else
              {
                do
                {
                  v24 = *v23;
                  v43 = 0;
                  v44 = 0;
                  v45 = 0;
                  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v43, 4 * v19 + v24, 4 * (v20 + v19) + v24, v20);
                  LODWORD(v38) = Nightingale::getMissingCnt(&v43);
                  std::vector<int>::push_back[abi:ne200100](&__p, &v38);
                  if (v43)
                  {
                    v44 = v43;
                    operator delete(v43);
                  }

                  v23 += 3;
                }

                while (v23 != v22);
                v25 = __p;
                if (__p == v47)
                {
                  v27 = __p;
                }

                else
                {
                  v26 = __p + 4;
                  v27 = __p;
                  if (__p + 4 != v47)
                  {
                    v28 = *__p;
                    v27 = __p;
                    v29 = __p + 4;
                    do
                    {
                      v31 = *v29;
                      v29 += 4;
                      v30 = v31;
                      if (v31 < v28)
                      {
                        v28 = v30;
                        v27 = v26;
                      }

                      v26 = v29;
                    }

                    while (v29 != v47);
                  }
                }
              }

              v42 = (v27 - v25) >> 2;
              std::vector<unsigned char>::push_back[abi:ne200100](a5 + 24, &v42);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 3) <= v42)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v32 = *(*a1 + 24 * v42) + 4 * v19;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v43, v32, v32 + v21, v20);
              std::vector<std::vector<float>>::push_back[abi:ne200100](&v49, &v43);
              v33 = *(a1 + 7);
              if (v42 >= ((*(a1 + 8) - v33) >> 3))
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v41 = *(v33 + 8 * v42);
              if (v19 >= 1)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 3) <= v42)
                {
                  std::vector<int>::__throw_out_of_range[abi:ne200100]();
                }

                v34 = *(*a1 + 24 * v42);
                v38 = 0;
                v39 = 0;
                v40 = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v38, v34, 4 * v19 + v34, v19);
                v35 = v39;
                v36 = v39;
                while (v36 != v38)
                {
                  v37 = *--v36;
                  --v35;
                  if (v37 > 0.0)
                  {
                    *&v41 = *v35;
                    BYTE4(v41) = 1;
                    break;
                  }
                }

                if (v38)
                {
                  v39 = v38;
                  operator delete(v38);
                }
              }

              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 48, &v41);
              if (v43)
              {
                v44 = v43;
                operator delete(v43);
              }

              if (__p)
              {
                v47 = __p;
                operator delete(__p);
              }

              ++v19;
            }

            while (a3 > v19);
          }

          if (&v49 != a5)
          {
            std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a5, v49, v50, 0xAAAAAAAAAAAAAAABLL * (v50 - v49));
          }
        }
      }
    }
  }

  __p = &v49;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_25C6591D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20)
{
  a17 = &a20;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a17);
  Nightingale::pickSlicesStruct::~pickSlicesStruct(v20);
  _Unwind_Resume(a1);
}

void Nightingale::wristTemperatureInputProcess::clearDLSlices(uint64_t a1, uint64_t *a2)
{
  std::vector<std::vector<float>>::clear[abi:ne200100](a2);
  a2[19] = a2[18];
  a2[4] = a2[3];
  a2[10] = 0;
  a2[16] = 0;
  a2[13] = 0;
  a2[7] = a2[6];
  a2[22] = a2[21];
}

void Nightingale::addEntryToNewextractedLunaDayStreamSlice(const void **a1, void *a2, int a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = a3;
  std::vector<std::vector<float>>::push_back[abi:ne200100](a1, (*a2 + 24 * a3));
  v6 = a2[18];
  if (v5 >= (a2[19] - v6) >> 2)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<float>::push_back[abi:ne200100](a1 + 18, (v6 + 4 * v5));
  v7 = a2[3];
  if (a2[4] - v7 <= v5)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<unsigned char>::push_back[abi:ne200100]((a1 + 3), (v7 + v5));
  if (a2[10] <= v5 || (v8 = v5 >> 6, v9 = 1 << v5, v14 = (*(a2[9] + 8 * (v5 >> 6)) & (1 << v5)) != 0, std::vector<BOOL>::push_back((a1 + 9), &v14), a2[16] <= v5) || (v13 = (*(a2[15] + 8 * v8) & v9) != 0, std::vector<BOOL>::push_back((a1 + 15), &v13), a2[13] <= v5))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = (*(a2[12] + 8 * v8) & v9) != 0;
  std::vector<BOOL>::push_back((a1 + 12), &v12);
  v10 = a2[6];
  if (v5 >= (a2[7] - v10) >> 2 || (std::vector<int>::push_back[abi:ne200100](a1 + 6, (v10 + 4 * v5)), v11 = a2[21], v5 >= (a2[22] - v11) >> 2))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<int>::push_back[abi:ne200100](a1 + 21, (v11 + 4 * v5));
}

uint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(void *a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  if (v1 == *a1 || (v1 - *a1) < 9)
  {
    return 2143289344;
  }

  __p = 0x3F800000BF000000;
  LODWORD(v25[0]) = -1090519040;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v20, &__p, v25 + 4, 3uLL);
  v5 = *a1;
  v6 = a1[1] - *a1;
  if (!v6 || (v23[0] = *v5, v6 < 5) || (v23[1] = v5[1], v6 == 8))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v23[2] = v5[2];
  v25[0] = 0;
  v25[1] = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v23, &__p, 3uLL);
  if (a1[1] - *a1 < 9uLL)
  {
    v18 = 0;
LABEL_23:
    v19 = 2143289344;
    goto LABEL_24;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = 0.0;
  v10 = 2;
  do
  {
    SmoothedPow_aSample = Nightingale::getSmoothedPow_aSample(&__p, &v20);
    v13 = Nightingale::check2Real_t_equal(v12, SmoothedPow_aSample, -1.0);
    if (!v13)
    {
      v9 = v9 + SmoothedPow_aSample;
    }

    v14 = *a1;
    v15 = (a1[1] - *a1) >> 2;
    if (v15 - 1 <= v10)
    {
      ++v10;
    }

    else
    {
      v16 = __p;
      v17 = v25[0] - (__p + 4);
      if (v25[0] != __p + 4)
      {
        memmove(__p, __p + 4, v25[0] - (__p + 4));
        v14 = *a1;
        v15 = (a1[1] - *a1) >> 2;
      }

      v25[0] = &v16[v17];
      if (v15 <= ++v10)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      std::vector<float>::push_back[abi:ne200100](&__p, &v14[v10]);
      v15 = (a1[1] - *a1) >> 2;
    }

    v8 = (v8 + v13);
    v7 += !v13;
  }

  while (v15 > v10);
  v18 = v8 << 32;
  if (!v7)
  {
    goto LABEL_23;
  }

  v19 = COERCE_UNSIGNED_INT(v9 / (v7 * 1.5));
LABEL_24:
  if (__p)
  {
    v25[0] = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v18 | v19;
}

uint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpDay2dayNoiseHigh(float a1, uint64_t a2, void *a3)
{
  if (a1 < 0.0 || *a3 == a3[1])
  {
    v4 = 0;
    v7 = 2143289344;
  }

  else
  {
    v7 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(a3);
    v4 = *&v7 > a1 || ((a3[1] - *a3) >> 2) - 2 == v7 >> 32;
  }

  return v4 | (v7 << 32);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpSnrLow(float a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v5 = a4, v6 = *a3, a4 > ((a3[1] - v6) >> 2)))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v21, v6, v6 + 4 * a4, a4);
    v11 = a3[1];
    v12 = *a3 + 4 * v5;
    v19 = 0;
    v20 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v12, v11, (v11 - v12) >> 2);
    Nightingale::pooledVar2Win(&v21, &__p, -1);
    v14 = v13;
    if (v13 >= 1.0e-12 && (MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v21, &__p, -1.0), (MeanDiffOf2Windows & 0x100000000) != 0))
    {
      *&v16 = (*&MeanDiffOf2Windows * *&MeanDiffOf2Windows) / v14;
      v8 = *&v16 < a1;
      v9 = v16 << 32;
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  return v9 | v8;
}

void sub_25C659858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh(float a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 8) == *a3)
  {
    return 0xBF80000000000000;
  }

  *&v6 = Nightingale::getMissingCnt(a3);
  return ((*&v6 / a4) > a1) | (v6 << 32);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpEarlyWinMissingCntHigh(float a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v4 = *a3, a4 > ((a3[1] - v4) >> 2)))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xBF80000000000000;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v15, v4, v4 + 4 * a4, a4);
    v10 = v15;
    v11 = v16 - v15;
    if (v16 == v15)
    {
      v13 = 0xBF80000000000000;
    }

    else
    {
      *&v12 = Nightingale::getMissingCnt(&v15);
      v13 = ((*&v12 / (v11 >> 2)) > a1) | (v12 << 32);
      v10 = v15;
    }

    v8 = v13 & 0xFFFFFFFF00000000;
    if (v10)
    {
      v16 = v10;
      operator delete(v10);
    }

    v7 = v13 & 0xFFFFFF00;
    v6 = v13;
  }

  return v8 | v6 | v7;
}

void sub_25C6599CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpLaterWinMissingCntHigh(float a1, uint64_t a2, void *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v4 = a4, v5 = a3[1], v4 > (v5 - *a3) >> 2))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xBF80000000000000;
  }

  else
  {
    v10 = *a3 + 4 * v4;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v16, v10, v5, (v5 - v10) >> 2);
    v11 = v16;
    v12 = v17 - v16;
    if (v17 == v16)
    {
      v14 = 0xBF80000000000000;
    }

    else
    {
      *&v13 = Nightingale::getMissingCnt(&v16);
      v14 = ((*&v13 / (v12 >> 2)) > a1) | (v13 << 32);
      v11 = v16;
    }

    v8 = v14 & 0xFFFFFFFF00000000;
    if (v11)
    {
      v17 = v11;
      operator delete(v11);
    }

    v7 = v14 & 0xFFFFFF00;
    v6 = v14;
  }

  return v8 | v6 | v7;
}

void sub_25C659AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::wristTemperatureInputValidation::checkListOfConditions(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = a6;
    v12 = a3;
    v14 = 0;
    do
    {
      if (v14 >= (a4[1] - *a4) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v14 >= (a5[1] - *a5) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator()(v7, a1, v12, *(*a4 + 4 * v14), *(*a5 + 4 * v14));
      v16 = v15;
      v18 = *(a7 + 8);
      v17 = *(a7 + 16);
      if (v18 >= v17)
      {
        v20 = (v18 - *a7) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v21 = v17 - *a7;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,float>>>(a7, v23);
        }

        v24 = (8 * v20);
        *v24 = v15;
        v19 = 8 * v20 + 8;
        v25 = *(a7 + 8) - *a7;
        v26 = v24 - v25;
        memcpy(v24 - v25, *a7, v25);
        v27 = *a7;
        *a7 = v26;
        *(a7 + 8) = v19;
        *(a7 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }

        v9 = a6;
        v12 = a3;
      }

      else
      {
        *v18 = v15;
        v19 = (v18 + 1);
      }

      *(a7 + 8) = v19;
      if (v16 & v9)
      {
        break;
      }

      ++v14;
      v7 += 32;
    }

    while (v7 != v8);
  }
}

void sub_25C659C68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, a2, a3, &v8, &v7);
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_25C659E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25C659F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
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

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
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

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v19, a2, a3, v8);
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
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<std::optional<float>>::__assign_with_size[abi:ne200100]<std::optional<float>*,std::optional<float>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
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

      std::vector<std::optional<float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 3);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 3);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 3);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

Nightingale::ngt_HistoricalAnalyzer *Nightingale::ngt_HistoricalAnalyzer::ngt_HistoricalAnalyzer(Nightingale::ngt_HistoricalAnalyzer *this, Nightingale::ngt_Config *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 19) = 0;
  *(this + 18) = this + 152;
  *(this + 20) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  Nightingale::ngt_Config::ngt_Config((this + 168), a2);
  log = ha_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 6;
    strcpy(__p, "4.12.1");
    *buf = 136315138;
    v8 = __p;
    _os_log_impl(&dword_25C4D8000, log, OS_LOG_TYPE_DEFAULT, "HistoricalAnalyzer: %s,\n", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_25C65A61C(_Unwind_Exception *a1)
{
  Nightingale::ngt_Config::~ngt_Config((v1 + 168));
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(v2, *(v1 + 152));
  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  std::pair<std::vector<float>,std::vector<float>>::~pair(v1 + 72);
  v5 = *(v1 + 48);
  if (v5)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void Nightingale::ngt_HistoricalAnalyzer::~ngt_HistoricalAnalyzer(void **this)
{
  Nightingale::ngt_Config::~ngt_Config(this + 21);
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy((this + 18), this[19]);
  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  v4 = this[9];
  if (v4)
  {
    this[10] = v4;
    operator delete(v4);
  }

  v5 = this[6];
  if (v5)
  {
    this[7] = v5;
    operator delete(v5);
  }

  v6 = this[3];
  if (v6)
  {
    this[4] = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    this[1] = v7;
    operator delete(v7);
  }
}

void *Nightingale::ngt_HistoricalAnalyzer::appendDay(void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((v2 - *result) >> 2);
  if (v3 <= 0x2AC5)
  {
    v4 = result[2];
    if (v2 >= v4)
    {
      if (0xDDDDDDDDDDDDDDDELL * ((v4 - *result) >> 2) <= v3 + 1)
      {
        v8 = v3 + 1;
      }

      else
      {
        v8 = 0xDDDDDDDDDDDDDDDELL * ((v4 - *result) >> 2);
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((v4 - *result) >> 2) >= 0x222222222222222)
      {
        v9 = 0x444444444444444;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_DayInput>>(result, v9);
    }

    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v2 + 44) = *(a2 + 44);
    v2[1] = v6;
    v2[2] = v7;
    *v2 = v5;
    result[1] = v2 + 60;
  }

  return result;
}

void Nightingale::ngt_HistoricalAnalyzer::appendPhaseSet(void *a1, uint64_t a2, int a3)
{
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1 + 3;
  v7 = (v6 - v4) >> 2;
  if (v7 <= 0x2AC5)
  {
    v9 = a1[5];
    if (v6 >= v9)
    {
      v10 = v9 - v4;
      if (v10 >> 1 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((a1 + 3), v12);
    }

    *v6 = a3;
    a1[4] = v6 + 1;
    v14 = a1[7];
    v13 = a1[8];
    if (v14 >= v13)
    {
      v16 = a1[6];
      v17 = (v14 - v16) >> 3;
      if ((v17 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 2;
      if (v18 >> 2 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((a1 + 6), v20);
      }

      v21 = (8 * v17);
      *v21 = a2;
      v15 = 8 * v17 + 8;
      v22 = a1[6];
      v23 = a1[7] - v22;
      v24 = v21 - v23;
      memcpy(v21 - v23, v22, v23);
      v25 = a1[6];
      a1[6] = v24;
      a1[7] = v15;
      a1[8] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v14 = a2;
      v15 = (v14 + 1);
    }

    a1[7] = v15;
  }

  std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100]<std::vector<int>&,std::vector<Nightingale::PhaseSet>&,0>(__p, v5, a1 + 6);
  v26 = a1[9];
  if (v26)
  {
    a1[10] = v26;
    operator delete(v26);
  }

  *(a1 + 9) = *__p;
  a1[11] = v29;
  __p[1] = 0;
  v29 = 0;
  __p[0] = 0;
  v27 = a1[12];
  if (v27)
  {
    a1[13] = v27;
    operator delete(v27);
    v27 = __p[0];
  }

  *(a1 + 6) = v30;
  a1[14] = v31;
  v31 = 0;
  v30 = 0uLL;
  if (v27)
  {
    __p[1] = v27;
    operator delete(v27);
  }
}

void Nightingale::ngt_HistoricalAnalyzer::constructePseudo1stCycle(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  *(a6 + 4) = 0;
  *(a6 + 8) = 0;
  *(a6 + 12) = 0;
  *(a6 + 16) = 0;
  *(a6 + 20) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 36) = 0;
  *(a6 + 40) = 0;
  *(a6 + 44) = 0;
  *(a6 + 48) = 0;
  *(a6 + 52) = 0;
  *(a6 + 56) = 0;
  *(a6 + 60) = 0;
  *(a6 + 64) = 0;
  *(a6 + 68) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = 0;
  if (a2 < 0)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (0xEEEEEEEEEEEEEEEFLL * ((a5[1] - *a5) >> 2) <= a3 >> 32)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v6 = *(*a5 + 60 * SHIDWORD(a3));
    if (a1 - v6 <= 18)
    {
LABEL_6:
      v6 = a1 - 28;
    }
  }

  else
  {
    *(a6 + 12) = a2;
    *(a6 + 16) = 1;
    v6 = a2 - 4;
  }

  *a6 = v6;
  *(a6 + 20) = a1 - 1;
  *(a6 + 24) = 1;
}

void Nightingale::ngt_HistoricalAnalyzer::analyze(Nightingale::ngt_HistoricalAnalyzer *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v113 = *MEMORY[0x277D85DE8];
  Nightingale::uiLogProcessor::uiLogProcessor(v101);
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v100);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v99);
  Nightingale::fwHEstimation::fwHEstimation(&v98);
  v96 = 0;
  v95 = 0;
  v97 = 0;
  *(a3 + 216) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  Nightingale::PhaseCondenser::phase_updates((this + 144), __p);
  v5 = *__p;
  v6 = *&__p[8];
  if (*__p != *&__p[8])
  {
    do
    {
      Nightingale::ngt_HistoricalAnalyzer::appendPhaseSet(this, *v5, *(v5 + 8));
      v5 += 16;
    }

    while (v5 != v6);
    v5 = *__p;
  }

  if (v5)
  {
    *&__p[8] = v5;
    operator delete(v5);
  }

  log = ha_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_HistoricalAnalyzer::analyze();
  }

  Nightingale::uiLogProcessor::hist_process(this, this + 9, &v93);
  if (v93 == v94)
  {
    v32 = ha_get_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }
  }

  else
  {
    JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v99, this);
    v66 = v9;
    v67 = JDayIdx1stTmp;
    jDayLastOPKPosBfr1stPeriodSt = Nightingale::uiLogProcessor::get_jDayLastOPKPosBfr1stPeriodSt(v101, *v93, this);
    Nightingale::ngt_HistoricalAnalyzer::constructePseudo1stCycle(*v93, jDayLastOPKPosBfr1stPeriodSt, v67, v66, this, v90);
    std::vector<Nightingale::cycleInfo>::insert(&v93, v93, v90);
    v82[0] = 0;
    v82[4] = 0;
    v82[8] = 0;
    v82[12] = 0;
    *&v82[16] = 3;
    v83[0] = 0;
    *&v82[20] = 0;
    *&v82[28] = 0;
    v11.i64[0] = 0x3F0000003FLL;
    v11.i64[1] = 0x3F0000003FLL;
    *&v83[4] = vnegq_f32(v11);
    v83[20] = 0;
    v83[24] = 0;
    v83[28] = 0;
    v84 = 0;
    LOBYTE(v85[0]) = 0;
    v86 = 0;
    LOBYTE(v87[0]) = 0;
    v88 = 0;
    v89[0] = 0;
    v89[4] = 0;
    *&v89[8] = 0x17FC00000;
    *&v89[16] = 0;
    *&v89[20] = 0;
    memset(v81, 0, sizeof(v81));
    v12 = ha_get_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_25C4D8000, v12, OS_LOG_TYPE_DEFAULT, "Cycles:[ \n", __p, 2u);
    }

    v13 = v94;
    if (v93 != v94)
    {
      v14 = 0;
      v15 = (v93 + 18);
      do
      {
        LOBYTE(v72) = 0;
        BYTE4(v72) = 0;
        BYTE8(v72) = 0;
        BYTE12(v72) = 0;
        v77 = 0;
        v78 = 0;
        v76 = 0;
        v79 = 3;
        v16 = ha_get_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v15 - 18);
          *__p = 67109376;
          *&__p[4] = v14;
          *&__p[8] = 1024;
          *&__p[10] = v17;
          _os_log_impl(&dword_25C4D8000, v16, OS_LOG_TYPE_DEFAULT, "\t{idx: %d, jDayCycleStart: %d ", __p, 0xEu);
        }

        std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100](v69, this + 9);
        Nightingale::fwHEstimation::processPerCycle((v15 - 9), this, v67, v66, v69, v99, a2, __p, (this + 168));
        *v82 = *__p;
        *&v82[14] = *&__p[14];
        *v83 = v103;
        *&v83[16] = v104;
        v84 = v105;
        std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<float>,false>>(v85, (&v105 + 8));
        std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<float>,false>>(v87, &v107[1]);
        *v89 = *&v109[8];
        *&v89[14] = *&v109[22];
        if (v109[0] == 1 && v107[1])
        {
          *&v108 = v107[1];
          operator delete(v107[1]);
        }

        if (LOBYTE(v107[0]) == 1 && *(&v105 + 1))
        {
          *&v106 = *(&v105 + 1);
          operator delete(*(&v105 + 1));
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        if (v69[0])
        {
          v69[1] = v69[0];
          operator delete(v69[0]);
        }

        if (a2)
        {
          std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::push_back[abi:ne200100](v81, v83);
        }

        if (v14)
        {
          LODWORD(v72) = *v82;
          BYTE4(v72) = v82[4];
          DWORD2(v72) = *&v82[8];
          BYTE12(v72) = v82[12];
          v79 = *&v82[16];
          v75 = *(v15 - 44);
          v73 = *(v15 - 18);
          v80 = *&v82[20];
          if (v15 != &v76)
          {
            std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&v76, *v15, v15[1], v15[1] - *v15);
          }

          if (*(v15 - 64) == 1)
          {
            v74 = *(v15 - 17);
            std::vector<Nightingale::ngt_HistoricCycle>::push_back[abi:ne200100](a3, &v72);
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 5) <= v14 + 1)
        {
          v21 = ha_get_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            v19 = v21;
            v20 = "\t} \n ";
            goto LABEL_37;
          }
        }

        else
        {
          v18 = ha_get_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            v19 = v18;
            v20 = "\t}, \n ";
LABEL_37:
            _os_log_impl(&dword_25C4D8000, v19, OS_LOG_TYPE_DEFAULT, v20, __p, 2u);
          }
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v22 = v15 + 3;
        v15 += 12;
        ++v14;
      }

      while (v22 != v13);
    }

    v23 = ha_get_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_25C4D8000, v23, OS_LOG_TYPE_DEFAULT, "], \n", __p, 2u);
    }

    Nightingale::phaseFactorHist::tagHistReproductive(&v95, a3, this + 9);
    v24 = ha_get_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }

    v25 = *(a3 + 8);
    if (*a3 == v25)
    {
      v33 = ha_get_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    else
    {
      if (v25 - *a3 != 72)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = ha_get_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v27)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v29 = *a3 + v26;
            if (*(v29 + 4) == 1)
            {
              v30 = *v29;
            }

            else
            {
              v30 = -1;
            }

            *__p = 67109120;
            *&__p[4] = v30;
            _os_log_debug_impl(&dword_25C4D8000, v28, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
          }

          ++v27;
          v26 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v27);
      }

      v31 = ha_get_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v34 = ha_get_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }

    v35 = *(a3 + 8);
    if (*a3 == v35)
    {
      v42 = ha_get_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    else
    {
      if (v35 - *a3 != 72)
      {
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = ha_get_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v37)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v39 = *a3 + v36;
            if (*(v39 + 12) == 1)
            {
              v40 = *(v39 + 8);
            }

            else
            {
              v40 = -1;
            }

            *__p = 67109120;
            *&__p[4] = v40;
            _os_log_debug_impl(&dword_25C4D8000, v38, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
          }

          ++v37;
          v36 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v37);
      }

      v41 = ha_get_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v43 = ha_get_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }

    v44 = *(a3 + 8);
    if (*a3 == v44)
    {
      v50 = ha_get_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    else
    {
      if (v44 - *a3 != 72)
      {
        v45 = 0;
        v46 = 56;
        do
        {
          v47 = ha_get_log();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v45)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v48 = *(*a3 + v46);
            *__p = 67109120;
            *&__p[4] = v48;
            _os_log_debug_impl(&dword_25C4D8000, v47, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
          }

          ++v45;
          v46 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v45);
      }

      v49 = ha_get_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v51 = ha_get_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }

    v52 = *(a3 + 8);
    if (*a3 == v52)
    {
      v58 = ha_get_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    else
    {
      if (v52 - *a3 != 72)
      {
        v53 = 0;
        v54 = 60;
        do
        {
          v55 = ha_get_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v53)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v56 = *(*a3 + v54);
            *__p = 67109120;
            *&__p[4] = v56;
            _os_log_debug_impl(&dword_25C4D8000, v55, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
          }

          ++v53;
          v54 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v53);
      }

      v57 = ha_get_log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v59 = ha_get_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }

    if (a2)
    {
      Nightingale::ngt_HistoricalAnalyzer::getCoreAnalyticsContent(this, &v93, v67, v66, v81, __p);
      v60 = *v109;
      *(a3 + 168) = *&v109[16];
      v61 = v111;
      *(a3 + 184) = v110;
      *(a3 + 200) = v61;
      v62 = v105;
      *(a3 + 104) = v106;
      v63 = v108;
      *(a3 + 120) = *v107;
      *(a3 + 136) = v63;
      *(a3 + 152) = v60;
      v64 = *__p;
      *(a3 + 40) = *&__p[16];
      v65 = v104;
      *(a3 + 56) = v103;
      *(a3 + 72) = v65;
      *(a3 + 88) = v62;
      *(a3 + 216) = v112;
      *(a3 + 24) = v64;
    }

    *__p = v81;
    std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v88 == 1 && v87[0])
    {
      v87[1] = v87[0];
      operator delete(v87[0]);
    }

    if (v86 == 1 && v85[0])
    {
      v85[1] = v85[0];
      operator delete(v85[0]);
    }

    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }
  }

  *__p = &v93;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  Nightingale::fwHEstimation::~fwHEstimation(&v98);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v99);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v100);
  Nightingale::uiLogProcessor::~uiLogProcessor(v101);
}

void sub_25C65B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3A0] = &a34;
  std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(&a37);
  if (__p)
  {
    a68 = __p;
    operator delete(__p);
  }

  STACK[0x3A0] = &a70;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:ne200100](&a37);
  v71 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v71;
    operator delete(v71);
  }

  Nightingale::fwHEstimation::~fwHEstimation(&STACK[0x28F]);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(&STACK[0x290]);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&STACK[0x2DF]);
  Nightingale::uiLogProcessor::~uiLogProcessor(&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

void *Nightingale::phaseFactorHist::phaseFactorHist(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

unint64_t std::vector<Nightingale::cycleInfo>::insert(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v25 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::cycleInfo>>(a1, v19);
    }

    v21 = 0;
    v22 = 32 * (v16 >> 5);
    v23 = v22;
    v24 = 0;
    std::__split_buffer<Nightingale::cycleInfo>::emplace_back<Nightingale::cycleInfo const&>(&v21, a3);
    v4 = std::vector<Nightingale::cycleInfo>::__swap_out_circular_buffer(a1, &v21, v4);
    std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(&v21);
  }

  else if (a2 == v6)
  {
    std::vector<Nightingale::cycleInfo>::__construct_one_at_end[abi:ne200100]<Nightingale::cycleInfo const&>(a1, a3);
  }

  else
  {
    std::vector<Nightingale::cycleInfo>::__move_range(a1, a2, v6, a2 + 96);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 96;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    *v4 = *v10;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    *(v4 + 61) = *(v10 + 61);
    *(v4 + 32) = v12;
    *(v4 + 48) = v13;
    *(v4 + 16) = v11;
    if (v4 != v10)
    {
      std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>((v4 + 72), *(v10 + 72), *(v10 + 80), *(v10 + 80) - *(v10 + 72));
    }
  }

  return v4;
}

void sub_25C65B9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__emplace_back_slow_path<Nightingale::coreAnalyticsHistPerCycle_t const&>(a1, a2);
  }

  else
  {
    std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__construct_one_at_end[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t const&>(a1, a2);
    result = v3 + 128;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<Nightingale::ngt_HistoricCycle>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<Nightingale::ngt_HistoricCycle>::__emplace_back_slow_path<Nightingale::ngt_HistoricCycle const&>(a1, a2);
  }

  else
  {
    std::vector<Nightingale::ngt_HistoricCycle>::__construct_one_at_end[abi:ne200100]<Nightingale::ngt_HistoricCycle const&>(a1, a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void Nightingale::phaseFactorHist::tagHistReproductive(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a3 != a3[1])
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    v4 = a2[1];
    v5 = 0x8E38E38E38E38E39 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = (v5 - 1);
        do
        {
          v11 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3);
          if (v11 <= v9)
          {
            goto LABEL_17;
          }

          v12 = v9 + 1;
          if (v11 <= v9 + 1)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(*a2 + v8 + 16) | ((*(*a2 + v8 + 88) - 1) << 32), a3, &__p);
          v13 = v12 - 1;
          if (0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3) <= v13)
          {
LABEL_17:
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v14 = (*a2 + v8 + 32);
          if (v14 != &__p)
          {
            std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v14, __p, v18, v18 - __p);
          }

          v8 += 72;
          v9 = v13 + 1;
        }

        while (v13 + 1 != v10);
        v4 = a2[1];
      }

      Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(v4 - 56) | 0xFFFFFFFF00000000, a3, &__p);
      v15 = (a2[1] - 40);
      v16 = __p;
      if (v15 != &__p)
      {
        std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v15, __p, v18, v18 - __p);
        v16 = __p;
      }

      if (v16)
      {
        v18 = v16;
        operator delete(v16);
      }
    }
  }
}

void sub_25C65BC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngt_HistoricalAnalyzer::getCoreAnalyticsContent(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, __int128 **a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 192) = 0;
  v12 = a5[1];
  if (*a5 == v12 || (v14 = *a2, v13 = a2[1], *a2 == v13))
  {
    if ((v12 - *a5) < 0x81)
    {
      return;
    }

    v14 = *a2;
    v13 = a2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 5) < 2)
    {
      return;
    }
  }

  if (v14 + 96 != v13)
  {
    do
    {
      v15 = v14 + 96;
      v16 = *(v14 + 144);
      *(v14 + 32) = *(v14 + 128);
      *(v14 + 48) = v16;
      *(v14 + 61) = *(v14 + 157);
      v17 = *(v14 + 112);
      *v14 = *(v14 + 96);
      *(v14 + 16) = v17;
      std::vector<float>::__move_assign(v14 + 72, (v14 + 168));
      v18 = v14 + 192;
      v14 += 96;
    }

    while (v18 != v13);
    v13 = a2[1];
    v14 = v15;
  }

  while (v13 != v14)
  {
    v19 = *(v13 - 24);
    if (v19)
    {
      *(v13 - 16) = v19;
      operator delete(v19);
    }

    v13 -= 96;
  }

  a2[1] = v14;
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *>(&v247, *a5 + 8, a5[1], *a5);
  std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__base_destruct_at_end[abi:ne200100](a5, v20);
  v21 = *a2;
  v22 = a2[1];
  v215 = *a2;
  if (*a2 == v22)
  {
    v26 = 0.0;
    v25 = 0.0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v21 + 8) == 1 && *v21 == *(v21 + 4))
      {
        ++v23;
      }

      v24 += *(v21 + 16);
      v21 += 96;
    }

    while (v21 != v22);
    v25 = v23;
    v26 = v24;
  }

  v27 = *(v22 - 24);
  if (v27)
  {
    *(v22 - 16) = v27;
    operator delete(v27);
  }

  a2[1] = v22 - 96;
  std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__base_destruct_at_end[abi:ne200100](a5, (a5[1] - 8));
  HasMultipleWatchHist = Nightingale::ngt_HistoricalAnalyzer::getHasMultipleWatchHist(a1, 60, a3, a4);
  v247 = 0;
  v248 = 0;
  v249 = 0;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  v238 = 0;
  v239 = 0;
  v240 = 0;
  v235 = 0;
  v236 = 0;
  v237 = 0;
  v233[0] = 0;
  v233[1] = 0;
  v234 = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v229 = 0;
  v226[0] = 0;
  v226[1] = 0;
  v227 = 0;
  v224[0] = 0;
  v224[1] = 0;
  v225 = 0;
  v222[0] = 0;
  v222[1] = 0;
  v223 = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v221 = 0;
  v218[0] = 0;
  v218[1] = 0;
  v29 = *a5;
  v28 = a5[1];
  v30 = (v28 - *a5) >> 7;
  v219 = 0;
  if (v30 <= 12)
  {
    v31 = 12;
  }

  else
  {
    v31 = v30;
  }

  if (v30 <= 15)
  {
    LODWORD(v30) = 15;
  }

  __p[0] = 0;
  __p[1] = 0;
  v217 = 0;
  if (v28 == v29)
  {
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v32 = 0;
    v33 = v31 - 12;
    v34 = v30 - 15;
    do
    {
      if (*v29 == 1)
      {
        v252[0] = *(v29 + 4) != 0.0;
        std::vector<BOOL>::push_back(&v247, v252);
        if (*v29)
        {
          std::vector<float>::push_back[abi:ne200100](&v241, (v29 + 8));
          std::vector<float>::push_back[abi:ne200100](&v230, (v29 + 12));
          if (*(v29 + 108) == 1)
          {
            std::vector<float>::push_back[abi:ne200100](v233, (v29 + 104));
          }
        }
      }

      if (v32 >= v33 && *v29 == 1)
      {
        std::vector<float>::push_back[abi:ne200100](&v238, (v29 + 16));
        std::vector<float>::push_back[abi:ne200100](__p, (v29 + 120));
      }

      if (v32 >= v34 && *v29 == 1)
      {
        std::vector<float>::push_back[abi:ne200100](&v235, (v29 + 8));
        v35 = __src[1];
        if (__src[1] >= v229)
        {
          v37 = __src[0];
          v38 = __src[1] - __src[0];
          v39 = (__src[1] - __src[0]) >> 2;
          v40 = v39 + 1;
          if ((v39 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v41 = v229 - __src[0];
          if ((v229 - __src[0]) >> 1 > v40)
          {
            v40 = v41 >> 1;
          }

          v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
          v43 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v42)
          {
            v43 = v40;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(__src, v43);
          }

          *(4 * v39) = *(v29 + 116);
          v36 = (4 * v39 + 4);
          memcpy(0, v37, v38);
          v44 = __src[0];
          __src[0] = 0;
          __src[1] = v36;
          v229 = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *__src[1] = *(v29 + 116);
          v36 = v35 + 4;
        }

        __src[1] = v36;
        if (*(v29 + 125) == 1)
        {
          std::vector<BOOL>::push_back(&v244, (v29 + 124));
        }
      }

      if (v32 >= v33)
      {
        std::vector<float>::push_back[abi:ne200100](v226, (v29 + 112));
      }

      if (*(v29 + 24) == 1)
      {
        std::vector<float>::push_back[abi:ne200100](v224, (v29 + 20));
      }

      if (*(v29 + 32) == 1)
      {
        std::vector<float>::push_back[abi:ne200100](v222, (v29 + 28));
      }

      if (*(v29 + 64) == 1)
      {
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__dst, __dst[1], *(v29 + 40), *(v29 + 48), (*(v29 + 48) - *(v29 + 40)) >> 2);
      }

      if (*(v29 + 96) == 1)
      {
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v218, v218[1], *(v29 + 72), *(v29 + 80), (*(v29 + 80) - *(v29 + 72)) >> 2);
      }

      ++v32;
      v29 += 128;
    }

    while (v29 != v28);
    v46 = v247;
    v45 = v248;
  }

  if (v45 > 0x3F || (v47 = 0.0, (v45 & 0x3F) != 0))
  {
    v48 = 0;
    v49 = &v46[v45 >> 6];
    v50 = v49;
    v47 = 0.0;
    do
    {
      if ((*v46 >> v48))
      {
        v51 = 1.0;
      }

      else
      {
        v51 = 0.0;
      }

      v47 = v47 + v51;
      if (v48 == 63)
      {
        v50 = v49;
      }

      v46 += v48 == 63;
      if (v48 == 63)
      {
        v48 = 0;
      }

      else
      {
        ++v48;
      }
    }

    while (v48 != (v45 & 0x3F) || v46 != v50);
  }

  v52 = v47 / v45;
  if (v52 >= 0.0 && v52 <= 1.0)
  {
    if (v52 == 1.0)
    {
      v54 = 9;
    }

    else
    {
      v54 = (v52 / 0.1);
    }
  }

  else
  {
    v54 = -1;
  }

  v213 = v54;
  if (v241 != v242)
  {
    v55 = v241;
    do
    {
      ++v55;
    }

    while (v55 != v242);
  }

  if (v241 == v242)
  {
    v60 = -1;
    v211 = -1;
    v212 = -1;
    v209 = -1;
    v210 = -1;
LABEL_114:
    v208 = v60;
    goto LABEL_115;
  }

  std::__sort<std::__less<float,float> &,float *>();
  Percentile = Nightingale::getPercentile(&v241, 0, 0.5);
  v58 = Nightingale::check2Real_t_equal(v57, Percentile, -1.0);
  if (v58)
  {
    v59 = -1;
  }

  else if (Percentile >= 0.1)
  {
    if (Percentile >= 0.8)
    {
      v59 = 15;
    }

    else
    {
      v59 = (((Percentile + -0.1) / 0.05) + 1.0);
    }
  }

  else
  {
    v59 = 0;
  }

  v61 = *(v242 - 1);
  v62 = Nightingale::check2Real_t_equal(v58, v61, -1.0);
  if (v62)
  {
    v63 = -1;
LABEL_99:
    v212 = v63;
    goto LABEL_102;
  }

  if (v61 >= 0.1)
  {
    if (v61 >= 0.8)
    {
      v63 = 15;
    }

    else
    {
      v63 = (((v61 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_99;
  }

  v212 = 0;
LABEL_102:
  v64 = *v241;
  if (Nightingale::check2Real_t_equal(v62, *v241, -1.0))
  {
    v65 = -1;
LABEL_104:
    v211 = v65;
    goto LABEL_107;
  }

  if (v64 >= 0.1)
  {
    if (v64 >= 0.8)
    {
      v65 = 15;
    }

    else
    {
      v65 = (((v64 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_104;
  }

  v211 = 0;
LABEL_107:
  v66 = Nightingale::getPercentile(&v241, 0, 0.75);
  if (Nightingale::check2Real_t_equal(v67, v66, -1.0))
  {
    v68 = -1;
LABEL_109:
    v210 = v68;
    goto LABEL_112;
  }

  if (v66 >= 0.1)
  {
    if (v66 >= 0.8)
    {
      v68 = 15;
    }

    else
    {
      v68 = (((v66 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_109;
  }

  v210 = 0;
LABEL_112:
  v69 = Nightingale::getPercentile(&v241, 0, 0.25);
  v209 = v59;
  if (Nightingale::check2Real_t_equal(v70, v69, -1.0))
  {
    v60 = -1;
    goto LABEL_114;
  }

  if (v69 >= 0.1)
  {
    if (v69 >= 0.8)
    {
      v60 = 15;
    }

    else
    {
      v60 = (((v69 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_114;
  }

  v208 = 0;
LABEL_115:
  if (v230 != v231)
  {
    v71 = v230;
    do
    {
      ++v71;
    }

    while (v71 != v231);
  }

  if (v230 == v231)
  {
    v76 = -1;
    v205 = -1;
    v206 = -1;
    v204 = -1;
    v207 = -1;
    goto LABEL_144;
  }

  std::__sort<std::__less<float,float> &,float *>();
  v72 = Nightingale::getPercentile(&v230, 0, 0.5);
  v74 = Nightingale::check2Real_t_equal(v73, v72, -1.0);
  if (v74)
  {
    v75 = -1;
LABEL_121:
    v207 = v75;
    goto LABEL_125;
  }

  if (v72 >= 0.1)
  {
    if (v72 >= 0.8)
    {
      v75 = 15;
    }

    else
    {
      v75 = (((v72 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_121;
  }

  v207 = 0;
LABEL_125:
  v77 = *(v231 - 1);
  v78 = Nightingale::check2Real_t_equal(v74, v77, -1.0);
  if (v78)
  {
    v79 = -1;
LABEL_127:
    v206 = v79;
    goto LABEL_132;
  }

  if (v77 >= 0.1)
  {
    if (v77 >= 0.8)
    {
      v79 = 15;
    }

    else
    {
      v79 = (((v77 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_127;
  }

  v206 = 0;
LABEL_132:
  v80 = *v230;
  if (Nightingale::check2Real_t_equal(v78, *v230, -1.0))
  {
    v81 = -1;
LABEL_134:
    v205 = v81;
    goto LABEL_137;
  }

  if (v80 >= 0.1)
  {
    if (v80 >= 0.8)
    {
      v81 = 15;
    }

    else
    {
      v81 = (((v80 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_134;
  }

  v205 = 0;
LABEL_137:
  v82 = Nightingale::getPercentile(&v230, 0, 0.75);
  if (Nightingale::check2Real_t_equal(v83, v82, -1.0))
  {
    v84 = -1;
LABEL_139:
    v204 = v84;
    goto LABEL_142;
  }

  if (v82 >= 0.1)
  {
    if (v82 >= 0.8)
    {
      v84 = 15;
    }

    else
    {
      v84 = (((v82 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_139;
  }

  v204 = 0;
LABEL_142:
  v85 = Nightingale::getPercentile(&v230, 0, 0.25);
  if (Nightingale::check2Real_t_equal(v86, v85, -1.0))
  {
    v76 = -1;
  }

  else
  {
    if (v85 < 0.1)
    {
      v203 = 0;
      goto LABEL_145;
    }

    if (v85 >= 0.8)
    {
      v76 = 15;
    }

    else
    {
      v76 = (((v85 + -0.1) / 0.05) + 1.0);
    }
  }

LABEL_144:
  v203 = v76;
LABEL_145:
  if (v233[0] == v233[1])
  {
    v199 = -1;
    v200 = -1;
    v201 = -1;
    v202 = -1;
    v198 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v87 = Nightingale::getPercentile(v233, 0, 0.5);
    CAFwEndEstimateError = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v88, v87);
    v202 = CAFwEndEstimateError;
    v90 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(CAFwEndEstimateError, *(v233[1] - 1));
    v91 = v90;
    v201 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v90, *v233[0]);
    v92 = Nightingale::getPercentile(v233, 0, 0.75);
    v93 = Nightingale::getPercentile(v233, 0, 0.25);
    v200 = v91;
    v95 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v94, v92);
    v199 = v95;
    v198 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v95, v93);
  }

  if (v238 != v239)
  {
    v96 = v238;
    do
    {
      ++v96;
    }

    while (v96 != v239);
  }

  if (v238 == v239)
  {
    v101 = -1;
  }

  else
  {
    v97 = 0.0;
    v98 = v238;
    do
    {
      v99 = *v98++;
      v97 = v97 + v99;
    }

    while (v98 != v239);
    v100 = sqrtf(v97 / (v239 - v238));
    if (v100 >= 0.35)
    {
      v101 = 7;
    }

    else
    {
      v101 = (v100 / 0.05);
    }
  }

  v197 = v101;
  v102 = __p[0];
  if (__p[0] == __p[1] || (std::__sort<std::__less<float,float> &,float *>(), v103 = Nightingale::getPercentile(__p, 0, 0.5), v103 < 0.0))
  {
    v104 = -1;
  }

  else if (v103 >= 0.9)
  {
    v104 = 9;
  }

  else
  {
    v104 = (v103 / 0.1);
  }

  v196 = v104;
  v105 = __src[1];
  v106 = __src[0];
  if (__src[0] == __src[1])
  {
    v186 = -1;
    v187 = -1;
    v189 = -1;
    v190 = -1;
    v188 = -1;
    v191 = -1;
    v192 = -1;
    v193 = -1;
    v194 = -1;
    v195 = -1;
  }

  else
  {
    v107 = 0;
    v108 = __src[0];
    do
    {
      v109 = *v108++;
      if (v109 == 1)
      {
        ++v107;
      }
    }

    while (v108 != __src[1]);
    CANumberOfCycles = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v102, ((__src[1] - __src[0]) >> 2));
    v195 = CANumberOfCycles;
    v111 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(CANumberOfCycles, v107);
    v194 = v111;
    v112 = 0;
    v113 = v106;
    do
    {
      v114 = *v113++;
      if (v114 == 2)
      {
        ++v112;
      }
    }

    while (v113 != v105);
    v115 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v111, v112);
    v193 = v115;
    v116 = 0;
    v117 = v106;
    do
    {
      v118 = *v117++;
      if (v118 == 3)
      {
        ++v116;
      }
    }

    while (v117 != v105);
    v119 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v115, v116);
    v192 = v119;
    v120 = 0;
    v121 = v106;
    do
    {
      v122 = *v121++;
      if (v122 == 4)
      {
        ++v120;
      }
    }

    while (v121 != v105);
    v123 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v119, v120);
    v191 = v123;
    v124 = 0;
    v125 = v106;
    do
    {
      if (!*v125++)
      {
        ++v124;
      }
    }

    while (v125 != v105);
    v127 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v123, v124);
    v190 = v127;
    v128 = 0;
    v129 = v106;
    do
    {
      v130 = *v129++;
      if (v130 == 6)
      {
        ++v128;
      }
    }

    while (v129 != v105);
    v131 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v127, v128);
    v189 = v131;
    v132 = 0;
    do
    {
      v133 = *v106++;
      if (v133 == 7)
      {
        ++v132;
      }
    }

    while (v106 != v105);
    v134 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v131, v132);
    v188 = v134;
    v135 = v235;
    if (v235 == v236)
    {
      v136 = 0;
    }

    else
    {
      v136 = 0;
      do
      {
        v135 += 4;
        ++v136;
      }

      while (v135 != v236);
    }

    v137 = v245 & 0x3F;
    if (v245 <= 0x3F && v137 == 0)
    {
      LODWORD(v140) = 0;
    }

    else
    {
      v139 = 0;
      v140 = 0;
      v141 = v244;
      v142 = &v244[8 * (v245 >> 6)];
      do
      {
        v140 += (*v141 >> v139) & 1;
        if (v139 == 63)
        {
          v142 = &v244[8 * (v245 >> 6)];
        }

        v141 += 8 * (v139 == 63);
        if (v139 == 63)
        {
          v139 = 0;
        }

        else
        {
          ++v139;
        }
      }

      while (v139 != v137 || v141 != v142);
    }

    v143 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v134, v136 + v140);
    v187 = v143;
    v186 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v143, v140);
  }

  if (v226[0] == v226[1])
  {
    v184 = -1;
    v185 = -1;
    v181 = -1;
    v182 = -1;
    v183 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v144 = Nightingale::getPercentile(v226, 0, 0.5);
    if (v144 >= 6.0)
    {
      if (v144 >= 9.0)
      {
        if (v144 >= 12.0)
        {
          if (v144 >= 15.0)
          {
            if (v144 >= 18.0)
            {
              if (v144 >= 21.0)
              {
                if (v144 >= 24.0)
                {
                  v145 = 7;
                }

                else
                {
                  v145 = 6;
                }
              }

              else
              {
                v145 = 5;
              }
            }

            else
            {
              v145 = 4;
            }
          }

          else
          {
            v145 = 3;
          }
        }

        else
        {
          v145 = 2;
        }
      }

      else
      {
        v145 = 1;
      }

      v185 = v145;
    }

    else
    {
      v185 = 0;
    }

    v146 = *(v226[1] - 1);
    if (v146 >= 6.0)
    {
      if (v146 >= 9.0)
      {
        if (v146 >= 12.0)
        {
          if (v146 >= 15.0)
          {
            if (v146 >= 18.0)
            {
              if (v146 >= 21.0)
              {
                if (v146 >= 24.0)
                {
                  v147 = 7;
                }

                else
                {
                  v147 = 6;
                }
              }

              else
              {
                v147 = 5;
              }
            }

            else
            {
              v147 = 4;
            }
          }

          else
          {
            v147 = 3;
          }
        }

        else
        {
          v147 = 2;
        }
      }

      else
      {
        v147 = 1;
      }

      v184 = v147;
    }

    else
    {
      v184 = 0;
    }

    v148 = *v226[0];
    if (*v226[0] >= 6.0)
    {
      if (v148 >= 9.0)
      {
        if (v148 >= 12.0)
        {
          if (v148 >= 15.0)
          {
            if (v148 >= 18.0)
            {
              if (v148 >= 21.0)
              {
                if (v148 >= 24.0)
                {
                  v149 = 7;
                }

                else
                {
                  v149 = 6;
                }
              }

              else
              {
                v149 = 5;
              }
            }

            else
            {
              v149 = 4;
            }
          }

          else
          {
            v149 = 3;
          }
        }

        else
        {
          v149 = 2;
        }
      }

      else
      {
        v149 = 1;
      }

      v183 = v149;
    }

    else
    {
      v183 = 0;
    }

    v150 = Nightingale::getPercentile(v226, 0, 0.75);
    if (v150 >= 6.0)
    {
      if (v150 >= 9.0)
      {
        if (v150 >= 12.0)
        {
          if (v150 >= 15.0)
          {
            if (v150 >= 18.0)
            {
              if (v150 >= 21.0)
              {
                if (v150 >= 24.0)
                {
                  v151 = 7;
                }

                else
                {
                  v151 = 6;
                }
              }

              else
              {
                v151 = 5;
              }
            }

            else
            {
              v151 = 4;
            }
          }

          else
          {
            v151 = 3;
          }
        }

        else
        {
          v151 = 2;
        }
      }

      else
      {
        v151 = 1;
      }

      v182 = v151;
    }

    else
    {
      v182 = 0;
    }

    v152 = Nightingale::getPercentile(v226, 0, 0.25);
    if (v152 >= 6.0)
    {
      if (v152 >= 9.0)
      {
        if (v152 >= 12.0)
        {
          if (v152 >= 15.0)
          {
            if (v152 >= 18.0)
            {
              if (v152 >= 21.0)
              {
                if (v152 >= 24.0)
                {
                  v153 = 7;
                }

                else
                {
                  v153 = 6;
                }
              }

              else
              {
                v153 = 5;
              }
            }

            else
            {
              v153 = 4;
            }
          }

          else
          {
            v153 = 3;
          }
        }

        else
        {
          v153 = 2;
        }
      }

      else
      {
        v153 = 1;
      }

      v181 = v153;
    }

    else
    {
      v181 = 0;
    }
  }

  if (v224[0] == v224[1])
  {
    v155 = -1;
    v156 = -1;
    v180 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v154 = Nightingale::getPercentile(v224, 0, 0.5);
    if (v154 >= 1.0)
    {
      if (v154 >= 5.0)
      {
        if (v154 >= 10.0)
        {
          if (v154 >= 15.0)
          {
            if (v154 >= 20.0)
            {
              if (v154 >= 25.0)
              {
                if (v154 >= 30.0)
                {
                  v157 = 7;
                }

                else
                {
                  v157 = 6;
                }
              }

              else
              {
                v157 = 5;
              }
            }

            else
            {
              v157 = 4;
            }
          }

          else
          {
            v157 = 3;
          }
        }

        else
        {
          v157 = 2;
        }
      }

      else
      {
        v157 = 1;
      }

      v180 = v157;
    }

    else
    {
      v180 = 0;
    }

    v158 = *(v224[1] - 1);
    if (v158 >= 1.0)
    {
      if (v158 >= 5.0)
      {
        if (v158 >= 10.0)
        {
          if (v158 >= 15.0)
          {
            if (v158 >= 20.0)
            {
              if (v158 >= 25.0)
              {
                if (v158 >= 30.0)
                {
                  v155 = 7;
                }

                else
                {
                  v155 = 6;
                }
              }

              else
              {
                v155 = 5;
              }
            }

            else
            {
              v155 = 4;
            }
          }

          else
          {
            v155 = 3;
          }
        }

        else
        {
          v155 = 2;
        }
      }

      else
      {
        v155 = 1;
      }
    }

    else
    {
      v155 = 0;
    }

    v159 = *v224[0];
    if (*v224[0] >= 1.0)
    {
      if (v159 >= 5.0)
      {
        if (v159 >= 10.0)
        {
          if (v159 >= 15.0)
          {
            if (v159 >= 20.0)
            {
              if (v159 >= 25.0)
              {
                if (v159 >= 30.0)
                {
                  v156 = 7;
                }

                else
                {
                  v156 = 6;
                }
              }

              else
              {
                v156 = 5;
              }
            }

            else
            {
              v156 = 4;
            }
          }

          else
          {
            v156 = 3;
          }
        }

        else
        {
          v156 = 2;
        }
      }

      else
      {
        v156 = 1;
      }
    }

    else
    {
      v156 = 0;
    }
  }

  if (v222[0] == v222[1])
  {
    v162 = -1;
    v163 = -1;
    v161 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v160 = Nightingale::getPercentile(v222, 0, 0.5);
    if (v160 >= 1.0)
    {
      if (v160 >= 5.0)
      {
        if (v160 >= 10.0)
        {
          if (v160 >= 15.0)
          {
            if (v160 >= 20.0)
            {
              if (v160 >= 25.0)
              {
                if (v160 >= 30.0)
                {
                  v161 = 7;
                }

                else
                {
                  v161 = 6;
                }
              }

              else
              {
                v161 = 5;
              }
            }

            else
            {
              v161 = 4;
            }
          }

          else
          {
            v161 = 3;
          }
        }

        else
        {
          v161 = 2;
        }
      }

      else
      {
        v161 = 1;
      }
    }

    else
    {
      v161 = 0;
    }

    v164 = *(v222[1] - 1);
    if (v164 >= 1.0)
    {
      if (v164 >= 5.0)
      {
        if (v164 >= 10.0)
        {
          if (v164 >= 15.0)
          {
            if (v164 >= 20.0)
            {
              if (v164 >= 25.0)
              {
                if (v164 >= 30.0)
                {
                  v162 = 7;
                }

                else
                {
                  v162 = 6;
                }
              }

              else
              {
                v162 = 5;
              }
            }

            else
            {
              v162 = 4;
            }
          }

          else
          {
            v162 = 3;
          }
        }

        else
        {
          v162 = 2;
        }
      }

      else
      {
        v162 = 1;
      }
    }

    else
    {
      v162 = 0;
    }

    v165 = *v222[0];
    if (*v222[0] >= 1.0)
    {
      if (v165 >= 5.0)
      {
        if (v165 >= 10.0)
        {
          if (v165 >= 15.0)
          {
            if (v165 >= 20.0)
            {
              if (v165 >= 25.0)
              {
                if (v165 >= 30.0)
                {
                  v163 = 7;
                }

                else
                {
                  v163 = 6;
                }
              }

              else
              {
                v163 = 5;
              }
            }

            else
            {
              v163 = 4;
            }
          }

          else
          {
            v163 = 3;
          }
        }

        else
        {
          v163 = 2;
        }
      }

      else
      {
        v163 = 1;
      }
    }

    else
    {
      v163 = 0;
    }
  }

  if (__dst[0] == __dst[1])
  {
    v168 = -1;
    v169 = -1;
    v167 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v166 = Nightingale::getPercentile(__dst, 0, 0.5);
    if (v166 >= 1.0)
    {
      if (v166 >= 5.0)
      {
        if (v166 >= 10.0)
        {
          if (v166 >= 15.0)
          {
            if (v166 >= 20.0)
            {
              if (v166 >= 25.0)
              {
                if (v166 >= 30.0)
                {
                  v167 = 7;
                }

                else
                {
                  v167 = 6;
                }
              }

              else
              {
                v167 = 5;
              }
            }

            else
            {
              v167 = 4;
            }
          }

          else
          {
            v167 = 3;
          }
        }

        else
        {
          v167 = 2;
        }
      }

      else
      {
        v167 = 1;
      }
    }

    else
    {
      v167 = 0;
    }

    v170 = *(__dst[1] - 1);
    if (v170 >= 1.0)
    {
      if (v170 >= 5.0)
      {
        if (v170 >= 10.0)
        {
          if (v170 >= 15.0)
          {
            if (v170 >= 20.0)
            {
              if (v170 >= 25.0)
              {
                if (v170 >= 30.0)
                {
                  v168 = 7;
                }

                else
                {
                  v168 = 6;
                }
              }

              else
              {
                v168 = 5;
              }
            }

            else
            {
              v168 = 4;
            }
          }

          else
          {
            v168 = 3;
          }
        }

        else
        {
          v168 = 2;
        }
      }

      else
      {
        v168 = 1;
      }
    }

    else
    {
      v168 = 0;
    }

    v171 = *__dst[0];
    if (*__dst[0] >= 1.0)
    {
      if (v171 >= 5.0)
      {
        if (v171 >= 10.0)
        {
          if (v171 >= 15.0)
          {
            if (v171 >= 20.0)
            {
              if (v171 >= 25.0)
              {
                if (v171 >= 30.0)
                {
                  v169 = 7;
                }

                else
                {
                  v169 = 6;
                }
              }

              else
              {
                v169 = 5;
              }
            }

            else
            {
              v169 = 4;
            }
          }

          else
          {
            v169 = 3;
          }
        }

        else
        {
          v169 = 2;
        }
      }

      else
      {
        v169 = 1;
      }
    }

    else
    {
      v169 = 0;
    }
  }

  if (v218[0] == v218[1])
  {
    v174 = -1;
    v175 = -1;
    v173 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v172 = Nightingale::getPercentile(v218, 0, 0.5);
    if (v172 >= 1.0)
    {
      if (v172 >= 5.0)
      {
        if (v172 >= 10.0)
        {
          if (v172 >= 15.0)
          {
            if (v172 >= 20.0)
            {
              if (v172 >= 25.0)
              {
                if (v172 >= 30.0)
                {
                  v173 = 7;
                }

                else
                {
                  v173 = 6;
                }
              }

              else
              {
                v173 = 5;
              }
            }

            else
            {
              v173 = 4;
            }
          }

          else
          {
            v173 = 3;
          }
        }

        else
        {
          v173 = 2;
        }
      }

      else
      {
        v173 = 1;
      }
    }

    else
    {
      v173 = 0;
    }

    v176 = *(v218[1] - 1);
    if (v176 >= 1.0)
    {
      if (v176 >= 5.0)
      {
        if (v176 >= 10.0)
        {
          if (v176 >= 15.0)
          {
            if (v176 >= 20.0)
            {
              if (v176 >= 25.0)
              {
                if (v176 >= 30.0)
                {
                  v174 = 7;
                }

                else
                {
                  v174 = 6;
                }
              }

              else
              {
                v174 = 5;
              }
            }

            else
            {
              v174 = 4;
            }
          }

          else
          {
            v174 = 3;
          }
        }

        else
        {
          v174 = 2;
        }
      }

      else
      {
        v174 = 1;
      }
    }

    else
    {
      v174 = 0;
    }

    v177 = *v218[0];
    if (*v218[0] >= 1.0)
    {
      if (v177 >= 5.0)
      {
        if (v177 >= 10.0)
        {
          if (v177 >= 15.0)
          {
            if (v177 >= 20.0)
            {
              if (v177 >= 25.0)
              {
                if (v177 >= 30.0)
                {
                  v175 = 7;
                }

                else
                {
                  v175 = 6;
                }
              }

              else
              {
                v175 = 5;
              }
            }

            else
            {
              v175 = 4;
            }
          }

          else
          {
            v175 = 3;
          }
        }

        else
        {
          v175 = 2;
        }
      }

      else
      {
        v175 = 1;
      }
    }

    else
    {
      v175 = 0;
    }
  }

  *(a6 + 8) = HasMultipleWatchHist;
  *(a6 + 12) = v213;
  *(a6 + 16) = v208;
  *(a6 + 20) = v209;
  *(a6 + 24) = v210;
  *(a6 + 28) = v211;
  *(a6 + 32) = v212;
  *(a6 + 36) = v203;
  *(a6 + 40) = v207;
  *(a6 + 44) = v204;
  *(a6 + 48) = v205;
  *(a6 + 52) = v206;
  *(a6 + 56) = v197;
  *(a6 + 60) = v196;
  *(a6 + 64) = v201;
  *(a6 + 68) = v198;
  *(a6 + 72) = v202;
  v178 = (0xAAAAAAAAAAAAAAABLL * ((v22 - v215) >> 5));
  v179 = *(a6 + 192);
  *(a6 + 9) = v250;
  *(a6 + 11) = v251;
  *(a6 + 76) = v199;
  *(a6 + 80) = v200;
  *(a6 + 84) = v183;
  *(a6 + 88) = v181;
  *(a6 + 92) = v185;
  *(a6 + 96) = v182;
  *(a6 + 100) = v184;
  *(a6 + 104) = v180;
  *(a6 + 108) = v156;
  *(a6 + 112) = v155;
  *(a6 + 116) = v161;
  *(a6 + 120) = v163;
  *(a6 + 124) = v162;
  *(a6 + 128) = v167;
  *(a6 + 132) = v169;
  *(a6 + 136) = v168;
  *(a6 + 140) = v173;
  *(a6 + 144) = v175;
  *(a6 + 148) = v174;
  *(a6 + 152) = v195;
  *(a6 + 156) = v194;
  *(a6 + 160) = v193;
  *(a6 + 164) = v192;
  *(a6 + 168) = v191;
  *(a6 + 172) = v189;
  *(a6 + 176) = v188;
  *(a6 + 180) = v190;
  *(a6 + 184) = v187;
  *(a6 + 188) = v186;
  *a6 = v25 / v178;
  *(a6 + 4) = v26 / v178;
  if ((v179 & 1) == 0)
  {
    *(a6 + 192) = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v218[0])
  {
    v218[1] = v218[0];
    operator delete(v218[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v222[0])
  {
    v222[1] = v222[0];
    operator delete(v222[0]);
  }

  if (v224[0])
  {
    v224[1] = v224[0];
    operator delete(v224[0]);
  }

  if (v226[0])
  {
    v226[1] = v226[0];
    operator delete(v226[0]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v230)
  {
    v231 = v230;
    operator delete(v230);
  }

  if (v233[0])
  {
    v233[1] = v233[0];
    operator delete(v233[0]);
  }

  if (v235)
  {
    v236 = v235;
    operator delete(v235);
  }

  if (v238)
  {
    v239 = v238;
    operator delete(v238);
  }

  if (v241)
  {
    v242 = v241;
    operator delete(v241);
  }

  if (v244)
  {
    operator delete(v244);
  }

  if (v247)
  {
    operator delete(v247);
  }
}

void sub_25C65DA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a56)
  {
    operator delete(a56);
  }

  if (a59)
  {
    operator delete(a59);
  }

  v62 = *(v60 - 248);
  if (v62)
  {
    *(v60 - 240) = v62;
    operator delete(v62);
  }

  v63 = *(v60 - 224);
  if (v63)
  {
    *(v60 - 216) = v63;
    operator delete(v63);
  }

  v64 = *(v60 - 200);
  if (v64)
  {
    *(v60 - 192) = v64;
    operator delete(v64);
  }

  v65 = *(v60 - 176);
  if (v65)
  {
    operator delete(v65);
  }

  v66 = *(v60 - 152);
  if (v66)
  {
    operator delete(v66);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::phaseFactorHist::~phaseFactorHist(Nightingale::phaseFactorHist *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getHasMultipleWatchHist(void *a1, int a2, unint64_t a3, char a4)
{
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v22);
  Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(a1, *(a1[1] - 60) - a2 + 1, *(a1[1] - 60), a3, a4, &v16);
  if (v18 == v19 || v19 - v18 == 1)
  {
    goto LABEL_3;
  }

  if ((v19 - v18) <= 2)
  {
    v10 = v16;
    v11 = v17;
    if (v16 == v17)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_4;
    }

    do
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v13, *v10, v10[1], (v10[1] - *v10) >> 2);
      v8 = Nightingale::checkNumTmpSwitches(&v13, 2, 30.0);
      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      v10 += 3;
      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }
    }

    while ((v12 & 1) == 0);
  }

  else
  {
    v8 = 1;
  }

LABEL_4:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v23 = &v16;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v22);
  return v8;
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAFractionOfCycles(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 1.0)
  {
    return 9;
  }

  return (a2 / 0.1);
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCASignalAtFwEndEstimate(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (Nightingale::check2Real_t_equal(this, a2, -1.0))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 0.1)
  {
    return 0;
  }

  if (a2 >= 0.8)
  {
    return 15;
  }

  return (((a2 + -0.1) / 0.05) + 1.0);
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < -7.0)
  {
    return 0;
  }

  if (a2 < -5.0)
  {
    return 1;
  }

  if (a2 < -3.0)
  {
    return 2;
  }

  if (a2 < -1.0)
  {
    return 3;
  }

  if (a2 < 1.0)
  {
    return 4;
  }

  if (a2 >= 7.0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 7;
  }

  if (a2 >= 5.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (a2 >= 3.0)
  {
    return v4;
  }

  else
  {
    return 5;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(Nightingale::ngt_HistoricalAnalyzer *this, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAEstimatedLutealPhaseLength(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 6.0)
  {
    return 0;
  }

  if (a2 < 9.0)
  {
    return 1;
  }

  if (a2 < 12.0)
  {
    return 2;
  }

  if (a2 < 15.0)
  {
    return 3;
  }

  if (a2 >= 24.0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a2 >= 21.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a2 >= 18.0)
  {
    return v4;
  }

  else
  {
    return 4;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCADaysLoggedBeforeOrAfterCycleStart(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 1.0)
  {
    return 0;
  }

  if (a2 < 5.0)
  {
    return 1;
  }

  if (a2 < 10.0)
  {
    return 2;
  }

  if (a2 < 15.0)
  {
    return 3;
  }

  if (a2 >= 30.0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a2 >= 25.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a2 >= 20.0)
  {
    return v4;
  }

  else
  {
    return 4;
  }
}

uint64_t Nightingale::phaseFactorHist::suppressFWHist(uint64_t result, unsigned int **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = Nightingale::phaseFactorProcessor::suppressFWStEnd(v6, v3, v3 + 2, a3);
      v3 += 18;
    }

    while (v3 != v4);
  }

  return result;
}

void std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<Nightingale::cycleInfo>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 32);
      v10 = *(v6 + 48);
      *(v7 + 61) = *(v6 + 61);
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      *(v7 + 16) = v8;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      *(v7 + 72) = *(v6 + 72);
      *(v7 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v6 += 96;
      v7 += 96;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v11 = 0;
    v12 = a4 - v4;
    do
    {
      v13 = v4 + v11;
      *(v13 - 96) = *(v5 + v11 - 96);
      v14 = *(v5 + v11 - 80);
      v15 = *(v5 + v11 - 64);
      v16 = *(v5 + v11 - 48);
      *(v13 - 35) = *(v5 + v11 - 35);
      *(v13 - 64) = v15;
      *(v13 - 48) = v16;
      *(v13 - 80) = v14;
      std::vector<float>::__move_assign(v4 + v11 - 24, (v5 + v11 - 24));
      v11 -= 96;
    }

    while (v12 != v11);
  }
}

uint64_t std::__split_buffer<Nightingale::cycleInfo>::emplace_back<Nightingale::cycleInfo const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0x5555555555555556 * ((v4 - *a1) >> 5);
      }

      v13 = a1[4];
      v18 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::cycleInfo>>(v13, v12);
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / -2;
    v5 = v6 - 96 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        *v5 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 32);
        v11 = *(v6 + 48);
        *(v5 + 61) = *(v6 + 61);
        *(v5 + 32) = v10;
        *(v5 + 48) = v11;
        *(v5 + 16) = v9;
        std::vector<float>::__move_assign(v5 + 72, (v6 + 72));
        v6 += 96;
        v5 += 96;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 96 * v8;
    a1[2] = v5;
  }

  *v5 = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v5 + 61) = *(a2 + 61);
  *(v5 + 32) = v15;
  *(v5 + 48) = v16;
  *(v5 + 16) = v14;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  result = std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v5 + 72, *(a2 + 72), *(a2 + 80), *(a2 + 80) - *(a2 + 72));
  a1[2] += 96;
  return result;
}

uint64_t std::vector<Nightingale::cycleInfo>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, v7, a3, v9);
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

void *std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<Nightingale::PhaseSet>::__init_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::PhaseSet*>,std::__wrap_iter<Nightingale::PhaseSet*>>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 3);
  return a1;
}

void sub_25C65E47C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<float>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<float>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__construct_one_at_end[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 32) = *(a2 + 32);
  *v4 = v5;
  *(v4 + 16) = v6;
  std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v4 + 40, a2 + 40);
  std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v4 + 72, a2 + 72);
  result = *(a2 + 104);
  *(v4 + 118) = *(a2 + 118);
  *(v4 + 104) = result;
  *(a1 + 8) = v4 + 128;
  return result;
}

void sub_25C65E5A0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 64) == 1)
  {
    v4 = *(v2 + 40);
    if (v4)
    {
      *(v2 + 48) = v4;
      operator delete(v4);
    }
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__emplace_back_slow_path<Nightingale::coreAnalyticsHistPerCycle_t const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>(a1, v7);
  }

  v8 = v2 << 7;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 32) = *(a2 + 32);
  *v8 = v9;
  *(v8 + 16) = v10;
  std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v8 + 40, a2 + 40);
  std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v8 + 72, a2 + 72);
  v11 = *(a2 + 104);
  *(v8 + 118) = *(a2 + 118);
  *(v8 + 104) = v11;
  *&v20 = v20 + 128;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(&v18);
  return v17;
}

void sub_25C65E6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 64) == 1)
  {
    v6 = *(v4 + 40);
    if (v6)
    {
      *(v4 + 48) = v6;
      operator delete(v6);
    }
  }

  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<float>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<float>,false> const&>(a1, a2);
  return a1;
}

void sub_25C65E764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<float>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<float>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      v11 = *(a2 + v7 + 16);
      *(v9 + 32) = *(a2 + v7 + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
      *(a4 + v7 + 40) = 0;
      *(v9 + 64) = 0;
      if (*(a2 + v7 + 64) == 1)
      {
        *(a4 + v7 + 40) = 0;
        *(a4 + v7 + 48) = 0;
        *(a4 + v7 + 56) = 0;
        *(v9 + 40) = *(v8 + 40);
        *(v9 + 56) = *(v8 + 56);
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v9 + 64) = 1;
      }

      *(v9 + 72) = 0;
      *(v9 + 96) = 0;
      if (*(v8 + 96) == 1)
      {
        v12 = (a2 + v7);
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *(v9 + 72) = *(a2 + v7 + 72);
        *(a4 + v7 + 88) = *(a2 + v7 + 88);
        v12[9] = 0;
        v12[10] = 0;
        v12[11] = 0;
        *(v9 + 96) = 1;
      }

      v13 = a4 + v7;
      v14 = *(v8 + 104);
      *(v13 + 118) = *(v8 + 118);
      *(v13 + 104) = v14;
      v7 += 128;
    }

    while (v8 + 128 != a3);
    v19 = a4 + v7;
    v17 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a1, v5);
      v5 += 128;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

void std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      *(a2 + 80) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 64) == 1)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      *(a2 + 48) = v4;

      operator delete(v4);
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 128;
      std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(v5, v4 - 128);
  }
}

uint64_t std::vector<Nightingale::ngt_HistoricCycle>::__construct_one_at_end[abi:ne200100]<Nightingale::ngt_HistoricCycle const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 9) = *(a2 + 9);
  *v4 = v5;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  result = std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v4 + 32, *(a2 + 4), *(a2 + 5), *(a2 + 5) - *(a2 + 4));
  v7 = *(a2 + 7);
  *(v4 + 64) = *(a2 + 16);
  *(v4 + 56) = v7;
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t std::vector<Nightingale::ngt_HistoricCycle>::__emplace_back_slow_path<Nightingale::ngt_HistoricCycle const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_HistoricCycle>>(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v8 = *a2;
  *(v7 + 9) = *(a2 + 9);
  *v7 = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v7 + 32, *(a2 + 4), *(a2 + 5), *(a2 + 5) - *(a2 + 4));
  v9 = *(a2 + 7);
  *(v7 + 64) = *(a2 + 16);
  *(v7 + 56) = v9;
  *&v18 = v18 + 72;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(&v16);
  return v15;
}

void sub_25C65ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_HistoricCycle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 9) = *(v6 + 9);
      *a4 = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = v6[2];
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      v8 = *(v6 + 7);
      *(a4 + 64) = *(v6 + 16);
      *(a4 + 56) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      v9 = *(v5 + 4);
      if (v9)
      {
        *(v5 + 5) = v9;
        operator delete(v9);
      }

      v5 = (v5 + 72);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 72;
  }
}

uint64_t std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::ngt_HistoricCycle>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 72;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }
}

void std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a1, i))
  {
    i -= 128;
  }

  *(a1 + 8) = a2;
}

void std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Nightingale::ngt_HistoricCycle>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Nightingale::ngt_HistoricCycle>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  do
  {
    v5 = *a2;
    v6 = a2[1];
    *(a4 + 32) = *(a2 + 32);
    *a4 = v5;
    *(a4 + 16) = v6;
    v7 = a4 + 40;
    v8 = a2 + 40;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<float>,false>>(a4 + 40, (a2 + 40));
    v7 += 32;
    v8 += 32;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<float>,false>>(v7, v8);
    v9 = *(v8 + 32);
    *(v7 + 46) = *(v8 + 46);
    *(v7 + 32) = v9;
    a2 = (v8 + 56);
    a4 = v7 + 56;
  }

  while ((v8 + 56) != v4);
  return v4;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void __71__model_fwEnd_10pct_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[model_fwEnd_10pct alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __62__model_fwEnd_10pct_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [model_fwEnd_10pctOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(model_fwEnd_10pctOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void __70__model_fwEnd_10pct_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  if (v16)
  {
    v5 = a3;
    v6 = [model_fwEnd_10pctOutput alloc];
    v7 = [v16 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [v16 featureValueForName:@"lstm_1_h_out"];
    v10 = [v9 multiArrayValue];
    v11 = [v16 featureValueForName:@"lstm_1_c_out"];
    v12 = [v11 multiArrayValue];
    v13 = [(model_fwEnd_10pctOutput *)v6 initWithOut:v8 lstm_1_h_out:v10 lstm_1_c_out:v12];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

void Nightingale::fwHEstimation::processPerCycle(uint64_t a1@<X1>, uint64_t *a2@<X2>, void **a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, Nightingale::ngt_Config *a9)
{
  Nightingale::fwEstimatorCalendar::fwEstimatorCalendar(v70);
  Nightingale::fwEstimatorOPK::fwEstimatorOPK(v69);
  v31 = a1;
  v15 = Nightingale::fwEstimatorLuna::fwEstimatorLuna(v68, a9);
  *a8 = 0;
  *(a8 + 4) = 0;
  *(a8 + 8) = 0;
  *(a8 + 12) = 0;
  *(a8 + 16) = 3;
  *(a8 + 20) = 0;
  v16 = (a8 + 20);
  *(a8 + 32) = 0;
  v17 = (a8 + 32);
  *(a8 + 28) = 0;
  v18.i64[0] = 0x3F0000003FLL;
  v18.i64[1] = 0x3F0000003FLL;
  *(a8 + 36) = vnegq_f32(v18);
  *(a8 + 52) = 0;
  *(a8 + 56) = 0;
  *(a8 + 60) = 0;
  *(a8 + 64) = 0;
  *(a8 + 72) = 0;
  *(a8 + 96) = 0;
  *(a8 + 104) = 0;
  *(a8 + 128) = 0;
  *(a8 + 136) = 0;
  v19 = (a8 + 136);
  *(a8 + 140) = 0;
  *(a8 + 144) = 0x17FC00000;
  *(a8 + 152) = 0;
  *(a8 + 156) = 0;
  if ((*(v31 + 24) & 1) == 0)
  {
    goto LABEL_50;
  }

  JDayCycleEnd = Nightingale::fwEstimatorLuna::getJDayCycleEnd(v15, v31);
  std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100](v56, a5);
  Nightingale::fwEstimatorLuna::getHistFwKali(v68, v31, a2, a3, a4, v56, JDayCycleEnd & 0xFFFFFFFFFFLL, a6, v59, a7);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100](v44, a5);
  Nightingale::fwEstimatorOPK::getHistFwOpk(v69, v31, v44, JDayCycleEnd & 0xFFFFFFFFFFLL, v47);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100](v32, a5);
  Nightingale::fwEstimatorCalendar::getHistFwCal(v70, v31, JDayCycleEnd & 0xFFFFFFFFFFLL, v32, v35);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (*&v47[16])
  {
    if (v59[12] != 1)
    {
      *a8 = *v35;
      *(a8 + 14) = *&v35[14];
      v25 = v37;
      *v17 = v36;
      *(a8 + 48) = v25;
      *(a8 + 64) = v38;
      std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 72, v39);
      std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 104, v41);
      *v19 = *v43;
      *(a8 + 150) = *&v43[14];
      *v16 = *&v59[20];
      goto LABEL_20;
    }

    v20 = v60;
    *a8 = *v59;
    *(a8 + 14) = *&v59[14];
    v21 = v61;
    *v17 = v20;
    *(a8 + 48) = v21;
    *(a8 + 64) = v62;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 72, v63);
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 104, v65);
    *v19 = *v67;
    v22 = *&v67[14];
  }

  else
  {
    v23 = v48;
    *a8 = *v47;
    *(a8 + 14) = *&v47[14];
    v24 = v49;
    *v17 = v23;
    *(a8 + 48) = v24;
    *(a8 + 64) = v50;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 72, v51);
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 104, v53);
    *v19 = *v55;
    v22 = *&v55[14];
  }

  *(a8 + 150) = v22;
LABEL_20:
  v26 = v61;
  *v17 = v60;
  *(a8 + 48) = v26;
  *(a8 + 64) = v62;
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 72, v63);
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(a8 + 104, v65);
  *v19 = *v67;
  *(a8 + 150) = *&v67[14];
  *(a8 + 24) = *&v59[24];
  Nightingale::fwEstimatorLuna::updateAFwCycleFactorCAItems(v68, a8, v31, a5, a7, a2);
  if (!*(a8 + 16))
  {
    *(a8 + 148) = 0;
    *(a8 + 20) = 0;
  }

  if (v47[12] == 1 && v59[12] == 1)
  {
    if ((*(a8 + 12) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v27 = *&v59[8] - *(a8 + 8);
    if ((*(a8 + 140) & 1) == 0)
    {
      *(a8 + 140) = 1;
    }

    *v19 = v27;
  }

  if ((v47[29] & 1) != 0 || (v35[29] & 1) != 0 || v59[29] == 1)
  {
    *v16 = 3;
  }

  if (v42 == 1 && v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v40 == 1 && v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v54 == 1 && v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  if (v52 == 1 && v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v66 == 1 && v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v64 == 1 && v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

LABEL_50:
  Nightingale::fwEstimatorLuna::~fwEstimatorLuna(v68);
  Nightingale::fwEstimatorOPK::~fwEstimatorOPK(v69);
  Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(v70);
}