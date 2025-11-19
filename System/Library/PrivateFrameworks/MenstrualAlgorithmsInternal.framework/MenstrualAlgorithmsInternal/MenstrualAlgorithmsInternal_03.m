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
        std::vector<float>::push_back[abi:nn200100](__p, v5 + 7);
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

void *Nightingale::slidingWindowHistLuna::slidingWindowHistLuna(uint64_t a1, uint64_t a2)
{
  result = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *result = &unk_2869C60D8;
  return result;
}

{
  result = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *result = &unk_2869C60D8;
  return result;
}

uint64_t Nightingale::slidingWindowDayStreamLuna::slidingWindowDayStreamLuna(uint64_t a1, uint64_t a2)
{
  v3 = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *v3 = &unk_2869C6128;
  Nightingale::slidingWindowDayStreamLuna::setSlidingWinConfig(v3);
  return a1;
}

{
  v3 = Nightingale::slidingWindowBaseLuna::slidingWindowBaseLuna(a1, a2);
  *v3 = &unk_2869C6128;
  Nightingale::slidingWindowDayStreamLuna::setSlidingWinConfig(v3);
  return a1;
}

double Nightingale::slidingWindowDayStreamLuna::setSlidingWinConfig(Nightingale::slidingWindowDayStreamLuna *this)
{
  v7 = *MEMORY[0x277D85DE8];
  *(this + 5) = 0x500000007;
  v4 = xmmword_25895110C;
  v5 = 1050337608;
  std::vector<float>::__assign_with_size[abi:nn200100]<float const*,float const*>(this + 6, &v4, v6, 5uLL);
  *(this + 72) = 0;
  *(this + 19) = 3;
  *(this + 10) = 0x3F3AE1483F09E83ELL;
  *(this + 44) = 257;
  *(this + 23) = 1058139013;
  *(this + 12) = 0x300000002;
  *(this + 27) = 1058139013;
  *&result = 0x100000001;
  *(this + 14) = 0x100000001;
  v3 = *MEMORY[0x277D85DE8];
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

uint64_t Nightingale::slidingWindowDayStreamLuna::checkNumContinuousSlicesFailAvailabilityOverThreshold(Nightingale::slidingWindowDayStreamLuna *this)
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

uint64_t Nightingale::slidingWindowDayStreamLuna::validateResults(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  if (*(a1 + 124))
  {
    v3 = *(a1 + 32);
    if (*(v3 + 12))
    {
      v7 = Nightingale::passLutealPhaseCheck((*(a1 + 120) + *a2), *(v3 + 8), *(a1 + 112));
      std::vector<BOOL>::push_back(a1 + 192, &v7);
      return v7;
    }
  }

  v6 = std::__throw_bad_optional_access[abi:nn200100]();
  return Nightingale::slidingWindowDayStreamLuna::getSlidingWindowCAOut(v6);
}

uint64_t Nightingale::slidingWindowDayStreamLuna::getSlidingWindowCAOut(Nightingale::slidingWindowDayStreamLuna *this)
{
  *(this + 65) = *(this + 66);
  if (*(this + 232) == 1)
  {
    *(this + 62) = Nightingale::getLogit(this, *(this + 57));
  }

  result = (*(*this + 56))(this);
  *(this + 256) = result ^ 1;
  return result;
}

uint64_t Nightingale::slidingWindowBaseLuna::computeFwEndConfirmationFailureReason(Nightingale::slidingWindowBaseLuna *this)
{
  if ((*(this + 232) & 1) == 0)
  {
    Nightingale::slidingWindowBaseLuna::accumulateFailureReasonOverSlices(this, *(this + 89));
  }

  return 9;
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

  std::vector<std::pair<BOOL,float>>::vector[abi:nn200100](&__p, (v3 - 24));
  if ((*(*this + 56))(this))
  {
    v1 = 1;
    goto LABEL_19;
  }

  v4 = *(this + 35);
  if (v4 && ((*(*(this + 34) + (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 - 1)) & 1) != 0)
  {
    v1 = 3;
    goto LABEL_19;
  }

  if ((v7 - __p) <= 0x18)
  {
    goto LABEL_22;
  }

  if (*(__p + 24))
  {
    v1 = 2;
    goto LABEL_19;
  }

  if (v7 - __p == 32)
  {
LABEL_22:
    std::string::__throw_length_error[abi:nn200100]();
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

LABEL_19:
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v1;
}

Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct *Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct::slidingWinConfigStruct(Nightingale::slidingWindowBaseLuna::slidingWinConfigStruct *this)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = 0x500000007;
  v4 = xmmword_25895119C;
  v5 = 1050337608;
  std::vector<float>::vector[abi:nn200100](this + 1, &v4, 5uLL);
  *(this + 32) = 0;
  *(this + 9) = 5;
  *(this + 5) = 0x3F3AE1483F0A3D71;
  *(this + 24) = 257;
  *(this + 13) = 1058139013;
  *(this + 7) = 0x500000003;
  *(this + 17) = 1058139013;
  *(this + 9) = 0x100000001;
  v2 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__count_BOOL[abi:nn200100]<true,std::vector<BOOL>,false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((64 - v2) >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = (64 - v2);
    }

    v4 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v3)) & (-1 << v2) & **a1));
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.u32[0];
    a2 -= v3;
    *a1 += 8;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 0x40)
  {
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v5 += v8.u32[0];
      a2 -= 64;
    }

    while (a2 > 0x3F);
    *a1 = v6;
  }

  if (a2)
  {
    v9 = vcnt_s8((**a1 & (0xFFFFFFFFFFFFFFFFLL >> -a2)));
    v9.i16[0] = vaddlv_u8(v9);
    v5 += v9.u32[0];
  }

  return v5;
}

void *std::vector<float>::__assign_with_size[abi:nn200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t Nightingale::ngtProjector::ngtProjector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  *(a1 + 112) = a3;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  Nightingale::coreAnalyticsDayStream_t::coreAnalyticsDayStream_t((a1 + 320));
  *(a1 + 568) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = xmmword_258951410;
  *(a1 + 672) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = xmmword_258951410;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  return a1;
}

void Nightingale::ngtProjector::~ngtProjector(Nightingale::ngtProjector *this)
{
  Nightingale::structDLIn_hr::~structDLIn_hr((this + 128));
}

{
  Nightingale::structDLIn_hr::~structDLIn_hr((this + 128));
}

void Nightingale::ngtProjector::projector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  Nightingale::periodEstimatorAggregation::periodEstimatorAggregation(v68);
  Nightingale::periodEstimatorCalendarWithEnd::periodEstimatorCalendarWithEnd(v67, *(a1 + 112));
  v11 = *(a1 + 96);
  v12 = *(v11 + 8);
  v15 = *(v12 - 96);
  v13 = v12 - 96;
  v14 = v15;
  if (*(v11 + 128) == 1)
  {
    Nightingale::ngtProjector::get1stPeriodProjInPeriodNow(v67, v13, v38);
    LOBYTE(v62) = 0;
    v66 = 0;
    Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(a1, v38, __p, &v62, v14, v56);
    std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](a2, v56);
    if (v66 == 1 && v62)
    {
      *(&v62 + 1) = v62;
      operator delete(v62);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v38[0])
    {
      v38[1] = v38[0];
      operator delete(v38[0]);
    }
  }

  Nightingale::ngtProjector::get1stFwCompletePeriodProj(a1, a5, v38);
  v16 = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = v16;
  *(a1 + 64) = v55[0];
  *(a1 + 77) = *(v55 + 13);
  v17 = v52;
  *a1 = v51;
  *(a1 + 16) = v17;
  vGrad_empty = Nightingale::CGradient::get_vGrad_empty(v46);
  if (vGrad_empty)
  {
    *(a2 + 8) = *a2;
    if (v44 == 1)
    {
      v19 = v45;
      if (v45 <= 1)
      {
        v20 = v43 - v14;
        v21 = v43 - v14 - 5;
        if (v43 - v14 >= 5)
        {
          v33 = v14 - LODWORD(v38[0]);
          if (!BYTE4(v38[0]))
          {
            v33 = 0;
          }

          v26 = v21;
          v25 = v20;
          v34 = v33 + v20;
          if (((v45 != 0) & BYTE4(v38[0])) != 0)
          {
            v24 = v34;
          }

          else
          {
            v24 = 0;
          }

          v23 = 6;
          v22 = 1;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0.0;
          v26 = 0.0;
          v19 = 3;
        }

        LODWORD(v56[0]) = v14;
        v56[1] = *&v26;
        v56[2] = 0;
        v56[3] = *&v26;
        v56[4] = *&v26;
        LOBYTE(v56[5]) = v22;
        v56[6] = *&v25;
        v56[7] = 0;
        v56[8] = *&v25;
        v56[9] = *&v25;
        v57 = v22;
        v58 = v21;
        v59 = v23;
        v60 = v24;
        v61 = v19;
        if (v22)
        {
          std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](a3, v56);
        }
      }
    }
  }

  else
  {
    v27 = *(*(a1 + 96) + 128);
    memset(v56, 0, 48);
    if (!Nightingale::CGradient::get_vGrad_empty(v46))
    {
      v28 = v27 ? 4 : 5;
      Nightingale::ngtProjector::getDerivedPeriodProjs(a1, v38, v28, &v62);
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(v56);
      *v56 = v62;
      v56[2] = v63;
      v63 = 0;
      v62 = 0uLL;
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(&v56[3]);
      *&v56[3] = v64;
      v56[5] = v65;
      v65 = 0;
      v64 = 0uLL;
      v37[0] = &v64;
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](v37);
      v37[0] = &v62;
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](v37);
      Nightingale::ngtProjector::constructSurfacedPeriodProjs(a1, v38, v56, v14, &v62);
      std::vector<Nightingale::ngt_Prediction>::__insert_with_size[abi:nn200100]<std::__wrap_iter<Nightingale::ngt_Prediction*>,std::__wrap_iter<Nightingale::ngt_Prediction*>>(a2, *(a2 + 8), v62, *(&v62 + 1), 0x4EC4EC4EC4EC4EC5 * ((*(&v62 + 1) - v62) >> 3));
      if (v62)
      {
        *(&v62 + 1) = v62;
        operator delete(v62);
      }
    }

    Nightingale::ngtProjector::getDerivedFwProjs(v46, &v56[3], &v62);
    Nightingale::ngtProjector::getDerivedFwProjs(v39, v56, v37);
    Nightingale::ngtProjector::constructSurfacedFwProjs(v38, &v62, v37, v14, &v35);
    std::vector<Nightingale::ngt_Prediction>::__insert_with_size[abi:nn200100]<std::__wrap_iter<Nightingale::ngt_Prediction*>,std::__wrap_iter<Nightingale::ngt_Prediction*>>(a3, *(a3 + 8), v35, v36, 0x4EC4EC4EC4EC4EC5 * ((v36 - v35) >> 3));
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

    if (v62)
    {
      *(&v62 + 1) = v62;
      operator delete(v62);
    }

    *&v62 = &v56[3];
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](&v62);
    *&v62 = v56;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](&v62);
  }

  Nightingale::ngtProjector::shrinkLowRangeToRmOverlapFW(vGrad_empty, a2, a3, *(*(a1 + 96) + 128));
  Nightingale::ngtProjector::suppressPeriodFw_CycleFactor(a1, a2, a3, *(a1 + 104), v56);
  v31 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v31;
    operator delete(v31);
  }

  *a2 = *v56;
  *(a2 + 16) = v56[2];
  memset(v56, 0, 24);
  v32 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v32;
    operator delete(v32);
    v32 = v56[0];
  }

  *a3 = *&v56[3];
  *(a3 + 16) = v56[5];
  memset(&v56[3], 0, 24);
  if (v32)
  {
    v56[1] = v32;
    operator delete(v32);
  }

  if (a5)
  {
    Nightingale::ngtProjector::getCaContent(a1, v38, v29, v30, a6);
    if (*a3 == *(a3 + 8))
    {
      *(a6 + 232) = 4;
    }

    if (*a2 == *(a2 + 8))
    {
      *(a6 + 124) = 5;
    }
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  Nightingale::periodEstimatorCalendarWithEnd::~periodEstimatorCalendarWithEnd(v67);
  Nightingale::periodEstimatorAggregation::~periodEstimatorAggregation(v68);
}

void Nightingale::ngtProjector::get1stPeriodProjInPeriodNow(Nightingale::periodEstimatorCalendar *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:nn200100]<true,0>(v18);
  if (*(a2 + 60) == 1 && (*(a2 + 52) & 1) != 0)
  {
    Nightingale::CGradient::CGradient(__p);
    v17[0] = 0;
    v17[4] = 0;
    v17[8] = 0;
    v17[12] = 0;
    v17[16] = 0;
    v17[20] = 0;
    Nightingale::periodEstimatorCalendar::getPeriodStartGradient(a1, 0.0, 0.0, &v10);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v10;
    v15 = v11;
    v16[0] = v12[0];
    *(v16 + 9) = *(v12 + 9);
    Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(a2, __p, &v10);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (__p[1] != __p[0])
    {
      std::vector<int>::__vallocate[abi:nn200100](a3, (__p[1] - __p[0]) >> 2);
    }

    v6 = v16[0];
    *(a3 + 80) = 0;
    *(a3 + 24) = v6;
    *(a3 + 33) = *(v16 + 9);
    *(a3 + 56) = *v17;
    *(a3 + 69) = *&v17[13];
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    v7 = v10;
    if (*(&v10 + 1) != v10)
    {
      std::vector<int>::__vallocate[abi:nn200100](a3 + 80, (*(&v10 + 1) - v10) >> 2);
    }

    *(a3 + 104) = v12[0];
    *(a3 + 113) = *(v12 + 9);
    *(a3 + 136) = *v13;
    *(a3 + 149) = *&v13[13];
    if (v7)
    {
      *(&v10 + 1) = v7;
      operator delete(v7);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v22[0])
    {
      v22[1] = v22[0];
      operator delete(v22[0]);
    }
  }

  else
  {
    *a3 = *v18;
    *(a3 + 16) = v19;
    v18[0] = 0;
    v18[1] = 0;
    *(a3 + 24) = v20[0];
    *(a3 + 33) = *(v20 + 9);
    *(a3 + 56) = *v21;
    *(a3 + 69) = *&v21[13];
    *(a3 + 80) = *v22;
    *(a3 + 96) = v23;
    v22[1] = 0;
    v23 = 0;
    v19 = 0;
    v22[0] = 0;
    v8 = v24[0];
    *(a3 + 113) = *(v24 + 9);
    *(a3 + 104) = v8;
    v9 = *v25;
    *(a3 + 149) = *&v25[13];
    *(a3 + 136) = v9;
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 88) = xmmword_258951410;
  *a6 = a5;
  *(a6 + 8) = Nightingale::ngtProjector::getAMetricFromperiodEstimationOut(a1, a2);
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  *(a6 + 32) = v13;
  *(a6 + 40) = 1;
  *(a6 + 48) = Nightingale::ngtProjector::getAMetricFromperiodEstimationOut(a1, a3);
  *(a6 + 56) = v14;
  *(a6 + 64) = v15;
  *(a6 + 72) = v16;
  *(a6 + 80) = 1;
  if (*(a2 + 60) == 1)
  {
    v17 = *(a2 + 56);
    v18 = llroundf(v17);
    *(a6 + 88) = v18;
    if (*(a3 + 68) == 1)
    {
      *(a6 + 92) = llroundf((*(a3 + 64) - v17) + 1.0);
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(a4 + 80) == 1)
  {
    Nightingale::ngtProjector::computeLowRangeMeanStd(a1, a4);
    if ((*(a4 + 80) & 1) == 0)
    {
      goto LABEL_12;
    }

    if (Nightingale::CGradient::get_isNull(a4))
    {
      return;
    }

    if ((*(a4 + 80) & 1) == 0)
    {
LABEL_12:
      v19 = std::__throw_bad_optional_access[abi:nn200100]();
      std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](v19);
      return;
    }

    if (*(a4 + 60) == 1)
    {
      *(a6 + 96) = (v18 - roundf(*(a4 + 56)));
    }
  }
}

void std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x276276276276276)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_Prediction>>(a1, v15);
    }

    v16 = 104 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    *(v16 + 96) = *(a2 + 12);
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    *(v16 + 48) = v19;
    v11 = 104 * v12 + 104;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[5];
    *(v4 + 96) = *(a2 + 12);
    *(v4 + 64) = v9;
    *(v4 + 80) = v10;
    *(v4 + 48) = v8;
    v11 = v4 + 104;
  }

  *(a1 + 8) = v11;
}

double Nightingale::ngtProjector::get1stFwCompletePeriodProj@<D0>(Nightingale::ngtProjector *this@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  Nightingale::ngtProjector::compute1stFWPeriodStart(this, a2, a3);
  if (!Nightingale::CGradient::get_vGrad_empty((a3 + 200)))
  {
    Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(*(*(this + 12) + 8) - 96, (a3 + 200), &v9);
    v8 = *(a3 + 280);
    if (v8)
    {
      *(a3 + 288) = v8;
      operator delete(v8);
    }

    *(a3 + 280) = v9;
    *(a3 + 296) = v10;
    *(a3 + 304) = v11[0];
    *(a3 + 313) = *(v11 + 9);
    result = v12[0];
    *(a3 + 336) = *v12;
    *(a3 + 349) = *(&v12[1] + 5);
  }

  return result;
}

void Nightingale::ngtProjector::getDerivedPeriodProjs(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v8 = *(a2 + 360);
  v9 = v8 - 1;
  if (v8 == 3)
  {
    adjusted = Nightingale::CGradient::get_adjusted((a2 + 200));
  }

  else
  {
    adjusted = 0;
  }

  v11 = v9 < 2;
  v12 = v11 | adjusted;
  Nightingale::periodEstimatorAggregation::deriveRestPeriodProjs(*(a1 + 112), a2 + 200, *(a1 + 96), a3, 2, (v11 | adjusted) & 1, v11, &v18);
  if ((a4 + 24) != &v18)
  {
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__assign_with_size[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a4 + 24, v18, v19, 0xCCCCCCCCCCCCCCCDLL * ((v19 - v18) >> 5));
  }

  v16 = 0uLL;
  v17 = 0;
  if (*(a2 + 360) == 3)
  {
    if (&v18 != a4)
    {
      v13 = &v18;
LABEL_10:
      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__assign_with_size[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a4, *v13, v13[1], 0xCCCCCCCCCCCCCCCDLL * ((v13[1] - *v13) >> 5));
    }
  }

  else
  {
    Nightingale::periodEstimatorAggregation::deriveRestPeriodProjs(*(a1 + 112), a2 + 16, *(a1 + 96), a3, 2, v12 & 1, 0, &v14);
    v13 = &v16;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(&v16);
    v16 = v14;
    v17 = v15;
    v15 = 0;
    v14 = 0uLL;
    v20 = &v14;
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](&v20);
    if (&v16 != a4)
    {
      goto LABEL_10;
    }
  }

  *&v14 = &v16;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v16 = &v18;
  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](&v16);
}

void Nightingale::ngtProjector::constructSurfacedPeriodProjs(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  LOBYTE(v36) = 0;
  v38 = 0;
  std::optional<Nightingale::periodEstimationOutStruct>::operator=[abi:nn200100]<Nightingale::periodEstimationOutStruct&,void>(&v36, a2 + 16);
  v10 = *(a1 + 96);
  v11 = *(v10 + 96);
  if ((v11 & 0x100000000) != 0)
  {
    *(a1 + 768) = v11 - *(*(v10 + 8) - 96);
    *(a1 + 772) = 1;
  }

  Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(a1, a2 + 200, a2 + 280, &v36, a4, &v29);
  HIDWORD(v35) = *(a2 + 360);
  std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](a5, &v29);
  v12 = v34;
  *(a1 + 624) = v33;
  *(a1 + 640) = v12;
  *(a1 + 656) = v35;
  v13 = v30;
  *(a1 + 560) = v29;
  *(a1 + 576) = v13;
  v14 = v32;
  *(a1 + 592) = v31;
  *(a1 + 608) = v14;
  Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(a1, a2 + 16, a2 + 96, &v36, a4, &v22);
  v15 = v27;
  *(a1 + 728) = v26;
  *(a1 + 744) = v15;
  *(a1 + 760) = v28;
  v16 = v23;
  *(a1 + 664) = v22;
  *(a1 + 680) = v16;
  v17 = v25;
  *(a1 + 696) = v24;
  *(a1 + 712) = v17;
  if (*(a1 + 772) == 1)
  {
    *(a1 + 772) = 0;
  }

  v18 = a3[3];
  v19 = a3[4];
  if (v18 != v19)
  {
    v20 = 0;
    do
    {
      v21 = v20;
      if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 5) <= v20)
      {
        if (v38 == 1)
        {
          if (v36)
          {
            v37 = v36;
            operator delete(v36);
          }

          v38 = 0;
        }
      }

      else
      {
        std::optional<Nightingale::periodEstimationOutStruct>::operator=[abi:nn200100]<Nightingale::periodEstimationOutStruct&,void>(&v36, *a3 + 160 * v20);
      }

      Nightingale::ngtProjector::periodEstimationOutStruct2NgtPrediction(a1, v18, v18 + 80, &v36, a4, &v22);
      v35 = v28;
      v33 = v26;
      v34 = v27;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      HIDWORD(v35) = *(a2 + 360);
      std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](a5, &v29);
      v20 = v21 + 1;
      v18 += 160;
    }

    while (v18 != v19);
  }

  if (v38 == 1)
  {
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

void Nightingale::ngtProjector::getDerivedFwProjs(Nightingale::CGradient *this@<X2>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(this + 76) == 1)
  {
    v6 = *(this + 18);
  }

  else
  {
    v7 = *(this + 36);
    if ((v7 & 0x100000000) != 0)
    {
      *(this + 18) = v7;
      *(this + 76) = 1;
      v6 = *&v7;
    }

    else
    {
      expectation = Nightingale::CGradient::get_expectation(this);
      if ((*(this + 76) & 1) == 0)
      {
        *(this + 76) = 1;
      }

      v6 = expectation;
      *(this + 18) = v6;
    }
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = 0;
    v12 = roundf(v6);
    do
    {
      if (Nightingale::CGradient::get_isNull(v9))
      {
        goto LABEL_20;
      }

      if (*(v9 + 76) == 1)
      {
        v13 = *(v9 + 72);
      }

      else
      {
        v14 = *(v9 + 36);
        if ((v14 & 0x100000000) != 0)
        {
          *(v9 + 72) = v14;
          *(v9 + 76) = 1;
          v13 = *&v14;
        }

        else
        {
          v13 = Nightingale::CGradient::get_expectation(v9);
          if ((*(v9 + 76) & 1) == 0)
          {
            *(v9 + 76) = 1;
          }

          *(v9 + 72) = v13;
        }
      }

      if (llroundf(v13 + -18.0) < v12)
      {
LABEL_20:
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v17 = llroundf(v13 + -13.0);
        v11 = v17 >> 8;
        v15 = v17;
        v16 = 0x100000000;
      }

      v19 = *(a3 + 8);
      v18 = *(a3 + 16);
      if (v19 >= v18)
      {
        v21 = (v19 - *a3) >> 3;
        if ((v21 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v22 = v18 - *a3;
        v23 = v22 >> 2;
        if (v22 >> 2 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<float>>>(a3, v24);
        }

        v25 = (8 * v21);
        *v25 = v16 | v15 | (v11 << 8);
        v20 = 8 * v21 + 8;
        v26 = *(a3 + 8) - *a3;
        v27 = v25 - v26;
        memcpy(v25 - v26, *a3, v26);
        v28 = *a3;
        *a3 = v27;
        *(a3 + 8) = v20;
        *(a3 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v19 = v16 | v15 | (v11 << 8);
        v20 = (v19 + 1);
      }

      *(a3 + 8) = v20;
      if (*(v9 + 76) == 1)
      {
        v29 = *(v9 + 72);
      }

      else
      {
        v30 = *(v9 + 36);
        if ((v30 & 0x100000000) != 0)
        {
          *(v9 + 72) = v30;
          *(v9 + 76) = 1;
          v29 = *&v30;
        }

        else
        {
          v29 = Nightingale::CGradient::get_expectation(v9);
          if ((*(v9 + 76) & 1) == 0)
          {
            *(v9 + 76) = 1;
          }

          *(v9 + 72) = v29;
        }
      }

      v12 = roundf(v29);
      v9 += 160;
    }

    while (v9 != v10);
  }
}

void Nightingale::ngtProjector::constructSurfacedFwProjs(uint64_t a1@<X1>, uint64_t **a2@<X2>, void *a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  BYTE8(v42) = 0;
  v46 = 0;
  LOBYTE(v47) = 0;
  v51 = 0;
  v52 = xmmword_258951410;
  if (*(a1 + 188) == 1)
  {
    v17 = *(a1 + 184) - a4;
    v18 = v17 - 5;
    if (v17 >= 5)
    {
      v25 = a4 - *a1;
      if (!*(a1 + 4))
      {
        v25 = 0;
      }

      v24 = *(a1 + 192);
      v23 = v18;
      v22 = v17;
      v26 = v25 + v17;
      if ((*(a1 + 4) & (v24 != 0)) != 0)
      {
        v21 = v26;
      }

      else
      {
        v21 = 0;
      }

      v20 = 6;
      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 3;
    }

    LODWORD(v42) = a4;
    *(&v42 + 1) = v23;
    v43 = 0;
    v44 = v23;
    v45 = v23;
    v46 = v19;
    v47 = v22;
    v48 = 0;
    v49 = v22;
    v50 = v22;
    v51 = v19;
    *&v52 = __PAIR64__(v20, v18);
    *(&v52 + 1) = __PAIR64__(v24, v21);
    if (v19)
    {
      std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](a5, &v42);
    }
  }

  v28 = *a2;
  v27 = a2[1];
  if (v28 != v27)
  {
    v29 = 0;
    do
    {
      v30 = v29;
      if (v29 >= ((a3[1] - *a3) >> 3))
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v31 = (*a3 + 8 * v29);
        v32 = *v31;
        v5 = *(v31 + 1) | (v31[3] << 16);
        v33 = v31[4] & 1;
      }

      v34 = 0;
      v35 = *v28;
      *&v6 &= 0xFFFFFFFFFFFFFF00;
      *&v7 &= 0xFFFFFFFFFFFFFF00;
      v36 = 3;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      if ((*v28 & 0x100000000) != 0)
      {
        v40 = v35 - 5;
        if (v35 >= 5)
        {
          v36 = *(a1 + 360);
          v6 = v40;
          v41 = v35 - v32 - (v5 << 8);
          v7 = v35;
          if ((v33 & (v36 != 0)) != 0)
          {
            v34 = v41;
          }

          else
          {
            v34 = 0;
          }

          v39 = 1;
          v37 = 6;
          v38 = v35 - 5;
          v11 = v35;
          v10 = v35;
          v9 = v40;
          v8 = v40;
        }
      }

      LODWORD(v42) = a4;
      *(&v42 + 1) = v6;
      v43 = 0;
      v44 = v8;
      v45 = v9;
      v46 = v39;
      v47 = v7;
      v48 = 0;
      v49 = v10;
      v50 = v11;
      v51 = v39;
      *&v52 = __PAIR64__(v37, v38);
      *(&v52 + 1) = __PAIR64__(v36, v34);
      if (v39)
      {
        std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](a5, &v42);
      }

      HIDWORD(v52) = *(a1 + 360);
      v29 = v30 + 1;
      ++v28;
    }

    while (v28 != v27);
  }
}

void Nightingale::ngtProjector::shrinkLowRangeToRmOverlapFW(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      v8 = 0;
      v9 = 0x4EC4EC4EC4EC4EC5 * ((v6 - v7) >> 3);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v10 = (v7 + 92);
      v11 = 0.0;
      do
      {
        if (*(v4 + 40) == 1)
        {
          if (!a4 || v8 >= 1)
          {
            v12 = roundf(v11);
            v13 = v9;
            v14 = v10;
            while (1)
            {
              v15 = *v14 + *(v14 - 1);
              if (v12 <= (v15 - 1) && round(*(v4 + 8)) > (v15 - 1))
              {
                break;
              }

              v14 += 26;
              if (!--v13)
              {
                goto LABEL_20;
              }
            }

            v16 = *(v4 + 88);
            if (v16 != -1 && v16 < v15)
            {
              v18 = v16 - v15 + *(v4 + 92);
              *(v4 + 88) = v15;
              *(v4 + 92) = v18;
            }
          }

LABEL_20:
          v11 = *(v4 + 8);
          ++v8;
        }

        v4 += 104;
      }

      while (v4 != v5);
    }
  }
}

void Nightingale::ngtProjector::suppressPeriodFw_CycleFactor(_BOOL8 a1@<X0>, __int128 **a2@<X1>, __int128 **a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v9 = *a2;
  v10 = a2[1];
  while (v9 != v10)
  {
    isFinite_aProj = Nightingale::ngtProjector::isFinite_aProj(a1, v9);
    if (isFinite_aProj && (Nightingale::ngtProjector::shouldSuppressPeriodProj(isFinite_aProj, v9, a4) & 1) == 0)
    {
      std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](&__p, v9);
    }

    v9 = (v9 + 104);
  }

  v12 = *a3;
  v13 = a3[1];
  while (v12 != v13)
  {
    if (Nightingale::ngtProjector::isFinite_aProj(a1, v12))
    {
      v14 = Nightingale::ngt_Prediction::operator==(v12, *a3);
      if ((Nightingale::ngtProjector::shouldSuppressFwProj(v14, v12, a4, v15, v14) & 1) == 0)
      {
        std::vector<Nightingale::ngt_Prediction>::push_back[abi:nn200100](&v16, v12);
      }
    }

    v12 = (v12 + 104);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v20 != __p)
  {
    std::vector<Nightingale::ngt_Prediction>::__vallocate[abi:nn200100](a5, 0x4EC4EC4EC4EC4EC5 * ((v20 - __p) >> 3));
  }

  a5[3] = 0;
  a5[4] = 0;
  a5[5] = 0;
  if (v17 != v16)
  {
    std::vector<Nightingale::ngt_Prediction>::__vallocate[abi:nn200100]((a5 + 3), 0x4EC4EC4EC4EC4EC5 * ((v17 - v16) >> 3));
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void Nightingale::ngtProjector::getCaContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 8);
  if (*v5 != v6 && *(*(a1 + 112) + 36) == 1)
  {
    *a5 = *(v5 + 128);
    *(a5 + 120) = *(v6 - 24) != *(v6 - 16);
    Nightingale::ngtProjector::get1stProjMetricsCa(a1, a1 + 664, a5 + 56);
    Nightingale::ngtProjector::get1stProjMetricsCa(v10, a1 + 560, a5 + 8);
    if (*(a2 + 513))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    if (*(a2 + 512))
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a2 + 513);
    }

    *(a5 + 160) = v13;
    v14 = *(a2 + 504);
    *(a5 + 108) = *(a2 + 508);
    *(a5 + 104) = v14;
    v15 = *(a2 + 496);
    *(a5 + 116) = *(a2 + 500);
    *(a5 + 112) = v15;
    v16 = *(a2 + 444);
    v17 = *(a2 + 460);
    v18 = *(a2 + 476);
    *(a5 + 212) = *(a2 + 492);
    *(a5 + 196) = v18;
    *(a5 + 180) = v17;
    *(a5 + 164) = v16;
    v19 = Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v11, (*(*(a1 + 96) + 8) - 24));
    if (v19)
    {
      v20 = *(a1 + 112);
      if (*(v20 + 36) == 1)
      {
        v21 = *(v20 + 32);
        Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v52);
        Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v51);
        JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v22, *(a1 + 120));
        if (v24)
        {
          Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(*(a1 + 120), (v21 - 13), v21, JDayIdx1stTmp, v24, &v45);
          if (v45 != v46)
          {
            *(a5 + 121) = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3) > 1;
          }

          if (__p)
          {
            v50 = __p;
            operator delete(__p);
          }

          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v53 = &v45;
          std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v53);
        }

        Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v51);
        Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v52);
      }

      if (*(a2 + 192))
      {
        v25 = *(a2 + 384);
        if (v25 == 2)
        {
          v26 = 2;
        }

        else
        {
          v26 = 4;
        }

        if (v25 == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }
      }

      else
      {
        v27 = ~(*(a2 + 184) >> 30) & 4;
      }

      *(a5 + 232) = v27;
      *v42 = *(a2 + 368);
      *(&v42[2] + 1) = *(a2 + 377);
      v28 = std::vector<int>::vector[abi:nn200100](v43, (a2 + 400));
      v43[3] = *(a2 + 424);
      v44 = *(a2 + 432);
      Nightingale::ngtProjector::surfaceLunaCa(v28, v42, *(a2 + 192), *(a2 + 184), a5);
      v19 = v43[0];
      if (v43[0])
      {
        v43[1] = v43[0];
        operator delete(v43[0]);
      }

      if (*(a2 + 392) == 1 && *(a2 + 192))
      {
        v29 = *(a2 + 388);
        if (v29 >= 0xA)
        {
          v30 = 10;
        }

        else
        {
          v30 = *(a2 + 388);
        }

        v31 = v30 >> 1;
        if (v29 < 0)
        {
          v32 = -1;
        }

        else
        {
          v32 = v31;
        }
      }

      else
      {
        v32 = -1;
        *(a5 + 220) = -1;
      }

      *(a5 + 228) = v32;
    }

    CAPeriodPredictionMethod = Nightingale::ngtProjector::getCAPeriodPredictionMethod(v19, a2);
    *(a5 + 124) = CAPeriodPredictionMethod;
    v34 = *(*(a1 + 96) + 8);
    if (*(v34 - 60) == 1)
    {
      v35 = *(a1 + 112);
      if ((*(v35 + 36) & 1) == 0)
      {
        v39 = std::__throw_bad_optional_access[abi:nn200100]();
        Nightingale::ngtProjector::compute1stFWPeriodStart(v39, v40, v41);
        return;
      }

      v36 = (v35 + 32);
      v37 = ((roundf(*(v34 - 64)) + -13.0) + *(v34 - 96));
      if (*(a5 + 156))
      {
        v36 = (a5 + 152);
      }

      CABoundedDaysBetweenTodayAndCalFwEnd = Nightingale::ngtProjector::getCABoundedDaysBetweenTodayAndCalFwEnd(CAPeriodPredictionMethod, *v36 - v37);
    }

    else
    {
      CABoundedDaysBetweenTodayAndCalFwEnd = 0xFFFFFFFFLL;
    }

    *(a5 + 128) = CABoundedDaysBetweenTodayAndCalFwEnd;
    *(a5 + 132) = Nightingale::ngtProjector::getCACurrentCycleFactor(CABoundedDaysBetweenTodayAndCalFwEnd, (v34 - 24));
  }
}

void Nightingale::ngtProjector::compute1stFWPeriodStart(Nightingale::ngtProjector *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 3;
  Nightingale::CGradient::CGradient(a3 + 16);
  *(a3 + 72) = 0;
  v6 = (a3 + 72);
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  Nightingale::CGradient::CGradient(a3 + 96);
  *(a3 + 152) = 0;
  *(a3 + 156) = 0;
  *(a3 + 160) = 0;
  *(a3 + 164) = 0;
  *(a3 + 168) = 0;
  *(a3 + 172) = 0;
  *(a3 + 176) = 3;
  *(a3 + 184) = 0;
  *(a3 + 188) = 0;
  *(a3 + 192) = 3;
  Nightingale::CGradient::CGradient(a3 + 200);
  *(a3 + 256) = 0;
  *(a3 + 260) = 0;
  *(a3 + 264) = 0;
  *(a3 + 268) = 0;
  *(a3 + 272) = 0;
  *(a3 + 276) = 0;
  Nightingale::CGradient::CGradient(a3 + 280);
  *(a3 + 336) = 0;
  *(a3 + 340) = 0;
  *(a3 + 344) = 0;
  *(a3 + 348) = 0;
  *(a3 + 352) = 0;
  *(a3 + 356) = 0;
  *(a3 + 360) = 3;
  *(a3 + 368) = 8;
  *(a3 + 372) = 0;
  *(a3 + 374) = 0;
  *(a3 + 376) = -1;
  *(a3 + 388) = 0;
  *(a3 + 392) = 0;
  *(a3 + 408) = 0;
  *(a3 + 416) = 0;
  *(a3 + 400) = 0;
  *(a3 + 424) = -1;
  *(a3 + 428) = 0;
  *(a3 + 432) = 0;
  *(a3 + 444) = -1082130432;
  *(a3 + 448) = -1;
  *(a3 + 456) = -1;
  __asm { FMOV            V1.4S, #-1.0 }

  *(a3 + 464) = _Q1;
  __asm { FMOV            V8.2S, #-1.0 }

  *(a3 + 480) = _D8;
  *(a3 + 488) = -1;
  *(a3 + 496) = 0;
  *(a3 + 500) = 0;
  *(a3 + 504) = 0;
  *(a3 + 508) = 0;
  *(a3 + 512) = 0;
  *(a3 + 520) = 0;
  *(a3 + 612) = 0;
  if (*(*(this + 14) + 36) != 1)
  {
    return;
  }

  v13 = *(this + 12);
  v14 = v13[1];
  if (*v13 == v14)
  {
    return;
  }

  v15 = *(v14 - 96);
  v16 = v13[13];
  v28 = _Q1;
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(v66);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v65);
  Nightingale::ngtProjector::runLunaAlgorithm(this, a2, &v51);
  LOBYTE(v41) = 0;
  BYTE4(v41) = 0;
  BYTE8(v41) = 0;
  HIDWORD(v41) = 7;
  Nightingale::CGradient::CGradient(__p);
  LOBYTE(v44) = 0;
  BYTE4(v44) = 0;
  BYTE8(v44) = 0;
  BYTE12(v44) = 0;
  v45[0] = 0;
  *&v45[4] = 0xBF80000000000005;
  *&v45[12] = -1;
  *&v45[20] = -1;
  *&v45[28] = v28;
  *&v45[44] = _D8;
  *&v45[52] = -1;
  v45[60] = 0;
  v45[64] = 0;
  v45[68] = 0;
  v50[24] = 0;
  if (v54 == 7 || v58 == 5)
  {
    Nightingale::ngtProjector::runHrAlgorithm(this, a2, &v30);
    v41 = v30;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v31;
    __p[2] = v32;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    v43[0] = v33[0];
    *(v43 + 9) = *(v33 + 9);
    v44 = *v34;
    *v45 = *&v34[16];
    *&v45[8] = *v35;
    *&v45[24] = v36[0];
    v46 = v36[3];
    v47 = v37;
    *&v45[40] = v36[1];
    *&v45[56] = v36[2];
    *&v50[9] = *(v40 + 9);
    v49 = v39;
    *v50 = v40[0];
    v48 = v38;
  }

  Nightingale::fwEstimatorOPK::fwEstimatorOPK(v29);
  v17 = Nightingale::fwEstimatorOPK::getOnGoingjDayFwEndOpk(v29, v15, v16);
  Nightingale::ngtProjector::runCalAlgs(this, &v30);
  Nightingale::ngtProjector::determineFinalFwEnd(this, a3, &v51, &v41, v17 & 0xFFFFFFFFFFLL, &v30, v15);
  Nightingale::ngtProjector::determineFinalPeriod(v18, a3, &v51, &v41, &v30, v15);
  if (a2)
  {
    v19 = (a3 + 368);
    v20 = *(this + 12);
    if (*(v20 + 108) != 1)
    {
LABEL_18:
      v24 = *&v45[24];
      *(a3 + 444) = *&v45[8];
      *(a3 + 460) = v24;
      *(a3 + 476) = *&v45[40];
      *(a3 + 492) = *&v45[56];
      *v19 = v59[0];
      *(a3 + 377) = *(v59 + 9);
      if (v19 != v59)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a3 + 400), __src, v61, (v61 - __src) >> 2);
      }

      *(a3 + 424) = v62;
      *(a3 + 432) = v63;
      *(a3 + 440) = v64;
      v25 = v45[0];
      *(a3 + 512) = BYTE8(v41);
      *(a3 + 513) = v25;
      v26 = v57;
      *(a3 + 514) = v53;
      *(a3 + 515) = v26;
      goto LABEL_21;
    }

    v21 = *(v20 + 104);
    v22 = v21 + 1;
    if (v52)
    {
      v23 = &v51;
    }

    else
    {
      if (BYTE4(v41) != 1)
      {
LABEL_15:
        if (BYTE4(v30) == 1 && v21 > *(*(v20 + 8) - 96))
        {
          *(a3 + 496) = v30 - v22;
          *(a3 + 500) = 1;
        }

        goto LABEL_18;
      }

      v23 = &v41;
    }

    *(a3 + 504) = *v23 - v22;
    *(a3 + 508) = 1;
    goto LABEL_15;
  }

LABEL_21:
  *a3 = v30;
  if (&v30 == a3)
  {
    *(a3 + 40) = v33[0];
    *(a3 + 49) = *(v33 + 9);
    *v6 = *v34;
    *(a3 + 85) = *&v34[13];
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a3 + 16), v31[0], v31[1], (v31[1] - v31[0]) >> 2);
    *(a3 + 40) = v33[0];
    *(a3 + 49) = *(v33 + 9);
    *v6 = *v34;
    *(a3 + 85) = *&v34[13];
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a3 + 96), v35[0], v35[1], (v35[1] - v35[0]) >> 2);
  }

  *(a3 + 120) = *(v36 + 8);
  *(a3 + 129) = *(&v36[1] + 1);
  *(a3 + 152) = *(&v36[2] + 8);
  *(a3 + 165) = *(&v36[3] + 5);
  v27 = v35[0];
  *(a3 + 176) = v37;
  if (v27)
  {
    v35[1] = v27;
    operator delete(v27);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  Nightingale::fwEstimatorOPK::~fwEstimatorOPK(v29);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (__src)
  {
    v61 = __src;
    operator delete(__src);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v65);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(v66);
}

void Nightingale::ngtProjector::runLunaAlgorithm(Nightingale::ngtProjector *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 7;
  v6 = (a3 + 16);
  v7 = Nightingale::CGradient::CGradient(a3 + 16);
  *(a3 + 152) = -1;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0x800000005;
  *(a3 + 100) = 0;
  *(a3 + 102) = 0;
  *(a3 + 104) = -1;
  *(a3 + 116) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 156) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 5;
  v8 = *(this + 12);
  if (*(v8 + 84) == 1 && Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v7, (*(v8 + 8) - 24)))
  {
    v9 = (a3 + 96);
    Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v44);
    JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v10, *(this + 15));
    if (v12)
    {
      v13 = JDayIdx1stTmp;
      Nightingale::fwEstimatorLuna::fwEstimatorLuna(v43);
      Nightingale::fwEstimatorLuna::getFwEndLuna(*(this + 12), *(this + 15), *(this + 14), &v31);
      *v9 = v38[0];
      *(a3 + 105) = *(v38 + 9);
      if (v9 != v38)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a3 + 128), v39, v40, (v40 - v39) >> 2);
      }

      *(a3 + 152) = v41;
      *(a3 + 160) = v42;
      if (v33 == 1 && v37 == 1 && v35 == 1 && v31 != 7)
      {
        Nightingale::periodEstimatorLuna::periodEstimatorLuna(v30, *(this + 14));
        if ((v33 & 1) == 0 || (v35 & 1) == 0 || (v37 & 1) == 0)
        {
          v16 = std::__throw_bad_optional_access[abi:nn200100]();
          Nightingale::ngtProjector::runHrAlgorithm(v16, v17);
          return;
        }

        v14 = v34;
        v15 = v36;
        if (v32 > v34)
        {
          v14 = v32;
        }

        if (v32 + 20 < v36)
        {
          v15 = v32 + 20;
        }

        v28[2] = v15;
        v28[3] = v32;
        v29 = v33;
        v28[0] = v31;
        v28[1] = v14;
        Nightingale::periodEstimatorLuna::estimatePeriodLuna(v30, *(this + 15), *(this + 12), *(this + 14), v13, v28, &__p);
        *a3 = v32;
        *(a3 + 4) = v33;
        *(a3 + 12) = v31;
        if (v27 == 1)
        {
          *(a3 + 104) = -1;
        }

        else
        {
          *(a3 + 8) = v33;
        }

        if (v6 != &__p)
        {
          std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a3 + 16), __p, v19, (v19 - __p) >> 2);
        }

        *(a3 + 40) = v20[0];
        *(a3 + 49) = *(v20 + 9);
        *(a3 + 92) = v26;
        *(a3 + 88) = v25;
        if ((Nightingale::CGradient::get_adjusted(&__p) & 1) == 0)
        {
          if (*(a3 + 76) == v22)
          {
            if (*(a3 + 76))
            {
              *(a3 + 72) = v21;
            }
          }

          else if (*(a3 + 76))
          {
            *(a3 + 76) = 0;
          }

          else
          {
            *(a3 + 72) = v21;
            *(a3 + 76) = 1;
          }

          if (*(a3 + 84) == v24)
          {
            if (*(a3 + 84))
            {
              *(a3 + 80) = v23;
            }
          }

          else if (*(a3 + 84))
          {
            *(a3 + 84) = 0;
          }

          else
          {
            *(a3 + 80) = v23;
            *(a3 + 84) = 1;
          }
        }

        if (a2)
        {
          *(a3 + 168) = v26;
        }

        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }

        Nightingale::periodEstimatorLuna::~periodEstimatorLuna(v30);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      Nightingale::fwEstimatorLuna::~fwEstimatorLuna(v43);
    }

    else
    {
      *v9 = 1;
    }

    Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v44);
  }
}

void Nightingale::ngtProjector::runHrAlgorithm(Nightingale::ngtProjector *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 7;
  v6 = (a3 + 16);
  v7 = Nightingale::CGradient::CGradient(a3 + 16);
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0xBF80000000000005;
  *(a3 + 100) = -1;
  *(a3 + 108) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a3 + 116) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a3 + 132) = _Q0;
  *(a3 + 140) = -1;
  *(a3 + 148) = 0;
  *(a3 + 152) = 0;
  *(a3 + 156) = 0;
  *(a3 + 248) = 0;
  if (Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v7, (*(*(this + 12) + 8) - 24)))
  {
    Nightingale::lstmHrFw::lstmHrFw(v38, *(this + 15), *(this + 12), *(this + 14), *(this + 13));
    Nightingale::lstmHrFw::getFWEndHr(v38, a2, &v29);
    Nightingale::lstmHrPeriod::lstmHrPeriod(v28, *(this + 15), *(this + 12), *(this + 14), *(this + 13), v31);
    Nightingale::lstmHrPeriod::estimatePeriodStartHr(v28, &__p);
    Nightingale::lstmHrPeriod::getEnsembleTelemetry(v28, v18);
    *a3 = v29;
    v13 = v30;
    *(a3 + 4) = v30;
    *(a3 + 8) = v13;
    if (v13)
    {
      *(a3 + 12) = 4;
    }

    if (v6 != &__p)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a3 + 16), __p, v21, (v21 - __p) >> 2);
    }

    *(a3 + 40) = v22[0];
    *(a3 + 49) = *(v22 + 9);
    if ((Nightingale::CGradient::get_adjusted(&__p) & 1) == 0)
    {
      *(a3 + 72) = v23;
      *(a3 + 76) = v24;
      *(a3 + 80) = v25;
      *(a3 + 84) = v26;
    }

    v14 = v27;
    *(a3 + 88) = v27;
    if (v14 == 1 && !Nightingale::CGradient::get_vGrad_empty(&__p))
    {
      *(a3 + 92) = 3;
    }

    v15 = v18[3];
    *(a3 + 188) = v18[2];
    *(a3 + 204) = v15;
    *(a3 + 220) = v19[0];
    *(a3 + 233) = *(v19 + 13);
    v16 = v18[1];
    *(a3 + 156) = v18[0];
    *(a3 + 172) = v16;
    if (a2)
    {
      *(a3 + 96) = v32;
      *(a3 + 112) = v33;
      *(a3 + 128) = v34;
      v17 = v36;
      *(a3 + 144) = v35;
      *(a3 + 148) = v17;
      *(a3 + 152) = v37;
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    Nightingale::lstmHrPeriod::~lstmHrPeriod(v28);
    Nightingale::lstmHrFw::~lstmHrFw(v38);
  }
}

void Nightingale::ngtProjector::runCalAlgs(Nightingale::ngtProjector *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 3;
  Nightingale::CGradient::CGradient(a2 + 16);
  *(a2 + 72) = 0;
  *(a2 + 76) = 0;
  *(a2 + 80) = 0;
  *(a2 + 84) = 0;
  *(a2 + 88) = 0;
  *(a2 + 92) = 0;
  Nightingale::CGradient::CGradient(a2 + 96);
  *(a2 + 152) = 0;
  *(a2 + 156) = 0;
  *(a2 + 160) = 0;
  *(a2 + 164) = 0;
  *(a2 + 168) = 0;
  *(a2 + 172) = 0;
  *(a2 + 176) = 3;
  v4 = *(this + 12);
  v6 = *v4;
  v5 = v4[1];
  if (v6 != v5 && *(v5 - 52) == 1 && *(v5 - 60) == 1)
  {
    Nightingale::periodEstimatorCalendar::periodEstimatorCalendar(v16, *(this + 14));
    Nightingale::fwEstimatorCalendar::fwEstimatorCalendar(v15);
    Nightingale::periodEstimatorCalendar::predict1stPeriodStartCal(v16, *(*(this + 12) + 8) - 96, *(*(this + 12) + 104), *(*(this + 12) + 96), *(*(this + 12) + 124) | 0x100000000, &v12);
    v7 = *(a2 + 16);
    if (v7)
    {
      *(a2 + 24) = v7;
      operator delete(v7);
    }

    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14[0];
    *(a2 + 49) = *(v14 + 9);
    *(a2 + 176) = 3;
    if (!Nightingale::CGradient::get_vGrad_empty((a2 + 16)))
    {
      v8 = *(*(*(this + 12) + 8) - 96);
      if (*(a2 + 92) == 1)
      {
        expectation = *(a2 + 88);
      }

      else
      {
        v10 = *(a2 + 52);
        if ((v10 & 0x100000000) != 0)
        {
          *(a2 + 88) = v10;
          expectation = *&v10;
        }

        else
        {
          expectation = Nightingale::CGradient::get_expectation((a2 + 16));
          *(a2 + 88) = expectation;
        }
      }

      *(a2 + 92) = 1;
      v11 = Nightingale::fwEstimatorCalendar::getjDayFwEndCal(v15, v8, (roundf(expectation) + v8));
      *a2 = v11;
      *(a2 + 4) = BYTE4(v11);
      *(a2 + 8) = 3;
    }

    Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(v15);
    Nightingale::periodEstimatorCalendar::~periodEstimatorCalendar(v16);
  }
}

void Nightingale::ngtProjector::determineFinalFwEnd(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((a5 & 0x100000000) != 0)
  {
    *(a2 + 184) = a5;
    *(a2 + 188) = BYTE4(a5);
LABEL_4:
    *(a2 + 192) = 0;
    return;
  }

  if (*(*(a1 + 96) + 108) == 1)
  {
    goto LABEL_4;
  }

  if (*(a3 + 4) == 1)
  {
    v8 = *a3;
    *(a2 + 188) = *(a3 + 4);
    *(a2 + 184) = v8;
    *(a2 + 192) = 1;
    *(a2 + 440) = a3[42];
  }

  else if (*(a4 + 4) == 1)
  {
    v10 = *a4;
    *(a2 + 188) = *(a4 + 4);
    *(a2 + 184) = v10;
    *(a2 + 192) = 2;
  }

  else
  {
    if (*(a6 + 4) == 1)
    {
      *(a2 + 184) = *a6;
      *(a2 + 188) = 1;
      *(a2 + 192) = 3;
    }

    if (a4[23] == 3 && ((Nightingale::CGradient::get_isNull((a6 + 16)) & 1) != 0 || (*(a6 + 4) & 1) == 0))
    {
      Nightingale::fwEstimatorCalendar::fwEstimatorCalendar(v15);
      expectation = Nightingale::CGradient::get_expectation(a4 + 2);
      v14 = Nightingale::fwEstimatorCalendar::getjDayFwEndCal(v15, a7, (round(expectation) + a7));
      *(a2 + 184) = v14;
      *(a2 + 188) = BYTE4(v14);
      *(a2 + 192) = 2;
      Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(v15);
    }
  }
}

void Nightingale::ngtProjector::determineFinalPeriod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  Nightingale::periodEstimatorAggregation::periodEstimatorAggregation(&v37);
  if (Nightingale::periodEstimatorAggregation::period1stProjFromluna(&v37, (a3 + 92)))
  {
    if (a2 + 200 != a3 + 16)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 200), *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
    }

    v11 = *(a3 + 40);
    *(a2 + 233) = *(a3 + 49);
    *(a2 + 224) = v11;
    *(a2 + 360) = 1;
    v12 = *(a3 + 72);
    *(a2 + 260) = *(a3 + 76);
    *(a2 + 256) = v12;
    v13 = *(a3 + 80);
    *(a2 + 268) = *(a3 + 84);
    *(a2 + 264) = v13;
    expectation = Nightingale::CGradient::get_expectation((a3 + 16));
    if ((*(a2 + 276) & 1) == 0)
    {
      *(a2 + 276) = 1;
    }

    v15 = expectation;
    *(a2 + 272) = v15;
    goto LABEL_25;
  }

  if (!Nightingale::periodEstimatorAggregation::period1stProjFromHR(&v37, (a4 + 92)))
  {
    if ((*(a3 + 88) & 1) == 0 && (*(a4 + 88) & 1) == 0)
    {
      if (a2 + 200 != a5 + 16)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 200), *(a5 + 16), *(a5 + 24), (*(a5 + 24) - *(a5 + 16)) >> 2);
      }

      v20 = *(a5 + 40);
      *(a2 + 233) = *(a5 + 49);
      *(a2 + 224) = v20;
      v21 = *(a5 + 72);
      *(a2 + 269) = *(a5 + 85);
      *(a2 + 256) = v21;
      *(a2 + 360) = *(a5 + 176);
    }

    goto LABEL_25;
  }

  if (*(a2 + 188) != 1)
  {
LABEL_18:
    if (a2 + 200 != a4 + 16)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 200), *(a4 + 16), *(a4 + 24), (*(a4 + 24) - *(a4 + 16)) >> 2);
    }

    v22 = *(a4 + 40);
    *(a2 + 233) = *(a4 + 49);
    *(a2 + 224) = v22;
    *(a2 + 360) = 2;
    v23 = *(a4 + 72);
    *(a2 + 260) = *(a4 + 76);
    *(a2 + 256) = v23;
    v24 = *(a4 + 80);
    *(a2 + 268) = *(a4 + 84);
    *(a2 + 264) = v24;
    v25 = Nightingale::CGradient::get_expectation((a4 + 16));
    if ((*(a2 + 276) & 1) == 0)
    {
      *(a2 + 276) = 1;
    }

    v26 = v25;
    *(a2 + 272) = v26;
    v27 = *(a4 + 172);
    *(a2 + 520) = *(a4 + 156);
    *(a2 + 536) = v27;
    v28 = *(a4 + 188);
    v29 = *(a4 + 204);
    v30 = *(a4 + 220);
    *(a2 + 597) = *(a4 + 233);
    *(a2 + 568) = v29;
    *(a2 + 584) = v30;
    *(a2 + 552) = v28;
    goto LABEL_25;
  }

  v16 = Nightingale::CGradient::get_expectation((a4 + 16));
  if (*(a2 + 188))
  {
    v17 = (a2 + 184);
    if (round(v16) + a6 - *(a2 + 184) < 6.0)
    {
      *v17 = *a5;
      if (v17 == a5)
      {
        v31 = *(a5 + 40);
        *(a2 + 233) = *(a5 + 49);
        *(a2 + 224) = v31;
        v32 = *(a5 + 72);
        *(a2 + 269) = *(a5 + 85);
        *(a2 + 256) = v32;
      }

      else
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 200), *(a5 + 16), *(a5 + 24), (*(a5 + 24) - *(a5 + 16)) >> 2);
        v18 = *(a5 + 40);
        *(a2 + 233) = *(a5 + 49);
        *(a2 + 224) = v18;
        v19 = *(a5 + 72);
        *(a2 + 269) = *(a5 + 85);
        *(a2 + 256) = v19;
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 280), *(a5 + 96), *(a5 + 104), (*(a5 + 104) - *(a5 + 96)) >> 2);
      }

      v33 = *(a5 + 120);
      *(a2 + 313) = *(a5 + 129);
      *(a2 + 304) = v33;
      v34 = *(a5 + 152);
      *(a2 + 349) = *(a5 + 165);
      *(a2 + 336) = v34;
      *(a2 + 360) = *(a5 + 176);
LABEL_25:
      Nightingale::periodEstimatorAggregation::~periodEstimatorAggregation(&v37);
      return;
    }

    goto LABEL_18;
  }

  v35 = std::__throw_bad_optional_access[abi:nn200100]();
  Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(v35, v36);
}

BOOL Nightingale::ngtProjector::runSensorBasedAlgDueToCycleFactors(uint64_t a1, unsigned __int8 **a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  v2 = Nightingale::phaseFactorProcessor::containContraceptiveCycleFactors(&__p, a2);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return !v2;
}

uint64_t std::optional<Nightingale::periodEstimationOutStruct>::operator=[abi:nn200100]<Nightingale::periodEstimationOutStruct&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    }

    v4 = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 24) = v4;
    v5 = *(a2 + 56);
    *(a1 + 69) = *(a2 + 69);
    *(a1 + 56) = v5;
  }

  else
  {
    std::vector<int>::vector[abi:nn200100](a1, a2);
    v6 = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 24) = v6;
    v7 = *(a2 + 56);
    *(a1 + 69) = *(a2 + 69);
    *(a1 + 56) = v7;
    *(a1 + 80) = 1;
  }

  return a1;
}

void Nightingale::ngtProjector::offsetFwEnd2NgtPrediction(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  *(a5 + 8) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = xmmword_258951410;
  if ((a1 & 0x100000000) != 0)
  {
    v5 = a1 - 5;
    if (a1 >= 5)
    {
      *(a5 + 88) = v5;
      *(a5 + 92) = 6;
      *a5 = a4;
      *(a5 + 100) = a3;
      *(a5 + 8) = v5;
      *(a5 + 16) = 0;
      *(a5 + 24) = v5;
      *(a5 + 32) = v5;
      *(a5 + 40) = 1;
      *(a5 + 48) = a1;
      *(a5 + 56) = 0;
      *(a5 + 64) = a1;
      *(a5 + 72) = a1;
      *(a5 + 80) = 1;
      if ((a2 & 0x100000000) != 0)
      {
        if (a3)
        {
          *(a5 + 96) = a1 - a2;
        }
      }
    }
  }
}

double Nightingale::ngtProjector::getAMetricFromperiodEstimationOut(uint64_t a1, Nightingale::CGradient *this)
{
  vGrad_empty = Nightingale::CGradient::get_vGrad_empty(this);
  result = 0.0;
  if (!vGrad_empty)
  {
    Nightingale::ngtProjector::computeLowRangeMeanStd(a1, this);
    result = *(this + 18);
    if (!*(this + 76))
    {
      result = 0.0;
    }

    v6 = *(this + 14);
    *(this + 60);
    if (*(this + 68) == 1)
    {
      v7 = *(this + 16);
    }
  }

  return result;
}

float Nightingale::ngtProjector::computeLowRangeMeanStd(uint64_t a1, Nightingale::CGradient *this)
{
  if (*(this + 76) == 1)
  {
    v4 = *(this + 18);
  }

  else
  {
    v5 = *(this + 36);
    if ((v5 & 0x100000000) != 0)
    {
      *(this + 18) = v5;
      *(this + 76) = 1;
      v4 = *&v5;
    }

    else
    {
      expectation = Nightingale::CGradient::get_expectation(this);
      if ((*(this + 76) & 1) == 0)
      {
        *(this + 76) = 1;
      }

      v4 = expectation;
      *(this + 18) = v4;
    }
  }

  std = Nightingale::CGradient::get_std(this);
  if ((*(this + 44) & 0x100000000) != 0)
  {
    LODWORD(v8) = *(this + 44);
  }

  else
  {
    v8 = std;
  }

  v9 = *(a1 + 768);
  if (*(this + 60) == 1)
  {
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(this + 14);
    goto LABEL_17;
  }

  v10 = v4 + (v8 * -1.28);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  *(this + 14) = v10;
  *(this + 60) = 1;
  if ((v9 & 0x100000000) != 0)
  {
LABEL_17:
    v11 = v9 + 1;
    if (v10 < v11)
    {
      v10 = v11;
    }

    *(this + 14) = v10;
    *(this + 60) = 1;
  }

LABEL_20:
  if ((*(this + 68) & 1) == 0)
  {
    v12 = v4 + (v8 * 1.28);
    vGrad_len = Nightingale::CGradient::get_vGrad_len(this);
    if (v12 <= vGrad_len)
    {
      vGrad_len = v12;
    }

    *(this + 16) = vGrad_len;
    *(this + 68) = 1;
  }

  return v8;
}

BOOL Nightingale::ngtProjector::isFinite_aProj(_BOOL8 isFinite_aGrad, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    isFinite_aGrad = Nightingale::ngtProjector::isFinite_aGrad(isFinite_aGrad, (a2 + 8));
    if (!isFinite_aGrad)
    {
      log = ha_get_log();
      result = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      Nightingale::ngtProjector::isFinite_aProj();
      return 0;
    }
  }

  if (*(a2 + 80) != 1 || Nightingale::ngtProjector::isFinite_aGrad(isFinite_aGrad, (a2 + 48)))
  {
    return 1;
  }

  v5 = ha_get_log();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
  if (result)
  {
    Nightingale::ngtProjector::isFinite_aProj();
    return 0;
  }

  return result;
}

uint64_t Nightingale::ngtProjector::shouldSuppressPeriodProj(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v3;
  v9 = *(a2 + 96);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v6 = Nightingale::phaseFactorProjector::projectedPeriodFailRepro(&v10, v8, a3);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v6;
}

BOOL Nightingale::ngt_Prediction::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = std::operator==[abi:nn200100]<Nightingale::ngtGradientMetrics,Nightingale::ngtGradientMetrics>((a1 + 2), (a2 + 2));
  if (result)
  {
    result = std::operator==[abi:nn200100]<Nightingale::ngtGradientMetrics,Nightingale::ngtGradientMetrics>((a1 + 12), (a2 + 12));
    if (result)
    {
      return a1[22] == a2[22] && a1[23] == a2[23] && a1[24] == a2[24] && a1[25] == a2[25];
    }
  }

  return result;
}

uint64_t Nightingale::ngtProjector::shouldSuppressFwProj(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (*(a2 + 23))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    LODWORD(v18) = 84148994;
    WORD2(v18) = 1798;
    std::vector<Nightingale::Phase>::vector[abi:nn200100](v25, &v18, 6);
    v8 = a2[5];
    v22 = a2[4];
    v23 = v8;
    v24 = *(a2 + 12);
    v9 = a2[1];
    v18 = *a2;
    v19 = v9;
    v10 = a2[3];
    v20 = a2[2];
    v21 = v10;
    v11 = Nightingale::phaseFactorProjector::failReproAProjection(&v26, &v18, v25, a3);
    v12 = a2[5];
    v22 = a2[4];
    v23 = v12;
    v24 = *(a2 + 12);
    v13 = a2[1];
    v18 = *a2;
    v19 = v13;
    v14 = a2[3];
    v20 = a2[2];
    v21 = v14;
    v15 = Nightingale::phaseFactorProjector::projectedPeriodFailRepro(&v26, &v18, a3) & (a5 ^ 1);
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    v16 = v11 | v15;
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

double Nightingale::ngtProjector::get1stProjMetricsCa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40) == 1 && *(a2 + 80) == 1)
  {
    *(a3 + 32) = *(a2 + 88);
    *(a3 + 36) = 1;
    *(a3 + 40) = *(a2 + 92);
    *(a3 + 44) = 1;
    if (*(a2 + 40) == 1)
    {
      result = *(a2 + 8);
      *a3 = result;
      *(a3 + 8) = 1;
    }

    if (*(a2 + 80) == 1)
    {
      result = *(a2 + 48);
      *(a3 + 16) = result;
      *(a3 + 24) = 1;
    }
  }

  return result;
}

uint64_t Nightingale::ngtProjector::getCaFwEndConfirmationMethodLuna(uint64_t a1, int a2, int a3, unint64_t a4)
{
  if (a2 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (a2 == 1)
  {
    v4 = 1;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return ~(a4 >> 30) & 4;
  }
}

uint64_t Nightingale::ngtProjector::surfaceLunaCa(uint64_t a1, int *a2, int a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 216) = *(a2 + 4);
  *(a5 + 217) = *(a2 + 5);
  *(a5 + 220) = *(a2 + 1);
  v9 = *(a2 + 4);
  if (*(a2 + 5) - v9 == 12)
  {
    *(a5 + 140) = Nightingale::getCABoundedNumberOfDays(*v9);
    v10 = *(a2 + 4);
    if ((*(a2 + 5) - v10) <= 4 || (*(a5 + 144) = Nightingale::getCABoundedNumberOfDays(*(v10 + 4)), v11 = *(a2 + 4), (*(a2 + 5) - v11) <= 8))
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    *(a5 + 148) = Nightingale::getCABoundedNumberOfDays(*(v11 + 8));
  }

  if (*(a2 + 24) == 1)
  {
    v12 = a2[5];
    if (v12 >= 0xA)
    {
      v13 = 10;
    }

    else
    {
      v13 = a2[5];
    }

    v14 = v13 >> 1;
    if (v12 < 0)
    {
      v15 = -1;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = -1;
  }

  *(a5 + 228) = v15;
  result = Nightingale::getCABoundedNumberOfDays(a2[14]);
  *(a5 + 136) = result;
  v17 = *(a2 + 64);
  *(a5 + 152) = a2[15];
  *(a5 + 156) = v17;
  if (a3)
  {
    v18 = a2[4];
    if (v18 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = 4;
    }

    if (v18 == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v21 = *a2;
  }

  else
  {
    v20 = ~(a4 >> 30) & 4;
    v21 = *a2;
    if ((a4 & 0x100000000) != 0)
    {
      v21 = 0;
    }
  }

  *(a5 + 232) = v20;
  *(a5 + 236) = v21;
  return result;
}

uint64_t Nightingale::ngtProjector::getCAtBoundedDaysBetweenFwEndAndNotification(Nightingale::ngtProjector *this, int a2)
{
  if (a2 >= 0xA)
  {
    v2 = 10;
  }

  else
  {
    v2 = a2;
  }

  v3 = v2 >> 1;
  if (a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t Nightingale::ngtProjector::getCAPeriodPredictionMethod(uint64_t a1, uint64_t a2)
{
  if (Nightingale::CGradient::get_vGrad_empty((a2 + 200)))
  {
    return 5;
  }

  v4 = *(a2 + 360);
  if (v4 == 1)
  {
    v6 = *(a2 + 440);
    if (v6 < 3)
    {
      return dword_258951444[v6];
    }

    return 5;
  }

  if (v4 == 3)
  {
    return 0;
  }

  if (v4 != 2)
  {
    return 5;
  }

  if (*(a2 + 612) == 1)
  {
    v5 = *(a2 + 608);
    if (v5 < 3)
    {
      return dword_258951438[v5];
    }

    log = ha_get_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      Nightingale::ngtProjector::getCAPeriodPredictionMethod();
    }
  }

  return 1;
}

uint64_t Nightingale::ngtProjector::getCABoundedDaysBetweenTodayAndCalFwEnd(Nightingale::ngtProjector *this, int a2)
{
  if ((a2 - 3) >= 8)
  {
    v2 = 11;
  }

  else
  {
    v2 = a2;
  }

  if (a2 >= 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a2 >= -2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2 >= -10)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Nightingale::ngtProjector::getCACurrentCycleFactor(uint64_t a1, unsigned __int8 **a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v10 = 1541;
  v11 = 7;
  std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v10, 3);
  v3 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v14, a2, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v10 = 770;
    v11 = 4;
    std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v10, 3);
    v5 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v14, a2, &__p);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      v4 = 4;
    }

    else
    {
      LOBYTE(v10) = 0;
      std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v10, 1);
      v6 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v14, a2, &__p);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      v4 = 1;
      if (!v6)
      {
        LOBYTE(v10) = 1;
        std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v10, 1);
        v7 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v14, a2, &__p);
        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }

        if (v7)
        {
          v4 = 2;
        }

        else
        {
          LOBYTE(v10) = 8;
          std::vector<Nightingale::Phase>::vector[abi:nn200100](&__p, &v10, 1);
          v8 = Nightingale::phaseFactorProcessor::vPhasesContainsVPhases(&v14, a2, &__p);
          if (__p)
          {
            v13 = __p;
            operator delete(__p);
          }

          if (v8)
          {
            v4 = 5;
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v4;
}

__n128 Nightingale::ngtProjector::getEnsembleTelemetry@<Q0>(Nightingale::ngtProjector *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 3);
  a2[2] = *(this + 2);
  a2[3] = v2;
  v3 = *(this + 5);
  a2[4] = *(this + 4);
  a2[5] = v3;
  result = *this;
  v5 = *(this + 1);
  *a2 = *this;
  a2[1] = v5;
  return result;
}

void *Nightingale::phaseFactorProjector::phaseFactorProjector(void *this)
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

uint64_t Nightingale::phaseFactorProjector::failReproAProjection(uint64_t a1, int *a2, void *a3, uint64_t *a4)
{
  v4 = a2[23];
  if (v4 < 1)
  {
    v9 = 1;
  }

  else
  {
    v5 = *a2;
    v6 = a2[22];
    v12 = 0;
    v13 = 0;
    __p = 0;
    v7 = a3[1];
    if (v7 != *a3)
    {
      if (v7 - *a3 >= 0)
      {
        v8 = v7 - *a3;
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = Nightingale::phaseFactorProcessor::detectPhases(a1, (v6 + v5) | ((v4 + v6 + v5 - 1) << 32), &__p, a4);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  return v9 & 1;
}

uint64_t Nightingale::phaseFactorProjector::projectedPeriodFailRepro(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[22] + v3 + a2[23];
  if (v4 <= v3)
  {
    v8 = 1;
  }

  else
  {
    v7 = v3 | ((v4 - 1) << 32);
    v10 = 0;
    std::vector<Nightingale::Phase>::vector[abi:nn200100](__p, &v10, 1);
    v8 = Nightingale::phaseFactorProcessor::detectPhases(a1, v7, __p, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v8 & 1;
}

void Nightingale::phaseFactorProjector::~phaseFactorProjector(Nightingale::phaseFactorProjector *this)
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

BOOL Nightingale::ngtProjector::isFinite_aGrad(uint64_t a1, uint64_t *a2)
{
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    log = ha_get_log();
    result = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad(a2);
    return 0;
  }

  v5 = a2 + 1;
  if ((a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = ha_get_log();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad(v5);
    return 0;
  }

  v7 = a2 + 2;
  if ((a2[2] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v8 = ha_get_log();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad(v7);
    return 0;
  }

  v9 = a2 + 3;
  if ((a2[3] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v10 = ha_get_log();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    Nightingale::ngtProjector::isFinite_aGrad(v9);
    return 0;
  }

  return 1;
}

double Nightingale::coreAnalyticsDayStream_t::coreAnalyticsDayStream_t(Nightingale::coreAnalyticsDayStream_t *this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 96) = 0;
  *(this + 100) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  *(this + 112) = 0;
  *(this + 116) = 0;
  *(this + 60) = 0;
  *(this + 124) = -4294967291;
  *(this + 33) = 0;
  *(this + 17) = -1;
  *(this + 18) = -1;
  *(this + 152) = 0;
  *(this + 156) = 0;
  *(this + 41) = -1082130432;
  *(this + 21) = -1;
  *(this + 22) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(this + 184) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(this + 25) = _Q0;
  *(this + 26) = -1;
  *(this + 108) = 0;
  *(this + 218) = 0;
  result = NAN;
  *(this + 220) = xmmword_258950360;
  *(this + 59) = 9;
  return result;
}

void Nightingale::structDLIn_hr::~structDLIn_hr(Nightingale::structDLIn_hr *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }
}

char *std::vector<Nightingale::ngt_Prediction>::__insert_with_size[abi:nn200100]<std::__wrap_iter<Nightingale::ngt_Prediction*>,std::__wrap_iter<Nightingale::ngt_Prediction*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
    if (v12 > 0x276276276276276)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_Prediction>>(a1, v15);
    }

    v41 = 8 * (v13 >> 3);
    v42 = 104 * a5;
    v43 = (v41 + 104 * a5);
    v44 = v41;
    do
    {
      v45 = *v7;
      v46 = *(v7 + 2);
      *(v44 + 16) = *(v7 + 1);
      *(v44 + 32) = v46;
      *v44 = v45;
      v47 = *(v7 + 3);
      v48 = *(v7 + 4);
      v49 = *(v7 + 5);
      *(v44 + 96) = *(v7 + 12);
      *(v44 + 64) = v48;
      *(v44 + 80) = v49;
      *(v44 + 48) = v47;
      v44 += 104;
      v7 += 104;
      v42 -= 104;
    }

    while (v42);
    memcpy(v43, v5, *(a1 + 8) - v5);
    v50 = *a1;
    v51 = &v43[*(a1 + 8) - v5];
    *(a1 + 8) = v5;
    v52 = v5 - v50;
    v53 = (v41 - (v5 - v50));
    memcpy(v53, v50, v52);
    v54 = *a1;
    *a1 = v53;
    *(a1 + 8) = v51;
    *(a1 + 16) = 0;
    if (v54)
    {
      operator delete(v54);
    }

    return v41;
  }

  v16 = v10 - __dst;
  if (0x4EC4EC4EC4EC4EC5 * ((v10 - __dst) >> 3) >= a5)
  {
    v33 = &__dst[104 * a5];
    v34 = v10 - 104 * a5;
    v35 = *(a1 + 8);
    while (v34 < v10)
    {
      v36 = *v34;
      v37 = *(v34 + 32);
      *(v35 + 16) = *(v34 + 16);
      *(v35 + 32) = v37;
      *v35 = v36;
      v38 = *(v34 + 48);
      v39 = *(v34 + 64);
      v40 = *(v34 + 80);
      *(v35 + 96) = *(v34 + 96);
      *(v35 + 64) = v39;
      *(v35 + 80) = v40;
      *(v35 + 48) = v38;
      v34 += 104;
      v35 += 104;
    }

    *(a1 + 8) = v35;
    if (v10 != v33)
    {
      memmove(&__dst[104 * a5], __dst, v10 - v33);
    }

    v32 = 104 * a5;
    v30 = v5;
    v31 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[104 * a5];
    v21 = v10 + v18;
    if (&v19[-104 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -104 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        *(v24 + 16) = *(v23 - v7 + 16);
        *(v24 + 32) = v26;
        *v24 = v25;
        v27 = *(v23 - v7 + 48);
        v28 = *(v23 - v7 + 64);
        v29 = *(v23 - v7 + 80);
        *(v24 + 96) = *(v23 - v7 + 96);
        *(v24 + 64) = v28;
        *(v24 + 80) = v29;
        *(v24 + 48) = v27;
        v23 += 104;
        v22 += 104;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[104 * a5], v5, v19 - v20);
    }

    v30 = v5;
    v31 = v7;
    v32 = v10 - v5;
LABEL_28:
    memmove(v30, v31, v32);
  }

  return v5;
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__assign_with_size[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 5) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 160;
        std::__destroy_at[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *>(&v15, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 160;
        std::__destroy_at[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a2 != a3)
  {
    v6 = a2 + 80;
    v7 = a4 + 80;
    do
    {
      std::vector<int>::vector[abi:nn200100]((v7 - 80), (v6 - 80));
      v8 = *(v6 - 56);
      *(v7 - 47) = *(v6 - 47);
      *(v7 - 56) = v8;
      v9 = *(v6 - 24);
      *(v7 - 11) = *(v6 - 11);
      *(v7 - 24) = v9;
      std::vector<int>::vector[abi:nn200100](v7, v6);
      v10 = *(v6 + 24);
      *(v7 + 33) = *(v6 + 33);
      *(v7 + 24) = v10;
      v11 = *(v6 + 56);
      *(v7 + 69) = *(v6 + 69);
      *(v7 + 56) = v11;
      v12 = v6 + 80;
      v6 += 160;
      v7 += 160;
    }

    while (v12 != a3);
    return v7 - 80;
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a4 + 80;
  do
  {
    if (v4 == v6 - 80)
    {
      v9 = *(v4 + 24);
      *(v6 - 47) = *(v4 + 33);
      *(v6 - 56) = v9;
      v10 = *(v4 + 56);
      *(v6 - 11) = *(v4 + 69);
      *(v6 - 24) = v10;
    }

    else
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((v6 - 80), *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
      v7 = *(v4 + 24);
      *(v6 - 47) = *(v4 + 33);
      *(v6 - 56) = v7;
      v8 = *(v4 + 56);
      *(v6 - 11) = *(v4 + 69);
      *(v6 - 24) = v8;
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v6, *(v4 + 80), *(v4 + 88), (*(v4 + 88) - *(v4 + 80)) >> 2);
    }

    v11 = *(v4 + 104);
    *(v6 + 33) = *(v4 + 113);
    *(v6 + 24) = v11;
    v12 = *(v4 + 136);
    *(v6 + 69) = *(v4 + 149);
    *(v6 + 56) = v12;
    v4 += 160;
    v6 += 160;
  }

  while (v4 != v5);
  return v5;
}

void std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 160;
        std::__destroy_at[abi:nn200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:nn200100]<true,0>(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v2 = Nightingale::CGradient::CGradient(a1);
  *(v2 + 56) = 0;
  *(v2 + 60) = 0;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  *(v2 + 72) = 0;
  *(v2 + 76) = 0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 80) = 0u;
  Nightingale::CGradient::CGradient(v2 + 80);
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  return a1;
}

BOOL std::operator==[abi:nn200100]<Nightingale::ngtGradientMetrics,Nightingale::ngtGradientMetrics>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = v2 == *(a2 + 32);
  if (v2 == *(a2 + 32) && v2 != 0)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  }

  return v3;
}

uint64_t *OUTLINED_FUNCTION_2_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t Nightingale::lstmLuna::lstmLuna(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4)
{
  *a1 = &unk_2869C61B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = -1;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 260) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition((a1 + 296));
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess((a1 + 368));
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation((a1 + 369));
  Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fw_dl_tmp_process((a1 + 376), a4);
  Nightingale::lstmModelCommonFw::lstmModelCommonFw((a1 + 384));
  return a1;
}

void Nightingale::lstmLuna::~lstmLuna(Nightingale::lstmLuna *this)
{
  *this = &unk_2869C61B8;
  Nightingale::lstmModelCommonFw::~lstmModelCommonFw((this + 384));
  Nightingale::ngt_luna_fw_dl_tmp_process::~ngt_luna_fw_dl_tmp_process((this + 376));
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((this + 369));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((this + 368));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((this + 296));
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    *(this + 17) = v6;
    operator delete(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    *(this + 14) = v7;
    operator delete(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    *(this + 11) = v8;
    operator delete(v8);
  }

  v9 = (this + 48);
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v9);
}

BOOL Nightingale::lstmLuna::acquireWTmp(Nightingale::lstmLuna *this, int a2, int a3)
{
  Nightingale::wristTemperatureInputAcquisition::reset((this + 296));
  JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(this + 296, *(this + 1));
  if (*(this + 40) == v7)
  {
    if (*(this + 40))
    {
      *(this + 4) = JDayIdx1stTmp;
    }

    if (v7)
    {
      goto LABEL_10;
    }

LABEL_8:
    v8 = 0;
    *(this + 184) = 1;
    return v8;
  }

  if (*(this + 40))
  {
    *(this + 40) = 0;
    goto LABEL_8;
  }

  *(this + 4) = JDayIdx1stTmp;
  *(this + 40) = 1;
LABEL_10:
  memset(v24, 0, sizeof(v24));
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(this + 37, a3 - a2 + 1, a3, *(*(*(this + 2) + 8) - 96) - 43, *(this + 1), *(this + 4), &v17);
  std::vector<std::vector<float>>::__vdeallocate(this + 6);
  *(this + 3) = v17;
  v9 = v18;
  v10 = v19;
  v18 = 0;
  v17 = 0uLL;
  *(this + 8) = v9;
  *(this + 9) = v10;
  v11 = *(this + 10);
  if (v11)
  {
    *(this + 11) = v11;
    operator delete(v11);
  }

  *(this + 5) = *__p;
  *(this + 12) = v21;
  __p[1] = 0;
  v21 = 0;
  __p[0] = 0;
  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
    v12 = __p[0];
  }

  *(this + 104) = v22;
  *(this + 15) = v23;
  v23 = 0;
  v22 = 0uLL;
  if (v12)
  {
    __p[1] = v12;
    operator delete(v12);
  }

  v25 = &v17;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v25);
  if (*(this + 6) == *(this + 7))
  {
    v8 = 0;
    *(this + 184) = 1;
  }

  else
  {
    v13 = 1;
    Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(this + 48, 45, 1, a2, &v17);
    v14 = v17;
    v8 = v17 != *(&v17 + 1);
    if (v17 == *(&v17 + 1))
    {
      v15 = 184;
    }

    else
    {
      if ((this + 128) != v17)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(this + 16, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 2);
        v14 = v17;
      }

      if ((this + 152) != v14)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(this + 19, *v14, v14[1], (v14[1] - *v14) >> 2);
      }

      v13 = *v19;
      v15 = 176;
    }

    *(this + v15) = v13;
    if (v21)
    {
      *&v22 = v21;
      operator delete(v21);
    }

    if (v19)
    {
      __p[0] = v19;
      operator delete(v19);
    }

    v25 = &v17;
    std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v25);
  }

  *&v17 = v24;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v17);
  return v8;
}

void Nightingale::lstmLuna::validateWTmp(Nightingale::lstmLuna *this, float a2)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v4 = (this + 128);
  LODWORD(v16) = (*(this + 17) - *(this + 16)) >> 2;
  std::vector<int>::vector[abi:nn200100](&v13, &v16, 1uLL);
  *&v16 = a2;
  std::vector<float>::vector[abi:nn200100](&v12, &v16, 1uLL);
  v16 = &unk_2869C5CD8;
  v17 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
  v18 = 0;
  v19 = &v16;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v15, &v16);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v16);
  __dst = 0;
  v11 = 0;
  __p = 0;
  if (v14 != v13)
  {
    std::vector<int>::__vallocate[abi:nn200100](&__p, (v14 - v13) >> 2);
  }

  v5 = *(this + 176);
  v6 = *(this + 13);
  if (v5 < (*(this + 14) - v6) >> 3)
  {
    if ((*(v6 + 8 * v5 + 4) & 1) != 0 || **v4 >= 0.0)
    {
      Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 369, v15, v4, &__p, &v12, 1, &v16);
      v7 = *v16;
      v17 = v16;
      operator delete(v16);
    }

    else
    {
      v7 = 0x3F80000000000001;
    }

    v16 = v7;
    std::vector<std::pair<BOOL,float>>::push_back[abi:nn200100]((v4 + 8), &v16);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    v8 = *(this + 17);
    v17 = 0;
    v18 = 0;
    v16 = 0;
    std::vector<int>::__vallocate[abi:nn200100](&v16, 0x15uLL);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::pair<BOOL,float>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,float>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void *std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator=<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),void>(void *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v8 = 0;
  if (v4 & 1 | v3)
  {
    v7[0] = &unk_2869C5CD8;
    v7[1] = v3;
    v7[2] = v4;
    v8 = v7;
  }

  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::swap[abi:nn200100](v7, a1);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t Nightingale::lstmLuna::preCondition(uint64_t a1, float a2, float a3)
{
  v4 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v4 == v3 || (v5 = *(a1 + 176), v5 >= (v3 - v4) >> 3))
  {
    v15 = 0;
    *(a1 + 184) = 1;
  }

  else
  {
    v7 = *(a1 + 152);
    v8 = *(a1 + 160);
    v6 = (a1 + 152);
    if (v7 != v8)
    {
      v9 = v4 + 8 * v5;
      if (*(v9 + 4))
      {
        v10 = *v9;
      }

      else
      {
        v10 = -1.0;
      }

      v11 = v8 - v7;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = v7;
      v13 = v11;
      do
      {
        v14 = *v12;
        if (fabsf(*v12 + 1.0) < 1.0e-12)
        {
          *v12 = v10;
          v14 = v10;
        }

        ++v12;
        v10 = v14;
        --v13;
      }

      while (v13);
      if (a3 != 0.0)
      {
        do
        {
          *v7 = (*v7 - a2) / a3;
          ++v7;
          --v11;
        }

        while (v11);
      }
    }

    Nightingale::vDemean<float>(v6);
    return 1;
  }

  return v15;
}

uint64_t Nightingale::lstmLuna::reset(uint64_t this)
{
  *(this + 200) = *(this + 192);
  *(this + 272) = *(this + 264);
  *(this + 184) = 0;
  return this;
}

void *Nightingale::lstmLunaFw::lstmLunaFw(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4)
{
  result = Nightingale::lstmLuna::lstmLuna(a1, a2, a3, a4);
  *result = &unk_2869C61D8;
  return result;
}

{
  result = Nightingale::lstmLuna::lstmLuna(a1, a2, a3, a4);
  *result = &unk_2869C61D8;
  return result;
}

uint64_t Nightingale::lstmLunaFw::getOngoingFwLstmLuna(Nightingale::lstmLunaFw *this, uint64_t a2)
{
  if (Nightingale::lstmLuna::acquireWTmp(this, a2 - 44, a2) && (**this)(this, a2, 0.3) && (*(*this + 8))(this, 36.048, 0.46548))
  {
    Nightingale::lstmLunaFw::applyLunaAlgs(this);
  }

  return 0;
}

void Nightingale::lstmLunaFw::applyLunaAlgs(Nightingale::lstmLunaFw *this)
{
  memset(v5, 0, sizeof(v5));
  std::vector<double>::__assign_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v5, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 2);
  __p = 0;
  v3 = 0;
  v4 = 0;
  Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fwEndFlagDLTmp(this + 47);
}

uint64_t Nightingale::lstmLunaFw::validateLunaRslt(Nightingale::lstmLunaFw *this)
{
  if (*(this + 220) == 1)
  {
    v2 = *(this + 54);
    if (v2 >= -2)
    {
      v3 = -2;
    }

    else
    {
      v3 = *(this + 54);
    }

    if (v3 <= 0xFFFFFFF1)
    {
      v4 = -15;
    }

    else
    {
      v4 = v3;
    }

    LOBYTE(v6[0]) = v2 == v4;
    *(v6 + 1) = v2;
    std::vector<std::pair<BOOL,float>>::push_back[abi:nn200100](this + 264, v6);
    if (v2 == v4 && 1 - ((*(this + 17) - *(this + 16)) >> 2) <= (v2 - 7))
    {
      memset(v6, 0, sizeof(v6));
      std::vector<int>::__vallocate[abi:nn200100](v6, (-4 * (v2 - 7)) >> 2);
    }
  }

  return 0;
}

uint64_t Nightingale::lstmLunaFw::getOngoingFwLstmLunaAvailibilityFail(Nightingale::lstmLunaFw *this, uint64_t a2, float a3)
{
  if (*(this + 24) != *(this + 25))
  {
    return *(this + 184);
  }

  if (Nightingale::lstmLuna::acquireWTmp(this, a2 - 44, a2))
  {
    (**this)(this, a2, a3);
  }

  result = *(this + 184);
  *(this + 25) = *(this + 24);
  *(this + 34) = *(this + 33);
  *(this + 184) = 0;
  return result;
}

uint64_t Nightingale::lstmLunaFw::adjustLSTMFwEnd(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 4 * a3;
  v6 = 0.0;
  v7 = -2;
  v8 = a3;
  v9 = a3;
  while (a3 <= 0)
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(v15, v5 + *(a2 + 8) - 28, v5 + *(a2 + 8));
    std::vector<float>::vector[abi:nn200100]<float const*,0>(__p, v5 + *(a2 + 8), *(a2 + 8));
    MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(v15, __p, -1.0);
    if ((MeanDiffOf2Windows & 0x100000000) != 0)
    {
      v11 = 1;
      if (*&MeanDiffOf2Windows >= 0.2 && (*&MeanDiffOf2Windows - v6) >= 0.04)
      {
        v11 = 0;
        v9 = v8;
        v6 = *&MeanDiffOf2Windows;
      }
    }

    else
    {
      v11 = 1;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    if (v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    ++v7;
    --v8;
    v5 -= 4;
    if (v12 == 1)
    {
      return v9 | 0x100000000;
    }
  }

  return 0;
}

uint64_t Nightingale::lstmLunaFw::signalShiftHighCheck(float a1, float a2, uint64_t a3, int a4, uint64_t *a5)
{
  v7 = *a5;
  __dst = 0;
  v19 = 0;
  v17 = 0;
  if (a4)
  {
    std::vector<int>::__vallocate[abi:nn200100](&v17, a4);
  }

  v8 = a5[1];
  v15 = 0;
  v16 = 0;
  __p = 0;
  if (v7 != v8)
  {
    std::vector<int>::__vallocate[abi:nn200100](&__p, (v8 - v7) >> 2);
  }

  MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v17, &__p, -1.0);
  v10 = MeanDiffOf2Windows;
  if ((MeanDiffOf2Windows & 0x100000000) != 0)
  {
    v11 = *&MeanDiffOf2Windows >= a1 && *&MeanDiffOf2Windows <= a2;
  }

  else
  {
    v11 = 0;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    __dst = v17;
    operator delete(v17);
  }

  v12 = v10 << 32;
  if ((v10 & 0x100000000) == 0)
  {
    v12 = 0x41F0000000000000;
  }

  return v11 | v12;
}

unint64_t Nightingale::lstmLunaFw::closeToCalOvuCheck(Nightingale::lstmLunaFw *this, int a2, float a3, float a4)
{
  v4 = a3 + -13.0;
  v5 = (v4 + fminf(fmaxf(a4 * 9.0, 5.0), 15.0)) + 0.001;
  v7 = ((v4 - fminf(fmaxf(a4 * 4.0, 5.0), 15.0)) + -0.001) < a2 && v5 > a2;
  return v7 | (LODWORD(v4) << 32);
}

unint64_t Nightingale::lstmLunaFw::missingRateAtDetectionCheck(uint64_t a1, int a2, void *a3)
{
  if (a2 >= 1 && *a3 == a3[1])
  {
    return 0xBF80000000000000;
  }

  __p = 0;
  __dst = 0;
  v9 = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](&__p, (-4 * a2) >> 2);
  }

  MissingCnt = Nightingale::getMissingCnt(&__p);
  v5 = MissingCnt == 0;
  v6 = MissingCnt;
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return v5 | (LODWORD(v6) << 32);
}

float Nightingale::lstmLunaFw::getSignalShift(Nightingale::lstmLunaFw *this)
{
  v1 = *(this + 33);
  v2 = *(this + 34) - v1;
  result = -1.0;
  if (v2)
  {
    v4 = v2 >= 9;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return *(v1 + 12);
  }

  return result;
}

uint64_t Nightingale::lstmLunaFw::getFwConfirmationFailureReason(Nightingale::lstmLunaFw *this)
{
  v2 = *(this + 24);
  v1 = *(this + 25);
  if (v2 != v1)
  {
    v3 = (v1 - v2) >> 3;
    if (v3 >= 1 && (*v2 & 1) == 0)
    {
      v5 = *(this + 33);
      v6 = *(this + 34);
      if (v5 != v6)
      {
        v7 = (v6 - v5) >> 3;
        if (v7 >= 2)
        {
          if (v7 <= 1)
          {
            goto LABEL_21;
          }

          if (*(v5 + 8) != 1)
          {
            return 3;
          }
        }
      }

      if (v3 != 1)
      {
        if (v3 <= 1)
        {
          goto LABEL_21;
        }

        if (v2[8])
        {
          return 2;
        }
      }

      if (v5 == v6)
      {
        return 8;
      }

      v8 = (v6 - v5) >> 3;
      if (v8 < 6)
      {
        return 8;
      }

      if (v8 > 5)
      {
        if (*(v5 + 40) != 1)
        {
          return 5;
        }

        return 8;
      }

LABEL_21:
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  return 1;
}

_BYTE *Nightingale::lstmLunaPeriod::lstmLunaPeriod(_BYTE *a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4, uint64_t a5)
{
  v8 = Nightingale::lstmLuna::lstmLuna(a1, a2, a3, a4);
  *v8 = &unk_2869C61F8;
  *(v8 + 388) = a5;
  *(v8 + 400) = 0u;
  *(v8 + 416) = 0u;
  *(v8 + 432) = 0u;
  *(v8 + 448) = 0u;
  *(v8 + 464) = 0;
  Nightingale::CGradient::CGradient(v8 + 472);
  a1[528] = 0;
  a1[532] = 0;
  a1[536] = 0;
  a1[540] = 0;
  a1[544] = 0;
  a1[548] = 0;
  a1[552] = 0;
  a1[556] = 0;
  Nightingale::ngt_luna_period_dl_tmp_process::ngt_luna_period_dl_tmp_process((a1 + 560), a4);
  Nightingale::lstmModelCommonPeriod::lstmModelCommonPeriod((a1 + 568));
  return a1;
}

void Nightingale::lstmLunaPeriod::~lstmLunaPeriod(Nightingale::lstmLunaPeriod *this)
{
  *this = &unk_2869C61F8;
  Nightingale::lstmModelCommonPeriod::~lstmModelCommonPeriod((this + 568));
  Nightingale::ngt_luna_period_dl_tmp_process::~ngt_luna_period_dl_tmp_process((this + 560));
  v2 = *(this + 59);
  if (v2)
  {
    *(this + 60) = v2;
    operator delete(v2);
  }

  v3 = *(this + 56);
  if (v3)
  {
    *(this + 57) = v3;
    operator delete(v3);
  }

  v4 = *(this + 53);
  if (v4)
  {
    *(this + 54) = v4;
    operator delete(v4);
  }

  v5 = *(this + 50);
  if (v5)
  {
    *(this + 51) = v5;
    operator delete(v5);
  }

  Nightingale::lstmLuna::~lstmLuna(this);
}

__n128 Nightingale::lstmLunaPeriod::estimatePeriodStartLuna@<Q0>(Nightingale::lstmLunaPeriod *this@<X0>, uint64_t a2@<X8>)
{
  Nightingale::CGradient::CGradient(a2);
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *(a2 + 76) = 0;
  *(a2 + 80) = 0;
  *(a2 + 84) = 0;
  v4 = *(this + 97);
  if (v4 <= *(this + 98))
  {
    do
    {
      Nightingale::lstmLunaPeriod::getLunaPeriodEstimationADay(this, v4 - 44, v4);
      if (*(this + 556) == 1)
      {
        break;
      }

      v5 = v4 < *(this + 98);
      v4 = (v4 + 1);
    }

    while (v5);
  }

  if ((this + 472) != a2)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a2, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
  }

  *(a2 + 24) = *(this + 31);
  *(a2 + 33) = *(this + 505);
  *(a2 + 56) = *(this + 33);
  result = *(this + 541);
  *(a2 + 69) = result;
  return result;
}

uint64_t Nightingale::lstmLunaPeriod::getLunaPeriodEstimationADay(Nightingale::lstmLunaPeriod *this, int a2, uint64_t a3)
{
  result = Nightingale::lstmLuna::acquireWTmp(this, a2, a3);
  if (result && (result = (**this)(this, a3, 0.3), (result & 1) != 0))
  {
    result = (*(*this + 8))(this, 36.054, 0.46308);
    if (result)
    {
      if (*(this + 40))
      {
        result = Nightingale::lstmLunaPeriod::prepareUiVectors(this, a2, a3, *(this + 8));
        if (result)
        {

          Nightingale::lstmLunaPeriod::applyAlgs(this);
        }
      }

      else
      {
        v7 = std::__throw_bad_optional_access[abi:nn200100]();
        return Nightingale::lstmLunaPeriod::prepareUiVectors(v7, v8, v9, v10);
      }
    }
  }

  else
  {
    *(this + 138) = a3;
    *(this + 556) = 1;
  }

  return result;
}

BOOL Nightingale::lstmLunaPeriod::prepareUiVectors(Nightingale::lstmLunaPeriod *this, int a2, int a3, int a4)
{
  v23 = a2;
  v24 = 1;
  v25 = a3;
  v26 = 1;
  v27 = a4;
  v28 = 1;
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v20 = xmmword_258951470;
  v21 = 0x3FB09540401F4DA4;
  Nightingale::uiProcessForLstm::uiProcessForLstm(v22, v5, v6, v7, &v20);
  Nightingale::uiProcessForLstm::prepareUiLogForDL(v22, &v23, this + 400, this + 424, this + 448);
  v8 = *(this + 50);
  v9 = *(this + 51);
  if (v8 == v9 || (v10 = *(this + 53), v11 = *(this + 54), v10 == v11))
  {
    v18 = 0;
  }

  else
  {
    v12 = *(this + 56);
    v13 = *(this + 57);
    v14 = v9 - v8;
    v15 = v11 - v10;
    v16 = (v13 - v12) > 0xB3;
    if (v12 == v13)
    {
      v16 = 0;
    }

    v17 = v14 >= 0xB4 && v16;
    v18 = v15 >= 0xB4 && v17;
  }

  Nightingale::uiProcessForLstm::~uiProcessForLstm(v22);
  return v18;
}

uint64_t Nightingale::lstmLunaPeriod::validateWTmp(Nightingale::lstmLunaPeriod *this, float a2)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v3 = (this + 128);
  LODWORD(v22) = (*(this + 17) - *(this + 16)) >> 2;
  std::vector<int>::vector[abi:nn200100](&v19, &v22, 1uLL);
  LODWORD(v22) = 1050253722;
  std::vector<float>::vector[abi:nn200100](v18, &v22, 1uLL);
  v22 = &unk_2869C5CD8;
  v23 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
  v24 = 0;
  v25 = &v22;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:nn200100](v21, &v22);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:nn200100](&v22);
  __dst = 0;
  v17 = 0;
  __p = 0;
  if (v20 != v19)
  {
    std::vector<int>::__vallocate[abi:nn200100](&__p, (v20 - v19) >> 2);
  }

  v4 = *(this + 176);
  v5 = *(this + 13);
  if (v4 >= (*(this + 14) - v5) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if ((*(v5 + 8 * v4 + 4) & 1) != 0 || **v3 >= 0.0)
  {
    Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 369, v21, v3, &__p, v18, 1, &v22);
    v6 = *v22;
    v23 = v22;
    operator delete(v22);
  }

  else
  {
    v6 = 0x3F80000000000001;
  }

  v22 = v6;
  std::vector<std::pair<BOOL,float>>::push_back[abi:nn200100]((v3 + 8), &v22);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  v7 = 1;
  *(this + 45) = 1;
  v9 = *(this + 24);
  v8 = *(this + 25);
  *(this + 184) = *v9;
  if (v9 != v8)
  {
    v10 = v9 + 8;
    do
    {
      v11 = *(v10 - 2);
      if (v11)
      {
        break;
      }

      v12 = v10 == v8;
      v10 += 8;
    }

    while (!v12);
    v7 = v11 ^ 1;
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v22 = v21;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:nn200100](&v22);
  v13 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void Nightingale::lstmLunaPeriod::getPeriodProjFromLstmModel(Nightingale::lstmLunaPeriod *this, Nightingale::lstmModelCommonPeriod *a2)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v3 = *(*(*(this + 2) + 8) - 96);
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  *__src = 0u;
  *v5 = 0u;
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p[1], 0, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 2);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(__src, 0, *(this + 50), *(this + 51), (*(this + 51) - *(this + 50)) >> 2);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v5[1], v5[1], *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v7, v7[0], *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
  Nightingale::ngt_luna_period_dl_tmp_process::ngt_luna_periodRegressorLSTM(this + 70);
}

double *std::vector<double>::__assign_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(double **a1, float *a2, float *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<Nightingale::PhaseSet>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= v11 - result)
  {
    while (v5 != a3)
    {
      v16 = *v5++;
      *result++ = v16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + ((v11 - result) >> 1));
    if (v11 != result)
    {
      do
      {
        v13 = *v5++;
        *result++ = v13;
      }

      while (v5 != v12);
    }

    v14 = v11;
    if (v12 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v12++;
        *v11++ = v15;
        ++v14;
      }

      while (v12 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void *std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

Nightingale::fwEstimatorLuna *Nightingale::fwEstimatorLuna::fwEstimatorLuna(Nightingale::fwEstimatorLuna *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Nightingale::fwEstimatorBase::fwEstimatorBase(this);
  v5 = xmmword_258951500;
  v6 = 5;
  std::vector<int>::vector[abi:nn200100](v2 + 3, &v5, 5uLL);
  v3 = *MEMORY[0x277D85DE8];
  return this;
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Nightingale::fwEstimatorBase::fwEstimatorBase(this);
  v5 = xmmword_258951500;
  v6 = 5;
  std::vector<int>::vector[abi:nn200100](v2 + 3, &v5, 5uLL);
  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void Nightingale::fwEstimatorLuna::~fwEstimatorLuna(Nightingale::fwEstimatorLuna *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  Nightingale::fwEstimatorBase::~fwEstimatorBase(this);
}

void Nightingale::fwEstimatorLuna::getHistFwKali(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void **a4@<X3>, int a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  *a9 = 0;
  *(a9 + 4) = 0;
  *(a9 + 8) = 0;
  v14 = (a9 + 8);
  *(a9 + 12) = 0;
  *(a9 + 16) = 3;
  *(a9 + 20) = 0;
  v15 = (a9 + 20);
  *(a9 + 32) = 0;
  *(a9 + 28) = 0;
  v16.i64[0] = 0x3F0000003FLL;
  v16.i64[1] = 0x3F0000003FLL;
  *(a9 + 36) = vnegq_f32(v16);
  *(a9 + 52) = 0;
  *(a9 + 56) = 0;
  *(a9 + 60) = 0;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = 0;
  *(a9 + 128) = 0;
  *(a9 + 136) = 0;
  *(a9 + 140) = 0;
  *(a9 + 144) = 0x17FC00000;
  *(a9 + 152) = 0;
  *(a9 + 156) = 0;
  if (a5)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_48;
    }

    Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a8, *(a2 + 20) - *a2 + 1, *(a2 + 20), a3, a4, &v41);
    memset(v51, 0, 24);
    v17 = std::vector<std::vector<float>>::__init_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(v51, v41, v42, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
    v51[3] = v43;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    if (v45 != v44)
    {
      if (v45 - v44 >= 0)
      {
        operator new();
      }

LABEL_49:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    if (v47 != __p)
    {
      std::vector<std::optional<float>>::__vallocate[abi:nn200100](&v55, (v47 - __p) >> 3);
    }

    EligibleWTmpCnts = Nightingale::fwEstimatorLuna::getEligibleWTmpCnts(v17, a2, v18, v19, v51);
    v21 = EligibleWTmpCnts;
    v22 = HIDWORD(EligibleWTmpCnts);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    v48[0] = v51;
    std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](v48);
    *(a9 + 24) = v21;
    *(a9 + 32) = v21 > 0;
    if (v22 >= 1)
    {
      *(a9 + 152) = v21 / v22;
    }

    if (__p)
    {
      v47 = __p;
      operator delete(__p);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    v48[0] = &v41;
    std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](v48);
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_48;
  }

  v24 = *(a2 + 20);
  v25 = *a2;
  if (Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(a1, (a2 + 72), 0))
  {
    if (v23 && (a7 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    if ((a7 & 0x100000000) == 0)
    {
      *(a9 + 20) = 4;
      v26 = 7;
      goto LABEL_36;
    }
  }

  if (v24 - v25 <= 17)
  {
    *(a9 + 20) = 4;
    v26 = 6;
LABEL_36:
    *(a9 + 148) = v26;
    return;
  }

  if (v23)
  {
LABEL_28:
    v26 = 1;
    *(a9 + 20) = 1;
    goto LABEL_36;
  }

  if ((a7 & 0x100000000) == 0)
  {
LABEL_48:
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_49;
  }

  v27 = *(a2 + 36);
  v28 = *(a2 + 32);
  if (!*(a2 + 36))
  {
    v28 = 0;
  }

  LODWORD(v48[0]) = *a2;
  HIDWORD(v48[0]) = a7;
  v48[1] = (v28 | (v27 << 32));
  v48[2] = a4;
  v49 = a5;
  v50 = 0;
  Nightingale::slidingWindowHistLuna::slidingWindowHistLuna(&v41, v48);
  Nightingale::slidingWindowBaseLuna::process(&v41, a3, a10, &v36);
  if (v37)
  {
    v29 = Nightingale::run_m_over_n_moving_target(a3, a7 + 1, *a2);
    if ((v29 & 0x100000000) != 0)
    {
      v36 = v29;
      v37 = v30;
      v40 = 9;
      v31 = 1;
      goto LABEL_41;
    }

    v30 = v37;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0;
  LODWORD(v29) = v36;
LABEL_41:
  *v15 = v30;
  if (v29 >= 1)
  {
    *(a9 + 16) = 1;
    *(a9 + 8) = v29;
    *(a9 + 12) = 1;
    *a9 = v29 - 5;
    *(a9 + 4) = 1;
    if (Nightingale::phaseFactorProcessor::suppressFWStEnd(a1, a9, v14, a6))
    {
      v40 = 7;
      *(a9 + 20) = 0;
      *(a9 + 29) = 1;
    }

    Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(a1, *a2, a7, a9);
  }

  if (a10)
  {
    *(a9 + 36) = v38;
    *(a9 + 48) = v39;
    *(a9 + 148) = v40;
    *(a9 + 156) = v31 | 0x100;
  }

  Nightingale::slidingWindowHistLuna::~slidingWindowHistLuna(&v41);
}

uint64_t Nightingale::fwEstimatorLuna::getEligibleWTmpCnts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  MissingCnt = 0;
  if (*(a2 + 24) != 1 || (v5 = *a5, v6 = a5[1], *a5 == v6) || (v7 = *(v5 + 8), *v5 == v7) || *(v6 - 24) == *(v6 - 16))
  {
    v16 = 0;
    v17 = 0;
    return v17 | v16;
  }

  LODWORD(v8) = 0;
  v9 = (v7 - *v5) >> 2;
  v19 = 0uLL;
  v20 = 0;
  do
  {
    MissingCnt = Nightingale::getMissingCnt(v5);
    std::vector<int>::push_back[abi:nn200100](&v19, &MissingCnt);
    v8 = (v8 + v9 - MissingCnt);
    v5 += 24;
  }

  while (v5 != v6);
  if (v19 == *(&v19 + 1))
  {
    v16 = 0;
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = (v19 + 4);
    v11 = v19;
    if (v19 + 4 != *(&v19 + 1))
    {
      v12 = *v19;
      v11 = v19;
      v13 = (v19 + 4);
      do
      {
        v15 = *v13++;
        v14 = v15;
        if (v15 < v12)
        {
          v12 = v14;
          v11 = v10;
        }

        v10 = v13;
      }

      while (v13 != *(&v19 + 1));
    }

    v16 = (v9 - *v11);
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  *(&v19 + 1) = v19;
  operator delete(v19);
LABEL_15:
  v17 = v8 << 32;
  return v17 | v16;
}

unint64_t Nightingale::fwEstimatorLuna::getJDayCycleEnd(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 68) == 1)
  {
    v2 = roundf(*(a2 + 64));
    if (v2 <= 0.0)
    {
      LOBYTE(v3) = 0;
      v5 = 0;
      v4 = 0;
    }

    else
    {
      v3 = ((v2 + *a2) + -1.0);
      v4 = v3 & 0xFFFFFF00;
      v5 = 0x100000000;
    }
  }

  else
  {
    v3 = *(a2 + 20);
    v4 = v3 & 0xFFFFFF00;
    v5 = *(a2 + 24) << 32;
  }

  return v5 | v4 | v3;
}

void Nightingale::fwEstimatorLuna::getFwEndLuna(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a4 + 4) = 0;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 20) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 8;
  *(a4 + 36) = 0;
  *(a4 + 38) = 0;
  *(a4 + 40) = -1;
  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 64) = 0;
  *(a4 + 88) = -1;
  *(a4 + 92) = 0;
  *(a4 + 96) = 0;
  *a4 = 7;
  v4 = a1[1];
  if (*a1 != v4 && *(v4 - 60) == 1 && *(a3 + 36) == 1)
  {
    v5 = ((roundf(*(v4 - 64)) + *(v4 - 96)) + -13.0);
    v6 = a2[1];
    if (*a2 != v6 && *(v6 - 64) == *(a3 + 32))
    {
      *(v6 - 4);
    }

    operator new();
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t Nightingale::fwEstimatorLuna::getJDayKEd(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a4 + 66;
  if (*(v4 - 64) == a2 && *(v4 - 4) == 1)
  {
    if (v5 >= a2)
    {
      return a2;
    }

    else
    {
      return v5;
    }
  }

  else if (v5 >= (a2 - 1))
  {
    return a2 - 1;
  }

  else
  {
    return v5;
  }
}

void Nightingale::fwEstimatorLuna::updateAvailabilityKaliCA(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v9 = a2[1];
  if (v9)
  {
    v15 = *a2;
    v16 = 0;
    v10 = a2[1] <= (2 * std::__count_BOOL[abi:nn200100]<true,std::vector<BOOL>,false>(&v15, v9));
  }

  else
  {
    v10 = 0;
  }

  a5[4] = v10;
  v11 = a3[1];
  if (v11)
  {
    v15 = *a3;
    v16 = 0;
    v12 = a3[1] <= (2 * std::__count_BOOL[abi:nn200100]<true,std::vector<BOOL>,false>(&v15, v11));
  }

  else
  {
    v12 = 0;
  }

  a5[5] = v12;
  v13 = a4[1];
  if (v13)
  {
    v15 = *a4;
    v16 = 0;
    v14 = a4[1] <= (2 * std::__count_BOOL[abi:nn200100]<true,std::vector<BOOL>,false>(&v15, v13));
  }

  else
  {
    v14 = 0;
  }

  a5[6] = v14;
}

uint64_t Nightingale::fwEstimatorLuna::updateFailureReasonsCA(uint64_t a1, uint64_t a2, char a3, int a4, int a5, _DWORD *a6)
{
  v6 = *a2;
  if (*(a2 + 8) - *a2 <= 8uLL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v6[2] == 9 || *v6 == 9)
  {
    result = 9;
  }

  else
  {
    if (a5 >= a4 && (a3 & 1) == 0)
    {
      v6[2] = 1;
    }

    result = Nightingale::fwEstimatorLuna::combineEpRfLstmFailureReasons(a1, a2);
  }

  *a6 = result;
  return result;
}

BOOL Nightingale::fwEstimatorLuna::updateSignalAtFwEndCA(Nightingale *a1, Nightingale::lstmLunaFw *this, _DWORD *a3, uint64_t a4, float SignalShift)
{
  if (*a3 != 1)
  {
    if (*a3 != 2)
    {
      result = Nightingale::check2Real_t_equal(a1, -1.0, -1.0);
      v8 = (result << 31) >> 31;
      goto LABEL_12;
    }

    SignalShift = Nightingale::lstmLunaFw::getSignalShift(this);
  }

  result = Nightingale::check2Real_t_equal(a1, SignalShift, -1.0);
  if (result)
  {
    v8 = -1;
  }

  else if (SignalShift >= 0.1)
  {
    if (SignalShift >= 0.8)
    {
      v8 = 15;
    }

    else
    {
      v8 = (((SignalShift + -0.1) / 0.05) + 1.0);
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  *(a4 + 8) = v8;
  return result;
}

uint64_t Nightingale::fwEstimatorLuna::getKaliDay2DayNoiseAnchoredByToday(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5)
{
  if (*(a3 + 36) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v38);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v37);
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation(&v36);
  if (*(a3 + 36))
  {
    v9 = *(a3 + 32);
    v10 = a2[1];
    if (v10 != *a2)
    {
      v9 -= *(v10 - 4) ^ 1;
    }

    Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(v37, 20, v9, a5 - 43, a2, a4, &v30);
    if (v30 == v31)
    {
      goto LABEL_33;
    }

    v11 = *v30;
    v12 = v30[1];
    if (*v30 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = *v30;
      do
      {
        v15 = *v14++;
        if (v15 == -1.0)
        {
          ++v13;
        }
      }

      while (v14 != v12);
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * (v31 - v30);
    if (v17 < 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      for (i = 1; i != v17; ++i)
      {
        v20 = &v30[3 * i];
        v21 = *v20;
        v22 = v20[1];
        if (v21 == v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = 0;
          do
          {
            v24 = *v21++;
            if (v24 == -1.0)
            {
              ++v23;
            }
          }

          while (v21 != v22);
        }

        v25 = v13 <= v23;
        if (v13 >= v23)
        {
          v13 = v23;
        }

        if (!v25)
        {
          v18 = i;
        }
      }

      v26 = &v30[3 * v18];
      v11 = *v26;
      v12 = v26[1];
    }

    if (v12 == v11)
    {
LABEL_33:
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v27 = sqrtf(COERCE_FLOAT(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(&v30[3 * v18])));
      if (v27 >= 0.35)
      {
        v16 = 7;
      }

      else
      {
        v16 = (v27 / 0.05);
      }
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    v39 = &v30;
    std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v39);
    Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation(&v36);
    Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v37);
    Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v38);
    return v16;
  }

  v29 = std::__throw_bad_optional_access[abi:nn200100]();
  return Nightingale::fwEstimatorLuna::getJDayLastDayToRunLuna(v29);
}

uint64_t Nightingale::fwEstimatorLuna::getJDayLastDayToRunLuna(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (*(a3 + 36))
  {
    v4 = *(a3 + 32);
  }

  else
  {
    v4 = *a2;
  }

  if (*a2 == v4)
  {
    v5 = -(*(a2 + 60) ^ 1);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 + v4;
  if (v6 >= a4 || (*(a3 + 36) & 1) != 0)
  {
    if (v6 < a4)
    {
      return *(a3 + 32);
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v8 = std::__throw_bad_optional_access[abi:nn200100]();
    return Nightingale::fwEstimatorLuna::getDaysWristTempInPassNDaysAndDaysPassedEPAvailability(v8);
  }
}

void Nightingale::fwEstimatorLuna::getDaysWristTempInPassNDaysAndDaysPassedEPAvailability(uint64_t a1, void *a2, unint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v41 = *MEMORY[0x277D85DE8];
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v38);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(v38, 45, a5, a6 - 43, a2, a3, v33);
  v39 = 0x130000000CLL;
  v40 = 45;
  NumWristTempAvailRegardlessOf1stTemp = std::vector<int>::vector[abi:nn200100](&__p, &v39, 3uLL);
  v13 = __p;
  v14 = v32;
  if (__p != v32)
  {
    do
    {
      NumWristTempAvailRegardlessOf1stTemp = Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(NumWristTempAvailRegardlessOf1stTemp, v33, *v13, *v13);
      v16 = *(a7 + 40);
      v15 = *(a7 + 48);
      if (v16 >= v15)
      {
        v18 = *(a7 + 32);
        v19 = v16 - v18;
        v20 = (v16 - v18) >> 2;
        v21 = v20 + 1;
        if ((v20 + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v22 = v15 - v18;
        if (v22 >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a7 + 32, v23);
        }

        v24 = (v16 - v18) >> 2;
        v25 = (4 * v20);
        v26 = (4 * v20 - 4 * v24);
        *v25 = NumWristTempAvailRegardlessOf1stTemp;
        v17 = v25 + 1;
        memcpy(v26, v18, v19);
        NumWristTempAvailRegardlessOf1stTemp = *(a7 + 32);
        *(a7 + 32) = v26;
        *(a7 + 40) = v17;
        *(a7 + 48) = 0;
        if (NumWristTempAvailRegardlessOf1stTemp)
        {
          operator delete(NumWristTempAvailRegardlessOf1stTemp);
        }
      }

      else
      {
        *v16 = NumWristTempAvailRegardlessOf1stTemp;
        v17 = v16 + 4;
      }

      *(a7 + 40) = v17;
      ++v13;
    }

    while (v13 != v14);
  }

  if (a5 - a4 == 8)
  {
    v27 = 0;
    for (i = 12; i != 18; ++i)
    {
      NumWristTempAvailRegardlessOf1stTemp = Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(NumWristTempAvailRegardlessOf1stTemp, v33, i, 12);
      if (NumWristTempAvailRegardlessOf1stTemp > 8)
      {
        ++v27;
      }
    }

    *(a7 + 56) = v27;
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  __p = v33;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&__p);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v38);
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t Nightingale::fwEstimatorLuna::combineEpRfLstmFailureReasons(uint64_t a1, int **a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 8;
  }

  v4 = a2[1];
  while (1)
  {
    if (*a2 != v4)
    {
      v5 = 0;
      result = *v2;
      v7 = *a2;
      do
      {
        v8 = *v7++;
        if (v8 == result)
        {
          ++v5;
        }
      }

      while (v7 != v4);
      if (v5)
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 8;
    }
  }

  return result;
}

uint64_t Nightingale::fwEstimatorLuna::getCASignalAtFwEndEstimate(Nightingale::fwEstimatorLuna *this, float a2)
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

uint64_t Nightingale::fwEstimatorLuna::getCABoundedDay2DayNoise(Nightingale::fwEstimatorLuna *this, float a2)
{
  if (a2 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 0.35)
  {
    return 7;
  }

  return (a2 / 0.05);
}

void Nightingale::fwEstimatorLuna::updateAFwCycleFactorCAItems(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4, int a5, uint64_t *a6)
{
  if (a5)
  {
    if ((a3[6] & 1) == 0)
    {
      goto LABEL_49;
    }

    *(a2 + 52) = Nightingale::phaseFactorProcessor::getjDayStartOfAPhasetojDayRangeStart(a1, *a3 | (a3[5] << 32), a4, 0);
    *(a2 + 56) = 1;
    if ((a3[6] & 1) == 0)
    {
      goto LABEL_49;
    }

    *(a2 + 60) = Nightingale::phaseFactorProcessor::getjDayEndOfAPhasetojDayRangeEnd(a1, *a3 | ((a3[5] + 1) << 32), a4, 0);
    *(a2 + 64) = 1;
    __p.n128_u32[0] = 34014725;
    __p.n128_u16[2] = 1027;
    std::vector<Nightingale::Phase>::vector[abi:nn200100](v42, &__p, 6);
    if ((a3[6] & 1) == 0)
    {
      goto LABEL_49;
    }

    Nightingale::phaseFactorProcessor::getjDayStartOfVPhasestojDayRangeStart(a1, *a3 | ((a3[5] + 1) << 32), a4, v42, &__p);
    std::optional<std::vector<float>>::operator=[abi:nn200100]<std::vector<float>,void>(a2 + 72, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if ((a3[6] & 1) == 0)
    {
      goto LABEL_49;
    }

    Nightingale::phaseFactorProcessor::getjDayEndOfVPhasestojDayRangeEnd(a1, *a3 | ((a3[5] + 1) << 32), a4, v42, &__p);
    std::optional<std::vector<float>>::operator=[abi:nn200100]<std::vector<float>,void>(a2 + 104, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (*(a2 + 12) != 1 || *(a2 + 16) > 1u)
    {
      goto LABEL_46;
    }

    v11 = Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(a1, a3 + 9, 0);
    v12 = *(a3 + 24);
    if (!v11)
    {
      if ((a3[6] & 1) == 0 || (*(a2 + 12) & 1) == 0)
      {
        goto LABEL_49;
      }

      *(a2 + 144) = (a3[5] - *(a2 + 8) + 1);
      v12 = 1;
    }

    if ((v12 & 1) == 0 || *(a2 + 16))
    {
      goto LABEL_46;
    }

    if (*(a2 + 12))
    {
      v13 = *(a2 + 8);
      v14 = *a3;
      v15 = a3[5] + 1;
      v16 = v15 - v13;
      v17 = v13 - *a3;
      if (v17 >= 6)
      {
        v18 = 6;
      }

      else
      {
        v18 = v13 - *a3;
      }

      if ((v16 & 0x80000000) == 0 && v17 >= -1)
      {
        v19 = v18 + 1;
        if (v16 >= 5)
        {
          v20 = 5;
        }

        else
        {
          v20 = v15 - v13;
        }

        v21 = v20 + v13;
        Nightingale::preprocess_temperature_inputs_for_hist_cycle(a6, v14, v15, &__p);
        v30 = v21;
        std::vector<int>::vector[abi:nn200100](v31, &v30, 1uLL);
        Nightingale::prepare_temperature_input_slice_for_kdays(v31, v20 + v19, &__p, &v32);
        if (__dst != v32)
        {
          std::vector<int>::vector[abi:nn200100](&v37, v32);
          if (v35)
          {
            v36 = v35;
            operator delete(v35);
          }

          v27 = &v32;
          std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v27);
          if (v31[0])
          {
            v31[1] = v31[0];
            operator delete(v31[0]);
          }

          v22 = (v38 - v37) >> 2;
          if (v19 < v22)
          {
            LODWORD(v22) = v19;
          }

          v23 = 4 * v22;
          v32 = 0;
          __dst = 0;
          v34 = 0;
          if (v22)
          {
            std::vector<int>::__vallocate[abi:nn200100](&v32, v22);
          }

          v24 = v37 + v23;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v25 = v38 - (v37 + v23);
          if (v38 != v24)
          {
            std::vector<int>::__vallocate[abi:nn200100](&v27, v25 >> 2);
          }

          Nightingale::get_sw_difference(&v32, &v27);
          *(a2 + 44) = v26;
          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          if (v32)
          {
            __dst = v32;
            operator delete(v32);
          }

          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v41);
          std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v40);
          if (__p.n128_u64[0])
          {
            __p.n128_u64[1] = __p.n128_u64[0];
            operator delete(__p.n128_u64[0]);
          }

          goto LABEL_46;
        }

LABEL_50:
        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_46:
      if (v42[0])
      {
        v42[1] = v42[0];
        operator delete(v42[0]);
      }

      return;
    }

LABEL_49:
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_50;
  }
}

uint64_t std::optional<std::vector<float>>::operator=[abi:nn200100]<std::vector<float>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<float>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 == v5)
  {
    return 0;
  }

  v7 = a3 - a4;
  v8 = 4 * (a3 - a4);
  do
  {
    std::vector<int>::vector[abi:nn200100](&__p, v4);
    v9 = __p;
    if (((v25 - __p) >> 2) >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = (v25 - __p) >> 2;
    }

    if (v7 <= v10)
    {
      if (v8 == 4 * v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = &v25[-4 * v10];
        do
        {
          v13 = *v12++;
          if (v13 > 0.0)
          {
            ++v11;
          }
        }

        while (v12 != &v25[-v8]);
      }

      v23 = v11;
      std::vector<int>::push_back[abi:nn200100](&v26, &v23);
      v9 = __p;
    }

    if (v9)
    {
      v25 = v9;
      operator delete(v9);
    }

    v4 += 3;
  }

  while (v4 != v5);
  if (v26 == v27)
  {
    v21 = 0;
    if (!v26)
    {
      return v21;
    }

LABEL_29:
    v27 = v26;
    operator delete(v26);
    return v21;
  }

  v14 = v26 + 4;
  v15 = v26;
  if (v26 + 4 != v27)
  {
    v16 = *v26;
    v15 = v26;
    v17 = v26 + 4;
    do
    {
      v19 = *v17;
      v17 += 4;
      v18 = v19;
      v20 = v16 < v19;
      if (v16 <= v19)
      {
        v16 = v18;
      }

      if (v20)
      {
        v15 = v14;
      }

      v14 = v17;
    }

    while (v17 != v27);
  }

  v21 = *v15;
  if (v26)
  {
    goto LABEL_29;
  }

  return v21;
}

uint64_t Nightingale::fwEstimatorLuna::getDaysPassedEPAvailability(uint64_t NumWristTempAvailRegardlessOf1stTemp, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  do
  {
    NumWristTempAvailRegardlessOf1stTemp = Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(NumWristTempAvailRegardlessOf1stTemp, a2, v5 + 12, 12);
    if (NumWristTempAvailRegardlessOf1stTemp <= 8)
    {
      v6 = v6;
    }

    else
    {
      v6 = (v6 + 1);
    }

    v5 = ++v7;
  }

  while (v7 < a3);
  return v6;
}

void std::vector<std::optional<float>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<float>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void Nightingale::preprocess_temperature_inputs_for_hist_cycle(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2 - 43;
  Nightingale::extract_and_validate_temperature_data(a1, a3, __p);
  Nightingale::truncate_temperature_data(__p, v5, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *v6;
  v11 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__move_assign(v12, v8);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__move_assign(v13, v9);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v9);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v8);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  Nightingale::preprocess_all_temperature_data(__p, a4);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v13);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v12);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void Nightingale::extract_and_validate_temperature_data(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 1065353216;
  v3 = a1[1] - *a1;
  v44 = 0u;
  v45 = 0u;
  if ((v3 >> 6) < 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v4 = (v3 >> 6) & 0x7FFFFFFF;
    v5 = v4 + 1;
    v6 = v4 << 6;
    do
    {
      v7 = *a1;
      v8 = *a1 + v6;
      if (*(v8 - 4) == 1)
      {
        LOBYTE(v40) = *(v8 - 12);
        std::vector<int>::push_back[abi:nn200100](&v50, (v8 - 64));
        if (*(v8 - 4))
        {
          std::vector<float>::push_back[abi:nn200100](&v47, (v7 + v6 - 8));
          operator new();
        }

        std::__throw_bad_optional_access[abi:nn200100]();
        std::string::__throw_length_error[abi:nn200100]();
      }

      --v5;
      v6 -= 64;
    }

    while (v5 > 1);
    v9 = v50;
    v10 = v51;
  }

  v11 = v10 - v9;
  v12 = v11 >> 2;
  __p = 0;
  v42 = 0;
  v43 = 0;
  if ((v11 >> 2))
  {
    v13 = *(v9 + v11 - 4);
    v14 = a2 - v13;
    if (a2 >= v13)
    {
      v15 = -1;
      do
      {
        v16 = *v9++;
        ++v15;
      }

      while (v16 > a2);
    }

    else
    {
      v15 = 0;
    }

    v39 = a2 - v13;
    if ((v14 & 0x80000000) == 0)
    {
      v18 = 0;
      v19 = v14 + 1;
      do
      {
        v40 = a2 - v18;
        if (v15 < v12 && a2 - v18 == *(v50 + v15))
        {
          std::vector<int>::push_back[abi:nn200100](&__p, &v40);
          v20 = v45;
          if (v45)
          {
            v21 = *v15;
            if (*(v47 + v15) <= 0.0)
            {
              v22 = NAN;
            }

            else
            {
              v22 = *(v47 + v15);
            }

            do
            {
              v23 = (v20 + 2);
              if (*(v20 + 16) == v21)
              {
                v53[0] = v20 + 2;
                v24 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, v23);
                *v53 = v22;
              }

              else
              {
                v53[0] = v20 + 2;
                v24 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, v23);
                LODWORD(v53[0]) = 2143289344;
              }

              std::vector<float>::push_back[abi:nn200100](v24 + 3, v53);
              v20 = *v20;
            }

            while (v20);
          }

          ++v15;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](&__p, &v40);
          for (i = v45; i; i = *i)
          {
            v53[0] = i + 16;
            v26 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, i + 16);
            LODWORD(v53[0]) = 2143289344;
            std::vector<float>::push_back[abi:nn200100](v26 + 3, v53);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    v27 = v45;
    if (v45)
    {
      v28 = v39 + 1;
      do
      {
        v53[0] = v27 + 16;
        v29 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, v27 + 16);
        v30 = v29[3];
        v31 = v29[4] - v30;
        if ((v31 >> 2) < 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = 0;
          v33 = (v30 + (v31 & 0x1FFFFFFFCLL) - 4);
          while ((*v33 & 0x7FFFFFFFu) >= 0x7F800000)
          {
            ++v32;
            --v33;
            if ((v31 >> 2) == v32)
            {
              v32 = v31 >> 2;
              break;
            }
          }
        }

        if (v32 < v28)
        {
          v28 = v32;
        }

        v27 = *v27;
      }

      while (v27);
      if (v28 >= 1 && v28 <= v39)
      {
        for (j = 0; j != v28; ++j)
        {
          v42 -= 4;
          for (k = v45; k; k = *k)
          {
            v53[0] = k + 16;
            v36 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, k + 16);
            v36[4] = (v36[4] - 4);
          }
        }
      }
    }

    if ((a3 + 24) != &v44)
    {
      *(a3 + 56) = v46;
      std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *> *>>((a3 + 24), v45, 0);
    }

    v37 = __p;
    if (&__p != a3)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a3, __p, v42, (v42 - __p) >> 2);
      v37 = __p;
    }

    if (v37)
    {
      v42 = v37;
      operator delete(v37);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v44);
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
}

void Nightingale::truncate_temperature_data(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 - *a1;
  if (v5 == *a1 || *(v6 + v7 - 4) >= a2)
  {
LABEL_7:
    std::vector<int>::vector[abi:nn200100](a3, a1);
    std::unordered_map<unsigned char,std::vector<float>>::unordered_map(a3 + 24, (a1 + 3));

    std::unordered_map<unsigned char,std::vector<int>>::unordered_map(a3 + 64, (a1 + 8));
  }

  else
  {
    v8 = 0;
    v9 = v7 >> 2;
    if ((v7 >> 2) <= 1)
    {
      v9 = 1;
    }

    while (*(v6 + 4 * v8) != a2)
    {
      if (v9 == ++v8)
      {
        goto LABEL_7;
      }
    }

    v10 = v7 >> 2;
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    if (v8 + 1 < v10)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = v10;
    }

    *a3 = 0uLL;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 0uLL;
    *(a3 + 80) = 0uLL;
    *(a3 + 96) = 1065353216;
    v21 = 0;
    __dst = 0;
    v23 = 0;
    if (4 * v11 != -4)
    {
      std::vector<int>::__vallocate[abi:nn200100](&v21, (4 * v11 + 4) >> 2);
    }

    v12 = v23;
    *a3 = v21;
    *(a3 + 8) = 0;
    *(a3 + 16) = v12;
    v13 = a1[5];
    if (v13)
    {
      v14 = 4 * v11 + 4;
      do
      {
        v21 = v13 + 16;
        v15 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(a1 + 3, v13 + 16);
        std::vector<int>::vector[abi:nn200100](&v21, v15 + 3);
        std::vector<float>::vector[abi:nn200100]<float const*,0>(&v19, v21, v21 + v14);
        v24 = v13 + 16;
        v16 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a3 + 24), v13 + 16);
        v17 = v16[3];
        if (v17)
        {
          v16[4] = v17;
          operator delete(v17);
        }

        *(v16 + 3) = v19;
        v18 = v21;
        v16[5] = v20;
        if (v18)
        {
          __dst = v18;
          operator delete(v18);
        }

        v13 = *v13;
      }

      while (v13);
    }
  }
}

void Nightingale::preprocess_all_temperature_data(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 0u;
  v26 = (a2 + 64);
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  for (i = *(a1 + 40); i; i = *i)
  {
    v34 = *(i + 16);
    __src = 0;
    v32 = 0;
    v33 = 0;
    std::vector<int>::vector[abi:nn200100](&v29, i + 3);
    v4 = v29;
    v5 = v30;
    while (v4 != v5)
    {
      v6 = *v4;
      if (*v4 > 38.5)
      {
        v6 = NAN;
      }

      *v4++ = v6;
    }

    Nightingale::remove_outlier_via_sliding_window_r(&v29, 7, &__p, 1.0);
    v8 = __p;
    v7 = v28;
    if (__p != v28)
    {
      v9 = v32;
      do
      {
        v10 = (*v8 & 0x7FFFFFFFu) < 0x7F800000;
        if (v9 >= v33)
        {
          v11 = __src;
          v12 = v9 - __src;
          v13 = (v9 - __src) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v15 = v33 - __src;
          if ((v33 - __src) >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
          v17 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v16)
          {
            v17 = v14;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__src, v17);
          }

          v18 = v13;
          v19 = (4 * v13);
          v20 = &v19[-v18];
          *v19 = v10;
          v9 = (v19 + 1);
          memcpy(v20, v11, v12);
          v21 = __src;
          __src = v20;
          v32 = v9;
          v33 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v9 = v10;
          v9 += 4;
        }

        v32 = v9;
        v8 += 4;
      }

      while (v8 != v7);
    }

    v35 = &v34;
    v2 = a2;
    v22 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a2 + 24), &v34) + 3;
    if (v22 != &__p)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v22, __p, v28, (v28 - __p) >> 2);
    }

    v35 = &v34;
    v23 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v26, &v34) + 3;
    if (v23 != &__src)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v23, __src, v32, (v32 - __src) >> 2);
    }

    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (__src)
    {
      v32 = __src;
      operator delete(__src);
    }
  }

  if (v2 != a1)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v2, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  }
}

void Nightingale::prepare_temperature_input_slice_for_kdays(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      LODWORD(__p) = 2143289344;
      std::vector<float>::push_back[abi:nn200100](&v46, &__p);
      --v7;
    }

    while (v7);
  }

  if (a1[1] == *a1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      __p = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      std::vector<std::vector<float>>::push_back[abi:nn200100](a4, &__p);
      if (__p)
      {
        __dst[0] = __p;
        operator delete(__p);
      }

      LODWORD(__p) = 2143289344;
      std::vector<float>::push_back[abi:nn200100]((a4 + 24), &__p);
      ++v8;
      v9 = (a1[1] - *a1) >> 2;
    }

    while (v9 > v8);
  }

  if (v9 >= 1)
  {
    v39 = a3;
    v40 = 0;
    v10 = v9 & 0x7FFFFFFF;
    do
    {
      v11 = v10 - 1;
      if (v10 - 1 >= ((a1[1] - *a1) >> 2))
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = *(*a1 + 4 * v11);
      v13 = *a3;
      v14 = (a3[1] - *a3) >> 2;
      v15 = v40;
      if (v14 > v40)
      {
        do
        {
          if (v12 >= *(v13 + 4 * v15))
          {
            break;
          }

          ++v15;
        }

        while (v14 > v15);
        v40 = v15;
      }

      __p = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      if (v47 != v46)
      {
        std::vector<int>::__vallocate[abi:nn200100](&__p, (v47 - v46) >> 2);
      }

      v16 = 0;
      v17 = 1.0;
      if (v14 > v15 && v12 == *(v13 + 4 * v15))
      {
        v43 = 0;
        v18 = a3[10];
        if (v18)
        {
          v19 = v40 + a2;
          v20 = 4 * v15;
          do
          {
            v21 = v18[3];
            v22 = (v18[4] - v21) >> 2;
            if (v19 < v22)
            {
              LODWORD(v22) = v40 + a2;
            }

            v41 = 0;
            v42 = 0uLL;
            std::vector<float>::__init_with_size[abi:nn200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v41, v21 + v20, v21 + 4 * v22, (4 * v22 - v20) >> 2);
            v23 = 0.0;
            if (v41 != v42)
            {
              v24 = v41;
              do
              {
                v25 = *v24++;
                v23 = v23 + v25;
              }

              while (v24 != v42);
            }

            v26 = 1.0 - v23 / a2;
            if (v17 > v26)
            {
              v43 = *(v18 + 16) | 0x100;
              v17 = v26;
            }

            if (v41)
            {
              *&v42 = v41;
              operator delete(v41);
            }

            v18 = *v18;
          }

          while (v18);
          if ((v43 & 0x100) != 0)
          {
            v41 = &v43;
            a3 = v39;
            v27 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v39 + 3, &v43);
            v28 = v27[3];
            v29 = (v27[4] - v28) >> 2;
            if (v19 < v29)
            {
              LODWORD(v29) = v40 + a2;
            }

            std::vector<float>::vector[abi:nn200100]<float const*,0>(&v41, v28 + v20, v28 + 4 * v29);
            if (__p)
            {
              __dst[0] = __p;
              operator delete(__p);
            }

            v30 = v41;
            __p = v41;
            *__dst = v42;
            v16 = v42;
            goto LABEL_42;
          }
        }

        a3 = v39;
        while (1)
        {
          v30 = __p;
          v16 = __dst[0];
LABEL_42:
          if (a2 <= ((v16 - v30) >> 2))
          {
            break;
          }

          LODWORD(v41) = 2143289344;
          std::vector<float>::push_back[abi:nn200100](&__p, &v41);
        }

        v31 = v16 - 4;
        v32 = v30 != v16 && v31 > v30;
        if (v32)
        {
          v33 = v30 + 4;
          do
          {
            v34 = *(v33 - 1);
            *(v33 - 1) = *v31;
            *v31 = v34;
            v31 -= 4;
            v35 = v33 >= v31;
            v33 += 4;
          }

          while (!v35);
        }

        ++v40;
      }

      v36 = (*a4 + 24 * v11);
      v37 = __p;
      if (v36 != &__p)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v36, __p, v16, (v16 - __p) >> 2);
        v37 = __p;
      }

      *(*(a4 + 24) + 4 * v11) = v17;
      if (v37)
      {
        __dst[0] = v37;
        operator delete(v37);
      }

      v32 = v10-- <= 1;
    }

    while (!v32);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

uint64_t std::vector<std::vector<float>>::push_back[abi:nn200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(result, v10);
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
    v12 = *(result + 8) - *result;
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
    result = std::__split_buffer<std::vector<std::pair<BOOL,float>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void Nightingale::remove_outlier_via_sliding_window_r(uint64_t *a1@<X0>, int a2@<W1>, const void **a3@<X8>, float a4@<S0>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = (v8 - 1);
  if (v8 >= 1)
  {
    while ((*(*a1 + 4 * v10) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      LODWORD(v25) = 2143289344;
      std::vector<float>::push_back[abi:nn200100](a3, &v25);
      ++v9;
      --v10;
      if (v8 == v9)
      {
        goto LABEL_26;
      }
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    v12 = 4 * v10;
    do
    {
      v13 = *a1;
      if (v11 >= (((a1[1] - *a1) >> 2) - (v9 + a2)))
      {
        std::vector<float>::push_back[abi:nn200100](a3, (v13 + v12));
      }

      else
      {
        if (((a3[1] - *a3) >> 2) >= a2)
        {
          v14 = a2;
        }

        else
        {
          v14 = (a3[1] - *a3) >> 2;
        }

        v25 = 0;
        __dst = 0;
        v27 = 0;
        if (v14)
        {
          std::vector<int>::__vallocate[abi:nn200100](&v25, v14);
        }

        std::vector<float>::vector[abi:nn200100]<float const*,0>(__p, v13 + v12, v13 + v12 + 4);
        Nightingale::get_sw_difference(&v25, __p);
        v16 = v15 < a4 && v15 > -a4;
        if (v16)
        {
          std::vector<float>::push_back[abi:nn200100](a3, (*a1 + v12));
        }

        else
        {
          v23 = 2143289344;
          std::vector<float>::push_back[abi:nn200100](a3, &v23);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v25)
        {
          __dst = v25;
          operator delete(v25);
        }
      }

      v12 -= 4;
      v16 = v11-- <= 0;
    }

    while (!v16);
  }

LABEL_26:
  v18 = *a3;
  v17 = a3[1];
  if (*a3 != v17)
  {
    v19 = v17 - 4;
    if (v19 > v18)
    {
      v20 = v18 + 4;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v19;
        *v19 = v21;
        v19 -= 4;
        v22 = v20 >= v19;
        v20 += 4;
      }

      while (!v22);
    }
  }
}

int *Nightingale::get_sw_difference(char **a1, int **a2)
{
  v3 = *a1;
  v2 = a1[1];
  result = *a2;
  v5 = a2[1];
  v6 = (v5 - *a2) >> 2;
  for (i = (v2 - v3) >> 2; v3 != v2; LODWORD(i) = i - ((v8 & 0x7FFFFFFFu) > 0x7F7FFFFF))
  {
    v8 = *v3;
    v3 += 4;
  }

  v9 = v6;
  if (result != v5)
  {
    v9 = v6;
    v10 = result;
    do
    {
      v11 = *v10++;
      v9 -= (v11 & 0x7FFFFFFFu) > 0x7F7FFFFF;
    }

    while (v10 != v5);
  }

  if (i)
  {
    if (v9)
    {
      Nightingale::vMean<float>();
    }
  }

  return result;
}

char *Nightingale::calculate_snr_noise_power(char **a1, int **a2)
{
  result = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 2;
  v8 = (v3 - result) >> 2;
  if (v3 != result)
  {
    v8 = (v3 - result) >> 2;
    v9 = result;
    do
    {
      v10 = *v9;
      v9 += 4;
      LODWORD(v8) = v8 - ((v10 & 0x7FFFFFFFu) > 0x7F7FFFFF);
    }

    while (v9 != v3);
  }

  for (; v6 != v5; LODWORD(v7) = v7 - ((v11 & 0x7FFFFFFFu) > 0x7F7FFFFF))
  {
    v11 = *v6++;
  }

  if (v8 && v7 && v7 + v8 >= 3)
  {
    Nightingale::vVar<float>();
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t std::vector<float>::__init_with_size[abi:nn200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t std::unordered_map<unsigned char,std::vector<float>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<float>> const&>(a1, i + 16);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<float>> const&>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<unsigned char,std::vector<int>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<int>> const&>(a1, i + 16);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<int>> const&>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::find<unsigned char>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v14[0] = v8 + 2;
        v14[1] = v8 + 3;
        std::pair<unsigned char &,std::vector<float> &>::operator=[abi:nn200100]<unsigned char const,std::vector<float>,0>(v14, (v4 + 2));
        v10 = *v8;
        v11 = *(v8 + 16);
        v8[1] = v11;
        inserted = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_prepare(a1, v11, v8 + 16);
        std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_perform(a1, v8, inserted);
        v4 = *v4;
        if (v10)
        {
          v13 = v4 == a3;
        }

        else
        {
          v13 = 1;
        }

        v8 = v10;
      }

      while (!v13);
    }

    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_multi<std::pair<unsigned char const,std::vector<float>> const&>();
  }
}

uint64_t std::pair<unsigned char &,std::vector<float> &>::operator=[abi:nn200100]<unsigned char const,std::vector<float>,0>(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  if (v3 != (a2 + 8))
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void Nightingale::fwHEstimation::processPerCycle(uint64_t a1@<X1>, uint64_t *a2@<X2>, void **a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  Nightingale::fwEstimatorCalendar::fwEstimatorCalendar(v70);
  Nightingale::fwEstimatorOPK::fwEstimatorOPK(v69);
  v16 = Nightingale::fwEstimatorLuna::fwEstimatorLuna(v68);
  *a8 = 0;
  *(a8 + 4) = 0;
  *(a8 + 8) = 0;
  *(a8 + 12) = 0;
  *(a8 + 20) = 0;
  *(a8 + 16) = 3;
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
  v34 = a8 + 72;
  *(a8 + 104) = 0;
  *(a8 + 96) = 0;
  *(a8 + 128) = 0;
  *(a8 + 136) = 0;
  *(a8 + 140) = 0;
  *(a8 + 144) = 0x17FC00000;
  *(a8 + 152) = 0;
  *(a8 + 156) = 0;
  if (*(a1 + 24) != 1)
  {
LABEL_50:
    Nightingale::fwEstimatorLuna::~fwEstimatorLuna(v68);
    Nightingale::fwEstimatorOPK::~fwEstimatorOPK(v69);
    Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar(v70);
    return;
  }

  v31 = (a8 + 136);
  v33 = a8 + 104;
  JDayCycleEnd = Nightingale::fwEstimatorLuna::getJDayCycleEnd(v16, a1);
  std::vector<int>::vector[abi:nn200100](v57, a5);
  v32 = a5;
  std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](__p, a5 + 3);
  Nightingale::fwEstimatorLuna::getHistFwKali(v68, a1, a2, a3, a4, v57, JDayCycleEnd & 0xFFFFFFFFFFLL, a6, v59, a7);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  std::vector<int>::vector[abi:nn200100](v46, a5);
  std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](v47, a5 + 3);
  Nightingale::fwEstimatorOPK::getHistFwOpk(v69, a1, v46, JDayCycleEnd & 0xFFFFFFFFFFLL, v48);
  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  std::vector<int>::vector[abi:nn200100](v35, a5);
  std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](v36, a5 + 3);
  Nightingale::fwEstimatorCalendar::getHistFwCal(v70, a1, JDayCycleEnd & 0xFFFFFFFFFFLL, v35, v37);
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (!*&v48[16])
  {
    v24 = v49;
    *a8 = *v48;
    *(a8 + 14) = *&v48[14];
    v25 = v50;
    *v17 = v24;
    *(a8 + 48) = v25;
    *(a8 + 64) = v51;
    v22 = a8 + 72;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v34, v52);
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v33, v54);
    *v31 = *v56;
    v23 = *&v56[14];
    goto LABEL_18;
  }

  if (v59[12] == 1)
  {
    v20 = v60;
    *a8 = *v59;
    *(a8 + 14) = *&v59[14];
    v21 = v61;
    *v17 = v20;
    *(a8 + 48) = v21;
    *(a8 + 64) = v62;
    v22 = a8 + 72;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v34, v63);
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v33, v65);
    *v31 = *v67;
    v23 = *&v67[14];
LABEL_18:
    *(a8 + 150) = v23;
    goto LABEL_20;
  }

  *a8 = *v37;
  *(a8 + 14) = *&v37[14];
  v26 = v39;
  *v17 = v38;
  *(a8 + 48) = v26;
  *(a8 + 64) = v40;
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v34, v41);
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v33, v43);
  *v31 = *v45;
  v22 = a8 + 72;
  *(a8 + 150) = *&v45[14];
  *(a8 + 20) = *&v59[20];
LABEL_20:
  v27 = v61;
  *v17 = v60;
  *(a8 + 48) = v27;
  *(a8 + 64) = v62;
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v22, v63);
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v33, v65);
  *v31 = *v67;
  *(a8 + 150) = *&v67[14];
  *(a8 + 24) = *&v59[24];
  Nightingale::fwEstimatorLuna::updateAFwCycleFactorCAItems(v68, a8, a1, v32, a7, a2);
  if (!*(a8 + 16))
  {
    *(a8 + 148) = 0;
    *(a8 + 20) = 0;
  }

  if (v48[12] != 1 || v59[12] != 1)
  {
    goto LABEL_28;
  }

  if (*(a8 + 12))
  {
    v28 = *&v59[8] - *(a8 + 8);
    if ((*(a8 + 140) & 1) == 0)
    {
      *(a8 + 140) = 1;
    }

    *v31 = v28;
LABEL_28:
    if ((v48[29] & 1) != 0 || (v37[29] & 1) != 0 || v59[29] == 1)
    {
      *(a8 + 20) = 3;
    }

    if (v44 == 1 && v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    if (v42 == 1 && v41[0])
    {
      v41[1] = v41[0];
      operator delete(v41[0]);
    }

    if (v55 == 1 && v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    if (v53 == 1 && v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    if (v66 == 1 && v65[0])
    {
      v65[1] = v65[0];
      operator delete(v65[0]);
    }

    if (v64 == 1)
    {
      if (v63[0])
      {
        v63[1] = v63[0];
        operator delete(v63[0]);
      }
    }

    goto LABEL_50;
  }

  v29 = std::__throw_bad_optional_access[abi:nn200100]();
  std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(v29, v30);
}

void std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    std::vector<int>::vector[abi:nn200100](a1, a2);
    *(a1 + 24) = 1;
  }
}

uint64_t Nightingale::run_m_over_n_moving_target(uint64_t *a1, int a2, int a3)
{
  v44[5] = *MEMORY[0x277D85DE8];
  if ((a3 | a2) < 0)
  {
    result = 0;
    goto LABEL_49;
  }

  Nightingale::prepare_input_slices_for_mt(a1, a3, a2, &v42);
  Nightingale::day2day_noise_check_per_slice(&v42, v41, 0.16);
  Nightingale::signal2noise_check_per_slice(&v42, v40, 0.3025);
  Nightingale::missing_spec_check_for_each_window(&v42, v37, 8.0, 8.0);
  __src = 0;
  v35 = 0;
  v36 = 0;
  v44[0] = 0xEEEEEEEEEEEEEEEFLL * ((v43 - v42) >> 3);
  v44[1] = v41[1];
  v44[2] = v40[1];
  v44[3] = v37[1];
  v44[4] = v39;
  std::vector<unsigned long>::vector[abi:nn200100](&v32, v44, 5uLL);
  v3 = v32;
  if (v32 != v33)
  {
    LOBYTE(v4) = 1;
    do
    {
      v5 = *v3++;
      v4 = (v5 == *v32) & v4;
    }

    while (v3 != v33);
    if (!v4)
    {
      goto LABEL_35;
    }
  }

  if (v43 == v42)
  {
    v7 = v35;
  }

  else
  {
    v6 = 0;
    v7 = v35;
    do
    {
      v8 = (v6 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v9 = (*(v41[0] + v8) & (1 << v6)) != 0;
      v10 = (*(v40[0] + v8) & (1 << v6)) != 0;
      v11 = (*(v37[0] + v8) & (1 << v6)) != 0;
      v12 = (*(v38 + v8) & (1 << v6)) != 0;
      if (v7 >= v36)
      {
        v13 = __src;
        v14 = v7 - __src;
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v7 - __src);
        v16 = v15 + 1;
        if (v15 + 1 >= 0x3333333333333334)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * (v36 - __src) > v16)
        {
          v16 = 0x999999999999999ALL * (v36 - __src);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (v36 - __src) >= 0x1999999999999999)
        {
          v17 = 0x3333333333333333;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTSpecs>>(&__src, v17);
        }

        v18 = 5 * v15;
        *v18 = 1;
        *(v18 + 1) = v9;
        *(v18 + 2) = v10;
        *(v18 + 3) = v11;
        *(v18 + 4) = v12;
        v7 = (5 * v15 + 5);
        v19 = (v18 - v14);
        memcpy((v18 - v14), v13, v14);
        v20 = __src;
        __src = v19;
        v35 = v7;
        v36 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v7 = 1;
        v7[1] = v9;
        v7[2] = v10;
        v7[3] = v11;
        v7[4] = v12;
        v7 += 5;
      }

      v35 = v7;
      ++v6;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((v43 - v42) >> 3) > v6);
  }

  __p = 0;
  __dst = 0;
  v31 = 0;
  if (v7 != __src)
  {
    std::vector<Nightingale::lunaMTSpecs>::__vallocate[abi:nn200100](&__p, 0xCCCCCCCCCCCCCCCDLL * (v7 - __src));
  }

  v22 = Nightingale::predict_on_day_range_historical(&v42, &__p);
  v24 = v23;
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if ((v22 & 0x100000000) != 0)
  {
    v27 = v22 & 0xFFFFFF00;
    v26 = v22;
    v25 = 0x100000000;
    goto LABEL_36;
  }

  if ((v24 & 0x100000000) != 0)
  {
    if (v24 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_36;
    }

    if (v24 == 3)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_36;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_36:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (__src)
  {
    v35 = __src;
    operator delete(__src);
  }

  if (v38)
  {
    operator delete(v38);
  }

  if (v37[0])
  {
    operator delete(v37[0]);
  }

  if (v40[0])
  {
    operator delete(v40[0]);
  }

  if (v41[0])
  {
    operator delete(v41[0]);
  }

  v37[0] = &v42;
  std::vector<Nightingale::lunaMTPreparedData>::__destroy_vector::operator()[abi:nn200100](v37);
  result = v27 | v26 | v25;
LABEL_49:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void Nightingale::prepare_input_slices_for_mt(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = a3 - 2;
  Nightingale::preprocess_temperature_inputs_for_hist_cycle(a1, a2, a3, v69);
  Nightingale::extract_temperature_data_for_given_range(a2 + 2, v7, v69, &v64);
  if (v66[3] && v65 != v64)
  {
    v8 = v68;
    v63 = *(v66[2] + 16);
    if (v68)
    {
      v9 = 1.0;
      do
      {
        v11 = v8[3];
        v10 = v8[4];
        v12 = 1.0;
        if (v10 != v11)
        {
          v13 = v10 - v11;
          v14 = 0.0;
          do
          {
            v15 = *v11++;
            v14 = v14 + v15;
          }

          while (v11 != v10);
          v12 = 1.0 - v14 / v13;
        }

        if (v12 < v9)
        {
          v63 = *(v8 + 16);
          v9 = v12;
        }

        v8 = *v8;
      }

      while (v8);
    }

    v16 = 0;
    v62 = 0xFFFFFFFDFFFFFFFELL;
    v61 = xmmword_258951548;
    do
    {
      *(&v61 + v16) += a3 - 13;
      v16 += 4;
    }

    while (v16 != 24);
    v17 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v66, &v63);
    v49 = &v63;
    v18 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v67, &v63);
    for (i = 0; i != 24; i += 4)
    {
      v20 = v65 - v64;
      if (v65 != v64)
      {
        v21 = 0;
        v22 = v20 >> 2;
        if ((v20 >> 2) <= 1)
        {
          v22 = 1;
        }

        while (*(&v61 + i) != *(v64 + v21))
        {
          if (v22 == ++v21)
          {
            goto LABEL_79;
          }
        }

        if (((v20 >> 2) - 1) > v21)
        {
          v23 = 4 * v21;
          LODWORD(v49) = *(v64 + v23);
          v24 = v23 + 4;
          std::vector<float>::vector[abi:nn200100]<float const*,0>(&v47, v17[3], v17[3] + v23 + 4);
          std::vector<float>::vector[abi:nn200100]<float const*,0>(&v45, v17[3] + v24, v17[4]);
          v50 = 0;
          __dst = 0;
          v52 = 0;
          if (v48 != v47)
          {
            std::vector<int>::__vallocate[abi:nn200100](&v50, (v48 - v47) >> 2);
          }

          v53 = 0;
          v54 = 0;
          v55 = 0;
          if (v46 != v45)
          {
            std::vector<int>::__vallocate[abi:nn200100](&v53, (v46 - v45) >> 2);
          }

          v25 = v18[3];
          memset(v44, 0, sizeof(v44));
          std::vector<BOOL>::__init_with_size[abi:nn200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v44, v25, v24 + v25, v24 >> 2);
          v26 = v18[4];
          v27 = v18[3] + v24;
          memset(__p, 0, sizeof(__p));
          std::vector<BOOL>::__init_with_size[abi:nn200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__p, v27, v26, (v26 - v27) >> 2);
          std::vector<BOOL>::vector(&v56, v44);
          std::vector<BOOL>::vector(&v58, __p);
          v60 = 0uLL;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          if (v44[0])
          {
            operator delete(v44[0]);
          }

          if (v45)
          {
            v46 = v45;
            operator delete(v45);
          }

          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v28 = v56;
          if (v57 > 0x3F || (v57 & 0x3F) != 0)
          {
            v30 = 0;
            v31 = 0.0;
            v32 = v56 + 8 * (v57 >> 6);
            do
            {
              if ((*v28 >> v30))
              {
                v33 = 1.0;
              }

              else
              {
                v33 = 0.0;
              }

              v31 = v31 + v33;
              if (v30 == 63)
              {
                v32 = v56 + 8 * (v57 >> 6);
              }

              v28 += 8 * (v30 == 63);
              if (v30 == 63)
              {
                v30 = 0;
              }

              else
              {
                ++v30;
              }
            }

            while (v30 != (v57 & 0x3F) || v28 != v32);
            v29 = v31;
          }

          else
          {
            v29 = 0;
          }

          v34 = v58;
          if (v59 > 0x3F || (v59 & 0x3F) != 0)
          {
            v36 = 0;
            v37 = 0.0;
            v38 = v58 + 8 * (v59 >> 6);
            do
            {
              if ((*v34 >> v36))
              {
                v39 = 1.0;
              }

              else
              {
                v39 = 0.0;
              }

              v37 = v37 + v39;
              if (v36 == 63)
              {
                v38 = v58 + 8 * (v59 >> 6);
              }

              v34 += 8 * (v36 == 63);
              if (v36 == 63)
              {
                v36 = 0;
              }

              else
              {
                ++v36;
              }
            }

            while (v36 != (v59 & 0x3F) || v34 != v38);
            v35 = v37;
          }

          else
          {
            v35 = 0;
          }

          *(&v60 + 1) = __PAIR64__(v35, v29);
          *&v60 = 1.0 - (v29 / v57);
          *(&v60 + 1) = 1.0 - (v35 / v59);
          v40 = a4[1];
          if (v40 >= a4[2])
          {
            v42 = std::vector<Nightingale::lunaMTPreparedData>::__emplace_back_slow_path<Nightingale::lunaMTPreparedData const&>(a4, &v49);
          }

          else
          {
            v41 = v49;
            *(v40 + 8) = 0;
            *v40 = v41;
            *(v40 + 16) = 0;
            *(v40 + 24) = 0;
            if (__dst != v50)
            {
              std::vector<int>::__vallocate[abi:nn200100](v40 + 8, (__dst - v50) >> 2);
            }

            *(v40 + 32) = 0;
            *(v40 + 40) = 0;
            *(v40 + 48) = 0;
            if (v54 != v53)
            {
              std::vector<int>::__vallocate[abi:nn200100](v40 + 32, (v54 - v53) >> 2);
            }

            std::vector<BOOL>::vector((v40 + 56), &v56);
            std::vector<BOOL>::vector((v40 + 80), &v58);
            *(v40 + 104) = v60;
            v42 = v40 + 120;
          }

          a4[1] = v42;
          if (v58)
          {
            operator delete(v58);
          }

          if (v56)
          {
            operator delete(v56);
          }

          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          if (v50)
          {
            __dst = v50;
            operator delete(v50);
          }
        }
      }

LABEL_79:
      ;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v67);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v66);
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v71);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v70);
  if (v69[0])
  {
    v69[1] = v69[0];
    operator delete(v69[0]);
  }
}

void Nightingale::day2day_noise_check_per_slice(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<BOOL>::reserve(a2, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3));
  v7 = *a1;
  for (i = a1[1]; v7 != i; v7 += 120)
  {
    std::vector<int>::vector[abi:nn200100](&__p, (v7 + 8));
    std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, __dst, *(v7 + 32), *(v7 + 40), (*(v7 + 40) - *(v7 + 32)) >> 2);
    v8 = Nightingale::day2day_noise(&__p);
    v10 = (LODWORD(v8) & 0x7FFFFFFFu) < 0x7F800000 && v8 <= a3;
    v11 = v10;
    std::vector<BOOL>::push_back(a2, &v11);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }
}

uint64_t Nightingale::signal2noise_check_per_slice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<BOOL>::reserve(a2, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3));
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 120)
  {
    Nightingale::calculate_snr_noise_power((v8 + 8), (v8 + 32));
    v10 = v9;
    v11 = v9;
    Nightingale::get_sw_difference((v8 + 8), (v8 + 32));
    if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v13 = NAN;
      if ((LODWORD(v12) & 0x7FFFFFFFu) <= 0x7F7FFFFF && v10 != 0.0)
      {
        v13 = (v12 * v12) / v10;
      }
    }

    else
    {
      v13 = NAN;
    }

    v15 = (LODWORD(v13) & 0x7FFFFFFFu) < 0x7F800000 && v13 >= a3;
    v16 = v15;
    result = std::vector<BOOL>::push_back(a2, &v16);
  }

  return result;
}

void Nightingale::missing_spec_check_for_each_window(void *a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  memset(v30, 0, sizeof(v30));
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::reserve(v30, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3));
  std::vector<BOOL>::reserve(__p, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3));
  v9 = *a1;
  for (i = a1[1]; v9 != i; v9 += 15)
  {
    v10 = v9[8];
    v11 = v10 & 0x3F;
    v12 = 0.0;
    v13 = v10 <= 0x3F && v11 == 0;
    v14 = 0.0;
    if (!v13)
    {
      v15 = 0;
      v16 = v9[7];
      v17 = &v16[v10 >> 6];
      v18 = 0.0;
      do
      {
        if ((*v16 >> v15))
        {
          v19 = 1.0;
        }

        else
        {
          v19 = 0.0;
        }

        v18 = v18 + v19;
        v16 += v15 == 63;
        if (v15 == 63)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }
      }

      while (v15 != v11 || v16 != v17);
      v14 = v18;
    }

    v20 = v9[11];
    v21 = v20 & 0x3F;
    if (v20 > 0x3F || v21 != 0)
    {
      v23 = 0;
      v24 = v9[10];
      v25 = &v24[v20 >> 6];
      v26 = 0.0;
      do
      {
        if ((*v24 >> v23))
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.0;
        }

        v26 = v26 + v27;
        v24 += v23 == 63;
        if (v23 == 63)
        {
          v23 = 0;
        }

        else
        {
          ++v23;
        }
      }

      while (v23 != v21 || v24 != v25);
      v12 = v26;
    }

    v28 = v14 >= a3;
    std::vector<BOOL>::push_back(v30, &v28);
    v28 = v12 >= a4;
    std::vector<BOOL>::push_back(__p, &v28);
  }

  std::vector<BOOL>::vector(a2, v30);
  std::vector<BOOL>::vector(a2 + 3, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    operator delete(v30[0]);
  }
}

uint64_t Nightingale::predict_on_day_range_historical(int **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v5 = *v3;
    v6 = *v3;
    v7 = *a1;
    do
    {
      v9 = *v7;
      v7 += 30;
      v8 = v9;
      if (v9 < v6)
      {
        v5 = v8;
        v6 = v8;
      }
    }

    while (v7 != v2);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v22 = 0;
    v23 = 0;
    __p = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      v15 = *a2;
      Sigmoid = NAN;
      v16 = __p;
      v17 = v28;
      v18 = v28 - __p;
      if (((v28 - __p) >> 2) >= 1)
      {
        if (v18 != 4)
        {
          v16 = memmove(__p, __p + 4, v18 - 4);
        }

        v28 = v17 - 4;
      }

      if (*(v15 + v11))
      {
        if (((v12 != 0) & ~v14) != 0)
        {
          break;
        }

        sw_difference = Nightingale::get_sw_difference(&v3[v10 + 2], &v3[v10 + 8]);
        Sigmoid = v20;
        Sigmoid = Nightingale::getSigmoid(sw_difference, v20);
        std::vector<float>::push_back[abi:nn200100](&__p, &Sigmoid);
        v14 = 1;
      }

      else
      {
        v25 = 2143289344;
        std::vector<float>::push_back[abi:nn200100](&__p, &v25);
        ++v13;
      }

      if (v3[v10] >= v5)
      {
        if (*(v15 + v11 + 4))
        {
          if (*(v15 + v11 + 3))
          {
            if (*(v15 + v11 + 1))
            {
              if (*(v15 + v11 + 2))
              {
                v16 = __p;
                if (v28 != __p)
                {
                  Nightingale::vMean<float>();
                }
              }

              else
              {
                LODWORD(v22) = v22 + 1;
              }
            }

            else
            {
              ++HIDWORD(v22);
            }
          }

          else
          {
            LODWORD(v23) = v23 + 1;
          }
        }

        else
        {
          ++HIDWORD(v23);
        }
      }

      ++v12;
      v3 = *a1;
      v11 += 5;
      v10 += 30;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3) > v12);
    Nightingale::get_failure_reasons_for_historical(v16, v13, SHIDWORD(v22), v22, 0, SHIDWORD(v23), v23);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }

  return 0;
}

uint64_t Nightingale::get_failure_reasons_for_historical(Nightingale *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  std::vector<int>::vector[abi:nn200100](&v27, v29, 6uLL);
  v13 = v27 + 4;
  v14 = v27 == v28 || v13 == v28;
  v15 = v27;
  if (!v14)
  {
    v16 = *v27;
    v15 = v27;
    v17 = v27 + 4;
    do
    {
      v19 = *v17;
      v17 += 4;
      v18 = v19;
      v20 = v16 < v19;
      if (v16 <= v19)
      {
        v16 = v18;
      }

      if (v20)
      {
        v15 = v13;
      }

      v13 = v17;
    }

    while (v17 != v28);
  }

  v21 = *v15;
  if (*v15 == a2)
  {
    v22 = 1;
    if (!v27)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v21 == a5)
  {
    v22 = 2;
    if (!v27)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v21 == a3)
  {
    v22 = 3;
    if (!v27)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v21 == a7)
  {
    v23 = 6;
  }

  else
  {
    v23 = 9;
  }

  if (v21 == a6)
  {
    v24 = 5;
  }

  else
  {
    v24 = v23;
  }

  if (v21 == a4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v24;
  }

  if (v27)
  {
LABEL_30:
    v28 = v27;
    operator delete(v27);
  }

LABEL_31:
  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

float Nightingale::day2day_noise(uint64_t *a1)
{
  v1 = *a1;
  v2 = (a1[1] - *a1) >> 2;
  if (v2 < 3)
  {
    return NAN;
  }

  v3 = *(v1 + 4);
  v4 = (v1 + 8);
  v5 = (v2 - 1) - 1;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = v3 + *(v4 - 2) * -0.5;
    v9 = *v4++;
    v3 = v9;
    v10 = (v8 + v9 * -0.5) * (v8 + v9 * -0.5);
    if ((LODWORD(v10) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v7 = v7 + v10;
      v6 = v6 + 1.0;
    }

    --v5;
  }

  while (v5);
  if (v6 == 0.0)
  {
    return NAN;
  }

  else
  {
    return (v7 / v6) / 1.5;
  }
}

void Nightingale::extract_temperature_data_for_given_range(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, char **a4@<X8>)
{
  a4[6] = 0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  *(a4 + 4) = 0u;
  v7 = a4 + 8;
  *(a4 + 14) = 1065353216;
  *(a4 + 5) = 0u;
  *(a4 + 24) = 1065353216;
  v9 = *a3;
  v8 = a3[1];
  if (v8 != *a3)
  {
    v11 = 0;
    do
    {
      v12 = *(v9 + 4 * v11);
      v57 = v12;
      if (v12 <= a2)
      {
        if (v12 < a1)
        {
          break;
        }

        std::vector<int>::push_back[abi:nn200100](a4, &v57);
        for (i = a3[5]; i; i = *i)
        {
          v58 = (i + 16);
          v14 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(a4 + 3, i + 16);
          std::vector<float>::push_back[abi:nn200100](v14 + 3, (*(i + 3) + 4 * v11));
        }

        for (j = a3[10]; j; j = *j)
        {
          v58 = (j + 16);
          v16 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v7, j + 16);
          std::vector<int>::push_back[abi:nn200100](v16 + 3, (*(j + 3) + 4 * v11));
        }
      }

      ++v11;
      v9 = *a3;
      v8 = a3[1];
    }

    while (v11 < (v8 - *a3) >> 2);
  }

  if (v8 != v9)
  {
    v17 = *(v8 - 4);
    v18 = __OFSUB__(v17, a1);
    v19 = v17 - a1;
    v20 = !((v19 < 0) ^ v18 | (v19 == 0)) && v17 < a2;
    if (v20 && v19 >= 1)
    {
      for (k = 0; k != v19; ++k)
      {
        std::vector<int>::push_back[abi:nn200100](a4, &(*a4)[(((a4[1] - *a4) << 30) - 0x100000000) >> 30]);
        for (m = a4[5]; m; m = *m)
        {
          LODWORD(v58) = 2143289344;
          std::vector<float>::push_back[abi:nn200100](m + 3, &v58);
        }

        for (n = a4[10]; n; n = *n)
        {
          v25 = *(n + 4);
          v24 = *(n + 5);
          if (v25 >= v24)
          {
            v27 = *(n + 3);
            v28 = v25 - v27;
            v29 = (v25 - v27) >> 2;
            v30 = v29 + 1;
            if ((v29 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v31 = v24 - v27;
            if (v31 >> 1 > v30)
            {
              v30 = v31 >> 1;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v32 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<int>>((n + 24), v32);
            }

            v33 = (v25 - v27) >> 2;
            v34 = (4 * v29);
            v35 = (4 * v29 - 4 * v33);
            *v34 = 0;
            v26 = v34 + 1;
            memcpy(v35, v27, v28);
            v36 = *(n + 3);
            *(n + 3) = v35;
            *(n + 4) = v26;
            *(n + 5) = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v25 = 0;
            v26 = v25 + 4;
          }

          *(n + 4) = v26;
        }
      }
    }
  }

  v38 = *a4;
  v37 = a4[1];
  if (*a4 != v37)
  {
    v39 = v37 - 4;
    if (v39 > v38)
    {
      v40 = v38 + 4;
      do
      {
        v41 = *(v40 - 1);
        *(v40 - 1) = *v39;
        *v39 = v41;
        v39 -= 4;
        v42 = v40 >= v39;
        v40 += 4;
      }

      while (!v42);
    }
  }

  for (ii = a4[5]; ii; ii = *ii)
  {
    v44 = *(ii + 3);
    v45 = *(ii + 4);
    v46 = (v45 - 4);
    if (v44 != v45 && v46 > v44)
    {
      v48 = v44 + 4;
      do
      {
        v49 = *(v48 - 4);
        *(v48 - 4) = *v46;
        *v46-- = v49;
        v42 = v48 >= v46;
        v48 += 4;
      }

      while (!v42);
    }
  }

  for (jj = a4[10]; jj; jj = *jj)
  {
    v51 = *(jj + 3);
    v52 = *(jj + 4);
    v53 = (v52 - 4);
    if (v51 != v52 && v53 > v51)
    {
      v55 = v51 + 4;
      do
      {
        v56 = *(v55 - 4);
        *(v55 - 4) = *v53;
        *v53-- = v56;
        v42 = v55 >= v53;
        v55 += 4;
      }

      while (!v42);
    }
  }
}