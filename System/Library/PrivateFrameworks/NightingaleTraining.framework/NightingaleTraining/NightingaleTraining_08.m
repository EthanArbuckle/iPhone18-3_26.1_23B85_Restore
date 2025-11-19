void sub_25C638D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, char a37)
{
  Nightingale::periodEstimatorCalendar::~periodEstimatorCalendar(&a21);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  v39 = *v37;
  if (*v37)
  {
    *(v37 + 8) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

uint64_t Nightingale::periodEstimatorLuna::getAlgsUsedToRunLunaPeriod(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 == 7)
  {
    return 5;
  }

  v7 = a3[1];
  if (*(v7 - 52) == 1 && *(v7 - 56) < 2.25)
  {
    return 0;
  }

  v9 = HIDWORD(a6);
  if (a6 <= SHIDWORD(a6))
  {
    v11 = 0;
    v12 = *a3;
    if (*(a4 + 4))
    {
      v12 = a3[1];
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 5) > 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(a4 + 4) & (v7 != *a3);
    }

    while (1)
    {
      v10 = (a6 - 45 >= a5) & v13;
      if (v10 == 1 && ((*(a3 + 36) & 1) == 0 || *(a3 + 8) <= a6 - 44))
      {
        break;
      }

      v11 = a6 >= v9;
      LODWORD(a6) = a6 + 1;
      if (v9 + 1 == a6)
      {
        v10 = 5;
        break;
      }
    }
  }

  else
  {
    v10 = 5;
    v11 = 1;
  }

  if (a2 == 1 && v11)
  {
    return 2;
  }

  else
  {
    return v10;
  }
}

double Nightingale::periodEstimatorLuna::getPeriodRegularLuna@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Nightingale::periodEstimatorCalendar *a5@<X5>, uint64_t a6@<X8>)
{
  Nightingale::CGradient::CGradient(a6);
  if (*(a4 + 36) == 1 && *(a4 + 44) == 1)
  {
    NullPoint = Nightingale::periodEstimatorBase::getNullPoint(a1, a2, a3, *a4);
    if (*(a4 + 36) != 1 || (*(a4 + 44) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(a5, NullPoint & 0xFFFFFFFFFFLL, &v15, *(a4 + 32), *(a4 + 40));
    v14 = *a6;
    if (*a6)
    {
      *(a6 + 8) = v14;
      operator delete(v14);
    }

    *a6 = v15;
    *(a6 + 16) = v16;
    *(a6 + 24) = v17[0];
    result = *(v17 + 9);
    *(a6 + 33) = *(v17 + 9);
  }

  return result;
}

void sub_25C638FB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::periodEstimatorLuna::enoughDataToRunlunaDL(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (a2 - 45 < a5)
  {
    goto LABEL_7;
  }

  v6 = *a3;
  v5 = a3[1];
  if (*(a4 + 4) != 1)
  {
LABEL_5:
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 5) >= 2)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  if (v5 == v6)
  {
    v6 = a3[1];
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(a3 + 36) ^ 1 | (*(a3 + 8) <= a2 - 44);
  return v7 & 1;
}

uint64_t std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<Nightingale::Phase>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C6390A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Nightingale::Phase>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *Nightingale::fwEstimatorBase::fwEstimatorBase(void *this)
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

void Nightingale::fwEstimatorBase::~fwEstimatorBase(Nightingale::fwEstimatorBase *this)
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

void Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 4) != 1)
  {
    goto LABEL_4;
  }

  if (*a4 < a2)
  {
    goto LABEL_3;
  }

  if ((a3 & 0x100000000) != 0)
  {
    if ((*(a4 + 12) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(a4 + 8) > a3)
    {
LABEL_3:
      *(a4 + 4) = 0;
LABEL_4:
      if (*(a4 + 12) == 1)
      {
        *(a4 + 12) = 0;
      }
    }
  }
}

_BYTE *Nightingale::heartRateInputAcquisition::heartRateInputAcquisition(Nightingale::heartRateInputAcquisition *this)
{
  result = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *result = 0;
  result[4] = 0;
  result[8] = 0;
  result[12] = 0;
  return result;
}

{
  result = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *result = 0;
  result[4] = 0;
  result[8] = 0;
  result[12] = 0;
  return result;
}

void Nightingale::heartRateInputAcquisition::acquireSlicesFwDayStream(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DailyJDayIdx1stHr = Nightingale::heartRateInputAcquisition::getDailyJDayIdx1stHr(a1, a2);
  *a1 = DailyJDayIdx1stHr;
  *(a1 + 4) = BYTE4(DailyJDayIdx1stHr);
  *(a1 + 8) = v11;
  *(a1 + 12) = BYTE4(v11);
  if ((DailyJDayIdx1stHr & 0x100000000) != 0 && (v11 & 0x100000000) != 0)
  {
    JDayHrSlicesStartEnd = Nightingale::heartRateInputAcquisition::getJDayHrSlicesStartEnd(a1, a3, a4);
    if ((JDayHrSlicesStartEnd & 0x100000000) != 0 && (v13 & 0x100000000) != 0)
    {

      Nightingale::heartRateInputAcquisition::acquireSlicesJDayRange(a1, a2, JDayHrSlicesStartEnd, v13, a5);
    }
  }
}

uint64_t Nightingale::heartRateInputAcquisition::getDailyJDayIdx1stHr(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 == v3)
  {
LABEL_8:
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = 0;
    while ((v2[20] != 1 || (v2[36] & 1) == 0) && (v2[28] != 1 || v2[44] != 1))
    {
      v2 += 60;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }

    v6 = *v2;
    v5 = 0x100000000;
  }

  return v6 | v5;
}

uint64_t Nightingale::heartRateInputAcquisition::getJDayHrSlicesStartEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0 && *(a1 + 4) == 1 && *(a1 + 12) == 1)
  {
    if (a3 <= 39)
    {
      v3 = 39;
    }

    else
    {
      v3 = a3;
    }

    v4 = v3 - 39;
    if (v4 <= *a1)
    {
      v4 = *a1;
    }

    v5 = v4 & 0xFFFFFF00;
    v6 = v4;
    v7 = 0x100000000;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  return v7 | v5 | v6;
}

void Nightingale::heartRateInputAcquisition::acquireSlicesJDayRange(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5)
{
  IdxOfDailyInGreaterThanJayDay = Nightingale::getIdxOfDailyInGreaterThanJayDay(a2, a3);
  IdxOfDailyInFromJDay = Nightingale::getIdxOfDailyInFromJDay(a2, a4);
  if ((IdxOfDailyInGreaterThanJayDay & 0x100000000) != 0 && *(a1 + 12) == 1)
  {
    if ((IdxOfDailyInFromJDay & 0x100000000) == 0)
    {
      LODWORD(IdxOfDailyInFromJDay) = -286331153 * ((a2[1] - *a2) >> 2) - 1;
    }

    if (*(a1 + 8) <= IdxOfDailyInGreaterThanJayDay)
    {
      v12 = IdxOfDailyInGreaterThanJayDay;
    }

    else
    {
      v12 = *(a1 + 8);
    }

    if (v12 <= IdxOfDailyInFromJDay)
    {
      v13 = *a2;
      if (0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 2) <= IdxOfDailyInFromJDay)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = 60 * IdxOfDailyInFromJDay;
      if (*(v13 + v14) > a4)
      {
        a4 = *(v13 + 60 * IdxOfDailyInFromJDay);
      }

      __p = 0;
      v26 = 0;
      v27 = 0;
      std::vector<Nightingale::ngt_DayInput>::__init_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::ngt_DayInput const*>,std::__wrap_iter<Nightingale::ngt_DayInput const*>>(&__p, v13 + 60 * v12, v14 + 60 + v13, 0xEEEEEEEEEEEEEEEFLL * ((v14 + 60 - 60 * v12) >> 2));
      v15 = __p;
      if (a4 - a3 >= 44 && __p != v26)
      {
        LOBYTE(v24) = 0;
        BYTE4(v24) = 0;
        LOBYTE(v23) = 0;
        BYTE4(v23) = 0;
        if (a4 >= a3)
        {
          v16 = 0;
          v17 = a3;
          do
          {
            if (0xEEEEEEEEEEEEEEEFLL * ((v26 - __p) >> 2) > v16 && (v18 = __p + 60 * v16, v17 == *v18))
            {
              v19 = *(v18 + 1);
              v20 = *(v18 + 2);
              *&v22[12] = *(v18 + 44);
              v21 = v19;
              *v22 = v20;
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5, &v21);
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 48, v22);
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 24, &v21 + 1);
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 72, &v22[8]);
              ++v16;
            }

            else
            {
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5, &v24);
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 48, &v23);
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 24, &v24);
              std::vector<std::optional<float>>::push_back[abi:ne200100](a5 + 72, &v23);
            }

            ++v17;
          }

          while (a4 + 1 != v17);
          v15 = __p;
        }

        *(a5 + 96) = a3;
        *(a5 + 100) = 1;
        *(a5 + 104) = a4;
        *(a5 + 108) = 1;
        *(a5 + 112) = a4 - a3 - 43;
      }

      if (v15)
      {
        v26 = v15;
        operator delete(v15);
      }
    }
  }
}

void sub_25C639638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::heartRateInputAcquisition::acquireSlicesPeriodDayStream(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  DailyJDayIdx1stHr = Nightingale::heartRateInputAcquisition::getDailyJDayIdx1stHr(a1, a2);
  *a1 = DailyJDayIdx1stHr;
  *(a1 + 4) = BYTE4(DailyJDayIdx1stHr);
  *(a1 + 8) = v9;
  *(a1 + 12) = BYTE4(v9);
  if ((DailyJDayIdx1stHr & 0x100000000) != 0 && (v9 & 0x100000000) != 0)
  {

    Nightingale::heartRateInputAcquisition::acquireSlicesJDayRange(a1, a2, a3 - 44, a3, a4);
  }
}

void std::vector<std::optional<float>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<float>>>(a1, v10);
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

Nightingale::heartRateInputValidation *Nightingale::heartRateInputValidation::heartRateInputValidation(Nightingale::heartRateInputValidation *this, const Nightingale::ngt_Config *a2)
{
  v4 = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  Nightingale::ngt_Config::ngt_Config(v4, a2);
  *(this + 156) = 0;
  return this;
}

void Nightingale::heartRateInputValidation::~heartRateInputValidation(void **this)
{
  Nightingale::ngt_Config::~ngt_Config(this);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(v1);
}

{
  Nightingale::ngt_Config::~ngt_Config(this);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(v1);
}

void Nightingale::heartRateInputValidation::process(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (Nightingale::heartRateInputValidation::validateSizeOfSlices(a1, a2))
  {
    v8 = Nightingale::heartRateInputValidation::validateHrSamples(a1, a2);
    if (a4)
    {

      Nightingale::heartRateInputValidation::validateHrSlices(v8, a2, a3);
    }
  }
}

BOOL Nightingale::heartRateInputValidation::validateSizeOfSlices(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 0;
  }

  if (!*(a2 + 112))
  {
    return 0;
  }

  if (*(a2 + 100) != 1)
  {
    return 0;
  }

  if (*(a2 + 108) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v6 == v7)
  {
    return 0;
  }

  result = 0;
  v9 = *(a2 + 8) - *a2;
  if (v5 - v4 == v9)
  {
    return v3 - v2 == v9 && v7 - v6 == v9;
  }

  return result;
}

uint64_t Nightingale::heartRateInputValidation::validateHrSamples(uint64_t result, void *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  if (v2 != v3)
  {
    v4 = *(result + 132);
    v5 = (*a2 + 4);
    do
    {
      if (*(v2 + 4) != 1 || *v2 < v4)
      {
        if (*v5 == 1)
        {
          *v5 = 0;
        }

        if (*(v2 + 4) == 1)
        {
          *(v2 + 4) = 0;
        }
      }

      v2 += 8;
      v5 += 8;
    }

    while (v2 != v3);
  }

  v6 = a2[9];
  v7 = a2[10];
  if (v6 != v7)
  {
    v8 = *(result + 136);
    v9 = (a2[3] + 4);
    do
    {
      if (*(v6 + 4) != 1 || *v6 < v8)
      {
        if (*v9 == 1)
        {
          *v9 = 0;
        }

        if (*(v6 + 4) == 1)
        {
          *(v6 + 4) = 0;
        }
      }

      v6 += 8;
      v9 += 8;
    }

    while (v6 != v7);
  }

  return result;
}

void Nightingale::heartRateInputValidation::validateHrSlices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 112))
  {
    v5 = 0;
    do
    {
      v6 = 0;
      memset(__p, 0, sizeof(__p));
      v7 = 8 * v5;
      v8 = *(a2 + 48) + 8 * v5;
      v9 = v8 + 360;
      do
      {
        v6 += *(v8 + 4) ^ 1;
        v8 += 8;
      }

      while (v8 != v9);
      v18 = (v6 / 45.0) < 0.7;
      std::vector<BOOL>::push_back(__p, &v18);
      v10 = 0;
      v11 = v7 + *(a2 + 72);
      v12 = v11 + 360;
      do
      {
        v10 += *(v11 + 4) ^ 1;
        v11 += 8;
      }

      while (v11 != v12);
      v18 = (v10 / 45.0) < 1.0;
      std::vector<BOOL>::push_back(__p, &v18);
      v13 = 0;
      v14 = v7 + *(a2 + 48);
      v15 = v14 + 360;
      do
      {
        v13 += *(v14 + 4) ^ 1;
        v14 += 8;
      }

      while (v14 != v15);
      v18 = (v13 / 45.0) < 0.5;
      std::vector<BOOL>::push_back(__p, &v18);
      v16 = *(a3 + 8);
      if (v16 >= *(a3 + 16))
      {
        v17 = std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(a3, __p);
      }

      else
      {
        std::vector<BOOL>::vector(*(a3 + 8), __p);
        v17 = v16 + 24;
        *(a3 + 8) = v16 + 24;
      }

      *(a3 + 8) = v17;
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      ++v5;
    }

    while (v5 < *(a2 + 112));
  }
}

void sub_25C639BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

BOOL Nightingale::heartRateInputValidation::validateASlice(float a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v6 = *a3 + 8 * a4;
  v7 = v6 + 360;
  do
  {
    v5 += *(v6 + 4) ^ 1;
    v6 += 8;
  }

  while (v6 != v7);
  return (v5 / a5) < a1;
}

Nightingale::sensorInputProcessBase *Nightingale::heartRateInputPreCondition::heartRateInputPreCondition(Nightingale::sensorInputProcessBase *a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4)
{
  v8 = Nightingale::sensorInputProcessBase::sensorInputProcessBase(a1);
  v8[1] = a2;
  v8[2] = a3;
  Nightingale::ngt_Config::ngt_Config((v8 + 3), a4);
  return a1;
}

void Nightingale::heartRateInputPreCondition::~heartRateInputPreCondition(void **this)
{
  Nightingale::ngt_Config::~ngt_Config(this + 3);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

{
  Nightingale::ngt_Config::~ngt_Config(this + 3);

  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

uint64_t Nightingale::heartRateInputPreCondition::preConditionHr(Nightingale::heartRateInputPreCondition *this)
{
  v2 = Nightingale::heartRateInputPreCondition::find1stHrSampleDayStreamLstmHr(this);
  v4 = BYTE4(v2) & (BYTE4(v3) & 1);
  if (v4 == 1)
  {
    v5 = v2;
    v6 = v3;
    v7 = *(this + 2);
    v8 = *v7;
    v9 = (v7[1] - *v7) >> 3;
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (v9 <= v11)
        {
LABEL_45:
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v12 = &v8[v10];
        if (*(v12 + 4) == 1)
        {
          v13 = *v12;
        }

        else
        {
          v13 = 2143289344;
        }

        v30 = v13;
        std::vector<float>::push_back[abi:ne200100](v7 + 15, &v30);
        ++v11;
        v7 = *(this + 2);
        v8 = *v7;
        v9 = (v7[1] - *v7) >> 3;
        if (v9 >= 45)
        {
          v14 = 45;
        }

        else
        {
          v14 = (v7[1] - *v7) >> 3;
        }

        v10 += 2;
      }

      while (v11 < v14);
    }

    v15 = v7[3];
    v16 = (v7[4] - v15) >> 3;
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if (v16 <= v18)
        {
          goto LABEL_45;
        }

        if (LOBYTE(v15[v17 + 1]) == 1)
        {
          v19 = v15[v17];
        }

        else
        {
          v19 = 2143289344;
        }

        v29 = v19;
        std::vector<float>::push_back[abi:ne200100](v7 + 18, &v29);
        ++v18;
        v7 = *(this + 2);
        v15 = v7[3];
        v16 = (v7[4] - v15) >> 3;
        if (v16 >= 45)
        {
          v20 = 45;
        }

        else
        {
          v20 = (v7[4] - v15) >> 3;
        }

        v17 += 2;
      }

      while (v18 < v20);
      v8 = *v7;
    }

    v21 = v7[1];
    if (v8 != v21)
    {
      do
      {
        if (*(v8 + 4) == 1)
        {
          v5 = *v8 | (*(v8 + 4) << 32);
        }

        else
        {
          *v8 = v5;
          *(v8 + 4) = BYTE4(v5);
        }

        v8 += 2;
      }

      while (v8 != v21);
      v7 = *(this + 2);
    }

    v22 = v7[3];
    v23 = v7[4];
    if (v22 != v23)
    {
      do
      {
        if (*(v22 + 4) == 1)
        {
          v6 = *v22 | (*(v22 + 4) << 32);
        }

        else
        {
          *v22 = v6;
          *(v22 + 4) = BYTE4(v6);
        }

        v22 += 2;
      }

      while (v22 != v23);
      v7 = *(this + 2);
    }

    v24 = *v7;
    v25 = v7[1];
    if (*v7 != v25)
    {
      do
      {
        if (*(v24 + 4) == 1)
        {
          *v24 = (*v24 + -68.352) / 9.696;
          *(v24 + 4) = 1;
        }

        v24 += 2;
      }

      while (v24 != v25);
      v7 = *(this + 2);
    }

    v27 = v7[3];
    for (i = v7[4]; v27 != i; v27 += 2)
    {
      if (*(v27 + 4) == 1)
      {
        *v27 = (*v27 + -64.88) / 9.6825;
        *(v27 + 4) = 1;
      }
    }
  }

  return v4;
}

unint64_t Nightingale::heartRateInputPreCondition::find1stHrSampleDayStreamLstmHr(Nightingale::heartRateInputPreCondition *this)
{
  v1 = *(this + 2);
  if (*(v1 + 100) == 1 && *(v1 + 108) == 1)
  {
    v2 = *(this + 1);
    v3 = *v2;
    v4 = v2[1];
    if (*v2 == v4)
    {
      v10 = 0;
      LODWORD(v9) = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = *(v1 + 96);
      v8 = 0;
      do
      {
        if (*v3 > v7)
        {
          goto LABEL_14;
        }

        if ((*(v3 + 20) & 1) != 0 && (*(v3 + 36) & 1) != 0 && *(v3 + 32) >= *(this + 39))
        {
          v5 = 1;
          v8 = *(v3 + 16);
        }

        if (*(v3 + 44) & 1) != 0 && *(v3 + 40) >= *(this + 40) && (*(v3 + 28))
        {
          v6 = 1;
        }

        else
        {
LABEL_14:
          if ((v6 & 1) == 0)
          {
            v6 = 1;
          }
        }

        v3 += 60;
      }

      while (v3 != v4);
      LODWORD(v9) = v8;
      v10 = v5 << 32;
    }

    v11 = v9 & 0xFFFFFF00;
    v9 = v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  return v10 | v9 | v11;
}

void Nightingale::heartRateInputPreCondition::forwardFill(uint64_t a1, unsigned int **a2, unint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    if (*(v3 + 4) == 1)
    {
      a3 = *v3 | (*(v3 + 4) << 32);
    }

    else
    {
      *v3 = a3;
      *(v3 + 4) = BYTE4(a3);
    }

    v3 += 2;
  }
}

void Nightingale::heartRateInputPreCondition::standardizeVec(float a1, float a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (*a4 != v5)
  {
    do
    {
      if (*(v4 + 4) == 1)
      {
        *v4 = (*v4 - a1) / a2;
        *(v4 + 4) = 1;
      }

      v4 += 8;
    }

    while (v4 != v5);
  }
}

uint64_t std::vector<Nightingale::ngt_DayInput>::__init_with_size[abi:ne200100]<std::__wrap_iter<Nightingale::ngt_DayInput const*>,std::__wrap_iter<Nightingale::ngt_DayInput const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Nightingale::ngt_DayInput>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63A258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Nightingale::ngt_DayInput>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x444444444444445)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_DayInput>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_DayInput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x444444444444445)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

Nightingale::ngt_Config *Nightingale::ngt_Config::ngt_Config(Nightingale::ngt_Config *this, const Nightingale::ngt_Config *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v6;
  *(this + 1) = v4;
  *(this + 2) = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  *(this + 124) = *(a2 + 124);
  *(this + 6) = v8;
  *(this + 7) = v9;
  *(this + 5) = v7;
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = *(a2 + 12);
    *(this + 26) = *(a2 + 26);
    *(this + 12) = v12;
  }

  if (*(a2 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(this + 9, *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v13 = *(a2 + 216);
    *(this + 29) = *(a2 + 29);
    *(this + 216) = v13;
  }

  if (*(a2 + 263) < 0)
  {
    std::string::__init_copy_ctor_external(this + 10, *(a2 + 30), *(a2 + 31));
  }

  else
  {
    v14 = *(a2 + 15);
    *(this + 32) = *(a2 + 32);
    *(this + 15) = v14;
  }

  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 264, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v15 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v15;
  }

  return this;
}

void sub_25C63A4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 263) < 0)
  {
    operator delete(*(v2 + 240));
  }

  if (*(v2 + 239) < 0)
  {
    operator delete(*(v2 + 216));
  }

  if (*(v2 + 215) < 0)
  {
    operator delete(*(v2 + 192));
  }

  if (*(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 167) < 0)
  {
    operator delete(*(v2 + 144));
  }

  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void Nightingale::ngt_Config::~ngt_Config(void **this)
{
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = this + 33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25C63AA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(uint64_t a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::vector<BOOL>::vector((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::vector<BOOL>>::~__split_buffer(&v13);
  return v12;
}

void sub_25C63AE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::vector<BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 1);
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BOOL>>,std::vector<BOOL>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v4 = *(v1 - 24);
    v1 -= 24;
    v3 = v4;
    if (v4)
    {
      operator delete(v3);
    }
  }
}

void **std::__split_buffer<std::vector<BOOL>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<BOOL>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<BOOL>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    v5 = *(v1 - 24);
    v1 -= 24;
    v4 = v5;
    *(a1 + 16) = v1;
    if (v5)
    {
      operator delete(v4);
      v1 = *(a1 + 16);
    }
  }
}

Nightingale::fwEstimatorLuna *Nightingale::fwEstimatorLuna::fwEstimatorLuna(Nightingale::fwEstimatorLuna *this, const Nightingale::ngt_Config *a2)
{
  *&v7[4] = *MEMORY[0x277D85DE8];
  v3 = Nightingale::fwEstimatorBase::fwEstimatorBase(this);
  v5 = xmmword_25C67C520;
  v6 = 5;
  v3[3] = 0;
  v3 += 3;
  v3[1] = 0;
  v3[2] = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(v3, &v5, v7, 5uLL);
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
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a8, *(a2 + 20) - *a2 + 1, *(a2 + 20), a3, a4, &v41);
    memset(v51, 0, 24);
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v51, v41, v42, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
    v51[3] = v43;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&v52, v44, v45, v45 - v44);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v17 = std::vector<std::optional<float>>::__init_with_size[abi:ne200100]<std::optional<float>*,std::optional<float>*>(&v55, __p, v47, (v47 - __p) >> 3);
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
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v48);
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
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v48);
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v24 = *(a2 + 20);
  v25 = *a2;
  if (Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(a1, (a2 + 72), 0))
  {
    if (v23 && (a7 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    if ((a7 & 0x100000000) == 0)
    {
      *(a9 + 20) = 4;
      v26 = 7;
      goto LABEL_31;
    }
  }

  if (v24 - v25 <= 17)
  {
    *(a9 + 20) = 4;
    v26 = 6;
LABEL_31:
    *(a9 + 148) = v26;
    return;
  }

  if (v23)
  {
LABEL_23:
    v26 = 1;
    *(a9 + 20) = 1;
    goto LABEL_31;
  }

  if ((a7 & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
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
      goto LABEL_36;
    }

    v30 = v37;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0;
  LODWORD(v29) = v36;
LABEL_36:
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

void sub_25C63B6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  Nightingale::slidingWindowHistLuna::~slidingWindowHistLuna(va);
  Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(v10);
  _Unwind_Resume(a1);
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
    std::vector<int>::push_back[abi:ne200100](&v19, &MissingCnt);
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

void sub_25C63B85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(Nightingale::extractKaliInputsRtn *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
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

void Nightingale::fwEstimatorLuna::getFwEndLuna(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int *a7@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  *(a7 + 4) = 0;
  *(a7 + 8) = 0;
  *(a7 + 12) = 0;
  *(a7 + 16) = 0;
  *(a7 + 20) = 0;
  *(a7 + 24) = 0;
  a7[8] = 8;
  v8 = a7 + 8;
  *(a7 + 18) = 0;
  *(a7 + 38) = 0;
  *(a7 + 5) = -1;
  *(a7 + 52) = 0;
  *(a7 + 8) = 0;
  *(a7 + 56) = 0;
  *(a7 + 9) = 0;
  *(a7 + 10) = 0;
  a7[22] = -1;
  *(a7 + 92) = 0;
  *(a7 + 96) = 0;
  *a7 = 7;
  v9 = a2[1];
  if (*a2 == v9 || *(v9 - 60) != 1 || *(a4 + 36) != 1)
  {
    return;
  }

  v16 = *(v9 - 96);
  v53 = ((roundf(*(v9 - 64)) + v16) + -13.0);
  v54 = v16 + 10;
  v17 = a3[1];
  v52 = v16;
  if (*a3 == v17)
  {
    v20 = -1;
  }

  else
  {
    v18 = *(a4 + 32);
    v19 = v16 + 66;
    if (*(v17 - 60) != v18 || *(v17 - 4) != 1)
    {
      --v18;
    }

    if (v19 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }
  }

  v21 = v53 - 3;
  if (v54 > v53 - 3)
  {
    v21 = v54;
  }

  v58 = v21;
  memset(v78, 0, sizeof(v78));
  v22 = v53 + 10;
  v60 = v20;
  if (v53 + 10 >= v20)
  {
    v22 = v20;
  }

  v55 = v22;
  memset(v77, 0, sizeof(v77));
  memset(v76, 0, sizeof(v76));
  v81[0] = 8;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::vector[abi:ne200100](&v74, 3uLL);
  v73 = 0;
  Nightingale::lstmLunaFw::lstmLunaFw(v81, a3, a2, a4);
  v50 = a4;
  v51 = a1;
  v56 = a3;
  v57 = a5;
  Nightingale::rfLuna::rfLuna(v80, a3, a2, a4);
  v23 = -1.0;
  if (v54 > v60)
  {
    goto LABEL_53;
  }

  v24 = 0;
  v25 = v53 + 3;
  if (v54 > v53 + 3)
  {
    v25 = v54;
  }

  v59 = v25;
  v26 = v52 + 9;
  while (1)
  {
    if ((v27 = v26 + 1, (Nightingale::lstmLunaFw::getOngoingFwLstmLunaAvailibilityFail(v81, (v26 + 1), 0.1)) || Nightingale::rfLuna::getRfAvailabilityFail(v80, v26 + 1, 0.1, 1)) && v27 >= v59 && v53 + 8 >= v27)
    {
      v28 = a2[1];
      if (*(v28 - 60) == 1)
      {
        v29 = *(v28 - 64);
        v30 = v29 >> 8;
        v31 = v29;
        v32 = 0x100000000;
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v30 = v24;
      }

      LODWORD(a1) = a1 & 0xFFFFFF00 | 1;
      v24 = v30;
      v68[0] = *(v28 - 96);
      v68[1] = 0;
      v69 = v32 | v31 | (v30 << 8);
      v70 = v57;
      v71 = a1;
      v72 = v26 + 1;
      Nightingale::slidingWindowDayStreamLuna::slidingWindowDayStreamLuna(v67, v68);
      Nightingale::slidingWindowBaseLuna::process(v67, v56, a6, v64);
      if (a6)
      {
        if (v75 == v74)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        *v74 = v66;
        v23 = *&v64[3];
        v79 = v65;
        std::vector<BOOL>::push_back(v78, &v79);
      }

      v33 = v64[0];
      if (v64[0] > 0)
      {
        *(a7 + 8) = 1;
        *a7 = 1;
        a7[1] = v33;
        a7[3] = v26 + 1;
        *(a7 + 16) = 1;
        a7[5] = v60;
        *(a7 + 24) = 1;
        Nightingale::slidingWindowDayStreamLuna::~slidingWindowDayStreamLuna(v67);
        goto LABEL_53;
      }

      Nightingale::slidingWindowDayStreamLuna::~slidingWindowDayStreamLuna(v67);
    }

    else
    {
      if (v75 == v74)
      {
        goto LABEL_73;
      }

      *v74 = 8;
    }

    if (Nightingale::rfLuna::getOngoingFwRfLuna(v80, v26 + 1))
    {
      break;
    }

    if (a6)
    {
      FailureReasonOngoingFwRF = Nightingale::rfLuna::getFailureReasonOngoingFwRF(v80);
      v41 = v74;
      v42 = v75 - v74;
      if ((v75 - v74) < 5 || (*(v74 + 1) = FailureReasonOngoingFwRF, v42 == 8))
      {
LABEL_73:
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v41[2] = 8;
LABEL_43:
      HIBYTE(v73) = !Nightingale::rfLuna::getRfAvailabilityFail(v80, v26 + 1, 0.3, 1);
      LOBYTE(v73) = Nightingale::lstmLunaFw::getOngoingFwLstmLunaAvailibilityFail(v81, (v26 + 1), 0.3) ^ 1;
      if (v58 <= v27 && v27 <= v55)
      {
        std::vector<BOOL>::push_back(v77, &v73 + 1);
        std::vector<BOOL>::push_back(v76, &v73);
      }
    }

LABEL_47:
    Nightingale::lstmLuna::reset(v81);
    Nightingale::rfLuna::reset(v80);
    if (v60 == ++v26)
    {
      goto LABEL_53;
    }
  }

  OngoingFwLstmLuna = Nightingale::lstmLunaFw::getOngoingFwLstmLuna(v81, (v26 + 1));
  v36 = OngoingFwLstmLuna;
  v37 = v35;
  if (a6)
  {
    FwConfirmationFailureReason = Nightingale::lstmLunaFw::getFwConfirmationFailureReason(v81);
    v39 = v74;
    if ((v75 - v74) <= 8)
    {
      goto LABEL_51;
    }

    *(v74 + 1) = 9;
    v39[2] = FwConfirmationFailureReason;
    if ((v36 & 0x100000000) != 0)
    {
      *(a7 + 8) = BYTE4(v36);
      a7[3] = v37;
      *(a7 + 16) = BYTE4(v37);
      a7[5] = v60;
      *(a7 + 24) = 1;
      *a7 = 2;
      a7[1] = v36;
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if ((OngoingFwLstmLuna & 0x100000000) == 0)
  {
    goto LABEL_47;
  }

  *(a7 + 8) = BYTE4(OngoingFwLstmLuna);
  v39 = v74;
  v43 = v75 - v74;
  a7[3] = v35;
  *(a7 + 16) = BYTE4(v35);
  a7[5] = v60;
  *(a7 + 24) = 1;
  *a7 = 2;
  a7[1] = OngoingFwLstmLuna;
  if (v43 < 9)
  {
LABEL_51:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_52:
  v39[2] = 9;
LABEL_53:
  if (a6)
  {
    std::vector<BOOL>::vector(v63, v78);
    std::vector<BOOL>::vector(v62, v77);
    v44 = std::vector<BOOL>::vector(__p, v76);
    Nightingale::fwEstimatorLuna::updateAvailabilityKaliCA(v44, v63, v62, __p, v8);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v62[0])
    {
      operator delete(v62[0]);
    }

    if (v63[0])
    {
      operator delete(v63[0]);
    }

    updated = Nightingale::fwEstimatorLuna::updateFailureReasonsCA(v51, &v74, v73, v54, v60, v8);
    v46 = Nightingale::fwEstimatorLuna::updateSignalAtFwEndCA(updated, v81, a7, v8, v23);
    KaliDay2DayNoiseAnchoredByToday = Nightingale::fwEstimatorLuna::getKaliDay2DayNoiseAnchoredByToday(v46, v56, v50, v57, v52);
    v48 = *a7;
    a7[11] = KaliDay2DayNoiseAnchoredByToday;
    a7[12] = v48;
    if (*(a7 + 16) == 1 && *(a7 + 8) == 1)
    {
      a7[13] = a7[3] - a7[1];
      *(a7 + 56) = 1;
    }

    JDayLastDayToRunLuna = Nightingale::fwEstimatorLuna::getJDayLastDayToRunLuna(KaliDay2DayNoiseAnchoredByToday, (v56[1] - 60), v50, v52);
    Nightingale::fwEstimatorLuna::getDaysWristTempInPassNDaysAndDaysPassedEPAvailability(v51, v56, v57, v53, JDayLastDayToRunLuna, v52, v8);
    a7[23] = JDayLastDayToRunLuna;
    *(a7 + 96) = 1;
  }

  Nightingale::rfLuna::~rfLuna(v80);
  Nightingale::lstmLunaFw::~lstmLunaFw(v81);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v76[0])
  {
    operator delete(v76[0]);
  }

  if (v77[0])
  {
    operator delete(v77[0]);
  }

  if (v78[0])
  {
    operator delete(v78[0]);
  }
}

void sub_25C63C030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  Nightingale::rfLuna::~rfLuna(&STACK[0x278]);
  Nightingale::lstmLunaFw::~lstmLunaFw(&STACK[0x3B8]);
  v27 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v27;
    operator delete(v27);
  }

  if (STACK[0x228])
  {
    operator delete(STACK[0x228]);
  }

  if (STACK[0x240])
  {
    operator delete(STACK[0x240]);
  }

  if (STACK[0x258])
  {
    operator delete(STACK[0x258]);
  }

  v28 = *a10;
  if (*a10)
  {
    *(v25 + 72) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t Nightingale::fwEstimatorLuna::getJDayKEd(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a4 + 66;
  if (*(v4 - 60) == a2 && *(v4 - 4) == 1)
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
    v10 = a2[1] <= (2 * std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&v15, v9));
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
    v12 = a3[1] <= (2 * std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&v15, v11));
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
    v14 = a4[1] <= (2 * std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&v15, v13));
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
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
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

  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v37);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v36);
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation(&v35);
  if ((*(a3 + 36) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v9 = *(a3 + 32);
  v10 = a2[1];
  if (v10 != *a2)
  {
    v9 -= *(v10 - 4) ^ 1;
  }

  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(v36, 20, v9, a5 - 43, a2, a4, &v29);
  if (v29 == v30)
  {
    goto LABEL_33;
  }

  v11 = *v29;
  v12 = v29[1];
  if (*v29 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = *v29;
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

  v17 = 0xAAAAAAAAAAAAAAABLL * (v30 - v29);
  if (v17 < 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    for (i = 1; i != v17; ++i)
    {
      v20 = &v29[3 * i];
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

    v26 = &v29[3 * v18];
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
    v27 = sqrtf(COERCE_FLOAT(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(&v29[3 * v18])));
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
    v34 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  v38 = &v29;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v38);
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation(&v35);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v36);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v37);
  return v16;
}

void sub_25C63C5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(&a9);
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation(&a22);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(&a23);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((v23 - 41));
  _Unwind_Resume(a1);
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
    v5 = -(*(a2 + 56) ^ 1);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 + v4;
  if (v6 < a4 && (*(a3 + 36) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (v6 < a4)
  {
    return *(a3 + 32);
  }

  else
  {
    return v6;
  }
}

void Nightingale::fwEstimatorLuna::getDaysWristTempInPassNDaysAndDaysPassedEPAvailability(uint64_t a1, void *a2, unint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  *&v41[4] = *MEMORY[0x277D85DE8];
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v38);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(v38, 45, a5, a6 - 43, a2, a3, v33);
  v39 = 0x130000000CLL;
  v40 = 45;
  v31 = 0;
  v32 = 0;
  __p = 0;
  NumWristTempAvailRegardlessOf1stTemp = std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&__p, &v39, v41, 3uLL);
  v14 = __p;
  v15 = v31;
  if (__p != v31)
  {
    do
    {
      NumWristTempAvailRegardlessOf1stTemp = Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(NumWristTempAvailRegardlessOf1stTemp, v33, *v14, *v14);
      v17 = *(a7 + 40);
      v16 = *(a7 + 48);
      if (v17 >= v16)
      {
        v19 = *(a7 + 32);
        v20 = v17 - v19;
        v21 = (v17 - v19) >> 2;
        v22 = v21 + 1;
        if ((v21 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v24 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a7 + 32, v24);
        }

        v25 = (v17 - v19) >> 2;
        v26 = (4 * v21);
        v27 = (4 * v21 - 4 * v25);
        *v26 = NumWristTempAvailRegardlessOf1stTemp;
        v18 = v26 + 1;
        memcpy(v27, v19, v20);
        NumWristTempAvailRegardlessOf1stTemp = *(a7 + 32);
        *(a7 + 32) = v27;
        *(a7 + 40) = v18;
        *(a7 + 48) = 0;
        if (NumWristTempAvailRegardlessOf1stTemp)
        {
          operator delete(NumWristTempAvailRegardlessOf1stTemp);
        }
      }

      else
      {
        *v17 = NumWristTempAvailRegardlessOf1stTemp;
        v18 = v17 + 4;
      }

      *(a7 + 40) = v18;
      ++v14;
    }

    while (v14 != v15);
  }

  if (a5 - a4 == 8)
  {
    v28 = 0;
    for (i = 12; i != 18; ++i)
    {
      NumWristTempAvailRegardlessOf1stTemp = Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(NumWristTempAvailRegardlessOf1stTemp, v33, i, 12);
      if (NumWristTempAvailRegardlessOf1stTemp > 8)
      {
        ++v28;
      }
    }

    *(a7 + 56) = v28;
  }

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

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  __p = v33;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v38);
}

void sub_25C63C898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(&a14);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(&a24);
  _Unwind_Resume(a1);
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
    if ((a3[6] & 1) == 0 || (*(a2 + 52) = Nightingale::phaseFactorProcessor::getjDayStartOfAPhasetojDayRangeStart(a1, *a3 | (a3[5] << 32), a4, 0), *(a2 + 56) = 1, (a3[6] & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *(a2 + 60) = Nightingale::phaseFactorProcessor::getjDayEndOfAPhasetojDayRangeEnd(a1, *a3 | ((a3[5] + 1) << 32), a4, 0);
    *(a2 + 64) = 1;
    __p.n128_u32[0] = 34014725;
    __p.n128_u16[2] = 1027;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v39, &__p, __p.n128_i64 + 6, 6);
    if ((a3[6] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::phaseFactorProcessor::getjDayStartOfVPhasestojDayRangeStart(a1, *a3 | ((a3[5] + 1) << 32), a4, &v39, &__p);
    std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(a2 + 72, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if ((a3[6] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::phaseFactorProcessor::getjDayEndOfVPhasestojDayRangeEnd(a1, *a3 | ((a3[5] + 1) << 32), a4, &v39, &__p);
    std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(a2 + 104, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (*(a2 + 12) == 1 && *(a2 + 16) <= 1u)
    {
      v11 = Nightingale::phaseFactorProcessor::vPhasesContainsAPhase(a1, a3 + 9, 0);
      v12 = *(a3 + 24);
      if (!v11)
      {
        if ((a3[6] & 1) == 0 || (*(a2 + 12) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        *(a2 + 144) = (a3[5] - *(a2 + 8) + 1);
        v12 = 1;
      }

      if ((v12 & 1) != 0 && !*(a2 + 16))
      {
        if ((*(a2 + 12) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v13 = *(a2 + 8);
        v14 = *a3;
        v15 = a3[5] + 1;
        v16 = v13 - *a3;
        if (v15 - v13 >= 5)
        {
          v17 = 5;
        }

        else
        {
          v17 = v15 - v13;
        }

        if (v16 >= 6)
        {
          v18 = 6;
        }

        else
        {
          v18 = v16;
        }

        if (((v15 - v13) & 0x80000000) == 0 && v16 >= -1)
        {
          Nightingale::preprocess_temperature_inputs_for_hist_cycle(a6, v14, v15, &__p);
          v24 = v17 + v13;
          v26 = 0;
          v27 = 0;
          v25 = 0;
          std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&v25, &v24, &v25, 1uLL);
          v19 = v18 + 1;
          Nightingale::prepare_temperature_input_slice_for_kdays(&v25, v17 + v18 + 1, &__p, &v28);
          if (v29 == v28)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v33, *v28, *(v28 + 1), (*(v28 + 1) - *v28) >> 2);
          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          v21 = &v28;
          std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v21);
          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          if (v19 >= ((v34 - v33) >> 2))
          {
            v19 = (v34 - v33) >> 2;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v28, v33, v33 + 4 * v19, v19);
          v22 = 0;
          v23 = 0;
          v21 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v21, v33 + 4 * v19, v34, (v34 - (v33 + 4 * v19)) >> 2);
          Nightingale::get_sw_difference(&v28, &v21);
          *(a2 + 44) = v20;
          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }

          if (v33)
          {
            v34 = v33;
            operator delete(v33);
          }

          std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v38);
          std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v37);
          if (__p.n128_u64[0])
          {
            __p.n128_u64[1] = __p.n128_u64[0];
            operator delete(__p.n128_u64[0]);
          }
        }
      }
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }
  }
}

void sub_25C63CDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a22)
  {
    operator delete(a22);
  }

  Nightingale::lunaExtractedData::~lunaExtractedData(&a25);
  v28 = *(v26 - 88);
  if (v28)
  {
    *(v26 - 80) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(uint64_t a1, __n128 *a2)
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

uint64_t Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(uint64_t a1, uint64_t **a2, int a3, int a4)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 0;
  }

  v7 = a3 - a4;
  v8 = 4 * (a3 - a4);
  do
  {
    __p = 0;
    v25 = 0;
    v26 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
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
      std::vector<int>::push_back[abi:ne200100](&v27, &v23);
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
  if (v27 == v28)
  {
    v21 = 0;
    if (!v27)
    {
      return v21;
    }

LABEL_29:
    v28 = v27;
    operator delete(v27);
    return v21;
  }

  v14 = v27 + 4;
  v15 = v27;
  if (v27 + 4 != v28)
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
        v15 = v14;
      }

      v14 = v17;
    }

    while (v17 != v28);
  }

  v21 = *v15;
  if (v27)
  {
    goto LABEL_29;
  }

  return v21;
}

void sub_25C63D028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::fwEstimatorLuna::getDaysPassedEPAvailability(Nightingale::fwEstimatorLuna *this, uint64_t **a2, int a3)
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
    this = Nightingale::fwEstimatorLuna::getNumWristTempAvailRegardlessOf1stTemp(this, a2, v5 + 12, 12);
    if (this <= 8)
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

uint64_t std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63D128(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63D1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::vector<std::optional<float>>::__init_with_size[abi:ne200100]<std::optional<float>*,std::optional<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::optional<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63D3B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::optional<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(Nightingale::fwEstimatorHistOutACycle *this)
{
  if (*(this + 128) == 1)
  {
    v2 = *(this + 13);
    if (v2)
    {
      *(this + 14) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 10) = v3;
      operator delete(v3);
    }
  }
}

void *std::vector<Nightingale::fwEndConfirmationFailureReason_t>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_25C63D560(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(uint64_t a1, unint64_t a2)
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

uint64_t std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<Nightingale::Phase>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63D694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

uint64_t Nightingale::rfLuna::rfLuna(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = -1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 224) = 9;
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition((a1 + 232));
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess((a1 + 304));
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation((a1 + 305));
  Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fw_dl_tmp_process((a1 + 312), a4);
  return a1;
}

void sub_25C63D7C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((v2 + 305));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((v2 + 304));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((v2 + 232));
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  Nightingale::pickSlicesStruct::~pickSlicesStruct((v2 + 120));
  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(v3);
  _Unwind_Resume(a1);
}

void Nightingale::rfLuna::~rfLuna(Nightingale::rfLuna *this)
{
  Nightingale::ngt_luna_fw_dl_tmp_process::~ngt_luna_fw_dl_tmp_process((this + 312));
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((this + 305));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((this + 304));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((this + 232));
  v6 = (this + 200);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v6 = (this + 120);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = (this + 40);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

uint64_t Nightingale::rfLuna::getOngoingFwRfLuna(Nightingale::rfLuna *this, int a2)
{
  *(this + 56) = 8;
  if (Nightingale::rfLuna::acquireWTmp(this, a2 - 17, a2, 2) && Nightingale::rfLuna::validateWTmp(this, 0.3))
  {
    Nightingale::rfLuna::preCondition(this);
    if (Nightingale::rfLuna::applyAlgs(this, a2, 0.3))
    {
      return 1;
    }

    v5 = 8;
  }

  else
  {
    v5 = 1;
  }

  result = 0;
  *(this + 56) = v5;
  return result;
}

BOOL Nightingale::rfLuna::acquireWTmp(Nightingale::rfLuna *this, int a2, int a3, int a4)
{
  JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(this + 232, *this);
  if (*(this + 32) == v9)
  {
    if (*(this + 32))
    {
      *(this + 3) = JDayIdx1stTmp;
    }

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(this + 32))
    {
      v10 = 0;
      *(this + 32) = 0;
      return v10;
    }

    *(this + 3) = JDayIdx1stTmp;
    *(this + 32) = 1;
  }

  memset(v22, 0, sizeof(v22));
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(this + 29, a3 - a2 + 1, a3, *(*(*(this + 1) + 8) - 96) - 43, *this, *(this + 3), &v18);
  std::vector<std::vector<float>>::__vdeallocate(this + 5);
  *(this + 40) = v18;
  v11 = *(this + 9);
  v12 = v19;
  v13 = *__p;
  v19 = 0;
  v18 = 0uLL;
  *(this + 7) = v12;
  *(this + 8) = v13;
  if (v11)
  {
    *(this + 10) = v11;
    operator delete(v11);
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
  }

  v14 = *(this + 12);
  *(this + 72) = *&__p[8];
  *(this + 11) = *&__p[24];
  memset(&__p[8], 0, 24);
  if (v14)
  {
    *(this + 13) = v14;
    operator delete(v14);
    *(this + 12) = 0;
    *(this + 13) = 0;
    *(this + 14) = 0;
    v14 = *&__p[8];
  }

  *(this + 6) = *&__p[32];
  *(this + 14) = v21;
  *&__p[40] = 0;
  v21 = 0;
  *&__p[32] = 0;
  if (v14)
  {
    *&__p[16] = v14;
    operator delete(v14);
  }

  v23 = &v18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
  if (*(this + 5) == *(this + 6))
  {
    v10 = 0;
  }

  else
  {
    Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches((this + 40), 17, a4, a2, &v18);
    std::vector<std::vector<float>>::__vdeallocate(this + 15);
    *(this + 120) = v18;
    v15 = *(this + 18);
    *(this + 17) = v19;
    v19 = 0;
    v18 = 0uLL;
    if (v15)
    {
      *(this + 19) = v15;
      operator delete(v15);
      *(this + 18) = 0;
      *(this + 19) = 0;
      *(this + 20) = 0;
    }

    v16 = *(this + 21);
    *(this + 9) = *__p;
    *(this + 20) = *&__p[16];
    memset(__p, 0, 24);
    if (v16)
    {
      *(this + 22) = v16;
      operator delete(v16);
      *(this + 21) = 0;
      *(this + 22) = 0;
      *(this + 23) = 0;
      v16 = *__p;
    }

    *(this + 168) = *&__p[24];
    *(this + 23) = *&__p[40];
    memset(&__p[24], 0, 24);
    if (v16)
    {
      *&__p[8] = v16;
      operator delete(v16);
    }

    v23 = &v18;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
    v10 = *(this + 15) != *(this + 16);
  }

  *&v18 = v22;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v10;
}

void sub_25C63DBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  a9 = &a19;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t Nightingale::rfLuna::validateWTmp(Nightingale::rfLuna *this, float a2)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = &unk_286E2A0F0;
  v16 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
  v17 = 0;
  v18 = &v15;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v14, &v15);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v15);
  LODWORD(v11) = (*(*(this + 15) + 8) - **(this + 15)) >> 2;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&v15, &v11, &v11 + 4, 1uLL);
  *__p = a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v11, __p, __p + 4, 1uLL);
  v4 = *(this + 15);
  for (i = *(this + 16); v4 != i; v4 += 24)
  {
    v6 = *(this + 21);
    if (*(this + 22) == v6)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v6 + 4))
    {
      goto LABEL_7;
    }

    v7 = *(this + 15);
    if (*(this + 16) == v7)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    if (**v7 >= 0.0)
    {
LABEL_7:
      Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 305, v14, v4, &v15, &v11, 1, __p);
      std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:ne200100](this + 200, __p);
    }

    else
    {
      std::vector<std::pair<BOOL,float>>::vector[abi:ne200100](__p, 1uLL);
      std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:ne200100](this + 200, __p);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  *(this + 49) = 1;
  v8 = **(*(this + 26) - 24);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v15 = v14;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return v8 ^ 1u;
}

void sub_25C63DE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char *__p, char *a21)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void Nightingale::rfLuna::preCondition(Nightingale::rfLuna *this)
{
  v1 = *(this + 15);
  v2 = *(this + 16);
  if (v1 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(this + 21);
      if (v4 >= (*(this + 22) - v5) >> 3)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *v1;
      v7 = v1[1];
      if (*v1 != v7)
      {
        v8 = v5 + 8 * v4;
        v9 = *v8;
        if ((*(v8 + 4) & 1) == 0)
        {
          v9 = -1.0;
        }

        v10 = (v7 - v6) >> 2;
        if (v10 <= 1)
        {
          v10 = 1;
        }

        v11 = *v1;
        v12 = v10;
        do
        {
          v13 = *v11;
          if (fabsf(*v11 + 1.0) < 1.0e-12)
          {
            *v11 = v9;
            v13 = v9;
          }

          ++v11;
          v9 = v13;
          --v12;
        }

        while (v12);
        do
        {
          *v6 = (*v6 + -36.033) / 0.41302;
          ++v6;
          --v10;
        }

        while (v10);
      }

      ++v4;
      Nightingale::vDemean<float>(v1);
      v1 += 3;
    }

    while (v1 != v2);
  }
}

BOOL Nightingale::rfLuna::applyAlgs(Nightingale::rfLuna *this, int a2, float a3)
{
  v3 = *(this + 15);
  v4 = *(this + 16);
  if (v3 == v4 || (**(*(this + 26) - 24) & 1) != 0)
  {
    return 0;
  }

  __src = 0;
  v34 = 0;
  v35 = 0;
  do
  {
    if (!Nightingale::rfLuna::getRfAvailabilityFail(this, a2, a3, 2))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v30, 0, *v3, v3[1], v3[1] - *v3);
      __p = 0;
      v28 = 0;
      v29 = 0;
      Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fwEndDetRF(this + 39, &v30, &__p);
      v9 = v34;
      if (v34 >= v35)
      {
        v11 = __src;
        v12 = v34 - __src;
        v13 = (v34 - __src) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v15 = v35 - __src;
        if ((v35 - __src) >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v16);
        }

        v17 = (4 * v13);
        v18 = &v17[-((v34 - __src) >> 2)];
        *v17 = *(__p + 1);
        v10 = (v17 + 1);
        memcpy(v18, v11, v12);
        v19 = __src;
        __src = v18;
        v34 = v10;
        v35 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v34 = *(__p + 1);
        v10 = v9 + 4;
      }

      v34 = v10;
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }
    }

    v3 += 3;
  }

  while (v3 != v4);
  v20 = __src;
  if (__src == v34)
  {
    v6 = 0;
    if (!__src)
    {
      return v6;
    }

    goto LABEL_29;
  }

  v21 = 0.0;
  v22 = __src;
  do
  {
    v23 = *v22++;
    v21 = v21 + v23;
  }

  while (v22 != v34);
  v24 = (v34 - __src) >> 2;
  if (v34 != __src + 4)
  {
    memmove(__src, __src + 4, v34 - (__src + 4));
    v20 = __src;
  }

  v25 = v21 / v24;
  v6 = v25 >= 0.67;
  if (v20)
  {
LABEL_29:
    v34 = v20;
    operator delete(v20);
  }

  return v6;
}

void sub_25C63E1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL Nightingale::rfLuna::getRfAvailabilityFail(Nightingale::rfLuna *this, int a2, float a3, int a4)
{
  v5 = (this + 200);
  if (*(this + 25) != *(this + 26))
  {
    return *(this + 56) == 1;
  }

  result = Nightingale::rfLuna::acquireWTmp(this, a2 - a4 - 15, a2, a4);
  if (result)
  {
    if (Nightingale::rfLuna::validateWTmp(this, a3))
    {
      return 0;
    }

    else
    {
      std::vector<std::vector<float>>::clear[abi:ne200100](v5);
      *(this + 56) = 9;
      return 1;
    }
  }

  return result;
}

uint64_t std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__emplace_back_slow_path<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>(a1, a2);
  }

  else
  {
    result = std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:ne200100](v3, a2) + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::pair<BOOL,float>>>::__emplace_back_slow_path<std::vector<std::pair<BOOL,float>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::pair<BOOL,float>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<BOOL,float>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<std::pair<BOOL,float>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<BOOL,float>>>>(result, v10);
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
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
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

void Nightingale::vDemean<float>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v1, v2, (v2 - v1) >> 2);
    Mean = Nightingale::getMeanWin<float>(&__p, -1);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    v5 = *a1;
    v6 = a1[1];
    while (v5 != v6)
    {
      *v5 = *v5 - Mean;
      ++v5;
    }
  }
}

void sub_25C63E56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::pickSlicesStruct::~pickSlicesStruct(Nightingale::pickSlicesStruct *this)
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
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__emplace_back_slow_path<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>,std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::~__split_buffer(&v14);
  return v13;
}

void sub_25C63E718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>,std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<std::pair<BOOL,float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<BOOL,float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25C63E91C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<BOOL,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<std::pair<BOOL,float>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<BOOL,float>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::pair<BOOL,float>>::__init_with_size[abi:ne200100]<std::pair<BOOL,float>*,std::pair<BOOL,float>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::pair<BOOL,float>>>::__emplace_back_slow_path<std::vector<std::pair<BOOL,float>> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<BOOL,float>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::pair<BOOL,float>>::__init_with_size[abi:ne200100]<std::pair<BOOL,float>*,std::pair<BOOL,float>*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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

void sub_25C63EB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<BOOL,float>>::__init_with_size[abi:ne200100]<std::pair<BOOL,float>*,std::pair<BOOL,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<BOOL,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C63EB98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::pair<BOOL,float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(void *a1, char *__src, float *a3, float *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v9[-8 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v21 += 8;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        memmove(&__src[8 * a5], __src, v9 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + ((v9 - __src) >> 1));
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + ((v9 - __src) >> 1));
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19++ = v37;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v9)
        {
          v41 = *v39;
          v39 += 8;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        v42 = __src;
        do
        {
          v43 = *v7++;
          *v42++ = v43;
        }

        while (v7 != v17);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

uint64_t std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),std::allocator<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float)>,std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems&,std::vector<float> const&,int,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E2A0F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),std::allocator<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float)>,std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems&,std::vector<float> const&,int,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, float *a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, a3, *a4, *a5);
}

uint64_t std::__function::__func<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),std::allocator<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float)>,std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems&,std::vector<float> const&,int,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

float Nightingale::getMeanWin<float>(float **a1, int a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (*a1 == v2)
  {
    return a2;
  }

  v4 = 0;
  result = a2;
  v6 = *a1;
  do
  {
    v7 = *v6++;
    if (v7 == result)
    {
      ++v4;
    }
  }

  while (v6 != v2);
  v8 = v2 - v3;
  if (v8 != v4)
  {
    v9 = *a1;
    do
    {
      if (*v9 == result)
      {
        *v9 = 0.0;
      }

      ++v9;
    }

    while (v9 != v2);
    v10 = 0.0;
    do
    {
      v11 = *v3++;
      v10 = v10 + v11;
    }

    while (v3 != v2);
    return v10 / (v8 - v4);
  }

  return result;
}

uint64_t Nightingale::run_m_over_n_moving_target(uint64_t *a1, int a2, int a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((a3 | a2) < 0)
  {
    return 0;
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
  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v31, v44, &v45, 5uLL);
  v3 = v31;
  if (v31 != v32)
  {
    LOBYTE(v4) = 1;
    do
    {
      v5 = *v3++;
      v4 = (v5 == *v31) & v4;
    }

    while (v3 != v32);
    if (!v4)
    {
      goto LABEL_33;
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
          std::vector<float>::__throw_length_error[abi:ne200100]();
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::lunaMTSpecs>>(&__src, v17);
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
  v29 = 0;
  v30 = 0;
  std::vector<Nightingale::lunaMTSpecs>::__init_with_size[abi:ne200100]<Nightingale::lunaMTSpecs*,Nightingale::lunaMTSpecs*>(&__p, __src, v7, 0xCCCCCCCCCCCCCCCDLL * (v7 - __src));
  v22 = Nightingale::predict_on_day_range_historical(&v42, &__p);
  v24 = v23;
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if ((v22 & 0x100000000) != 0)
  {
    v27 = v22 & 0xFFFFFF00;
    v26 = v22;
    v25 = 0x100000000;
    goto LABEL_34;
  }

  if ((v24 & 0x100000000) != 0)
  {
    if (v24 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_34;
    }

    if (v24 == 3)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_34;
    }

LABEL_33:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_34;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_34:
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
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
  std::vector<Nightingale::lunaMTPreparedData>::__destroy_vector::operator()[abi:ne200100](v37);
  return v27 | v26 | v25;
}

void sub_25C63F558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  std::pair<std::vector<BOOL>,std::vector<BOOL>>::~pair(&a19);
  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  a19 = v28 - 160;
  std::vector<Nightingale::lunaMTPreparedData>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void Nightingale::prepare_input_slices_for_mt(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  Nightingale::preprocess_temperature_inputs_for_hist_cycle(a1, a2, a3, v69);
  Nightingale::extract_temperature_data_for_given_range((a2 + 2), a3 - 2, v69, &v64);
  if (v66[3] && v65 != v64)
  {
    v7 = v68;
    v63 = *(v66[2] + 16);
    if (v68)
    {
      v8 = 1.0;
      do
      {
        v10 = v7[3];
        v9 = v7[4];
        v11 = 1.0;
        if (v9 != v10)
        {
          v12 = v9 - v10;
          v13 = 0.0;
          do
          {
            v14 = *v10++;
            v13 = v13 + v14;
          }

          while (v10 != v9);
          v11 = 1.0 - v13 / v12;
        }

        if (v11 < v8)
        {
          v63 = *(v7 + 16);
          v8 = v11;
        }

        v7 = *v7;
      }

      while (v7);
    }

    v15 = 0;
    v62 = 0xFFFFFFFDFFFFFFFELL;
    v61 = xmmword_25C67C58C;
    do
    {
      *(&v61 + v15) += a3 - 13;
      v15 += 4;
    }

    while (v15 != 24);
    v16 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v66, &v63);
    v48 = &v63;
    v17 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v67, &v63);
    for (i = 0; i != 24; i += 4)
    {
      v19 = v65 - v64;
      if (v65 != v64)
      {
        v20 = 0;
        v21 = v19 >> 2;
        if ((v19 >> 2) <= 1)
        {
          v21 = 1;
        }

        while (*(&v61 + i) != *(v64 + v20))
        {
          if (v21 == ++v20)
          {
            goto LABEL_68;
          }
        }

        if (((v19 >> 2) - 1) > v20)
        {
          v22 = 4 * v20;
          v51 = *(v64 + v22);
          v23 = v16[3];
          v24 = v22 + 4;
          v25 = (v22 + 4) >> 2;
          v49 = 0;
          v50 = 0;
          v48 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v48, v23, v22 + 4 + v23, v25);
          v26 = v16[4];
          v27 = v16[3] + v24;
          v46 = 0;
          v47 = 0;
          v45 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v45, v27, v26, (v26 - v27) >> 2);
          std::pair<std::vector<float>,std::vector<float>>::pair[abi:ne200100]<true,0>(v52, &v48, &v45);
          v28 = v17[3];
          memset(v44, 0, sizeof(v44));
          std::vector<BOOL>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v44, v28, v24 + v28, v25);
          v29 = v17[4];
          v30 = v17[3] + v24;
          memset(__p, 0, sizeof(__p));
          std::vector<BOOL>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__p, v30, v29, (v29 - v30) >> 2);
          std::pair<std::vector<BOOL>,std::vector<BOOL>>::pair[abi:ne200100]<std::vector<BOOL>&,std::vector<BOOL>&,0>(&v55, v44, __p);
          v59 = 0;
          v60 = 0;
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

          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          v31 = v55;
          if (v56 > 0x3F || (v56 & 0x3F) != 0)
          {
            v33 = 0;
            v34 = 0.0;
            v35 = v55 + 8 * (v56 >> 6);
            do
            {
              if ((*v31 >> v33))
              {
                v36 = 1.0;
              }

              else
              {
                v36 = 0.0;
              }

              v34 = v34 + v36;
              if (v33 == 63)
              {
                v35 = v55 + 8 * (v56 >> 6);
              }

              v31 += 8 * (v33 == 63);
              if (v33 == 63)
              {
                v33 = 0;
              }

              else
              {
                ++v33;
              }
            }

            while (v33 != (v56 & 0x3F) || v31 != v35);
            v32 = v34;
          }

          else
          {
            v32 = 0;
          }

          v37 = v57;
          if (v58 > 0x3F || (v58 & 0x3F) != 0)
          {
            v39 = 0;
            v40 = 0.0;
            v41 = v57 + 8 * (v58 >> 6);
            do
            {
              if ((*v37 >> v39))
              {
                v42 = 1.0;
              }

              else
              {
                v42 = 0.0;
              }

              v40 = v40 + v42;
              if (v39 == 63)
              {
                v41 = v57 + 8 * (v58 >> 6);
              }

              v37 += 8 * (v39 == 63);
              if (v39 == 63)
              {
                v39 = 0;
              }

              else
              {
                ++v39;
              }
            }

            while (v39 != (v58 & 0x3F) || v37 != v41);
            v38 = v40;
          }

          else
          {
            v38 = 0;
          }

          v60 = __PAIR64__(v38, v32);
          *&v59 = 1.0 - (v32 / v56);
          *(&v59 + 1) = 1.0 - (v38 / v58);
          std::vector<Nightingale::lunaMTPreparedData>::push_back[abi:ne200100](a4, &v51);
          if (v57)
          {
            operator delete(v57);
          }

          if (v55)
          {
            operator delete(v55);
          }

          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          if (v52[0])
          {
            v52[1] = v52[0];
            operator delete(v52[0]);
          }
        }
      }

LABEL_68:
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

void sub_25C63FA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  Nightingale::lunaExtractedData::~lunaExtractedData(&a41);
  Nightingale::lunaExtractedData::~lunaExtractedData((v41 - 216));
  std::vector<Nightingale::lunaMTPreparedData>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
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
    __dst = 0;
    v14 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v7 + 8), *(v7 + 16), (*(v7 + 16) - *(v7 + 8)) >> 2);
    std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, __dst, *(v7 + 32), *(v7 + 40), (*(v7 + 40) - *(v7 + 32)) >> 2);
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

void sub_25C63FC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (*v11)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(exception_object);
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
    Nightingale::get_sw_difference((v8 + 8), (v8 + 32));
    if ((LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v12 = NAN;
      if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF && v10 != 0.0)
      {
        v12 = (v11 * v11) / v10;
      }
    }

    else
    {
      v12 = NAN;
    }

    v14 = (LODWORD(v12) & 0x7FFFFFFFu) < 0x7F800000 && v12 >= a3;
    v15 = v14;
    result = std::vector<BOOL>::push_back(a2, &v15);
  }

  return result;
}

void sub_25C63FD7C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

  std::pair<std::vector<BOOL>,std::vector<BOOL>>::pair[abi:ne200100]<std::vector<BOOL>&,std::vector<BOOL>&,0>(a2, v30, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    operator delete(v30[0]);
  }
}

void sub_25C63FF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
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
        std::vector<float>::push_back[abi:ne200100](&__p, &Sigmoid);
        v14 = 1;
      }

      else
      {
        v25 = 2143289344;
        std::vector<float>::push_back[abi:ne200100](&__p, &v25);
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

void sub_25C640224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::get_failure_reasons_for_historical(Nightingale *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&v23, v26, &v27, 6uLL);
  v13 = v23;
  if (v23 != v24)
  {
    v14 = v23 + 4;
    v13 = v23;
    if (v23 + 4 != v24)
    {
      v15 = *v23;
      v13 = v23;
      v16 = v23 + 4;
      do
      {
        v18 = *v16;
        v16 += 4;
        v17 = v18;
        v19 = v15 < v18;
        if (v15 <= v18)
        {
          v15 = v17;
        }

        if (v19)
        {
          v13 = v14;
        }

        v14 = v16;
      }

      while (v16 != v24);
    }
  }

  v20 = *v13;
  if (*v13 == a2)
  {
    v21 = 1;
  }

  else if (v20 == a5)
  {
    v21 = 2;
  }

  else if (v20 == a3)
  {
    v21 = 3;
  }

  else if (v20 == a4)
  {
    v21 = 4;
  }

  else if (v20 == a6)
  {
    v21 = 5;
  }

  else if (v20 == a7)
  {
    v21 = 6;
  }

  else
  {
    v21 = 9;
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v21;
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

void Nightingale::extract_temperature_data_for_given_range(Nightingale *this@<X0>, int a2@<W1>, uint64_t *a3@<X2>, char **a4@<X8>)
{
  v6 = this;
  a4[6] = 0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  *(a4 + 4) = 0u;
  v8 = a4 + 8;
  *(a4 + 14) = 1065353216;
  *(a4 + 5) = 0u;
  *(a4 + 24) = 1065353216;
  v10 = *a3;
  v9 = a3[1];
  if (v9 != *a3)
  {
    v12 = 0;
    v13 = (a3 + 5);
    v14 = (a3 + 10);
    do
    {
      v15 = *(v10 + 4 * v12);
      v60 = v15;
      if (v15 <= a2)
      {
        if (v15 < v6)
        {
          break;
        }

        std::vector<int>::push_back[abi:ne200100](a4, &v60);
        for (i = v13; ; std::vector<float>::push_back[abi:ne200100](v17 + 3, (*(i + 3) + 4 * v12)))
        {
          i = *i;
          if (!i)
          {
            break;
          }

          v61 = i + 16;
          v17 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(a4 + 3, i + 16);
        }

        for (j = v14; ; std::vector<int>::push_back[abi:ne200100](v19 + 3, (*(j + 3) + 4 * v12)))
        {
          j = *j;
          if (!j)
          {
            break;
          }

          v61 = j + 16;
          v19 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v8, j + 16);
        }

        v10 = *a3;
        v9 = a3[1];
      }

      ++v12;
    }

    while (v12 < (v9 - v10) >> 2);
  }

  if (v9 != v10)
  {
    v20 = *(v9 - 4);
    v21 = __OFSUB__(v20, v6);
    v22 = v20 - v6;
    v23 = !((v22 < 0) ^ v21 | (v22 == 0)) && v20 < a2;
    if (v23 && v22 >= 1)
    {
      for (k = 0; k != v22; ++k)
      {
        std::vector<int>::push_back[abi:ne200100](a4, &(*a4)[(((a4[1] - *a4) << 30) - 0x100000000) >> 30]);
        for (m = a4[5]; m; m = *m)
        {
          LODWORD(v61) = 2143289344;
          std::vector<float>::push_back[abi:ne200100](m + 3, &v61);
        }

        for (n = a4[10]; n; n = *n)
        {
          v28 = *(n + 4);
          v27 = *(n + 5);
          if (v28 >= v27)
          {
            v30 = *(n + 3);
            v31 = v28 - v30;
            v32 = (v28 - v30) >> 2;
            v33 = v32 + 1;
            if ((v32 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v34 = v27 - v30;
            if (v34 >> 1 > v33)
            {
              v33 = v34 >> 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v35 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((n + 24), v35);
            }

            v36 = (v28 - v30) >> 2;
            v37 = (4 * v32);
            v38 = (4 * v32 - 4 * v36);
            *v37 = 0;
            v29 = v37 + 1;
            memcpy(v38, v30, v31);
            v39 = *(n + 3);
            *(n + 3) = v38;
            *(n + 4) = v29;
            *(n + 5) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v28 = 0;
            v29 = v28 + 4;
          }

          *(n + 4) = v29;
        }
      }
    }
  }

  v41 = *a4;
  v40 = a4[1];
  if (*a4 != v40)
  {
    v42 = v40 - 4;
    if (v42 > v41)
    {
      v43 = v41 + 4;
      do
      {
        v44 = *(v43 - 1);
        *(v43 - 1) = *v42;
        *v42 = v44;
        v42 -= 4;
        v45 = v43 >= v42;
        v43 += 4;
      }

      while (!v45);
    }
  }

  for (ii = a4[5]; ii; ii = *ii)
  {
    v47 = *(ii + 3);
    v48 = *(ii + 4);
    v49 = (v48 - 4);
    if (v47 != v48 && v49 > v47)
    {
      v51 = v47 + 4;
      do
      {
        v52 = *(v51 - 4);
        *(v51 - 4) = *v49;
        *v49-- = v52;
        v45 = v51 >= v49;
        v51 += 4;
      }

      while (!v45);
    }
  }

  for (jj = a4[10]; jj; jj = *jj)
  {
    v54 = *(jj + 3);
    v55 = *(jj + 4);
    v56 = (v55 - 4);
    if (v54 != v55 && v56 > v54)
    {
      v58 = v54 + 4;
      do
      {
        v59 = *(v58 - 4);
        *(v58 - 4) = *v56;
        *v56-- = v59;
        v45 = v58 >= v56;
        v58 += 4;
      }

      while (!v45);
    }
  }
}

uint64_t std::pair<std::vector<float>,std::vector<float>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::vector<Nightingale::lunaMTPreparedData>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<Nightingale::lunaMTPreparedData>::__emplace_back_slow_path<Nightingale::lunaMTPreparedData const&>(a1, a2);
  }

  else
  {
    std::vector<Nightingale::lunaMTPreparedData>::__construct_one_at_end[abi:ne200100]<Nightingale::lunaMTPreparedData const&>(a1, a2);
    result = v3 + 120;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C6408A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::lunaMTSpecs>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<Nightingale::lunaMTSpecs>::__init_with_size[abi:ne200100]<Nightingale::lunaMTSpecs*,Nightingale::lunaMTSpecs*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Nightingale::lunaMTSpecs>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C6409AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Nightingale::lunaMTSpecs>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::lunaMTSpecs>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::pair<std::vector<BOOL>,std::vector<BOOL>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Nightingale::lunaMTPreparedData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Nightingale::lunaMTPreparedData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Nightingale::lunaMTPreparedData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:ne200100]<Nightingale::lunaMTPreparedData,void,0>(a1, i))
  {
    i -= 15;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:ne200100]<Nightingale::lunaMTPreparedData,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a2[7];
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;
    operator delete(v5);
  }

  v6 = a2[1];
  if (v6)
  {
    a2[2] = v6;

    operator delete(v6);
  }
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
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
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void *std::pair<std::vector<BOOL>,std::vector<BOOL>>::pair[abi:ne200100]<std::vector<BOOL>&,std::vector<BOOL>&,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::vector<BOOL>::vector(a1, a2);
  std::vector<BOOL>::vector(v5 + 3, a3);
  return a1;
}

void sub_25C640D9C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::vector<float>,std::vector<float>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_25C640E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C640E84(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::__construct_at_end<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

__n128 std::vector<Nightingale::lunaMTPreparedData>::__construct_one_at_end[abi:ne200100]<Nightingale::lunaMTPreparedData const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  std::pair<std::vector<float>,std::vector<float>>::pair[abi:ne200100]((v4 + 8), (a2 + 8));
  std::pair<std::vector<BOOL>,std::vector<BOOL>>::pair[abi:ne200100]((v4 + 56), a2 + 56);
  result = *(a2 + 104);
  *(v4 + 104) = result;
  *(a1 + 8) = v4 + 120;
  return result;
}

void sub_25C640F98(_Unwind_Exception *a1)
{
  std::pair<std::vector<float>,std::vector<float>>::~pair(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<Nightingale::lunaMTPreparedData>::__emplace_back_slow_path<Nightingale::lunaMTPreparedData const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::lunaMTPreparedData>>(a1, v6);
  }

  v14 = 0;
  v15 = 120 * v2;
  v16 = 120 * v2;
  v7 = 120 * v2;
  *v7 = *a2;
  std::pair<std::vector<float>,std::vector<float>>::pair[abi:ne200100]((120 * v2 + 8), (a2 + 8));
  std::pair<std::vector<BOOL>,std::vector<BOOL>>::pair[abi:ne200100]((120 * v2 + 56), a2 + 56);
  *(v7 + 104) = *(a2 + 104);
  *&v16 = v16 + 120;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(&v14);
  return v13;
}

void sub_25C6410F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::pair<std::vector<float>,std::vector<float>>::~pair(v4);
  std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::pair<std::vector<float>,std::vector<float>>::pair[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  return a1;
}

void sub_25C641178(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::vector<BOOL>,std::vector<BOOL>>::pair[abi:ne200100](void *a1, uint64_t a2)
{
  v4 = std::vector<BOOL>::vector(a1, a2);
  std::vector<BOOL>::vector(v4 + 3, a2 + 24);
  return a1;
}

void sub_25C6411CC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::lunaMTPreparedData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 2);
      v8 = v7[7];
      *(a4 + 48) = v7[6];
      v7[5] = 0;
      v7[6] = 0;
      v7[4] = 0;
      *(a4 + 56) = v8;
      *(a4 + 64) = *(v7 + 4);
      v7[8] = 0;
      v7[9] = 0;
      v7[7] = 0;
      *(a4 + 80) = v7[10];
      *(a4 + 88) = *(v7 + 11);
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      *(a4 + 104) = *(v7 + 13);
      v7 += 15;
      a4 += 120;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:ne200100]<Nightingale::lunaMTPreparedData,void,0>(a1, v5);
      v5 += 15;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 15;
      std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:ne200100]<Nightingale::lunaMTPreparedData,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::lunaMTPreparedData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::lunaMTPreparedData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:ne200100]<Nightingale::lunaMTPreparedData,void,0>(v5, (v4 - 120));
  }
}

void Nightingale::lunaMTPreparedData::~lunaMTPreparedData(Nightingale::lunaMTPreparedData *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

uint64_t Nightingale::periodEstimatorBase::getNullPoint(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3 - a4;
  v5 = (a3 - a4) & 0xFFFFFF00;
  v6 = 0x100000000;
  if ((a3 & 0x100000000) == 0)
  {
    v6 = 0;
    v4 = 0;
    v5 = 0;
  }

  v7 = a2 + 8;
  if (a2 + 8 <= a3)
  {
    v7 = a3;
  }

  v8 = v7 - a4;
  if ((a3 & 0x100000000) != 0)
  {
    v9 = v8 & 0xFFFFFF00;
  }

  else
  {
    LOBYTE(v8) = a2 + 8 - a4;
    v9 = (a2 + 8 - a4) & 0xFFFFFF00;
  }

  if ((a2 & 0x100000000) != 0)
  {
    v6 = 0x100000000;
    v4 = v8;
    v5 = v9;
  }

  return v6 | v5 | v4;
}

uint64_t Nightingale::periodEstimatorBase::constructPeriodGradFromDLOut@<X0>(void *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, Nightingale::CGradient *a5@<X8>)
{
  result = Nightingale::CGradient::CGradient(a5);
  if (a1[1] - *a1 == 128)
  {
    if (a4 >= -31)
    {
      v11 = 0;
      v12 = ((a4 + 31) & ~((a4 + 31) >> 31)) + 1;
      v13 = -a4;
      v14 = -4 * a4;
      do
      {
        v15 = 0.0;
        if (v11 >= a2 && v11 <= a3)
        {
          if (v13 + v11 >= ((a1[1] - *a1) >> 2))
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v15 = *(*a1 + v14 + 4 * v11);
        }

        Nightingale::CGradient::push_back(a5, v15);
        ++v11;
      }

      while (v12 != v11);
    }

    return Nightingale::CGradient::normalize(a5);
  }

  return result;
}

void sub_25C64164C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::fwEstimatorOPK::getHistFwOpk(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  v6 = (a5 + 8);
  *(a5 + 12) = 0;
  *(a5 + 16) = 3;
  *(a5 + 32) = 0;
  *(a5 + 20) = 0;
  *(a5 + 28) = 0;
  v7.i64[0] = 0x3F0000003FLL;
  v7.i64[1] = 0x3F0000003FLL;
  *(a5 + 36) = vnegq_f32(v7);
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 140) = 0;
  *(a5 + 144) = 0x17FC00000;
  *(a5 + 152) = 0;
  *(a5 + 156) = 0;
  if (*(a2 + 24) == 1 && *(a2 + 16) == 1 && (a4 & 0x100000000) != 0)
  {
    v9 = *(a2 + 12);
    if (v9 <= a4)
    {
      *a5 = v9 - 4;
      *(a5 + 4) = 1;
      *(a5 + 8) = v9 + 1;
      *(a5 + 12) = 1;
      *(a5 + 16) = 0;
      *(a5 + 29) = Nightingale::phaseFactorProcessor::suppressFWStEnd(a1, a5, v6, a3);
      Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(a1, *a2, *(a2 + 20), a5);
    }

    else
    {
      *(a5 + 28) = 1;
    }
  }
}

uint64_t Nightingale::fwEstimatorOPK::getOnGoingjDayFwEndOpk(uint64_t a1, int a2, uint64_t a3)
{
  if ((BYTE4(a3) & (a3 - 4 >= a2)) != 0)
  {
    return (a3 + 1) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t *Nightingale::PhaseCondenser::begin_phase(uint64_t a1, unsigned int a2, int a3)
{
  v5 = a3;
  v6 = &v5;
  result = std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, &v5);
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  ++*(result + a2 + 16);
  return result;
}

uint64_t *Nightingale::PhaseCondenser::end_phase(uint64_t a1, unsigned int a2, int a3)
{
  v5 = a3 + 1;
  v6 = &v5;
  result = std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, &v5);
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  --*(result + a2 + 16);
  return result;
}

void Nightingale::PhaseCondenser::phase_updates(Nightingale::PhaseCondenser *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<Nightingale::PhaseUpdate>::reserve(a2, *(this + 2));
  v31 = 0uLL;
  v32 = 0;
  v6 = *this;
  v4 = this + 8;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = a2[1];
      if (*a2 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v7 - 2);
      }

      v9 = 0;
      v30 = v8;
      v28 = *(v5 + 2);
      v29 = *(v5 + 24);
      do
      {
        *(&v31 + v9) += *(&v28 + v9);
        v9 += 2;
      }

      while (v9 != 18);
      v25 = v31;
      v26 = v32;
      v27 = Nightingale::PhaseCondenser::flatten_counted_phase_set(&v25);
      if ((std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,9ul>,true,true>(&v30, 0, &v30, 9u, &v27) & 1) == 0)
      {
        v10 = *(v5 + 7);
        v12 = a2[1];
        v11 = a2[2];
        if (v12 >= v11)
        {
          v14 = (v12 - *a2) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v16 = v11 - *a2;
          if (v16 >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::PhaseUpdate>>(a2, v17);
          }

          v18 = 16 * v14;
          *v18 = v27;
          *(v18 + 8) = v10;
          v13 = 16 * v14 + 16;
          v19 = a2[1] - *a2;
          v20 = (16 * v14 - v19);
          memcpy(v20, *a2, v19);
          v21 = *a2;
          *a2 = v20;
          a2[1] = v13;
          a2[2] = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v12 = v27;
          *(v12 + 2) = v10;
          v13 = (v12 + 16);
        }

        a2[1] = v13;
      }

      v22 = *(v5 + 1);
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
          v23 = *(v5 + 2);
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != v4);
  }
}

void sub_25C641AA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Nightingale::PhaseUpdate>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::PhaseUpdate>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t Nightingale::PhaseCondenser::flatten_counted_phase_set(uint64_t a1)
{
  v2 = 0;
  v4 = 0;
  do
  {
    if (*(a1 + 2 * v2) >= 1)
    {
      Nightingale::PhaseSet::add(&v4, v2);
    }

    ++v2;
  }

  while (v2 != 9);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::PhaseUpdate>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,9ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t *std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void Nightingale::ngt_deviationAnalyzer::deviation_process(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, int a6@<W6>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 4) = -1;
  *(a7 + 12) = 0;
  v7 = a7 + 12;
  *(a7 + 16) = -1;
  *(a7 + 24) = 0;
  v8 = a7 + 24;
  *(a7 + 28) = -1;
  *(a7 + 36) = 0;
  v9 = a7 + 36;
  *(a7 + 40) = -1;
  *(a7 + 48) = 0;
  *(a7 + 52) = 0;
  *(a7 + 56) = -1;
  *(a7 + 64) = -1;
  *(a7 + 72) = 0xFFFFFFFFLL;
  *(a7 + 80) = 0;
  *(a7 + 84) = -1;
  *(a7 + 92) = 0xFFFFFFFFLL;
  *(a7 + 100) = 0;
  *(a7 + 104) = -1;
  *(a7 + 116) = 0;
  v10 = a7 + 116;
  *(a7 + 112) = -1;
  *(a7 + 120) = 0;
  *(a7 + 124) = -1;
  *(a7 + 132) = -1;
  if (*(a2 + 36) == 1 && *(a2 + 128) == 1)
  {
    v20 = *(a2 + 80);
    v18 = *(a2 + 88);
    v21 = *(a2 + 104);
    v22 = *(a2 + 72);
    v19 = *(a2 + 112);
    v17 = *(a2 + 120);
    Nightingale::ngt_deviationAnalyzer::detectIrreg(a1, *(a2 + 64), *(a2 + 96), a4, a5, *(a2 + 32), a6, a7, a7 + 48);
    if ((*(a2 + 36) & 1) == 0 || (Nightingale::ngt_deviationAnalyzer::detectInfreq(a1, v22, v21, a4, a5, *(a2 + 32), a6, v7, v10 - 40), (*(a2 + 36) & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::ngt_deviationAnalyzer::detectProlonged(a1, v20, v19, a4, a5, *(a2 + 32), a6, v8, v10 - 20);
    __p = 0;
    v24 = 0;
    v25 = 0;
    std::vector<Nightingale::ngt_DayInput>::__init_with_size[abi:ne200100]<Nightingale::ngt_DayInput*,Nightingale::ngt_DayInput*>(&__p, *a3, a3[1], 0xEEEEEEEEEEEEEEEFLL * ((a3[1] - *a3) >> 2));
    if ((*(a2 + 36) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    Nightingale::ngt_deviationAnalyzer::detectSpotting(a1, v18, v17, &__p, a4, a5, *(a2 + 32), a6, v9, v10);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }
}

void sub_25C6421AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngt_deviationAnalyzer::detectIrreg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (*(a4 + 84) != 1)
  {
    return;
  }

  if (*a4 == *(a4 + 8))
  {
    return;
  }

  v12 = *(a4 + 80);
  v13 = v12 - 179;
  *(a8 + 4) = v12 - 179;
  *(a8 + 8) = v12;
  v14 = Nightingale::ngt_deviationAnalyzer::ruleChecker(a1, a2, a3, v12 - 179, v12, a4, a5, a6, a7, a9);
  if ((v14 & 1) == 0 && !a7)
  {
    return;
  }

  __p = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v16 = *a4;
  v15 = *(a4 + 8);
  if (v16 == v15)
  {
    v23 = 0;
  }

  else
  {
    do
    {
      v17 = *v16;
      if (*(v16 + 24) == 1 && v17 >= v13)
      {
        v19 = *(v16 + 20);
        v20 = v19 + 1;
        if (v19 < v12 && v20 >= v12 - 89)
        {
          v37 = v20 - v17;
          std::vector<int>::push_back[abi:ne200100](&__p, &v37);
          v19 = *(v16 + 20);
          v20 = v19 + 1;
        }

        if (v19 < v12 - 90 && v20 >= v13)
        {
          v37 = v20 - *v16;
          std::vector<int>::push_back[abi:ne200100](&v38, &v37);
        }
      }

      v16 += 96;
    }

    while (v16 != v15);
    v23 = __p;
  }

  v24 = v42;
  if (*(a9 + 3))
  {
    v25 = (v39 - v38) >> 2;
    *(a9 + 20) = (v42 - v23) >> 2;
    *(a9 + 24) = v25;
  }

  if (v23 == v24)
  {
    goto LABEL_38;
  }

  v26 = v38;
  if (v38 != v39)
  {
    v44 = 0;
    v27 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__identity,std::__less<void,void>>(v23, v24);
    v29 = *v28;
    v30 = *v27;
    v44 = 0;
    v31 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__identity,std::__less<void,void>>(v38, v39);
    v33 = *v32 - *v31;
    v34 = v29 - v30 <= 16 || v33 <= 16;
    v35 = !v34;
    *a9 = v35;
    if (v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = v14;
    }

    *a8 = v36;
    if (*(a9 + 3) == 1)
    {
      *(a9 + 12) = v29 - v30;
      *(a9 + 16) = v33;
    }

LABEL_38:
    v26 = v38;
  }

  if (v26)
  {
    v39 = v26;
    operator delete(v26);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_25C6423D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::ngt_deviationAnalyzer::detectInfreq(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (*(a4 + 60) == 1 && *a4 != *(a4 + 8))
  {
    v12 = *(a4 + 56);
    *(a8 + 4) = v12 - 179;
    *(a8 + 8) = v12;
    result = Nightingale::ngt_deviationAnalyzer::ruleChecker(result, a2, a3, v12 - 179, v12, a4, a5, a6, a7, a9);
    if ((result & 1) != 0 || a7)
    {
      v13 = *a4;
      v14 = *(a4 + 8);
      if (*a4 == v14)
      {
        v16 = 0;
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v18 = *v13;
          v13 += 24;
          v17 = v18;
          if (v18 <= v12 && v17 >= v12 - 89)
          {
            ++v15;
          }

          if (v17 <= v12 - 90 && v17 >= v12 - 179)
          {
            ++v16;
          }
        }

        while (v13 != v14);
      }

      if (*(a9 + 3))
      {
        *(a9 + 12) = v15;
        *(a9 + 16) = v16;
      }

      v21 = v15 >= 2 || v16 >= 2;
      v22 = !v21;
      *a9 = v22;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = result;
      }

      *a8 = v23;
    }
  }

  return result;
}

uint64_t Nightingale::ngt_deviationAnalyzer::detectProlonged(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a4 + 8);
  if (*a4 != v9 && *(a4 + 68) == 1 && *(v9 - 88) == 1)
  {
    v14 = *(a4 + 64);
    v15 = v14 - 179;
    *(a8 + 4) = v14 - 179;
    *(a8 + 8) = v14;
    result = Nightingale::ngt_deviationAnalyzer::ruleChecker(result, a2, a3, v14 - 179, v14, a4, a5, a6, a7, a9);
    if ((result & 1) != 0 || a7)
    {
      v16 = *a4;
      v17 = *(a4 + 8);
      if (*a4 == v17)
      {
        v19 = 0;
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          if (*v16 >= v15)
          {
            ++v18;
            if (*(v16 + 8) == 1 && *(v16 + 4) - *v16 > 8)
            {
              ++v19;
            }
          }

          v16 += 96;
        }

        while (v16 != v17);
      }

      *a9 = v19 > 1;
      if (*(a9 + 3))
      {
        *(a9 + 12) = v18;
        *(a9 + 16) = v19;
      }

      if (v19 > 1)
      {
        v20 = result;
      }

      else
      {
        v20 = 0;
      }

      *a8 = v20;
    }
  }

  return result;
}

void Nightingale::ngt_deviationAnalyzer::detectSpotting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*a5 != *(a5 + 8) && *(a5 + 84) == 1)
  {
    v13 = *(a5 + 80);
    *(a9 + 4) = v13 - 179;
    *(a9 + 8) = v13;
    v14 = Nightingale::ngt_deviationAnalyzer::ruleChecker(a1, a2, a3, v13 - 179, v13, a5, a6, a7, a8, a10);
    if ((v14 & 1) != 0 || a8)
    {
      v27 = 0;
      v28 = 0;
      __p = 0;
      std::vector<Nightingale::ngt_DayInput>::__init_with_size[abi:ne200100]<Nightingale::ngt_DayInput*,Nightingale::ngt_DayInput*>(&__p, *a4, a4[1], 0xEEEEEEEEEEEEEEEFLL * ((a4[1] - *a4) >> 2));
      Nightingale::ngt_deviationAnalyzer::extendPeriodWFlowSpotting(v13 - 179, v13, &__p, a5, v29);
      NonAdjacentSpottingInACycle = __p;
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      LODWORD(v30) = 0;
      v16 = *a4;
      v17 = a4[1];
      if (*a4 == v17)
      {
        v19 = 0;
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          if (*(v16 + 8) == 1)
          {
            v20 = *v16;
            if (*v16 >= v13 - 89 && v20 <= v13)
            {
              NonAdjacentSpottingInACycle = Nightingale::ngt_deviationAnalyzer::findNonAdjacentSpottingInACycle(NonAdjacentSpottingInACycle, v29, v20, &v30);
              v19 += NonAdjacentSpottingInACycle;
            }

            else if (v20 >= v13 - 179 && v20 <= v13 - 90)
            {
              NonAdjacentSpottingInACycle = Nightingale::ngt_deviationAnalyzer::findNonAdjacentSpottingInACycle(NonAdjacentSpottingInACycle, v29, v20, &v30);
              v18 += NonAdjacentSpottingInACycle;
            }
          }

          v16 += 60;
        }

        while (v16 != v17);
      }

      v23 = v19 <= 0 || v18 <= 0;
      v24 = !v23;
      *a10 = v24;
      v25 = v14;
      if (v23)
      {
        v25 = 0;
      }

      *a9 = v25;
      if (*(a10 + 3))
      {
        *(a10 + 12) = v19;
        *(a10 + 16) = v18;
      }

      v30 = v29;
      std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v30);
    }
  }
}

void sub_25C6427D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::ngt_deviationAnalyzer::ruleChecker(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, int a5, uint64_t a6, uint64_t *a7, int a8, char a9, uint64_t a10)
{
  v14 = (a2 & 0x100000000) == 0 || a2 <= a4;
  *(a10 + 1) = v14;
  v16 = (a3 & 0x100000000) == 0 || a3 <= a5;
  *(a10 + 2) = v16;
  if (*(a6 + 36) == 1)
  {
    *(a10 + 3) = *(a6 + 32) <= a4;
  }

  *(a10 + 8) = a8 - a5;
  if (v14 && v16)
  {
    v17 = *(a10 + 3);
    if (a9)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
    if (a9)
    {
      goto LABEL_21;
    }
  }

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  CycleFactorsEndBfrWinEnd = Nightingale::ngt_deviationAnalyzer::findCycleFactorsEndBfrWinEnd(a1, a5, a7);
  v21 = CycleFactorsEndBfrWinEnd < 1 || CycleFactorsEndBfrWinEnd + 84 < a4;
  *(a10 + 4) = v21;
  v22 = Nightingale::ngt_deviationAnalyzer::checkCycleFactorInWin(CycleFactorsEndBfrWinEnd, a4, (a5 - 1), a7);
  *(a10 + 5) = v22;
  return v22 & v17 & v21;
}

uint64_t Nightingale::ngt_deviationAnalyzer::findNonAdjacentSpottingInACycle(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  result = *a2 != v4 && a3 + 2 <= *v5;
  v7 = *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5);
  if (*a4 < v8)
  {
    v9 = v8 - v7;
    if (v8 < v7)
    {
      v9 = 0;
    }

    for (i = &v5[24 * v7 + 6]; ; i += 96)
    {
      if (!v9)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(i - 16) == 1 && *i == 1 && *(i - 6) <= a3)
      {
        v11 = *(i - 1);
        if (v11 >= a3 && *(i - 5) + 2 < a3 && v11 - 1 > a3)
        {
          break;
        }
      }

      ++v7;
      --v9;
      if (v8 == v7)
      {
        return result;
      }
    }

    result = (result + 1);
    *a4 = v7;
  }

  return result;
}

void Nightingale::ngt_deviationAnalyzer::extendPeriodWFlowSpotting(int a1@<W1>, int a2@<W2>, int **a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = a1;
  v10 = *a4;
  v9 = a4[1];
  v11 = &Nightingale::INVALID_JDAY;
  if (*a4 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = *a4;
    do
    {
      if (*v13 >= a1)
      {
        break;
      }

      v14 = v13 + 4;
      v15 = *(v13 + 8) ? (v13 + 4) : &Nightingale::INVALID_JDAY;
      if (*v15 >= a1)
      {
        break;
      }

      ++v12;
      v13 = v14 + 92;
    }

    while (v14 + 92 != v9);
  }

  v16 = v12 != 0;
  v17 = v12 - 1;
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 5);
  if (v19 <= v18)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = v10 + 96 * v18;
  if (*(v20 + 8))
  {
    v11 = (v20 + 4);
  }

  v21 = *v11;
  if (v21 >= a1)
  {
    v21 = a1;
  }

  v22 = *a3;
  v23 = a3[1];
  if (*a3 == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      if (*v22 >= v21)
      {
        break;
      }

      ++v24;
      v22 += 15;
    }

    while (v22 != v23);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  BYTE4(v78) = 0;
  BYTE8(v78) = 0;
  BYTE12(v78) = 0;
  LOBYTE(v79) = 0;
  BYTE4(v79) = 0;
  BYTE8(v79) = 0;
  LOBYTE(v80) = 0;
  BYTE4(v80) = 0;
  BYTE8(v80) = 0;
  BYTE12(v80) = 0;
  v81[0] = 0;
  v81[4] = 0;
  v81[8] = 0;
  v81[12] = 0;
  v81[16] = 0;
  v81[20] = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  if (v19 - 1 > v18)
  {
    v25 = v18;
    v26 = v18;
    while (1)
    {
      if (v19 <= v26)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v27 = (v10 + 96 * v26);
      v71 = *v27;
      v28 = v27[1];
      v29 = v27[2];
      v30 = v27[3];
      *&v74[13] = *(v27 + 61);
      v73 = v29;
      *v74 = v30;
      v72 = v28;
      v76 = 0;
      v77 = 0;
      __p = 0;
      std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&__p, *(v27 + 9), *(v27 + 10), *(v27 + 10) - *(v27 + 9));
      if (BYTE8(v71) == 1 && (BYTE8(v72) & 1) != 0)
      {
        v31 = DWORD1(v71);
        if (SDWORD1(v71) >= v7)
        {
          v32 = v7;
        }

        else
        {
          v32 = DWORD1(v71);
        }

        if (v18 < v25)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 5) <= v25 - 1)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v33 = *a4 + 96 * (v25 - 1);
          if (*(v33 + 8) == 1)
          {
            v32 = *(v33 + 4) + 3;
          }
        }

        v34 = DWORD1(v72) - 1;
        if (DWORD1(v72) - 1 >= a2)
        {
          v34 = a2;
        }

        v35 = 0xEEEEEEEEEEEEEEEFLL * (a3[1] - *a3);
        if (v35 > v24)
        {
          v36 = 0;
          v37 = v24;
          v38 = v71;
          v39 = &(*a3)[15 * v24 + 2];
          v40 = -3;
          v41 = 4294967293;
          do
          {
            v42 = *(v39 - 2);
            if ((*(v39 - 1) - 1) < 4 || (*v39) && v42 >= v32 && v42 <= v34)
            {
              if (v42 < v38)
              {
                v44 = v42 - v41 < 3;
                if (v42 - v41 >= 3)
                {
                  v45 = -3;
                }

                else
                {
                  v45 = v40;
                }

                if (v44 || v40 == -3)
                {
                  v36 = *(v39 - 2);
                }

                if (v40 == -3)
                {
                  v40 = *(v39 - 2);
                }

                else
                {
                  v40 = v45;
                }

                if (v38 - v36 <= 2)
                {
                  LODWORD(v71) = v40;
                  v38 = v40;
                }

                goto LABEL_48;
              }

              if (v42 > v31)
              {
                if (v42 - v31 > 2)
                {
                  v24 = v37;
                  break;
                }

                DWORD1(v71) = *(v39 - 2);
                BYTE8(v71) = 1;
                v31 = v42;
              }
            }

            v42 = v41;
LABEL_48:
            ++v37;
            v39 += 15;
            v41 = v42;
          }

          while (v35 > v37);
        }

        std::vector<Nightingale::cycleInfo>::push_back[abi:ne200100](a5, &v71);
        v47 = 1;
      }

      else
      {
        v47 = 0;
      }

      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      v9 = a4[1];
      if (v47)
      {
        ++v25;
        v10 = *a4;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a4) >> 5);
        v26 = v25;
        if (v19 - 1 > v25)
        {
          continue;
        }
      }

      break;
    }
  }

  v78 = *(v9 - 96);
  v48 = *(v9 - 80);
  v49 = *(v9 - 64);
  v50 = *(v9 - 48);
  *&v81[13] = *(v9 - 35);
  v80 = v49;
  *v81 = v50;
  v79 = v48;
  if (&v78 != (v9 - 96))
  {
    std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&v82, *(v9 - 24), *(v9 - 16), *(v9 - 16) - *(v9 - 24));
    v9 = a4[1];
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v9 - *a4) >> 5) >= 2 && *(v9 - 184) == 1)
  {
    v7 = *(v9 - 188) + 3;
  }

  v51 = 0xEEEEEEEEEEEEEEEFLL * (a3[1] - *a3);
  if (v51 > v24)
  {
    v52 = 0;
    v53 = v24;
    v54 = v78;
    v55 = &(*a3)[15 * v24 + 2];
    v56 = -3;
    v57 = 4294967293;
    do
    {
      v58 = *(v55 - 2);
      if ((*(v55 - 1) - 1) < 4 || (*v55) && (v58 >= v7 ? (v59 = v58 < v54) : (v59 = 0), v59))
      {
        v60 = v58 - v57;
        v61 = v60 < 3;
        if (v60 >= 3)
        {
          v62 = -3;
        }

        else
        {
          v62 = v56;
        }

        if (v61 || v56 == -3)
        {
          v52 = *(v55 - 2);
        }

        if (v56 == -3)
        {
          v56 = *(v55 - 2);
        }

        else
        {
          v56 = v62;
        }

        if (v54 - v52 <= 2)
        {
          LODWORD(v78) = v56;
          v54 = v56;
        }
      }

      else
      {
        v58 = v57;
      }

      ++v53;
      v55 += 15;
      v57 = v58;
    }

    while (v51 > v53);
  }

  std::vector<Nightingale::cycleInfo>::push_back[abi:ne200100](a5, &v78);
  v64 = *a5;
  v65 = a5[1] - *a5;
  if (v65 != 96)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0xAAAAAAAAAAAAAAABLL * (v65 >> 5);
    do
    {
      if (v68 <= ++v67)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v69 = v64 + v66;
      *(v69 + 20) = *(v69 + 96) - 1;
      *(v69 + 24) = 1;
      v64 = *a5;
      v68 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 5);
      v66 += 96;
    }

    while (v68 - 1 > v67);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }
}

void sub_25C642F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Nightingale::cycleInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Nightingale::cycleInfo>::__emplace_back_slow_path<Nightingale::cycleInfo const&>(a1, a2);
  }

  else
  {
    std::vector<Nightingale::cycleInfo>::__construct_one_at_end[abi:ne200100]<Nightingale::cycleInfo const&>(a1, a2);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

uint64_t Nightingale::ngt_deviationAnalyzer::findCycleFactorsEndBfrWinEnd(uint64_t a1, int a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  Nightingale::phaseFactorProcessor::getAllCycleVec(__p);
  EndOfReproductiveBfrADate = Nightingale::phaseFactorProcessor::findEndOfReproductiveBfrADate(&v8, a3, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return EndOfReproductiveBfrADate;
}

void sub_25C643058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

BOOL Nightingale::ngt_deviationAnalyzer::checkCycleFactorInWin(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  Nightingale::phaseFactorProcessor::getAllCycleVec(&v12);
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&__p, v12, v13, v13 - v12);
  v7 = Nightingale::phaseFactorProcessor::detectPhases(&v14, a2 | (a3 << 32), &__p, a4);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return (v7 & 1) == 0;
}

void sub_25C643144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Nightingale::ngt_DayInput>::__init_with_size[abi:ne200100]<Nightingale::ngt_DayInput*,Nightingale::ngt_DayInput*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Nightingale::ngt_DayInput>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C6431F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__identity,std::__less<void,void>>(_DWORD *result, _DWORD *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= v5 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9 >= *v7)
        {
          if (v10 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          v11 = v9 < v8;
          if (v9 > v8)
          {
            v8 = v7[1];
          }

          if (!v11)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          if (v10 > *v6)
          {
            v8 = *v7;
          }

          if (v10 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t std::vector<Nightingale::cycleInfo>::__construct_one_at_end[abi:ne200100]<Nightingale::cycleInfo const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(v3 + 61) = *(a2 + 61);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  *(v3 + 16) = v4;
  *v3 = *a2;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  result = std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(v3 + 72, *(a2 + 72), *(a2 + 80), *(a2 + 80) - *(a2 + 72));
  *(a1 + 8) = v3 + 96;
  return result;
}

uint64_t std::vector<Nightingale::cycleInfo>::__emplace_back_slow_path<Nightingale::cycleInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::cycleInfo>>(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 96 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 61) = *(a2 + 61);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 72) = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(96 * v2 + 72, *(a2 + 72), *(a2 + 80), *(a2 + 80) - *(a2 + 72));
  *&v19 = v19 + 96;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(&v17);
  return v16;
}

void sub_25C6434A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::cycleInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 61) = *(v6 + 61);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v10 = *(v5 + 72);
      if (v10)
      {
        *(v5 + 80) = v10;
        operator delete(v10);
      }

      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 96;
  }
}

uint64_t std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::cycleInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::cycleInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 96;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 96;
    }
  }
}

void *std::vector<Nightingale::Phase>::__assign_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Nightingale::Phase>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Nightingale::cycleInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Nightingale::cycleInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void Nightingale::fwEstimatorCalendar::getHistFwCal(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 4) = 0;
  *(a5 + 12) = 0;
  *(a5 + 16) = 3;
  *(a5 + 32) = 0;
  *(a5 + 20) = 0;
  *(a5 + 28) = 0;
  v6.i64[0] = 0x3F0000003FLL;
  v6.i64[1] = 0x3F0000003FLL;
  *(a5 + 36) = vnegq_f32(v6);
  *(a5 + 52) = 0;
  *(a5 + 56) = 0;
  *(a5 + 60) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 140) = 0;
  *(a5 + 144) = 0x17FC00000;
  *(a5 + 152) = 0;
  *(a5 + 156) = 0;
  if ((a3 & 0x100000000) != 0)
  {
    *(a5 + 4) = 1;
    *a5 = ((a3 + -18.0) + 1.0);
    *(a5 + 12) = 1;
    *(a5 + 8) = ((a3 + -13.0) + 1.0);
    *(a5 + 16) = 3;
    *(a5 + 29) = Nightingale::phaseFactorProcessor::suppressFWStEnd(a1, a5, (a5 + 8), a4);
    Nightingale::fwEstimatorBase::suppressHistFWOverCycleBoundary(a1, *a2, a3, a5);
  }
}

uint64_t Nightingale::fwEstimatorCalendar::getjDayFwCal(Nightingale::fwEstimatorCalendar *this, int a2, int a3)
{
  LODWORD(v3) = (a3 + -18.0);
  LODWORD(v4) = (a3 + -13.0);
  v5 = v3 < a2;
  if (v3 < a2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v3;
  }

  if (v5)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v4;
  }

  return v3 | (v4 << 32);
}

uint64_t Nightingale::fwEstimatorCalendar::getjDayFwEndCal(Nightingale::fwEstimatorCalendar *this, int a2, int a3)
{
  v3 = (a3 + -18.0);
  v4 = v3 < a2;
  v5 = v3 >= a2;
  LODWORD(v6) = (a3 + -13.0);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v6;
  }

  return v6 | (v5 << 32);
}

unint64_t Nightingale::phaseFactorProcessor::detectPhaseJDayRange(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v4 == *a3)
  {
    v17 = -1;
  }

  else
  {
    v5 = &v4[-*a3] >> 2;
    v6 = v5;
    v7 = *a3;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[4 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 1);
      v6 += ~(v6 >> 1);
      if (v11 > a2)
      {
        v6 = v8;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v6);
    v12 = ((v7 - v3) >> 2) + 0xFFFFFFFF;
    v4 = *a3;
    do
    {
      v13 = v5 >> 1;
      v14 = &v4[4 * (v5 >> 1)];
      v16 = *v14;
      v15 = (v14 + 1);
      v5 += ~(v5 >> 1);
      if (v16 > SHIDWORD(a2))
      {
        v5 = v13;
      }

      else
      {
        v4 = v15;
      }
    }

    while (v5);
    v17 = v12;
  }

  return (v17 | (((v4 - v3) >> 2) << 32)) - 0x100000000;
}

uint64_t Nightingale::phaseFactorProcessor::detectPhases(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = HIDWORD(a2);
  v8 = Nightingale::phaseFactorProcessor::detectPhaseJDayRange(a1, a2, a4);
  v9 = HIDWORD(v8);
  if (v8 == -1 && v9 == 0xFFFFFFFF && v7 != 0xFFFFFFFF)
  {
    return 0;
  }

  if (v8 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v7 == 0xFFFFFFFF)
  {
    LODWORD(v9) = ((a4[1] - *a4) >> 2) - 1;
  }

  if (v11 <= v9)
  {
    isEndOfAPhase = 0;
    isStartOfAPhase = 0;
    v12 = 0;
    v15 = v11;
    v16 = *a3;
    v17 = a3[1];
    v18 = v9 + 1;
    do
    {
      if (v17 == v16)
      {
        v17 = v16;
      }

      else
      {
        v19 = 0;
        do
        {
          v20 = a4[3];
          if (v15 >= (a4[4] - v20) >> 3)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v22 = *(v20 + 8 * v15);
          v21 = Nightingale::PhaseSet::contains(&v22, *(v16 + v19));
          if (v21)
          {
            if (!isStartOfAPhase)
            {
              isStartOfAPhase = Nightingale::phaseFactorProcessor::isStartOfAPhase(v21, v15, a2, a4, 0);
            }

            v12 = 1;
          }

          else if ((isEndOfAPhase & 1) == 0)
          {
            isEndOfAPhase = Nightingale::phaseFactorProcessor::isEndOfAPhase(v21, v15, a2, a4, 0);
          }

          ++v19;
          v16 = *a3;
          v17 = a3[1];
        }

        while (v17 - *a3 > v19);
      }

      ++v15;
    }

    while (v18 != v15);
  }

  else
  {
    v12 = 0;
    isStartOfAPhase = 0;
    isEndOfAPhase = 0;
  }

  return v12 | (isStartOfAPhase << 8) | (isEndOfAPhase << 16);
}

BOOL Nightingale::phaseFactorProcessor::isStartOfAPhase(uint64_t a1, int a2, uint64_t a3, void *a4, unsigned int a5)
{
  if (a2 >= ((a4[1] - *a4) >> 2))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(*a4 + 4 * a2);
  if (v5 < a3 || v5 > SHIDWORD(a3))
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v7 = a2 - 1;
  v8 = a4[3];
  if (v7 >= (a4[4] - v8) >> 3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return !Nightingale::PhaseSet::contains((v8 + 8 * v7), a5);
}

BOOL Nightingale::phaseFactorProcessor::isEndOfAPhase(uint64_t a1, int a2, uint64_t a3, void *a4, unsigned int a5)
{
  if (a2 >= ((a4[1] - *a4) >> 2))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(*a4 + 4 * a2);
  v6 = v5 >= a3 && v5 <= SHIDWORD(a3);
  if (!v6 || !a2)
  {
    return 0;
  }

  v7 = a2 - 1;
  v8 = a4[3];
  if (v7 >= (a4[4] - v8) >> 3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return (Nightingale::PhaseSet::contains((v8 + 8 * v7), a5) & 1) != 0;
}

uint64_t Nightingale::phaseFactorProcessor::jDayLastEndOfAPhaseSet(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1] - *a2;
  v4 = v3 >> 2;
  if (!(v3 >> 2))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a3;
  v8 = a3[1];
  if (v8 == *a3)
  {
LABEL_7:
    if (v4 >= 2)
    {
      v12 = (v4 - 2);
      while (v8 == v7)
      {
        v8 = v7;
LABEL_19:
        if (v12-- <= 0)
        {
          goto LABEL_25;
        }
      }

      v13 = 0;
      v14 = v12 + 1;
      while (1)
      {
        v15 = a2[3];
        if (v12 >= (a2[4] - v15) >> 3)
        {
          goto LABEL_38;
        }

        if (Nightingale::PhaseSet::contains((v15 + 8 * v12), *(v7 + v13)))
        {
          v16 = a2[3];
          if (v14 >= (a2[4] - v16) >> 3)
          {
            goto LABEL_38;
          }

          if (a3[1] - *a3 <= v13)
          {
LABEL_39:
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          if ((Nightingale::PhaseSet::contains((v16 + 8 * v14), *(*a3 + v13)) & 1) == 0)
          {
            break;
          }
        }

        ++v13;
        v7 = *a3;
        v8 = a3[1];
        if (v8 - *a3 <= v13)
        {
          goto LABEL_19;
        }
      }

      if (v14 >= (a2[1] - *a2) >> 2)
      {
LABEL_40:
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *(*a2 + 4 * v14);
      if (v18 != -1)
      {
        return v18;
      }
    }

LABEL_25:
    v19 = *a3;
    if (a3[1] != *a3)
    {
      v20 = 0;
      v18 = 0xFFFFFFFFLL;
      while (1)
      {
        v21 = a2[3];
        if (a2[4] == v21)
        {
          break;
        }

        if (Nightingale::PhaseSet::contains(v21, *(v19 + v20)))
        {
          v22 = a2[3];
          if ((a2[4] - v22) <= 8)
          {
            break;
          }

          if (a3[1] - *a3 <= v20)
          {
            goto LABEL_39;
          }

          if ((Nightingale::PhaseSet::contains((v22 + 8), *(*a3 + v20)) & 1) == 0)
          {
            if (a2[1] - *a2 <= 4uLL)
            {
              goto LABEL_40;
            }

            v18 = *(*a2 + 4);
          }
        }

        ++v20;
        v19 = *a3;
        if (a3[1] - *a3 <= v20)
        {
          return v18;
        }
      }

LABEL_38:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  v10 = ((v3 << 30) - 0x100000000) >> 32;
  while (1)
  {
    v11 = a2[3];
    if (v10 >= (a2[4] - v11) >> 3)
    {
      goto LABEL_38;
    }

    if (Nightingale::PhaseSet::contains((v11 + 8 * v10), *(v7 + v9)))
    {
      return 4294967294;
    }

    ++v9;
    v7 = *a3;
    v8 = a3[1];
    if (v8 - *a3 <= v9)
    {
      goto LABEL_7;
    }
  }
}

float Nightingale::phaseFactorProcessor::getjDayStartOfAPhasetojDayRangeStart(uint64_t a1, unint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return NAN;
  }

  v7 = a3[3];
  v8 = a3[4];
  if (v7 == v8)
  {
    return NAN;
  }

  v9 = (v5 - v4) >> 2;
  if (v9 != (v8 - v7) >> 3 || v9 < 1)
  {
    return NAN;
  }

  v12 = a2;
  v13 = 0;
  v14 = 0;
  v15 = HIDWORD(a2);
  while (1)
  {
    if (v9 <= v14)
    {
      goto LABEL_23;
    }

    v16 = *(v4 + 4 * v14);
    if (v16 >= v12 && v16 < v15)
    {
      v18 = a3[3];
      if (v14 >= (a3[4] - v18) >> 3)
      {
        goto LABEL_24;
      }

      if (Nightingale::PhaseSet::contains((v18 + v13), a4))
      {
        if (!v14)
        {
          break;
        }

        v19 = a3[3];
        if (v14 - 1 >= (a3[4] - v19) >> 3)
        {
LABEL_24:
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        if ((Nightingale::PhaseSet::contains((v19 + v13 - 8), a4) & 1) == 0)
        {
          break;
        }
      }
    }

    ++v14;
    v4 = *a3;
    v20 = a3[1] - *a3;
    v9 = v20 >> 2;
    v13 += 8;
    if (v14 >= (v20 >> 2))
    {
      return NAN;
    }
  }

  if (v14 >= (a3[1] - *a3) >> 2)
  {
LABEL_23:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return (*(*a3 + 4 * v14) - v12);
}

float Nightingale::phaseFactorProcessor::getjDayEndOfAPhasetojDayRangeEnd(uint64_t a1, unint64_t a2, void *a3, unsigned int a4)
{
  v4 = a3[1];
  if (*a3 == v4)
  {
    return NAN;
  }

  v6 = a3[3];
  v7 = a3[4];
  if (v6 == v7)
  {
    return NAN;
  }

  v8 = v4 - *a3;
  if (v8 >> 2 != (v7 - v6) >> 3 || (v8 >> 2) < 2)
  {
    return NAN;
  }

  v11 = a2;
  v12 = HIDWORD(a2);
  v13 = (v8 >> 2) & 0x7FFFFFFF;
  for (i = 8 * v13 - 16; ; i -= 8)
  {
    v15 = v13 - 1;
    if (v13 - 1 >= ((a3[1] - *a3) >> 2))
    {
      goto LABEL_22;
    }

    v16 = *(*a3 + 4 * v13 - 4);
    if (v16 >= v11 && v16 < v12)
    {
      v18 = a3[3];
      if (v15 >= (a3[4] - v18) >> 3)
      {
        goto LABEL_23;
      }

      if ((Nightingale::PhaseSet::contains((v18 + i + 8), a4) & 1) == 0)
      {
        v19 = a3[3];
        if (v13 - 2 >= ((a3[4] - v19) >> 3))
        {
LABEL_23:
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        if (Nightingale::PhaseSet::contains((v19 + i), a4))
        {
          break;
        }
      }
    }

    --v13;
    if (v15 + 1 <= 2)
    {
      return NAN;
    }
  }

  if (v15 >= (a3[1] - *a3) >> 2)
  {
LABEL_22:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return (v12 - *(*a3 + 4 * v13 - 4));
}