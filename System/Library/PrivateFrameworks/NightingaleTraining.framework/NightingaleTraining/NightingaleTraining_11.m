void sub_25C660904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(&a20);
  Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(&a46);
  Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(&a72);
  Nightingale::fwEstimatorHistOutACycle::~fwEstimatorHistOutACycle(v72);
  Nightingale::fwEstimatorLuna::~fwEstimatorLuna((v73 - 184));
  Nightingale::fwEstimatorOPK::~fwEstimatorOPK((v73 - 136));
  Nightingale::fwEstimatorCalendar::~fwEstimatorCalendar((v73 - 112));
  _Unwind_Resume(a1);
}

void std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<float>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, v5, v3, v4);
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
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }
}

void deviationInput(NgtMenstrualAlgorithmsDeviationInput *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  *a2 = 0;
  a2[4] = 0;
  a2[8] = 0;
  a2[12] = 0;
  a2[16] = 0;
  a2[20] = 0;
  a2[24] = 0;
  a2[28] = 0;
  a2[32] = 0;
  a2[36] = 0;
  a2[40] = 0;
  a2[44] = 0;
  a2[48] = 0;
  a2[52] = 0;
  a2[56] = 0;
  a2[60] = 0;
  if (v3)
  {
    v20 = v3;
    v4 = [(NgtMenstrualAlgorithmsDeviationInput *)v3 julianDayMinAnalysisWindowStartIrregular];
    v5 = julianDayMinAnalysisWindow(v4);
    *a2 = v5;
    a2[4] = BYTE4(v5);

    v6 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowEndIrregular];
    v7 = julianDayMinAnalysisWindow(v6);
    *(a2 + 8) = v7;
    a2[36] = BYTE4(v7);

    v8 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowStartInfrequent];
    v9 = julianDayMinAnalysisWindow(v8);
    *(a2 + 2) = v9;
    a2[12] = BYTE4(v9);

    v10 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowEndInfrequent];
    v11 = julianDayMinAnalysisWindow(v10);
    *(a2 + 10) = v11;
    a2[44] = BYTE4(v11);

    v12 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowStartProlonged];
    v13 = julianDayMinAnalysisWindow(v12);
    *(a2 + 4) = v13;
    a2[20] = BYTE4(v13);

    v14 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowEndProlonged];
    v15 = julianDayMinAnalysisWindow(v14);
    *(a2 + 12) = v15;
    a2[52] = BYTE4(v15);

    v16 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowStartSpotting];
    v17 = julianDayMinAnalysisWindow(v16);
    *(a2 + 6) = v17;
    a2[28] = BYTE4(v17);

    v18 = [(NgtMenstrualAlgorithmsDeviationInput *)v20 julianDayMinAnalysisWindowEndSpotting];
    v19 = julianDayMinAnalysisWindow(v18);
    *(a2 + 14) = v19;
    a2[60] = BYTE4(v19);

    v3 = v20;
  }
}

uint64_t julianDayMinAnalysisWindow(NSNumber *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSNumber *)v1 unsignedIntValue];
    v4 = v3 & 0xFFFFFF00;
    v5 = v3;
    v6 = 0x100000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
  }

  return v6 | v4 | v5;
}

id deviation(uint64_t a1)
{
  if (*a1 != 1 || (*(a1 + 4) & 0x80000000) != 0 || (*(a1 + 8) & 0x80000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    [v2 setJulianDayOfAnalysisWindowStart:*(a1 + 4)];
    [v2 setJulianDayOfAnalysisWindowEnd:*(a1 + 8)];
  }

  return v2;
}

id deviationAnalysis(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = deviation(a1);
  [v2 setIrregularBleeding:v3];

  v4 = deviation(a1 + 12);
  [v2 setInfrequentBleeding:v4];

  v5 = deviation(a1 + 24);
  [v2 setProlongedBleeding:v5];

  v6 = deviation(a1 + 36);
  [v2 setSpotting:v6];

  return v2;
}

void sub_25C6611FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C6617B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C661DFC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C662170(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C6626F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C663480(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C663954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25C663A5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C663D54(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25C664358(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C664838(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25C664E1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25C665498(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25C6659C0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25C666310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  Nightingale::ngt_Config::~ngt_Config(&a34);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void convert_day_input(NgtMenstrualAlgorithmsDayInput *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  v21 = v5;
  *a3 = [(NgtMenstrualAlgorithmsDayInput *)v5 julianDay];
  *(a3 + 4) = [(NgtMenstrualAlgorithmsDayInput *)v21 flow];
  *(a3 + 8) = [(NgtMenstrualAlgorithmsDayInput *)v21 spotting];
  *(a3 + 12) = [(NgtMenstrualAlgorithmsDayInput *)v21 ovulationTestResult];
  v6 = [(NgtMenstrualAlgorithmsDayInput *)v21 sedentaryHeartRateStatistics];
  v7 = [v6 lowerPercentile];

  if (v7)
  {
    v8 = [v6 lowerPercentile];
    [v8 floatValue];
    *(a3 + 16) = v9;
    *(a3 + 20) = 1;

    v10 = [v6 sampleCount];
    *(a3 + 36) = 1;
    *(a3 + 32) = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    *(a3 + 36) = 1;
  }

  v11 = [(NgtMenstrualAlgorithmsDayInput *)v21 sleepHeartRateStatistics];
  v12 = [v11 lowerPercentile];

  if (v12)
  {
    v13 = [v11 lowerPercentile];
    [v13 floatValue];
    *(a3 + 24) = v14;
    *(a3 + 28) = 1;

    v15 = [v11 sampleCount];
    *(a3 + 44) = 1;
    *(a3 + 40) = v15;
  }

  else
  {
    *(a3 + 40) = 0;
    *(a3 + 44) = 1;
  }

  v16 = [(NgtMenstrualAlgorithmsDayInput *)v21 wristTemperature];

  if (v16)
  {
    v17 = [(NgtMenstrualAlgorithmsDayInput *)v21 wristTemperature];
    [v17 temperatureCelsius];
    v19 = v18;

    v20 = v19;
    *(a3 + 48) = a2;
    *(a3 + 52) = v20;
    *(a3 + 56) = 1;
  }
}

uint64_t ngt_phase_to_algs_phase(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_25C666B50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25C6676B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::pair<std::vector<float>,std::vector<float>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_25C667C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = v6;
  MEMORY[0x25F88A130](v7, 0x10B2C40BD969C95);
  Nightingale::ngt_Config::~ngt_Config(va);

  _Unwind_Resume(a1);
}

void sub_25C668004(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

Nightingale::ngt_DayStreamProcessor *std::unique_ptr<Nightingale::ngt_DayStreamProcessor>::reset[abi:ne200100](Nightingale::ngt_DayStreamProcessor **a1, Nightingale::ngt_DayStreamProcessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Nightingale::ngt_DayStreamProcessor::~ngt_DayStreamProcessor(result);

    JUMPOUT(0x25F88A130);
  }

  return result;
}

Nightingale::ngt_HistoricalAnalyzer *std::unique_ptr<Nightingale::ngt_HistoricalAnalyzer>::reset[abi:ne200100](Nightingale::ngt_HistoricalAnalyzer **a1, Nightingale::ngt_HistoricalAnalyzer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Nightingale::ngt_HistoricalAnalyzer::~ngt_HistoricalAnalyzer(result);

    JUMPOUT(0x25F88A130);
  }

  return result;
}

Nightingale::ngt_DayStreamProcessor *Nightingale::ngt_DayStreamProcessor::ngt_DayStreamProcessor(Nightingale::ngt_DayStreamProcessor *this, Nightingale::ngt_Config *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  Nightingale::ngt_Config::ngt_Config((this + 120), a2);
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = this + 488;
  log = ha_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 6;
    strcpy(__p, "4.12.1");
    *buf = 136315138;
    v8 = __p;
    _os_log_impl(&dword_25C4D8000, log, OS_LOG_TYPE_DEFAULT, "DayStreamProcessor: %s,\n", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_25C668764(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(v1 + 480, *(v1 + 488));
  v3 = *(v1 + 456);
  if (v3)
  {
    *(v1 + 464) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 432);
  if (v4)
  {
    *(v1 + 440) = v4;
    operator delete(v4);
  }

  Nightingale::ngt_Config::~ngt_Config((v1 + 120));
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

void Nightingale::ngt_DayStreamProcessor::~ngt_DayStreamProcessor(Nightingale::ngt_DayStreamProcessor *this)
{
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(this + 480, *(this + 61));
  v2 = *(this + 57);
  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v3 = *(this + 54);
  if (v3)
  {
    *(this + 55) = v3;
    operator delete(v3);
  }

  Nightingale::ngt_Config::~ngt_Config(this + 15);
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

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void *Nightingale::ngt_DayStreamProcessor::appendDay(void *result, __int128 *a2)
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

void Nightingale::ngt_DayStreamProcessor::appendPhaseSet(uint64_t *a1, uint64_t a2, int a3)
{
  v25 = a3;
  v4 = a1 + 3;
  if ((a1[4] - a1[3]) <= 0xAB17)
  {
    std::vector<int>::push_back[abi:ne200100](a1 + 3, &v25);
    v7 = a1[7];
    v6 = a1[8];
    if (v7 >= v6)
    {
      v9 = a1[6];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((a1 + 6), v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = a1[6];
      v16 = a1[7] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = a1[6];
      a1[6] = v17;
      a1[7] = v8;
      a1[8] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    a1[7] = v8;
  }

  std::pair<std::vector<int>,std::vector<Nightingale::PhaseSet>>::pair[abi:ne200100]<std::vector<int>&,std::vector<Nightingale::PhaseSet>&,0>(__p, v4, a1 + 6);
  v19 = a1[9];
  if (v19)
  {
    a1[10] = v19;
    operator delete(v19);
  }

  *(a1 + 9) = *__p;
  a1[11] = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v20 = a1[12];
  if (v20)
  {
    a1[13] = v20;
    operator delete(v20);
    v20 = __p[0];
  }

  *(a1 + 6) = v23;
  a1[14] = v24;
  v24 = 0;
  v23 = 0uLL;
  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }
}

void Nightingale::ngt_DayStreamProcessor::analyze(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v147 = *MEMORY[0x277D85DE8];
  Nightingale::PhaseCondenser::phase_updates((a1 + 480), &v89);
  v8 = v89;
  v9 = v90;
  if (v89 != v90)
  {
    do
    {
      Nightingale::ngt_DayStreamProcessor::appendPhaseSet(a1, *v8, *(v8 + 2));
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v89;
  }

  if (v8)
  {
    v90 = v8;
    operator delete(v8);
  }

  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *(a4 + 60) = 0;
  *(a4 + 64) = 0;
  *(a4 + 68) = 0;
  *(a4 + 72) = 0;
  *(a4 + 76) = 0;
  *(a4 + 80) = 0;
  *(a4 + 84) = 0;
  *(a4 + 88) = 0;
  *(a4 + 92) = 0;
  *(a4 + 96) = 0;
  *(a4 + 100) = 0;
  *(a4 + 104) = 0;
  *(a4 + 108) = 0;
  *(a4 + 112) = 0;
  *(a4 + 116) = 0;
  *(a4 + 120) = 0;
  *(a4 + 256) = 0;
  *(a4 + 261) = 0;
  *(a4 + 264) = 0;
  *(a4 + 496) = 0;
  *(a4 + 504) = 0;
  *(a4 + 596) = 0;
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  log = ha_get_log();
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    Nightingale::ngt_DayStreamProcessor::analyze();
  }

  Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(v11, a1, (a1 + 72));
  *(a1 + 160) = a2;
  *(a1 + 164) = BYTE4(a2);
  Nightingale::uiLogProcessor::uiLogProcessor(v145, *(a1 + 168));
  Nightingale::uiLogProcessor::extractCycles(v145, a1, (a1 + 72), a1 + 120, &v141);
  v12 = a1 + 432;
  v13 = *(a1 + 432);
  *(a1 + 440) = v13;
  v14 = a1 + 456;
  *(a1 + 464) = *(a1 + 456);
  if (v141 != v142 && v143 == 1 && (*(a1 + 156) & 1) != 0)
  {
    memset(v138, 0, sizeof(v138));
    std::vector<Nightingale::cycleInfo>::__init_with_size[abi:ne200100]<Nightingale::cycleInfo*,Nightingale::cycleInfo*>(v138, v141, v142, 0xAAAAAAAAAAAAAAABLL * ((v142 - v141) >> 5));
    Nightingale::ngt_DayStreamProcessor::compute_stats(v138, a1 + 120, (a1 + 72), v144, v139);
    v89 = v138;
    std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v89);
    v16 = Nightingale::ngt_DayStreamProcessor::inactiveDetect(v15, &v141, (a1 + 72), *&v139[0], *(a1 + 152));
    v128 = 0;
    v129 = 0;
    memset(&v146[2], 255, 20);
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v48 = v16;
    if (*(a1 + 248) == 1)
    {
      Nightingale::ngt_deviationAnalyzer::ngt_deviationAnalyzer(&v77);
      Nightingale::ngt_deviationAnalyzer::deviation_process(&v77, a1 + 120, a1, &v141, (a1 + 72), a3, &v89);
      v136 = *(&v89 + 1);
      v137 = BYTE3(v89);
      v51 = __PAIR64__(v90, HIDWORD(v89));
      LOBYTE(v60) = BYTE4(v90);
      BYTE4(v60) = v89;
      v134 = *(&v90 + 5);
      v135 = HIBYTE(v90);
      v52 = v91;
      v132 = v93;
      v133 = v94;
      v53 = v95;
      v54 = v96;
      LOBYTE(v59) = v97;
      BYTE4(v59) = v92;
      v131 = v99;
      v130 = v98;
      v55 = v100;
      v129 = v102;
      v128 = v101;
      *&v146[14] = *&v103[14];
      *v146 = *v103;
      v127 = v105;
      v126 = v104;
      v49 = v107;
      v17 = v108;
      v125 = v111;
      v124 = v110;
      v46 = v112;
      v47 = v106;
      v18 = v113;
      v19 = v114;
      v56 = v109;
      v57 = v115;
      v123 = v117;
      v122 = v116;
      v45 = v118;
      v20 = v119;
      v50 = v120;
      v58 = v121;
      Nightingale::ngt_deviationAnalyzer::~ngt_deviationAnalyzer(&v77);
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v49 = -1;
      v50 = -1;
      v20 = -1;
      v57 = -1;
      v58 = -1;
      v19 = -1;
      v18 = -1;
      v56 = -1;
      v17 = -1;
      v54 = -1;
      v55 = -1;
      v53 = -1;
      v52 = -1;
      v51 = -1;
    }

    Nightingale::ngtProjector::ngtProjector(&v89, a1, a1 + 120, &v141, a1 + 72);
    BYTE8(v77) = 0;
    LOBYTE(v78) = 0;
    BYTE8(v78) = 0;
    LOBYTE(v79) = 0;
    BYTE8(v79) = 0;
    BYTE12(v79) = 0;
    LOBYTE(v80) = 0;
    BYTE4(v80) = 0;
    BYTE8(v80) = 0;
    LOBYTE(v81) = 0;
    BYTE8(v81) = 0;
    LOBYTE(v82) = 0;
    BYTE8(v82) = 0;
    BYTE12(v82) = 0;
    LOBYTE(v83) = 0;
    BYTE4(v83) = 0;
    BYTE8(v83) = 0;
    BYTE12(v83) = 0;
    v84[0] = 0;
    v84[4] = 0;
    *&v84[8] = 0;
    *&v84[12] = -4294967291;
    *&v84[20] = 0;
    *&v84[24] = -1;
    *&v85 = -1;
    BYTE8(v85) = 0;
    BYTE12(v85) = 0;
    DWORD1(v86) = -1082130432;
    *(&v86 + 1) = -1;
    *v87 = -1;
    __asm { FMOV            V0.4S, #-1.0 }

    *&v87[8] = _Q0;
    __asm { FMOV            V0.2S, #-1.0 }

    *&v87[24] = _Q0;
    *v88 = 0;
    v88[2] = 0;
    *&v88[4] = xmmword_25C67C5E0;
    *&v88[20] = 9;
    Nightingale::ngtProjector::projector(&v89, a1 + 432, a1 + 456, v145, a3, &v77);
    Nightingale::uiLogProcessor::print_anUILog(v145, &v141);
    v27 = *(a4 + 496);
    v28 = *v88;
    *(a4 + 456) = *&v87[16];
    *(a4 + 472) = v28;
    *(a4 + 488) = *&v88[16];
    v29 = v85;
    *(a4 + 392) = *&v84[16];
    *(a4 + 408) = v29;
    v30 = *v87;
    *(a4 + 424) = v86;
    *(a4 + 440) = v30;
    v31 = v82;
    *(a4 + 328) = v81;
    *(a4 + 344) = v31;
    v32 = *v84;
    *(a4 + 360) = v83;
    *(a4 + 376) = v32;
    v33 = v78;
    *(a4 + 264) = v77;
    *(a4 + 280) = v33;
    v34 = v80;
    *(a4 + 296) = v79;
    *(a4 + 312) = v34;
    if ((v27 & 1) == 0)
    {
      *(a4 + 496) = 1;
    }

    Nightingale::ngt_DayStreamProcessor::printStats();
    LOBYTE(v61) = BYTE4(v60);
    *(&v61 + 1) = v136;
    BYTE3(v61) = v137;
    *(&v61 + 4) = v51;
    BYTE12(v61) = v60;
    *(&v61 + 13) = v134;
    HIBYTE(v61) = v135;
    *&v62 = v52;
    BYTE8(v62) = BYTE4(v59);
    *(&v62 + 9) = v132;
    BYTE11(v62) = v133;
    HIDWORD(v62) = v53;
    LODWORD(v63) = v54;
    BYTE4(v63) = v59;
    BYTE7(v63) = v131;
    *(&v63 + 5) = v130;
    *(&v63 + 1) = v55;
    *&v64[4] = v129;
    *v64 = v128;
    *&v64[20] = *&v146[14];
    *&v64[6] = *v146;
    *&v64[32] = v127;
    *&v64[28] = v126;
    *&v64[34] = v47;
    *&v64[36] = v49;
    *&v64[40] = v17;
    v66 = v125;
    *&v64[44] = v56;
    v65 = v124;
    v67 = v46;
    v68 = v18;
    v69 = v19;
    v72 = v123;
    v70 = v57;
    v71 = v122;
    v73 = v45;
    v74 = v20;
    v75 = v50;
    v76 = v58;
    Nightingale::ngt_DayStreamProcessor::printDeviations(v35, &v61);
    v36 = ha_get_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::analyze();
    }

    *(a4 + 260) = v144;
    if (v12 != a4)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:ne200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>(a4, *(a1 + 432), *(a1 + 440), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 440) - *(a1 + 432)) >> 3));
    }

    if (a4 + 24 != v14)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:ne200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>((a4 + 24), *(a1 + 456), *(a1 + 464), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 464) - *(a1 + 456)) >> 3));
    }

    v37 = v139[3];
    *(a4 + 80) = v139[2];
    *(a4 + 96) = v37;
    *(a4 + 112) = v140;
    v38 = v139[1];
    *(a4 + 48) = v139[0];
    *(a4 + 64) = v38;
    if (*(a1 + 248) == 1)
    {
      v39 = *(a4 + 256);
      *(a4 + 120) = BYTE4(v60);
      *(a4 + 121) = v136;
      *(a4 + 123) = v137;
      *(a4 + 124) = v51;
      *(a4 + 132) = v60;
      *(a4 + 133) = v134;
      *(a4 + 135) = v135;
      *(a4 + 136) = v52;
      *(a4 + 144) = BYTE4(v59);
      v40 = v132;
      *(a4 + 147) = v133;
      *(a4 + 145) = v40;
      *(a4 + 148) = v53;
      *(a4 + 152) = v54;
      *(a4 + 156) = v59;
      *(a4 + 157) = v130;
      *(a4 + 159) = v131;
      *(a4 + 160) = v55;
      *(a4 + 168) = v128;
      *(a4 + 172) = v129;
      *(a4 + 188) = *&v146[14];
      *(a4 + 174) = *v146;
      *(a4 + 200) = v127;
      *(a4 + 196) = v126;
      *(a4 + 202) = v47;
      *(a4 + 204) = v49;
      *(a4 + 208) = v17;
      *(a4 + 220) = v125;
      v41 = v124;
      *(a4 + 212) = v56;
      *(a4 + 216) = v41;
      *(a4 + 222) = v46;
      *(a4 + 224) = v18;
      *(a4 + 228) = v19;
      v42 = v122;
      *(a4 + 240) = v123;
      *(a4 + 232) = v57;
      *(a4 + 236) = v42;
      *(a4 + 242) = v45;
      *(a4 + 244) = v20;
      *(a4 + 248) = v50;
      *(a4 + 252) = v58;
      if ((v39 & 1) == 0)
      {
        *(a4 + 256) = 1;
      }
    }

    *(a4 + 261) = v48;
    Nightingale::ngtProjector::getEnsembleTelemetry(&v89, &v61);
    v43 = *v64;
    *(a4 + 536) = v63;
    *(a4 + 552) = v43;
    *(a4 + 568) = *&v64[16];
    *(a4 + 581) = *&v64[29];
    v44 = v62;
    *(a4 + 504) = v61;
    *(a4 + 520) = v44;
    Nightingale::ngtProjector::~ngtProjector(&v89);
  }

  else
  {
    *(a4 + 260) = 0;
    if (v12 != a4)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:ne200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>(a4, v13, v13, 0);
    }

    if (a4 + 24 != v14)
    {
      std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:ne200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>((a4 + 24), *(a1 + 456), *(a1 + 464), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 464) - *(a1 + 456)) >> 3));
    }

    v21 = ha_get_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::analyze();
    }
  }

  v89 = &v141;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&v89);
  Nightingale::uiLogProcessor::~uiLogProcessor(v145);
}

void sub_25C669450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Nightingale::ngt_deviationAnalyzer::~ngt_deviationAnalyzer(&a39);
  __p = &STACK[0x568];
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  Nightingale::uiLogProcessor::~uiLogProcessor(&STACK[0x5F0]);
  std::pair<std::vector<float>,std::vector<float>>::~pair(v68);
  _Unwind_Resume(a1);
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc(uint64_t a1, uint64_t *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  log = ha_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = ha_get_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6 != v7)
  {
    v69 = a3;
    if (v9)
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = v11 - *a2;
    if (v12 == 60)
    {
LABEL_7:
      v14 = *(v11 - 60);
      v13 = *(v11 - 56);
      v15 = *(v11 - 52);
      v16 = *(v11 - 48);
      v17 = *(v11 - 44);
      v18 = *(v11 - 40);
      v19 = *(v11 - 36);
      v20 = *(v11 - 32);
      v21 = *(v11 - 28);
      v22 = *(v11 - 24);
      v74 = *(v11 - 16);
      v76 = *(v11 - 20);
      v23 = *(v11 - 4);
      v24 = ha_get_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        *v79 = v14;
        *&v79[4] = 1024;
        *&v79[6] = v13;
        *&v79[10] = 1024;
        *&v79[12] = v15 & 1;
        *&v79[16] = 1024;
        *v80 = v16;
        _os_log_debug_impl(&dword_25C4D8000, v24, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, flow: %d, spotting: %d, opk: %d, ", buf, 0x1Au);
      }

      v25 = ha_get_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v65 = v17;
        v66 = -1.0;
        if ((v18 & 1) == 0)
        {
          v65 = -1.0;
        }

        if (v20)
        {
          v66 = v19;
        }

        *buf = 134218752;
        *v79 = v65;
        if (v22)
        {
          v67 = v21;
        }

        else
        {
          v67 = -1;
        }

        *&v79[8] = 2048;
        *&v79[10] = v66;
        *v80 = 1024;
        *&v80[2] = v67;
        v68 = v76;
        if ((v74 & 1) == 0)
        {
          v68 = -1;
        }

        v81 = 1024;
        v82 = v68;
        _os_log_debug_impl(&dword_25C4D8000, v25, OS_LOG_TYPE_DEBUG, "sensor: {aHR: %5.2f, sHR: %5.2f, aHRCnt: %d, sHRCnt: %d, ", buf, 0x22u);
      }

      v26 = ha_get_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
      if (v23)
      {
        a3 = v69;
        if (v27)
        {
          Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
        }
      }

      else
      {
        a3 = v69;
        if (v27)
        {
          Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
        }
      }

      v50 = ha_get_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
      }

      goto LABEL_41;
    }

    v28 = 0;
    v29 = 0xEEEEEEEEEEEEEEEFLL * (v12 >> 2);
    v30 = 56;
    while (1)
    {
      if (v29 <= v28)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v31 = (v10 + v30);
      v33 = *(v31 - 14);
      v32 = *(v31 - 13);
      v34 = *(v31 - 48);
      v35 = *(v31 - 11);
      v36 = *(v31 - 10);
      v37 = *(v31 - 36);
      v38 = *(v31 - 8);
      v71 = *(v31 - 28);
      v72 = *(v31 - 20);
      v75 = *(v31 - 6);
      v77 = *(v31 - 4);
      v73 = *(v31 - 12);
      v70 = *(v31 - 8);
      v39 = *(v31 - 1);
      v40 = *v31;
      v41 = ha_get_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        *v79 = v33;
        *&v79[4] = 1024;
        *&v79[6] = v32;
        *&v79[10] = 1024;
        *&v79[12] = v34 & 1;
        *&v79[16] = 1024;
        *v80 = v35;
        _os_log_debug_impl(&dword_25C4D8000, v41, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, flow: %d, spotting: %d, opk: %d, ", buf, 0x1Au);
      }

      v42 = ha_get_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v46 = v36;
        if ((v37 & 1) == 0)
        {
          v46 = -1.0;
        }

        v47 = v38;
        if ((v71 & 1) == 0)
        {
          v47 = -1.0;
        }

        *buf = 134218752;
        *v79 = v46;
        v48 = v75;
        if ((v72 & 1) == 0)
        {
          v48 = -1;
        }

        *&v79[8] = 2048;
        *&v79[10] = v47;
        *v80 = 1024;
        *&v80[2] = v48;
        v49 = v77;
        if ((v73 & 1) == 0)
        {
          v49 = -1;
        }

        v81 = 1024;
        v82 = v49;
        _os_log_debug_impl(&dword_25C4D8000, v42, OS_LOG_TYPE_DEBUG, "sensor: {aHR: %5.2f, sHR: %5.2f, aHRCnt: %d, sHRCnt: %d,", buf, 0x22u);
      }

      v43 = ha_get_log();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
      if (v40)
      {
        if (v44)
        {
          *buf = 67109376;
          *v79 = v70;
          *&v79[4] = 2048;
          *&v79[6] = v39;
          v45 = v43;
LABEL_36:
          _os_log_debug_impl(&dword_25C4D8000, v45, OS_LOG_TYPE_DEBUG, "wTmp: {watchID: %d, tp: %5.2f}}},\n", buf, 0x12u);
        }
      }

      else if (v44)
      {
        *buf = 67109376;
        *v79 = -1;
        *&v79[4] = 2048;
        *&v79[6] = 0xBFF0000000000000;
        v45 = v43;
        goto LABEL_36;
      }

      ++v28;
      v10 = *a2;
      v11 = a2[1];
      v29 = 0xEEEEEEEEEEEEEEEFLL * ((v11 - *a2) >> 2);
      v30 += 60;
      if (v29 - 1 <= v28)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9)
  {
    Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
  }

LABEL_41:
  v51 = *a3;
  v52 = a3[1];
  v53 = ha_get_log();
  v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);
  if (v51 == v52)
  {
    if (v54)
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }

  else
  {
    if (v54)
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }

    if (a3[1] - *a3 != 4)
    {
      v60 = 0;
      do
      {
        v61 = ha_get_log();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          if (v60 >= (a3[1] - *a3) >> 2)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v62 = a3[3];
          if (v60 >= (a3[4] - v62) >> 3)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v63 = *(*a3 + 4 * v60);
          v64 = *(v62 + 8 * v60);
          *buf = 67109376;
          *v79 = v63;
          *&v79[4] = 1024;
          *&v79[6] = v64;
          _os_log_debug_impl(&dword_25C4D8000, v61, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, phase: %d}, \n", buf, 0xEu);
        }

        ++v60;
      }

      while (((a3[1] - *a3) >> 2) - 1 > v60);
    }

    v55 = ha_get_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }

    v56 = ha_get_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
    }
  }

  v57 = ha_get_log();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
  }

  v58 = ha_get_log();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
  }

  v59 = ha_get_log();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc();
  }
}

void Nightingale::ngt_DayStreamProcessor::compute_stats(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, char a4@<W4>, _BYTE *a5@<X8>)
{
  *a5 = 0;
  a5[4] = 0;
  a5[8] = 0;
  a5[12] = 0;
  a5[16] = 0;
  a5[20] = 0;
  a5[24] = 0;
  a5[28] = 0;
  a5[32] = 0;
  a5[36] = 0;
  a5[40] = 0;
  a5[44] = 0;
  a5[48] = 0;
  a5[52] = 0;
  a5[56] = 0;
  a5[60] = 0;
  a5[64] = 0;
  a5[68] = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  if (*(a2 + 36) != 1)
  {
    return;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 == v8)
  {
    return;
  }

  v10 = *(a2 + 32);
  if (v10 < 365 || v10 < *(v8 - 24))
  {
    return;
  }

  v12 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  do
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((*(a2 + 32) - *v7) <= 0x16C)
    {
      std::vector<int>::push_back[abi:ne200100](&v63, &v62);
      v12 = v62;
    }

    v62 = ++v12;
    v7 += 24;
  }

  while (v7 != v8);
  v13 = v63;
  v14 = v64;
  if (v63 != v64)
  {
    v50 = a4;
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a1) >> 5);
    v18 = v63;
    v19 = a3;
    if (v17 - 1 == *(v64 - 1))
    {
      *(a5 + 16) = *(v16 - 96);
      a5[68] = 1;
      v18 = v13;
    }

    while (1)
    {
      v20 = *v18;
      if (v17 <= v20)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v21 = &v15[24 * v20];
      if (*(v21 + 24) == 1)
      {
        break;
      }

      if (++v18 == v14)
      {
        goto LABEL_18;
      }
    }

    *(a5 + 14) = *v21;
    a5[60] = 1;
LABEL_18:
    __src = 0;
    v60 = 0;
    v61 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    do
    {
      v22 = *v13;
      v23 = *a1;
      v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
      if (v24 <= v22)
      {
        goto LABEL_65;
      }

      if (LOBYTE(v23[24 * v22 + 2]) == 1)
      {
        v55 = v23[24 * v22 + 1] - v23[24 * v22] + 1;
        std::vector<int>::push_back[abi:ne200100](&v56, &v55);
        v22 = *v13;
        v23 = *a1;
        v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
      }

      if (v24 <= v22)
      {
LABEL_65:
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v25 = &v23[24 * v22];
      if (*(v25 + 24) == 1)
      {
        v26 = *v25;
        v27 = v25[5];
        LOBYTE(v55) = 0;
        v53 = 0;
        v54 = 0;
        __p = 0;
        std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v55, &v55 + 1, 1);
        v28 = Nightingale::phaseFactorProcessor::detectPhases(&v66, v26 | (v27 << 32), &__p, v19);
        if (__p)
        {
          v53 = __p;
          operator delete(__p);
        }

        if (!v28)
        {
          v29 = v27 - v26 + 1;
          v30 = v60;
          if (v60 >= v61)
          {
            v32 = __src;
            v33 = v60 - __src;
            v34 = (v60 - __src) >> 2;
            v35 = v34 + 1;
            if ((v34 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v36 = v61 - __src;
            if ((v61 - __src) >> 1 > v35)
            {
              v35 = v36 >> 1;
            }

            v37 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
            v38 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v37)
            {
              v38 = v35;
            }

            if (v38)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v38);
            }

            *(4 * v34) = v29;
            v31 = 4 * v34 + 4;
            memcpy(0, v32, v33);
            v39 = __src;
            __src = 0;
            v60 = v31;
            v61 = 0;
            if (v39)
            {
              operator delete(v39);
            }

            v19 = a3;
          }

          else
          {
            *v60 = v29;
            v31 = (v30 + 4);
          }

          v60 = v31;
        }
      }

      ++v13;
    }

    while (v13 != v14);
    if ((v50 & 1) != 0 && v57 != v56)
    {
      v57 -= 4;
    }

    v40 = v60 - __src;
    if (v60 != __src)
    {
      std::__sort<std::__less<int,int> &,int *>();
      v41 = __src;
      v42 = (__src + 4 * ((v40 >> 2) >> 1));
      if ((v40 & 4) != 0)
      {
        v43 = *v42;
      }

      else
      {
        v43 = llroundf(vcvts_n_f32_s32(*v42 + *(v42 - 1), 1uLL));
      }

      a5[4] = 1;
      *a5 = v43;
      v44 = (v40 >> 2) - 1;
      *(a5 + 8) = v41[llround(vcvtd_n_f64_u64(v44, 3uLL))];
      a5[36] = 1;
      *(a5 + 10) = v41[llround(v44 * 0.875)];
      a5[44] = 1;
    }

    v45 = v56;
    v46 = v57 - v56;
    if (v57 == v56)
    {
      *(a5 + 12) = v40 >> 2;
      a5[52] = 1;
      if (!v45)
      {
        goto LABEL_57;
      }
    }

    else
    {
      std::__sort<std::__less<int,int> &,int *>();
      v45 = v56;
      v47 = v56 + 4 * ((v46 >> 2) >> 1);
      if ((v46 & 4) != 0)
      {
        *(a5 + 2) = *v47;
        a5[12] = 1;
      }

      else
      {
        v48 = vcvts_n_f32_s32(*v47 + *(v47 - 1), 1uLL);
        a5[12] = 1;
        *(a5 + 2) = llroundf(v48);
      }

      v49 = (v46 >> 2) - 1;
      *(a5 + 4) = v45[llround(vcvtd_n_f64_u64(v49, 3uLL))];
      a5[20] = 1;
      *(a5 + 6) = v45[llround(v49 * 0.875)];
      a5[28] = 1;
      *(a5 + 12) = v40 >> 2;
      a5[52] = 1;
    }

    v57 = v45;
    operator delete(v45);
LABEL_57:
    if (__src)
    {
      v60 = __src;
      operator delete(__src);
    }

    v13 = v63;
  }

  if (v13)
  {
    v64 = v13;
    operator delete(v13);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_25C66A104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

BOOL Nightingale::ngt_DayStreamProcessor::inactiveDetect(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x100000000) == 0)
  {
    return 0;
  }

  if (*(a2 + 60) != 1 || (a5 & 0x100000000) == 0)
  {
    return 0;
  }

  v9 = a4;
  v11 = *(a2 + 56);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0;
  v32 = 0;
  v33 = 0;
  __p = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&__p, &v30, &__p, 1);
  v12 = Nightingale::phaseFactorProcessor::detectPhases(&v34, (a5 + 4294967235) | 0xFFFFFFFF00000000, &__p, a3);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  v30 = 1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v27, &v30, &__p, 1);
  v13 = Nightingale::phaseFactorProcessor::detectPhases(&v34, (a5 - 61) | (a5 << 32), &v27, a3);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  v30 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v24, &v30, &__p, 1);
  v14 = Nightingale::phaseFactorProcessor::detectPhases(&v34, a5 | 0xFFFFFFFF00000000, &v24, a3);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  v30 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase const*,Nightingale::Phase const*>(&v21, &v30, &__p, 1);
  v15 = Nightingale::phaseFactorProcessor::detectPhases(&v34, (a5 - 181) | (a5 << 32), &v21, a3);
  v16 = a5 - v11;
  v17 = 2 * v9;
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v16 >= v17)
  {
    v18 = ~v12;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 & ~v14;
  v20 = v15 ^ 1;
  if ((v13 & 1) == 0)
  {
    v20 = 1;
  }

  v7 = (v19 & v20) != 0;
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v7;
}

void sub_25C66A39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngt_DayStreamProcessor::printStats()
{
  log = ha_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v1 = ha_get_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v2 = ha_get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v3 = ha_get_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v4 = ha_get_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v5 = ha_get_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v6 = ha_get_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v7 = ha_get_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v8 = ha_get_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v9 = ha_get_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }

  v10 = ha_get_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printStats();
  }
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printDeviations(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  log = ha_get_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printDeviations();
  }

  v4 = ha_get_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printDeviations();
  }

  v5 = ha_get_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printDeviations();
  }

  v6 = ha_get_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printDeviations();
  }

  v7 = ha_get_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printDeviations();
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 49);
  v10 = *(a2 + 50);
  v11 = *(a2 + 51);
  v12 = *(a2 + 52);
  v13 = *(a2 + 53);
  v14 = *(a2 + 56);
  v15 = ha_get_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a2 + 60);
    v42 = *(a2 + 64);
    v43 = *(a2 + 68);
    v44 = *(a2 + 72);
    v51 = 67111680;
    v52 = v8 & 1;
    v53 = 1024;
    v54 = v9 & 1;
    v55 = 1024;
    v56 = v10 & 1;
    v57 = 1024;
    v58 = v11 & 1;
    v59 = 1024;
    v60 = v12 & 1;
    v61 = 1024;
    v62 = v13 & 1;
    v63 = 1024;
    v64 = v14;
    v65 = 1024;
    v66 = v41;
    v67 = 1024;
    v68 = v42;
    v69 = 1024;
    v70 = v43;
    v71 = 1024;
    v72 = v44;
    _os_log_debug_impl(&dword_25C4D8000, v15, OS_LOG_TYPE_DEBUG, "irregMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, win1CycleLenDiff: %d, win2CycleLenDiff: %d, win1NumCycles: %d, win2NumCycles: %d},\n", &v51, 0x44u);
  }

  v16 = *(a2 + 76);
  v17 = *(a2 + 77);
  v18 = *(a2 + 78);
  v19 = *(a2 + 79);
  v20 = *(a2 + 80);
  v21 = *(a2 + 81);
  v22 = *(a2 + 84);
  v23 = ha_get_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a2 + 88);
    v46 = *(a2 + 92);
    v51 = 67111168;
    v52 = v16 & 1;
    v53 = 1024;
    v54 = v17 & 1;
    v55 = 1024;
    v56 = v18 & 1;
    v57 = 1024;
    v58 = v19 & 1;
    v59 = 1024;
    v60 = v20 & 1;
    v61 = 1024;
    v62 = v21 & 1;
    v63 = 1024;
    v64 = v22;
    v65 = 1024;
    v66 = v45;
    v67 = 1024;
    v68 = v46;
    _os_log_debug_impl(&dword_25C4D8000, v23, OS_LOG_TYPE_DEBUG, "infreqMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, win1NumPeriods: %d, win2NumPeriods: %d}, \n", &v51, 0x38u);
  }

  v24 = *(a2 + 96);
  v25 = *(a2 + 97);
  v26 = *(a2 + 98);
  v27 = *(a2 + 99);
  v28 = *(a2 + 100);
  v29 = *(a2 + 101);
  v30 = *(a2 + 104);
  v31 = ha_get_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(a2 + 108);
    v47 = *(a2 + 112);
    v51 = 67111168;
    v52 = v24 & 1;
    v53 = 1024;
    v54 = v25 & 1;
    v55 = 1024;
    v56 = v26 & 1;
    v57 = 1024;
    v58 = v27 & 1;
    v59 = 1024;
    v60 = v28 & 1;
    v61 = 1024;
    v62 = v29 & 1;
    v63 = 1024;
    v64 = v30;
    v65 = 1024;
    v66 = v47;
    v67 = 1024;
    v68 = v48;
    _os_log_debug_impl(&dword_25C4D8000, v31, OS_LOG_TYPE_DEBUG, "prolongMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, numLongPeriodsDetected: %d, numPeriodsUsed: %d}, \n", &v51, 0x38u);
  }

  v32 = *(a2 + 116);
  v33 = *(a2 + 117);
  v34 = *(a2 + 118);
  v35 = *(a2 + 119);
  v36 = *(a2 + 120);
  v37 = *(a2 + 121);
  v38 = *(a2 + 124);
  v39 = ha_get_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v49 = *(a2 + 128);
    v50 = *(a2 + 132);
    v51 = 67111168;
    v52 = v32 & 1;
    v53 = 1024;
    v54 = v33 & 1;
    v55 = 1024;
    v56 = v34 & 1;
    v57 = 1024;
    v58 = v35 & 1;
    v59 = 1024;
    v60 = v36 & 1;
    v61 = 1024;
    v62 = v37 & 1;
    v63 = 1024;
    v64 = v38;
    v65 = 1024;
    v66 = v49;
    v67 = 1024;
    v68 = v50;
    _os_log_debug_impl(&dword_25C4D8000, v39, OS_LOG_TYPE_DEBUG, "spottingMeta: {common: {bfrRule: %d, minWS: %d, minWE: %d,enough: %d, washout: %d,inWin: %d,age: %d}, win1NumSpottingDays: %d, win2NumSpottingDays: %d}", &v51, 0x38u);
  }

  v40 = ha_get_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    Nightingale::ngt_DayStreamProcessor::printDeviations();
  }
}

void *std::vector<Nightingale::ngt_Prediction>::__assign_with_size[abi:ne200100]<Nightingale::ngt_Prediction*,Nightingale::ngt_Prediction*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x276276276276276)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x13B13B13B13B13BLL)
      {
        v11 = 0x276276276276276;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Nightingale::ngt_Prediction>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<Nightingale::ngt_Prediction>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Nightingale::ngt_Prediction>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t Nightingale::fwPredictorWrapper_t::init(Nightingale::fwPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  v5 = *(a2 + 30);
  v3 = a2 + 240;
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
  if (v11)
  {
    [v11 setComputeUnits:0];
    v25 = 0;
    v12 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_286E2EBB0 dataType:65600 error:&v25];
    v13 = v25;
    v14 = *this;
    *this = v12;

    if (*this)
    {
      v15 = [model_fwEnd_10pct alloc];
      v16 = *(this + 2);
      v24 = v13;
      v17 = [(model_fwEnd_10pct *)v15 initWithContentsOfURL:v8 configuration:v16 error:&v24];
      v18 = v24;

      v19 = *(this + 4);
      *(this + 4) = v17;

      if (v18)
      {
        v20 = 0;
        v13 = v18;
      }

      else
      {
        v21 = [[model_fwEnd_10pctInput alloc] initWithIn:*this lstm_1_h_in:0 lstm_1_c_in:0];
        v22 = *(this + 3);
        *(this + 3) = v21;

        v13 = 0;
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v13 = 0;
  }

  return v20;
}

uint64_t Nightingale::fwPredictorWrapper_t::predictFW(uint64_t a1, uint64_t **a2, const void **a3)
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
  v19 = v51;
  v20 = [*a1 dataPointer];
  if (v19 != v8)
  {
    memmove(v20, v8, v19 - v8);
  }

  v21 = [*(a1 + 32) model];
  v22 = *(a1 + 24);
  v49 = 0;
  v48 = [v21 predictionFromFeatures:v22 error:&v49];
  v47 = v49;

  v23 = [model_fwEnd_10pctOutput alloc];
  v24 = [v48 featureValueForName:@"out"];
  v25 = [v24 multiArrayValue];
  v26 = [v48 featureValueForName:@"lstm_1_h_out"];
  v27 = [v26 multiArrayValue];
  v28 = [v48 featureValueForName:@"lstm_1_c_out"];
  v29 = [v28 multiArrayValue];
  v30 = [(model_fwEnd_10pctOutput *)v23 initWithOut:v25 lstm_1_h_out:v27 lstm_1_c_out:v29];

  for (i = 0; i != 32; ++i)
  {
    v32 = [(model_fwEnd_10pctOutput *)v30 out];
    v33 = [v32 objectAtIndexedSubscript:i];
    [v33 doubleValue];
    v35 = v34;
    v37 = a3[1];
    v36 = a3[2];
    if (v37 >= v36)
    {
      v39 = *a3;
      v40 = v37 - *a3;
      v41 = v40 >> 2;
      v42 = (v40 >> 2) + 1;
      if (v42 >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v43 = v36 - v39;
      if (v43 >> 1 > v42)
      {
        v42 = v43 >> 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v44 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v44);
      }

      *(4 * v41) = v35;
      v38 = 4 * v41 + 4;
      memcpy(0, v39, v40);
      v45 = *a3;
      *a3 = 0;
      a3[1] = v38;
      a3[2] = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v37 = v35;
      v38 = (v37 + 1);
    }

    a3[1] = v38;
  }

  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25C66B148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Nightingale::fwPredictorWrapper_t::fwPredictorWrapper_t(Nightingale::fwPredictorWrapper_t *this)
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

float Nightingale::vVar<float>(float *a1, int a2, char a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (a2 < 1)
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0.0;
  v5 = a1;
  v6 = a2;
  do
  {
    v7 = *v5++;
    v8 = v4 + v7;
    v9 = LODWORD(v7) & 0x7FFFFFFF;
    if ((LODWORD(v7) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v8;
    }

    if (v9 < 2139095040)
    {
      ++v3;
    }

    --v6;
  }

  while (v6);
  if (v3)
  {
    v10 = v4 / v3;
  }

  else
  {
LABEL_11:
    v10 = NAN;
  }

  v11 = 0;
  v12 = a2;
  result = 0.0;
  do
  {
    v14 = *a1++;
    v15 = v14 - v10;
    v16 = LODWORD(v14) & 0x7FFFFFFF;
    if ((LODWORD(v14) & 0x7FFFFFFFu) < 0x7F800000)
    {
      result = result + (v15 * v15);
    }

    if (v16 < 2139095040)
    {
      ++v11;
    }

    --v12;
  }

  while (v12);
  if (a3)
  {
    if (a2 == 1)
    {
      return result;
    }

    v17 = (v11 - 1);
  }

  else
  {
    v17 = v11;
  }

  return result / v17;
}

float Nightingale::vMean<float>(float *a1, int a2)
{
  if (a2 < 1)
  {
    return NAN;
  }

  v2 = 0;
  v3 = a2;
  v4 = 0.0;
  do
  {
    v5 = *a1++;
    v6 = v4 + v5;
    v7 = LODWORD(v5) & 0x7FFFFFFF;
    if ((LODWORD(v5) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v6;
    }

    if (v7 < 2139095040)
    {
      ++v2;
    }

    --v3;
  }

  while (v3);
  if (v2)
  {
    return v4 / v2;
  }

  else
  {
    return NAN;
  }
}

double Nightingale::vVar<double>(float *a1, int a2, char a3)
{
  if (!a2)
  {
    return 0.0;
  }

  if (a2 < 1)
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0.0;
  v5 = a1;
  v6 = a2;
  do
  {
    v7 = *v5++;
    v8 = LODWORD(v7) & 0x7FFFFFFF;
    v9 = v4 + v7;
    if ((LODWORD(v7) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v9;
    }

    if (v8 < 2139095040)
    {
      ++v3;
    }

    --v6;
  }

  while (v6);
  if (v3)
  {
    v10 = v4 / v3;
  }

  else
  {
LABEL_11:
    v10 = NAN;
  }

  v11 = 0;
  v12 = a2;
  result = 0.0;
  do
  {
    v14 = *a1++;
    v15 = LODWORD(v14) & 0x7FFFFFFF;
    v16 = result + (v14 - v10) * (v14 - v10);
    if ((LODWORD(v14) & 0x7FFFFFFFu) < 0x7F800000)
    {
      result = v16;
    }

    if (v15 < 2139095040)
    {
      ++v11;
    }

    --v12;
  }

  while (v12);
  if (a3)
  {
    if (a2 == 1)
    {
      return result;
    }

    v17 = (v11 - 1);
  }

  else
  {
    v17 = v11;
  }

  return result / v17;
}

double Nightingale::vMean<double>(float *a1, int a2)
{
  if (a2 < 1)
  {
    return NAN;
  }

  v2 = 0;
  v3 = a2;
  v4 = 0.0;
  do
  {
    v5 = *a1++;
    v6 = LODWORD(v5) & 0x7FFFFFFF;
    v7 = v4 + v5;
    if ((LODWORD(v5) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v7;
    }

    if (v6 < 2139095040)
    {
      ++v2;
    }

    --v3;
  }

  while (v3);
  if (v2)
  {
    return v4 / v2;
  }

  else
  {
    return NAN;
  }
}

float Nightingale::vMedian<float>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, a1, a1 + 4 * a2, a2);
  if (4 * (a2 / 2) != -4)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, __p + a2 / 2 + 1, v7, &v9);
  }

  v3 = (__p + 4 * ((a2 + (a2 >> 31)) >> 1));
  if (a2)
  {
    v4 = *v3;
  }

  else
  {
    v4 = (*(v3 - 1) + *v3) * 0.5;
  }

  v7 = __p;
  operator delete(__p);
  return v4;
}

void sub_25C66B518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double Nightingale::vMedian<double>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, a1, a1 + 4 * a2, a2);
  if (4 * (a2 / 2) != -4)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, __p + a2 / 2 + 1, v8, &v10);
  }

  v3 = (__p + 4 * ((a2 + (a2 >> 31)) >> 1));
  if (a2)
  {
    v4 = *v3;
  }

  else
  {
    v4 = (*(v3 - 1) + *v3) * 0.5;
  }

  v5 = v4;
  v8 = __p;
  operator delete(__p);
  return v5;
}

void sub_25C66B5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::getLowRangeStartDur@<X0>(float a1@<S0>, float a2@<S1>, uint64_t a3@<X8>)
{
  LODWORD(a3) = llroundf(a1);
  LODWORD(v4) = llround((a2 - a1) + 1.0);
  return a3 | (v4 << 32);
}

uint64_t Nightingale::getIdxOfMinValFromVec(int **a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v2 + 1;
  v4 = *a1;
  if (v2 + 1 != v1)
  {
    v5 = *v2;
    v4 = *a1;
    v6 = v2 + 1;
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < v5)
      {
        v5 = v7;
        v4 = v3;
      }

      v3 = v6;
    }

    while (v6 != v1);
  }

  v9 = 0;
  v10 = *v4;
  while (*v2 != v10)
  {
    ++v2;
    ++v9;
    if (v2 == v1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      return v12 | v11 | v13;
    }
  }

  v15 = v2 == v1;
  v12 = v9;
  v11 = 0x100000000;
  if (v15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = v9 & 0xFFFFFF00;
  }

  return v12 | v11 | v13;
}

void Nightingale::getVarianceWin(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v5 - *a1;
  if (v6 == 4)
  {
    if (v4 == v5 || *v4 == a2)
    {
      return;
    }
  }

  else if (v4 == v5)
  {
    return;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v4, v5, v6 >> 2);
  Mean = Nightingale::getMeanWin<float>(&__p, a2);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  v9 = *(a1 + 8);
  v10 = *a1;
  v11 = a2;
  if (v9 != *a1)
  {
    v12 = 0;
    v13 = *a1;
    do
    {
      v14 = *v13++;
      if (v14 == v11)
      {
        ++v12;
      }
    }

    while (v13 != v9);
    if (((v9 - *a1) >> 2) != v12)
    {
      v15 = 0.0;
      while (v10 != v9)
      {
        v16 = *v10++;
        v17 = v15 + ((v16 - Mean) * (v16 - Mean));
        if (vabds_f32(v16, v11) >= 1.0e-12)
        {
          v15 = v17;
        }
      }
    }
  }
}

void sub_25C66B7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::pooledVar2Win(float **a1, float **a2, int a3)
{
  v4 = a1[1];
  v5 = *a1;
  if (*a1 != v4)
  {
    v7 = a2[1];
    v8 = *a2;
    if (*a2 != v7)
    {
      v9 = 0;
      v10 = (v4 - v5) >> 2;
      v11 = a3;
      do
      {
        v12 = *v5++;
        if (v12 == v11)
        {
          ++v9;
        }
      }

      while (v5 != v4);
      v13 = 0;
      v14 = (v7 - v8) >> 2;
      do
      {
        v15 = *v8++;
        if (v15 == v11)
        {
          ++v13;
        }
      }

      while (v8 != v7);
      if (v10 != v9 && v14 != v13 && v14 - v13 + v10 - v9 >= 3)
      {
        Nightingale::getVarianceWin(a1, a3);
        Nightingale::getVarianceWin(a2, a3);
      }
    }
  }
}

uint64_t Nightingale::getMeanDiffOf2Windows(uint64_t *a1, uint64_t *a2, float a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    v10 = 0;
  }

  else
  {
    v7 = 0.0;
    v8 = *a1;
    do
    {
      v9 = *v8++;
      v7 = v7 + v9;
    }

    while (v8 != v6);
    v10 = v7;
  }

  v11 = a2[1];
  if (*a2 == v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = 0.0;
    v13 = *a2;
    do
    {
      v14 = *v13++;
      v12 = v12 + v14;
    }

    while (v13 != v11);
    v15 = v12;
  }

  v16 = (v6 - v5) >> 2;
  if (v10 == (v16 * a3) || v15 == (((v11 - *a2) >> 2) * a3))
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v5, v6, v16);
    Mean = Nightingale::getMeanWin<float>(&__p, a3);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v22, *a2, a2[1], (a2[1] - *a2) >> 2);
    v20 = Nightingale::getMeanWin<float>(&v22, a3);
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    v17 = 0x100000000;
    if (Mean != a3 && v20 != a3)
    {
      v18 = COERCE_UNSIGNED_INT(v20 - Mean);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  return v18 | v17;
}

void sub_25C66BAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    *v12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float Nightingale::getSlidingWinScore(uint64_t *a1, uint64_t *a2, float a3)
{
  v3 = a3;
  MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(a1, a2, a3);
  if ((MeanDiffOf2Windows & 0x100000000) != 0)
  {
    return 1.0 / (expf(-*&MeanDiffOf2Windows) + 1.0);
  }

  return v3;
}

float Nightingale::getSmoothedPow_aSample(float **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  result = -1.0;
  if (v3 != -1.0)
  {
    v5 = v2[1];
    if (v5 != -1.0)
    {
      v6 = v2[2];
      if (v6 != -1.0)
      {
        v7 = (v5 * *(*a2 + 4)) + (v3 * **a2);
        return (v7 + (v6 * *(*a2 + 8))) * (v7 + (v6 * *(*a2 + 8)));
      }
    }
  }

  return result;
}

uint64_t Nightingale::getMissingCnt(float **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = *v1++;
    if (v4 >= 0.0)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }
  }

  while (v1 != v2);
  return result;
}

BOOL Nightingale::passMissingRateASlice(float **a1, double a2, float a3)
{
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  do
  {
    v6 = *v5++;
    if (v6 < 0.0)
    {
      ++v4;
    }
  }

  while (v5 != v3);
  return ((v3 - *a1) * a3) >= v4;
}

uint64_t Nightingale::checkNumTmpSwitches(float **a1, int a2, float a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *v3;
  while (1)
  {
    v7 = v6;
    v6 = *v3;
    if (vabds_f32(*v3, v7) >= a3)
    {
      break;
    }

LABEL_6:
    if (++v3 == v4)
    {
      return 0;
    }
  }

  if (v5 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  return 1;
}

long double Nightingale::gaussian_pdf(Nightingale *this, double a2, double a3, double a4)
{
  if (a4 != 0.0)
  {
    return 1.0 / sqrt(a4 * 6.28318531) * exp(-((a2 - a3) * (a2 - a3)) / (a4 + a4));
  }

  v4 = round(a3) == a2;
  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

long double Nightingale::gamma_pdf(Nightingale *this, long double a2, double a3, double a4)
{
  v5 = a3 / a4;
  v6 = a3 * a3 / a4;
  v7 = pow(a3 / a4, v6);
  v8 = v7 * pow(a2, v6 + -1.0);
  v9 = exp(-(v5 * a2)) * v8;
  return v9 / tgamma(v6);
}

void Nightingale::get_cdf(float **a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 - *a1;
  *(a2 + 8) = *a2;
  if (a3)
  {
    v8 = a1[1];
    v9 = 0.0;
    if (v6 != v8)
    {
      v10 = v6;
      do
      {
        v11 = *v10++;
        v9 = v9 + v11;
      }

      while (v10 != v8);
    }

    if (v5 != v6)
    {
      v12 = 0;
      if (v7 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v7;
      }

      do
      {
        v14 = v9;
        v20 = v14;
        std::vector<float>::push_back[abi:ne200100](a2, &v20);
        v9 = v9 - (*a1)[v12++];
      }

      while (v13 != v12);
    }
  }

  else if (v5 != v6)
  {
    v15 = 0;
    if (v7 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v7;
    }

    v17 = 0.0;
    do
    {
      v17 = v17 + (*a1)[v15];
      v18 = v17;
      v19 = v18;
      std::vector<float>::push_back[abi:ne200100](a2, &v19);
      ++v15;
    }

    while (v16 != v15);
  }
}

double Nightingale::get_mad(float **a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = v3 - v2;
  if (v3 == v2)
  {
    return 0.0;
  }

  v6 = v5 >> 2;
  if (!a2)
  {
    Nightingale::vMedian<double>();
  }

  if ((v5 >> 2) < 1)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = (v5 >> 2) & 0x7FFFFFFF;
  v9 = 0.0;
  v10 = v2;
  do
  {
    v11 = *v10++;
    v12 = v9 + v11;
    if ((LODWORD(v11) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v9 = v12;
      ++v7;
    }

    --v8;
  }

  while (v8);
  if (v7)
  {
    v13 = v9 / v7;
  }

  else
  {
LABEL_12:
    v13 = NAN;
  }

  if (v6 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v6;
  }

  v16 = 0.0;
  do
  {
    v17 = *v2++;
    v16 = v16 + vabdd_f64(v17, v13);
    --v15;
  }

  while (v15);
  return v16 / v6;
}

void sub_25C66C018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::convolve(void *a1, float **a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 2;
  v5 = *a2;
  v4 = a2[1];
  *(a3 + 8) = *a3;
  if (v3)
  {
    v9 = 0;
    v10 = (v4 - v5) >> 2;
    v11 = 1;
    do
    {
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      if (v10)
      {
        v13 = *a2;
        v14 = 0.0;
        v15 = v9;
        do
        {
          v16 = *v13++;
          v14 = v14 + (*(*a1 + 4 * v15--) * v16);
          --v12;
        }

        while (v12);
        v17 = v14;
      }

      else
      {
        v17 = 0.0;
      }

      ++v9;
      v18 = v17;
      std::vector<float>::push_back[abi:ne200100](a3, &v18);
      ++v11;
    }

    while (v9 != v3);
  }
}

void Nightingale::convolve_on_top(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v6 = a1[1];
  *(a3 + 8) = *a3;
  v8 = v6 - v7;
  if (v8)
  {
    v40 = v4;
    v41 = v5;
    v12 = v8 >> 2;
    if ((v8 >> 2) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v8 >> 2;
    }

    if (a4)
    {
      v14 = 0;
      v15 = 0;
      v16 = v8 >> 2;
      do
      {
        v17 = v12 - v15;
        v18 = *a2;
        v19 = (*(a2 + 8) - *a2) >> 2;
        if (v19 < v12 - v15)
        {
          v17 = (*(a2 + 8) - *a2) >> 2;
        }

        if (v17)
        {
          if (v19 >= v16)
          {
            v19 = v16;
          }

          v20 = (*a1 + v14);
          v21 = 0.0;
          do
          {
            v22 = *v20++;
            v23 = v22;
            v24 = *v18++;
            v21 = v21 + (v23 * v24);
            --v19;
          }

          while (v19);
          v25 = v21;
        }

        else
        {
          v25 = 0.0;
        }

        v38 = v25;
        std::vector<float>::push_back[abi:ne200100](a3, &v38);
        ++v15;
        --v16;
        v14 += 4;
      }

      while (v15 != v13);
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = *a2;
        v30 = *(a2 + 8) - *a2;
        if (v30)
        {
          v31 = v30 >> 2;
          if (v31 >= v28)
          {
            v31 = v28;
          }

          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = (*a1 + v26);
          v33 = 0.0;
          do
          {
            v34 = *v32--;
            v35 = v34;
            v36 = *v29++;
            v33 = v33 + (v35 * v36);
            --v31;
          }

          while (v31);
          v37 = v33;
        }

        else
        {
          v37 = 0.0;
        }

        ++v27;
        v39 = v37;
        std::vector<float>::push_back[abi:ne200100](a3, &v39);
        ++v28;
        v26 += 4;
      }

      while (v27 != v13);
    }
  }
}

uint64_t Nightingale::assertVectorOfVectors(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = v1[1];
    if (*v1 != v3)
    {
      v4 = ((v3 - *v1) >> 2);
      while (1)
      {
        v5 = v1[1];
        if (*v1 == v5 || v4 != (v5 - *v1) >> 2)
        {
          break;
        }

        v1 += 3;
        if (v1 == v2)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t Nightingale::getSubVecLenVecOfVecs(uint64_t a1)
{
  result = Nightingale::assertVectorOfVectors(a1);
  if (result)
  {
    return (*(*a1 + 8) - **a1) >> 2;
  }

  return result;
}

uint64_t Nightingale::CGradient::CGradient(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

uint64_t Nightingale::CGradient::CGradient(uint64_t a1, char **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return a1;
}

void sub_25C66C478(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::CGradient::set_delta_at(Nightingale::CGradient *this, uint64_t a2, int16x4_t a3)
{
  v5 = *this;
  v6 = *(this + 1);
  if (*this == v6)
  {
    if (a2 != -1)
    {
      v7 = a2 + 1;
      do
      {
        v9 = 0;
        std::vector<float>::push_back[abi:ne200100](this, &v9);
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = 0;
    std::vector<float>::assign(this, (v6 - v5) >> 2, &v8, a3);
  }

  *(*this + 4 * a2) = 1065353216;
  *(this + 32) = 1;
}

float Nightingale::CGradient::push_back(Nightingale::CGradient *this, double a2)
{
  if (*(this + 32) == 1)
  {
    v2 = *this;
    v3 = *(this + 1) - *this;
    if (v3)
    {
      v4 = v3 >> 2;
      v5 = *(this + 3);
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        v6 = v5 * *v2;
        *v2++ = v6;
        --v4;
      }

      while (v4);
    }

    *(this + 32) = 0;
  }

  v7 = a2;
  v9 = v7;
  std::vector<float>::push_back[abi:ne200100](this, &v9);
  return result;
}

void Nightingale::CGradient::annihilateEarly(Nightingale::CGradient *this, unint64_t a2, int16x4_t a3)
{
  v4 = *this;
  if (a2 <= (*(this + 1) - v4) >> 2)
  {
    if (a2)
    {
      bzero(v4, 4 * a2);
    }
  }

  else
  {
    v6 = 0;
    std::vector<float>::assign(this, a2, &v6, a3);
  }

  *(this + 32) = 0;
}

uint64_t Nightingale::CGradient::normalize(uint64_t this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = *this;
    v2 = *(this + 8);
    if (*this == v2)
    {
      *(this + 24) = 0;
    }

    else
    {
      v3 = 0.0;
      v4 = *this;
      do
      {
        v5 = *v4++;
        v3 = v3 + v5;
      }

      while (v4 != v2);
      *(this + 24) = v3;
      if (v3 > 0.0)
      {
        v6 = v2 - v1;
        if (v6 <= 1)
        {
          v6 = 1;
        }

        do
        {
          v7 = *v1 / v3;
          *v1++ = v7;
          --v6;
        }

        while (v6);
      }
    }

    *(this + 32) = 1;
  }

  return this;
}

uint64_t Nightingale::CGradient::get_list_reference@<X0>(Nightingale::CGradient *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 2);
}

char **Nightingale::CGradient::set_vGrad(char **result, char **a2)
{
  v2 = result;
  if (result != a2)
  {
    result = std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(v2 + 32) = 0;
  return result;
}

uint64_t Nightingale::CGradient::set_isNull_if_grad_allZeros(uint64_t this)
{
  v1 = *(this + 8);
  if (*this == v1)
  {
    v4 = 1;
  }

  else
  {
    v2 = *this + 4;
    do
    {
      v3 = fabsf(*(v2 - 4));
      v4 = v3 < 1.0e-12;
      v5 = v3 >= 1.0e-12 || v2 == v1;
      v2 += 4;
    }

    while (!v5);
  }

  *(this + 33) = v4;
  return this;
}

double Nightingale::CGradient::get_expectation(Nightingale::CGradient *this)
{
  v1 = *(this + 1);
  v2 = *this;
  if (v1 == *this)
  {
    result = 0.0;
    v6 = 0.0;
  }

  else
  {
    v3 = 0;
    v4 = (v1 - *this) >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    result = 0.0;
    do
    {
      result = result + (v2[v3] * v3);
      ++v3;
    }

    while (v4 != v3);
    v6 = 0.0;
    do
    {
      v7 = *v2++;
      v6 = v6 + v7;
    }

    while (v2 != v1);
  }

  if (v6 > 0.0)
  {
    return result / v6;
  }

  return result;
}

double Nightingale::CGradient::get_variance(Nightingale::CGradient *this)
{
  expectation = Nightingale::CGradient::get_expectation(this);
  v3 = *(this + 1);
  v4 = v3 - *this;
  if (v3 == *this)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = v4 >> 2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = 0.0;
  do
  {
    v7 = v7 + (v5 - expectation) * (v5 - expectation) * *(*this + 4 * v5);
    ++v5;
  }

  while (v6 != v5);
  return v7;
}

float Nightingale::cumsum@<S0>(uint64_t *a1@<X0>, float **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *a1, a1[1], (a1[1] - *a1) >> 2);
  if (*a1 != a1[1])
  {
    v5 = *a2;
    v6 = a2[1] - *a2;
    if (v6 >= 2)
    {
      v8 = *v5;
      v7 = v5 + 1;
      result = v8;
      v9 = v6 - 1;
      do
      {
        result = result + *v7;
        *v7++ = result;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

unint64_t Nightingale::argquantile(uint64_t *a1, float a2)
{
  Nightingale::cumsum(a1, &__p);
  if (*a1 == a1[1] || __p == v15)
  {
    v12 = 1;
    if (!__p)
    {
      return v12;
    }
  }

  else
  {
    v4 = __p;
    v5 = __p;
    while (*v5 < a2)
    {
      ++v5;
      v4 += 4;
      if (v5 == v15)
      {
        v4 = v15;
        break;
      }
    }

    v6 = v4 - __p;
    v7 = v6 >> 2;
    v8 = (v15 - __p) >> 2;
    if (v8 <= (v6 >> 2) || (v9 = v7 - 1, v8 <= v7 - 1))
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = *(__p + (v6 >> 2));
    v11 = *(__p + v9);
    if (v10 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = COERCE_UNSIGNED_INT(((a2 - v11) / (v10 - v11)) + v9) << 32;
    }
  }

  v15 = __p;
  operator delete(__p);
  return v12;
}

void sub_25C66C9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float Nightingale::getPercentile(uint64_t *a1, int a2, float a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 2) - 1;
  v6 = v5 * a3;
  if (a2)
  {
    v7 = v6;
    v8 = v6 - v6;
    v9 = (v3 + 4 * v7);
    result = *v9;
    if (v8 != 0.0)
    {
      return result + ((v9[1] - result) * v8);
    }
  }

  else
  {
    v11 = ((1.0 - a3) * v5);
    result = *(v3 + 4 * v6);
    v12 = *(v4 - 4 * v11 - 4);
    if (result != v12)
    {
      return (result + v12) * 0.5;
    }
  }

  return result;
}

uint64_t *Nightingale::removeNANFromVector(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (*result != v1)
  {
    do
    {
      v2 += 4;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t Nightingale::getIdxOfDailyInFromJDay(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3 || *(v3 - 15) < a2)
  {
LABEL_6:
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 0;
    while (*v2 != a2)
    {
      ++v4;
      v2 += 15;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v7 = v4 & 0x7FFFFF00;
    v6 = v4;
    v5 = 0x100000000;
  }

  return v5 | v7 | v6;
}

uint64_t Nightingale::getIdxOfDailyInGreaterThanJayDay(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3 || *(v3 - 15) < a2)
  {
LABEL_6:
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 0;
    while (*v2 < a2)
    {
      ++v4;
      v2 += 15;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    v7 = v4 & 0x7FFFFF00;
    v6 = v4;
    v5 = 0x100000000;
  }

  return v5 | v7 | v6;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v8 = a2;
    v10 = v5 >> 2;
    v11 = __OFSUB__(v5 >> 2, 2);
    v12 = (v5 >> 2) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a4, v10, v14--);
        --v15;
      }

      while (v15);
    }

    v4 = v8;
    if (v8 != a3)
    {
      v16 = v8;
      do
      {
        v17 = *v16;
        if (*v16 < *a1)
        {
          *v16 = *a1;
          *a1 = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a4, v10, a1);
        }

        ++v16;
      }

      while (v16 != a3);
      v4 = a3;
    }

    if (v10 >= 2)
    {
      do
      {
        v18 = 0;
        v19 = *a1;
        v20 = a1;
        do
        {
          v21 = v20;
          v20 += v18 + 1;
          v22 = 2 * v18;
          v18 = (2 * v18) | 1;
          v23 = v22 + 2;
          if (v23 < v10 && *v20 < v20[1])
          {
            ++v20;
            v18 = v23;
          }

          *v21 = *v20;
        }

        while (v18 <= ((v10 - 2) >> 1));
        if (v20 == --v8)
        {
          *v20 = v19;
        }

        else
        {
          *v20 = *v8;
          *v8 = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, (v20 + 1), a4, v20 + 1 - a1);
        }
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) | 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 < v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v7 = *(a2 - 4);
    v6 = (a2 - 4);
    v8 = v7;
    v9 = *v5;
    if (*v5 < v7)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v9 = *v5;
      }

      while (*v5 < v8);
      *v6 = v8;
    }
  }

  return result;
}

unint64_t Nightingale::lstmModelCommonFw::fwDLPostProcess@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v7 = 0;
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  v8 = (a4 + 16);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  if (a2)
  {
    v9 = *a1;
    v10 = *(a1 + 8) - 4;
    *(a1 + 8) = v10;
    v11 = v10 - (v9 + 4);
    if (v10 == v9 + 4)
    {
      v12 = v9;
    }

    else
    {
      memmove(v9, (v9 + 4), v10 - (v9 + 4));
      v12 = *a1;
    }

    v13 = (v9 + v11);
    *(a1 + 8) = v9 + v11;
    if (v12 != (v9 + v11))
    {
      v14 = 0.0;
      v15 = v12;
      do
      {
        v16 = *v15++;
        v14 = v14 + v16;
      }

      while (v15 != v13);
      v17 = 1.0 / v14;
      do
      {
        *v12 = *v12 * v17;
        ++v12;
      }

      while (v12 != v13);
    }

    v7 = 1;
  }

  v18 = Nightingale::argquantile(a1, 0.2);
  result = Nightingale::argquantile(a1, 0.8);
  if ((v18 & 1) == 0 && (result & 1) == 0)
  {
    *a4 = (roundf((*(&v18 + 1) + *(&result + 1)) * 0.5) + (v7 + a3));
    *(a4 + 4) = 1;
    *(a4 + 8) = *(&result + 1) - *(&v18 + 1);
    *(a4 + 12) = 1;
    if (v8 != a1)
    {
      return std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v8, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
    }
  }

  return result;
}

void sub_25C66CFE0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::lstmModelCommonPeriod::periodDLPostProcess(uint64_t *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  Nightingale::CGradient::CGradient(__p);
  v6 = Nightingale::argquantile(a1, 0.1);
  v7 = Nightingale::argquantile(a1, 0.2);
  v8 = Nightingale::argquantile(a1, 0.8);
  v9 = Nightingale::argquantile(a1, 0.9);
  if (v6 & 1) != 0 || (v7 & 1) != 0 || (v8 & 1) != 0 || (v9)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
    *(a3 + 24) = v24[0];
    *(a3 + 33) = *(v24 + 9);
    *(a3 + 56) = 0;
    *(a3 + 60) = 1;
    *(a3 + 64) = 0;
    *(a3 + 68) = 1;
    *(a3 + 72) = 0;
    *(a3 + 76) = 0;
    *(a3 + 80) = 0;
    *(a3 + 84) = 0;
    goto LABEL_6;
  }

  v10 = (roundf((*(&v7 + 1) + *(&v8 + 1)) * 0.5) + 0.0);
  v11 = v10 - *(&v6 + 1);
  v12 = *(&v9 + 1) - v10;
  if (SHIDWORD(v9) != SHIDWORD(v6))
  {
    v11 = llroundf(v11 * 0.85);
    v12 = llroundf(v12 * 0.85);
  }

  if (v12 >= 6)
  {
    v13 = 6;
  }

  else
  {
    v13 = v12;
  }

  if (v11 >= 6)
  {
    v14 = 6;
  }

  else
  {
    v14 = v11;
  }

  if (v11 + v12 > 12)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = v10 - v11;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v16 = v15 + a2;
  v17 = v10 + a2 + v12;
  Nightingale::lstmModelCommonPeriod::constructPeriodGradFromDLOut(a1, v15 + a2, v17, a2, &v19);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v19;
  v23 = v20;
  v24[0] = v21[0];
  *(v24 + 9) = *(v21 + 9);
  Nightingale::CGradient::CGradient(a3);
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  if (__p == a3)
  {
    *(a3 + 24) = v24[0];
    *(a3 + 33) = *(v24 + 9);
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
    v18 = *(a3 + 60);
    *(a3 + 24) = v24[0];
    *(a3 + 33) = *(v24 + 9);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  *(a3 + 60) = 1;
LABEL_28:
  *(a3 + 56) = v16;
  if ((*(a3 + 68) & 1) == 0)
  {
    *(a3 + 68) = 1;
  }

  *(a3 + 64) = v17;
LABEL_6:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25C66D2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::lstmModelCommonPeriod::constructPeriodGradFromDLOut@<X0>(void *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, Nightingale::CGradient *a5@<X8>)
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

void sub_25C66D3D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::lstmModelCommonPeriod::periodDLTransformerPostProcess(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8) - *a1 <= 4uLL)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = v4[1];
  v6 = v5 * 31.0;
  v7 = (v5 * (1.0 - *v4)) * 31.0;
  v8 = a2;
  v9 = (v5 * 31.0) - v7;
  v10 = v9 / 1.28;
  v11 = v10 * v10;
  v12 = ((v5 * 31.0) + a2);
  v13 = (fmax((sqrtf(v10 * v10) * 10.0), 20.0) + v12);
  v14 = Nightingale::CGradient::CGradient(&__p);
  if (v13 >= 1)
  {
    v15 = 0;
    v16 = v11;
    do
    {
      v17 = Nightingale::gaussian_pdf(v14, v15, v12, v16);
      Nightingale::CGradient::push_back(&__p, v17);
      ++v15;
    }

    while (v13 != v15);
  }

  Nightingale::CGradient::CGradient(a3);
  if (&__p != a3)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, __p, v19, (v19 - __p) >> 2);
  }

  *(a3 + 24) = v20[0];
  *(a3 + 33) = *(v20 + 9);
  *(a3 + 56) = v7 + v8;
  *(a3 + 60) = (v6 + v9) + v8;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_25C66D548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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

uint64_t Nightingale::lstmModelCommonPeriod::applyNoflowUpdateDL(Nightingale::lstmModelCommonPeriod *this, Nightingale::CGradient *a2, int a3)
{
  if (Nightingale::CGradient::get_vGrad_len(a2) < a3)
  {
    *(a2 + 33) = 1;
  }

  Nightingale::CGradient::annihilateEarly(a2, a3 + 1, v5);
  Nightingale::CGradient::normalize(a2);
  Nightingale::CGradient::set_isNull_if_grad_allZeros(a2);
  result = Nightingale::CGradient::get_isNull(a2);
  if (result)
  {
    *(a2 + 1) = *a2;
  }

  *(a2 + 34) = 1;
  return result;
}

void Nightingale::periodEstimatorAggregation::deriveRestPeriodProjs(Nightingale::ngt_Config *a1@<X3>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t *a8@<X8>)
{
  Nightingale::periodEstimatorCalendarWithEnd::periodEstimatorCalendarWithEnd(v70, a1);
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v16 = *(a3 + 8);
  v64[0] = *(v16 - 96);
  v17 = *(v16 - 80);
  v18 = *(v16 - 64);
  v19 = *(v16 - 48);
  *&v66[13] = *(v16 - 35);
  v65 = v18;
  *v66 = v19;
  v64[1] = v17;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&v67, *(v16 - 24), *(v16 - 16), *(v16 - 16) - *(v16 - 24));
  if (!Nightingale::CGradient::get_vGrad_empty(a2) && *(a2 + 76) == 1 && BYTE4(v65) == 1 && (BYTE12(v65) & 1) != 0)
  {
    v40 = *(a3 + 124);
    Nightingale::CGradient::CGradient(v56);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
    Nightingale::CGradient::CGradient(v52);
    v55[0] = 0;
    v55[4] = 0;
    v55[8] = 0;
    v55[12] = 0;
    v55[16] = 0;
    v55[20] = 0;
    Nightingale::CGradient::CGradient(__p);
    if (*(a2 + 76) != 1 || (expectation = *(a2 + 72), (BYTE12(v65) & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v72 = *(&v65 + 2);
    if (a7)
    {
      v20 = *(a2 + 44);
      if ((v20 & 0x100000000) != 0)
      {
        variance = (*&v20 * *&v20);
      }

      else
      {
        variance = Nightingale::CGradient::get_variance(a2);
      }

      v72 = variance;
    }

    if (a4 >= 1)
    {
      v22 = 0;
      v23 = a5 - *(a3 + 128);
      do
      {
        if (BYTE4(v65) != 1 || (v24 = expectation + *&v65, expectation = v24, (BYTE12(v65) & 1) == 0))
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v25 = v72 + *(&v65 + 2);
        if (v40 == -2)
        {
          v25 = 0.0;
        }

        v72 = v25;
        v26 = v24;
        v27 = v25;
        v28 = (*(a3 + 112) - LOBYTE(v64[0]));
        if (*(a3 + 116))
        {
          v8 = (*(a3 + 112) - LODWORD(v64[0])) >> 8;
        }

        else
        {
          v28 = 0;
        }

        Nightingale::periodEstimatorCalendar::getCalBasedPeriodStartGradient(v70, v28 | (v8 << 8) | (*(a3 + 116) << 32), v41, v26, v27);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = *v41;
        v50 = v42;
        v51[0] = v43[0];
        *(v51 + 9) = *(v43 + 9);
        if (a6)
        {
          expectation = Nightingale::CGradient::get_expectation(__p);
          std = Nightingale::CGradient::get_std(__p);
        }

        else
        {
          std = sqrt(v72);
        }

        v30 = std;
        if (v30 >= 7.8125 && v22 >= v23)
        {
          break;
        }

        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v56, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
        v57[0] = v51[0];
        *(v57 + 9) = *(v51 + 9);
        if ((v63 & 1) == 0)
        {
          v63 = 1;
        }

        v32 = expectation;
        v62 = v32;
        Nightingale::periodEstimatorCalendarWithEnd::getPeriodEndProjection(v64, __p, v41);
        if (v52[0])
        {
          v52[1] = v52[0];
          operator delete(v52[0]);
        }

        *v52 = *v41;
        v53 = v42;
        v54[0] = v43[0];
        *(v54 + 9) = *(v43 + 9);
        *v55 = *v44;
        *&v55[13] = *&v44[13];
        std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>::pair[abi:ne200100]<Nightingale::periodEstimationOutStruct&,Nightingale::periodEstimationOutStruct&,0>(v41, v56, v52);
        v33 = a8[1];
        if (v33 >= a8[2])
        {
          v38 = std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__emplace_back_slow_path<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>(a8, v41);
          v39 = v45[0];
          a8[1] = v38;
          if (v39)
          {
            v45[1] = v39;
            operator delete(v39);
          }
        }

        else
        {
          *v33 = 0;
          *(v33 + 8) = 0;
          *(v33 + 16) = 0;
          *v33 = *v41;
          *(v33 + 16) = v42;
          v41[0] = 0;
          v41[1] = 0;
          v42 = 0;
          v34 = *(v43 + 9);
          *(v33 + 24) = v43[0];
          *(v33 + 33) = v34;
          v35 = *&v44[13];
          *(v33 + 56) = *v44;
          *(v33 + 69) = v35;
          *(v33 + 80) = 0;
          *(v33 + 88) = 0;
          *(v33 + 96) = 0;
          *(v33 + 80) = *v45;
          *(v33 + 96) = v46;
          v45[0] = 0;
          v45[1] = 0;
          v46 = 0;
          v36 = v47[0];
          *(v33 + 113) = *(v47 + 9);
          *(v33 + 104) = v36;
          v37 = *v48;
          *(v33 + 149) = *&v48[13];
          *(v33 + 136) = v37;
          a8[1] = v33 + 160;
        }

        if (v41[0])
        {
          v41[1] = v41[0];
          operator delete(v41[0]);
        }

        ++v22;
      }

      while (a4 != v22);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    if (v56[0])
    {
      v56[1] = v56[0];
      operator delete(v56[0]);
    }
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  Nightingale::periodEstimatorCalendarWithEnd::~periodEstimatorCalendarWithEnd(v70);
}

void sub_25C66DAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  v52 = *(v50 - 168);
  if (v52)
  {
    *(v50 - 160) = v52;
    operator delete(v52);
  }

  std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__destroy_vector::operator()[abi:ne200100](&a11);
  Nightingale::periodEstimatorCalendarWithEnd::~periodEstimatorCalendarWithEnd((v50 - 136));
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::__emplace_back_slow_path<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>>(a1, v6);
  }

  v7 = 160 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(v7 + 33) = *(a2 + 33);
  *(v7 + 24) = v8;
  v9 = *(a2 + 56);
  *(v7 + 69) = *(a2 + 69);
  *(v7 + 56) = v9;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 104);
  *(v7 + 113) = *(a2 + 113);
  *(v7 + 104) = v10;
  v11 = *(a2 + 136);
  *(v7 + 149) = *(a2 + 149);
  *(v7 + 136) = v11;
  *&v20 = 160 * v2 + 160;
  v12 = a1[1];
  v13 = 160 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::~__split_buffer(&v18);
  return v17;
}

void sub_25C66DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>,std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      *(a4 + 33) = *(v6 + 33);
      *(a4 + 24) = v7;
      v8 = *(v6 + 56);
      *(a4 + 69) = *(v6 + 69);
      *(a4 + 56) = v8;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v9 = *(v6 + 104);
      *(a4 + 113) = *(v6 + 113);
      *(a4 + 104) = v9;
      v10 = *(v6 + 136);
      *(a4 + 149) = *(v6 + 149);
      *(a4 + 136) = v10;
      v6 += 160;
      a4 += 160;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(v5);
      v5 += 160;
    }
  }
}

uint64_t std::__split_buffer<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    std::__destroy_at[abi:ne200100]<std::pair<Nightingale::periodEstimationOutStruct,Nightingale::periodEstimationOutStruct>,0>(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Nightingale::lstmHr::lstmHr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_286E2A2D0;
  *(a1 + 8) = 0u;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  return a1;
}

void sub_25C66DF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v3[43];
  if (v6)
  {
    v3[44] = v6;
    operator delete(v6);
  }

  v7 = v3[40];
  if (v7)
  {
    v3[41] = v7;
    operator delete(v7);
  }

  v8 = v3[37];
  if (v8)
  {
    v3[38] = v8;
    operator delete(v8);
  }

  v9 = v3[34];
  if (v9)
  {
    v3[35] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v3[32] = v10;
    operator delete(v10);
  }

  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](va);
  Nightingale::hrSlicesStruct::~hrSlicesStruct(v2);
  _Unwind_Resume(a1);
}

void Nightingale::lstmHr::~lstmHr(Nightingale::lstmHr *this)
{
  *this = &unk_286E2A2D0;
  Nightingale::heartRateInputAcquisition::~heartRateInputAcquisition((this + 372));
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    *(this + 35) = v5;
    operator delete(v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  v13 = (this + 208);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
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

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

uint64_t Nightingale::lstmHr::acquireHr(Nightingale::lstmHr *this)
{
  JDay1stValidAwakeHr = Nightingale::lstmHr::getJDay1stValidAwakeHr(this);
  result = 0;
  if ((JDay1stValidAwakeHr & 0x100000000) != 0 && *(*(*(this + 23) + 8) - 96) - 39 >= JDay1stValidAwakeHr)
  {
    (**this)(this);
    if (*(this + 108) == 1 && *(this + 116) == 1)
    {
      v4 = *(this + 8);
      v9 = 0;
      v8 = 0uLL;
      std::vector<std::optional<float>>::__init_with_size[abi:ne200100]<std::optional<float>*,std::optional<float>*>(&v8, v4 - 360, v4, 0x2DuLL);
      v5 = *(this + 31);
      if (v5)
      {
        *(this + 32) = v5;
        operator delete(v5);
      }

      *(this + 248) = v8;
      *(this + 33) = v9;
      v6 = *(this + 11);
      v9 = 0;
      v8 = 0uLL;
      std::vector<std::optional<float>>::__init_with_size[abi:ne200100]<std::optional<float>*,std::optional<float>*>(&v8, v6 - 360, v6, 0x2DuLL);
      v7 = *(this + 34);
      if (v7)
      {
        *(this + 35) = v7;
        operator delete(v7);
      }

      *(this + 17) = v8;
      *(this + 36) = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Nightingale::lstmHr::getJDay1stValidAwakeHr(Nightingale::lstmHr *this)
{
  v1 = *(this + 22);
  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (*(v2 + 20) == 1 && *(v2 + 36) == 1 && v2[8] >= *(*(this + 24) + 132))
    {
      break;
    }

    v2 += 15;
  }

  return *v2 | 0x100000000;
}

uint64_t Nightingale::lstmHr::acquireHrSlices(uint64_t this)
{
  v1 = *(this + 192);
  if (*(v1 + 36) == 1)
  {
    v2 = this;
    Nightingale::heartRateInputAcquisition::acquireSlicesFwDayStream(this + 372, *(this + 176), *(v1 + 32), *(*(this + 184) + 80), this + 8);
    this = Nightingale::heartRateInputAcquisition::get1stJDayDailyIdx((v2 + 372));
    *(v2 + 232) = this;
    *(v2 + 236) = BYTE4(this);
    *(v2 + 240) = v3;
    *(v2 + 244) = v4;
  }

  return this;
}

BOOL Nightingale::lstmHr::validateHr(const Nightingale::ngt_Config **this, int a2)
{
  Nightingale::heartRateInputValidation::heartRateInputValidation(v12, this[24]);
  Nightingale::heartRateInputValidation::process(v12, this + 1, (this + 26), a2);
  if (*(this + 108) == 1 && *(this + 116) == 1 && (v4 = this[24], *(v4 + 36) == 1))
  {
    v5 = *(*(this[23] + 1) - 96);
    v6 = *(v4 + 8) - v5 + 39;
    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 38 - v7;
    if (v6 >= 100)
    {
      v9 = -61;
    }

    else
    {
      v9 = v8;
    }

    v10 = (v9 + *(this + 26) + ((this[2] - this[1]) >> 3)) <= v5;
  }

  else
  {
    v10 = 0;
  }

  Nightingale::heartRateInputValidation::~heartRateInputValidation(v12);
  return v10;
}

uint64_t Nightingale::lstmHr::preConditionHr(Nightingale::lstmHr *this)
{
  v3[42] = *MEMORY[0x277D85DE8];
  Nightingale::heartRateInputPreCondition::heartRateInputPreCondition(v3, *(this + 22), this + 8, *(this + 24));
  v1 = Nightingale::heartRateInputPreCondition::preConditionHr(v3);
  Nightingale::heartRateInputPreCondition::~heartRateInputPreCondition(v3);
  return v1;
}

void sub_25C66E424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Nightingale::heartRateInputPreCondition::~heartRateInputPreCondition(va);
  _Unwind_Resume(a1);
}

BOOL Nightingale::lstmHr::prepareUiVectors(Nightingale::lstmHr *this, int a2, int a3, int a4)
{
  v19 = a2;
  v20 = 1;
  v21 = a3;
  v22 = 1;
  v23 = a4;
  v24 = 1;
  v5 = *(this + 22);
  v6 = *(this + 23);
  v7 = *(this + 24);
  v16 = xmmword_25C67CA20;
  v17 = 0x3FB8CEF8402F005CLL;
  Nightingale::uiProcessForLstm::uiProcessForLstm(v18, v5, v6, v7, &v16);
  Nightingale::uiProcessForLstm::prepareUiLogForDL(v18, &v19, this + 296, this + 320, this + 344);
  v8 = *(this + 37);
  v9 = *(this + 38);
  if (v8 == v9 || (v10 = *(this + 40), v11 = *(this + 41), v10 == v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if ((v11 - v10) >= 0xB4 && (v9 - v8) >= 0xB4)
    {
      v13 = *(this + 43);
      v14 = *(this + 44);
      if (v13 != v14 && (v14 - v13) >= 0xB4)
      {
        v12 = 0xEEEEEEEEEEEEEEEFLL * ((*(*(this + 22) + 8) - **(this + 22)) >> 2) > 0x2C;
      }
    }
  }

  Nightingale::uiProcessForLstm::~uiProcessForLstm(v18);
  return v12;
}

void sub_25C66E54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Nightingale::uiProcessForLstm::~uiProcessForLstm(va);
  _Unwind_Resume(a1);
}

uint64_t Nightingale::lstmHrFw::lstmHrFw(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4, uint64_t a5)
{
  v7 = Nightingale::lstmHr::lstmHr(a1, a2, a3, a4, a5);
  *v7 = &unk_286E2A2E8;
  std::vector<BOOL>::vector(v7 + 49, 8);
  *(a1 + 444) = 0;
  *(a1 + 448) = 0;
  *(a1 + 452) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  Nightingale::ngt_dnn_fw_predict_t::ngt_dnn_fw_predict_t((a1 + 480), a4);
  Nightingale::lstmModelCommonFw::lstmModelCommonFw((a1 + 488));
  *(a1 + 492) = 0;
  *(a1 + 496) = 0;
  *(a1 + 500) = 0;
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 512) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = -1082130432;
  *(a1 + 544) = -1;
  *(a1 + 552) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a1 + 560) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 576) = _Q0;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0;
  return a1;
}

void sub_25C66E654(_Unwind_Exception *a1)
{
  Nightingale::ngt_dnn_fw_predict_t::~ngt_dnn_fw_predict_t((v1 + 60));
  v3 = v1[57];
  if (v3)
  {
    v1[58] = v3;
    operator delete(v3);
  }

  v4 = v1[52];
  if (v4)
  {
    v1[53] = v4;
    operator delete(v4);
  }

  v5 = v1[49];
  if (v5)
  {
    operator delete(v5);
  }

  Nightingale::lstmHr::~lstmHr(v1);
  _Unwind_Resume(a1);
}

void Nightingale::lstmHrFw::~lstmHrFw(Nightingale::lstmHrFw *this)
{
  *this = &unk_286E2A2E8;
  Nightingale::lstmModelCommonFw::~lstmModelCommonFw((this + 488));
  Nightingale::ngt_dnn_fw_predict_t::~ngt_dnn_fw_predict_t((this + 480));
  v2 = *(this + 57);
  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    *(this + 53) = v3;
    operator delete(v3);
  }

  v4 = *(this + 49);
  if (v4)
  {
    operator delete(v4);
  }

  Nightingale::lstmHr::~lstmHr(this);
}

__n128 Nightingale::lstmHrFw::getFWEndHr@<Q0>(Nightingale::lstmHrFw *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = -1082130432;
  *(a3 + 28) = -1;
  *(a3 + 36) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a3 + 44) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a3 + 60) = _Q0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  if (Nightingale::lstmHr::acquireHr(this) && Nightingale::lstmHr::validateHr(this, 1) && Nightingale::lstmHr::preConditionHr(this))
  {
    if ((*(this + 108) & 1) == 0 || (*(this + 116) & 1) == 0 || (*(this + 236) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (Nightingale::lstmHr::prepareUiVectors(this, *(this + 26), *(this + 28), *(this + 58)))
    {
      Nightingale::lstmHrFw::applyAlgs(this);
      Nightingale::lstmHrFw::computeHrFwCA(this, a2);
      v12 = *(this + 564);
      *(a3 + 32) = *(this + 548);
      *(a3 + 48) = v12;
      *(a3 + 60) = *(this + 36);
      result = *(this + 532);
      *a3 = *(this + 516);
      *(a3 + 16) = result;
    }
  }

  return result;
}

uint64_t Nightingale::lstmHrFw::applyAlgs(uint64_t this)
{
  if ((*(this + 108) & 1) == 0 || (v1 = this, (*(this + 116) & 1) == 0))
  {
LABEL_25:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v2 = *(this + 104) + 44;
  v3 = *(this + 112);
  if (v2 <= v3)
  {
    for (i = 0; ; ++i)
    {
      v5 = v2 + i;
      Nightingale::lstmHrFw::applyAlgsADay(v1, i);
      if (*(v1 + 444) == 1 && (*(v1 + 520) & 1) == 0 && Nightingale::lstmHrFw::validateFwRsltADay(v1, v2 + i))
      {
        if ((*(v1 + 444) & 1) == 0)
        {
          goto LABEL_25;
        }

        *(v1 + 516) = v2 + i + *(v1 + 440);
        *(v1 + 520) = 1;
        *(v1 + 524) = v5;
        *(v1 + 528) = 1;
      }

      v6 = *(v1 + 208);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 216) - v6) >> 3) <= i)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = *(v6 + 24 * i + 8) - 1;
      if ((*(*(v6 + 24 * i) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
      {
        v8 = *(v1 + 536) ^ 1;
      }

      else
      {
        v8 = 0;
      }

      this = Nightingale::lstmHrFw::validateToRunPeriodADay(v1, v2 + i, v8 & 1);
      if (this)
      {
        *(v1 + 532) = v5;
        *(v1 + 536) = 1;
      }

      if (*(v1 + 520) == 1 && *(v1 + 528) == 1)
      {
        if (v5 >= v3 || (*(v1 + 536) & 1) != 0)
        {
          return this;
        }
      }

      else if (v5 >= v3)
      {
        return this;
      }
    }
  }

  return this;
}

void Nightingale::lstmHrFw::computeHrFwCA(Nightingale::lstmHrFw *this, int a2)
{
  if (a2)
  {
    if (*(this + 31) != *(this + 32))
    {
      Nightingale::lstmHrFw::computeHrSignalQuality(this, &v5);
      v3 = *v6;
      *(this + 540) = v5;
      *(this + 556) = v3;
      *(this + 568) = *&v6[12];
      v4 = *(this + 23);
      if (*(v4 + 108) == 1 && *(this + 520) == 1)
      {
        *(this + 146) = *(this + 129) + ~*(v4 + 104);
        *(this + 588) = 1;
      }
    }
  }
}

void Nightingale::lstmHrFw::applyAlgsADay(Nightingale::lstmHrFw *this, unsigned int a2)
{
  v2 = *(this + 26);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 27) - v2) >> 3);
  if (a2 < v3)
  {
    if (v3 <= a2)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v5 = a2;
    if (**(v2 + 24 * a2))
    {
      v7 = a2 + 44;
      if (v7 < (*(this + 2) - *(this + 1)) >> 3 && v7 < (*(this + 5) - *(this + 4)) >> 3 && v7 < (*(this + 38) - *(this + 37)) >> 2 && v7 < (*(this + 41) - *(this + 40)) >> 2 && v7 < (*(this + 44) - *(this + 43)) >> 2)
      {
        v8 = a2 + 45;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v21 = 0u;
        *v22 = 0u;
        *__src = 0u;
        *v20 = 0u;
        memset(v18, 0, sizeof(v18));
        Nightingale::lstmHr::copyASliceToLstmStruct(this, v18, this + 1, a2, (a2 + 45));
        Nightingale::lstmHr::copyASliceToLstmStruct(this, &v18[1] + 1, this + 4, a2, v8);
        v9 = *(this + 37);
        v10 = (v9 + 4 * a2);
        v11 = 4 * v8;
        std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(__src, __src[0], v10, (v9 + v11), (v11 - 4 * v5) >> 2);
        v12 = 4 * v5;
        std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v20[1], v20[1], (v12 + *(this + 40)), (*(this + 40) + v11), (v11 - v12) >> 2);
        std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v22, v22[0], (v12 + *(this + 43)), (*(this + 43) + v11), (v11 - v12) >> 2);
        if ((Nightingale::ngt_dnn_fw_predict_t::ngt_dnn_process_fw(this + 60, v18, &v24) & 1) == 0)
        {
          Nightingale::lstmModelCommonFw::fwDLPostProcess(&v24, 0, -16, v15);
          *(this + 55) = v15[0];
          *(this + 445) = *(v15 + 5);
          v13 = (this + 456);
          v14 = *(this + 57);
          if (v14)
          {
            *(this + 58) = v14;
            operator delete(v14);
            *v13 = 0;
            *(this + 58) = 0;
            *(this + 59) = 0;
          }

          *v13 = v16;
          *(this + 59) = v17;
        }

        Nightingale::ngt_hr_DLin_t::~ngt_hr_DLin_t(v18);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }
      }
    }
  }
}

void sub_25C66EC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Nightingale::ngt_hr_DLin_t::~ngt_hr_DLin_t(va);
  v9 = *(v7 - 88);
  if (v9)
  {
    *(v7 - 80) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t Nightingale::lstmHrFw::validateFwRsltADay(Nightingale::lstmHrFw *this, int a2)
{
  if (*(this + 444) != 1)
  {
    return 0;
  }

  if (*(this + 57) == *(this + 58))
  {
    return 0;
  }

  if (*(this + 452) != 1)
  {
    return 0;
  }

  v3 = *(*(this + 23) + 8);
  if (*(v3 - 60) != 1)
  {
    return 0;
  }

  if (*(this + 50) <= 7uLL)
  {
    goto LABEL_48;
  }

  v4 = *(this + 110);
  v5 = *(v3 - 64);
  v6 = *(v3 - 96);
  v7 = *(this + 49);
  v8 = 128;
  if (!*(this + 520))
  {
    v8 = 0;
  }

  v9 = *v7 & 0xFFFFFFFFFFFFFF7FLL | v8;
  *v7 = v9;
  v10 = *(this + 50);
  v11 = v10 & 0x3F;
  if (v10 > 0x3F || v11 != 5)
  {
    v12 = 5;
    v13 = &v7[v10 >> 6];
    v14 = v7;
    while (((*v14 >> v12) & 1) == 0)
    {
      if (v12 == 63)
      {
        v13 = &v7[v10 >> 6];
      }

      v14 += v12 == 63;
      if (v12 == 63)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }

      if (v12 == v11 && v14 == v13)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

LABEL_19:
  if (!v10)
  {
    goto LABEL_48;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
  if (*(this + 112) < 10.0)
  {
    ++v15;
  }

  *v7 = v15;
  if (*(this + 50) <= 1uLL)
  {
    goto LABEL_48;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((v4 & 0xFFFFFFFE) == 2));
  *v7 = v16;
  if (*(this + 50) <= 3uLL)
  {
    goto LABEL_48;
  }

  v17 = (a2 - v6 + v4);
  v18 = v17;
  v19 = roundf(v5 + -13.0);
  *v7 = v16 & 0xFFFFFFFFFFFFFFF7 | (8 * (v19 < v17));
  v20 = Nightingale::follicularPhaseCheck(v17, 6, 100);
  if (*(this + 50) <= 2uLL)
  {
    goto LABEL_48;
  }

  v21 = 4;
  if ((v20 & 1) == 0)
  {
    v21 = 0;
  }

  **(this + 49) = **(this + 49) & 0xFFFFFFFFFFFFFFFBLL | v21;
  v22 = Nightingale::passLutealPhaseCheck(v17, v5, 6.0);
  if (*(this + 50) <= 4uLL)
  {
    goto LABEL_48;
  }

  v23 = 0;
  v24 = *(this + 49);
  v25 = 16;
  if (!v22)
  {
    v25 = 0;
  }

  v26 = *v24 & 0xFFFFFFFFFFFFFFEFLL | v25;
  *v24 = v26;
  v27 = v24;
  v28 = v24;
  do
  {
    if (((*v28 >> v23) & 1) == 0)
    {
      return 0;
    }

    if (v23 == 63)
    {
      v27 = v24;
    }

    v28 += v23 == 63;
    if (v23 == 63)
    {
      v23 = 0;
    }

    else
    {
      ++v23;
    }
  }

  while (v23 != 3 || v28 != v27);
  if (v19 < v18 && v22)
  {
    return 1;
  }

  v30 = *(this + 50);
  if (v19 >= v18)
  {
    if (v30 > 5)
    {
      v31 = 32;
      goto LABEL_47;
    }

LABEL_48:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (v30 <= 6)
  {
    goto LABEL_48;
  }

  v31 = 64;
LABEL_47:
  result = 0;
  *v24 = v26 | v31;
  return result;
}

uint64_t Nightingale::lstmHrFw::validateToRunPeriodADay(Nightingale::lstmHrFw *this, int a2, int a3)
{
  if (*(this + 536))
  {
    return 0;
  }

  v3 = this;
  if (*(this + 444) != 1 || *(this + 57) == *(this + 58) || *(this + 452) != 1 || *(*(*(this + 23) + 8) - 60) != 1)
  {
    return 0;
  }

  v6 = *(this + 110);
  v7 = v6 + a2;
  v9 = *(this + 53);
  v8 = *(this + 54);
  if (v9 >= v8)
  {
    v12 = *(this + 52);
    v13 = v9 - v12;
    v14 = (v9 - v12) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v16 = v8 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 416, v18);
    }

    v19 = (v9 - v12) >> 2;
    v20 = (4 * v14);
    v21 = (4 * v14 - 4 * v19);
    *v20 = v7;
    v10 = v20 + 1;
    memcpy(v21, v12, v13);
    this = *(v3 + 52);
    *(v3 + 52) = v21;
    *(v3 + 53) = v10;
    *(v3 + 54) = 0;
    if (this)
    {
      operator delete(this);
    }
  }

  else
  {
    *v9 = v7;
    v10 = v9 + 4;
  }

  *(v3 + 53) = v10;
  v22 = *(v3 + 52);
  if (v10 - v22 >= 0x11)
  {
    if (v10 != (v22 + 4))
    {
      this = memmove(*(v3 + 52), (v22 + 4), v10 - v22 - 4);
    }

    *(v3 + 53) = v10 - 1;
  }

  v23 = Nightingale::lstmHrFw::consistencyCheck(this, v3 + 52, 4);
  result = 0;
  if (v23 && (v6 + 20) <= 0xE)
  {
    if (a3)
    {
      *(v3 + 133) = a2;
      result = 1;
      *(v3 + 536) = 1;
    }
  }

  return result;
}

void Nightingale::lstmHr::copyASliceToLstmStruct(uint64_t a1, const void **a2, void *a3, unsigned int a4, unsigned int a5)
{
  v6 = *a3 + 8 * a4;
  v7 = *a3 + 8 * a5;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<std::optional<float>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::optional<float> const*>,std::__wrap_iter<std::optional<float> const*>>(&v21, v6, v7, (8 * a5 - 8 * a4) >> 3);
  v8 = v21;
  v9 = v22;
  if (v21 != v22)
  {
    do
    {
      v10 = -1.0;
      if (*(v8 + 4) == 1)
      {
        v10 = *v8;
      }

      v12 = a2[1];
      v11 = a2[2];
      if (v12 >= v11)
      {
        v14 = *a2;
        v15 = v12 - *a2;
        v16 = v15 >> 3;
        v17 = (v15 >> 3) + 1;
        if (v17 >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v19);
        }

        *(8 * v16) = v10;
        v13 = 8 * v16 + 8;
        memcpy(0, v14, v15);
        v20 = *a2;
        *a2 = 0;
        a2[1] = v13;
        a2[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v12 = v10;
        v13 = (v12 + 1);
      }

      a2[1] = v13;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v21;
  }

  if (v8)
  {
    v22 = v8;
    operator delete(v8);
  }
}

void sub_25C66F234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::ngt_hr_DLin_t::~ngt_hr_DLin_t(Nightingale::ngt_hr_DLin_t *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

BOOL Nightingale::lstmHrFw::consistencyCheck(uint64_t a1, int **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 < a3)
  {
    return 0;
  }

  v6 = v4 - 1;
  if (v4 == 1)
  {
    return 1;
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2[1] - *a2;
  }

  if (v7 - 1 <= v4 - 2)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = 0;
  v11 = *v3;
  v9 = v3 + 1;
  v10 = v11;
  do
  {
    v12 = *v9++;
    v8 = v12 + v8 - v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  return v8 == 0;
}

void Nightingale::lstmHrFw::computeHrSignalQuality(Nightingale::lstmHrFw *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1082130432;
  *(a2 + 4) = -1;
  v4 = (a2 + 4);
  *(a2 + 12) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a2 + 20) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a2 + 36) = _Q0;
  v11 = *(this + 31);
  v10 = *(this + 32);
  if (v10 == v11)
  {
    *(a2 + 24) = 0;
    *(a2 + 20) = 0;
    *a2 = 1065353216;
    *(a2 + 12) = 0;
  }

  else
  {
    v12 = 0;
    v13 = (v10 - v11) >> 3;
    v14 = *(this + 31);
    do
    {
      v12 += *(v14 + 4) ^ 1;
      v14 += 8;
    }

    while (v14 != v10);
    v15 = 0;
    v16 = v13;
    *a2 = v12 / v13;
    v17 = v11;
    do
    {
      if (*(v17 + 4) == 1 && *v17 > 11)
      {
        ++v15;
      }

      v17 += 8;
    }

    while (v17 != v10);
    v18 = 0;
    *(a2 + 20) = v15 / v16;
    v19 = v11;
    do
    {
      if (*(v19 + 4) == 1 && *v19 > 17)
      {
        ++v18;
      }

      v19 += 8;
    }

    while (v19 != v10);
    v20 = 0;
    *(a2 + 24) = v18 / v16;
    v21 = v11;
    do
    {
      if (*(v21 + 4) == 1 && *v21 > 23)
      {
        ++v20;
      }

      v21 += 8;
    }

    while (v21 != v10);
    *(a2 + 28) = v20 / v16;
    __p = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      if (*(v11 + 4) == 1)
      {
        v42 = *v11;
      }

      else
      {
        v42 = 0.0;
      }

      std::vector<float>::push_back[abi:ne200100](&__p, &v42);
      v11 += 8;
    }

    while (v11 != v10);
    v22 = __p;
    if (v40 != __p)
    {
      std::__sort<std::__less<float,float> &,float *>();
      Percentile = Nightingale::getPercentile(&__p, 1, 0.5);
      if (Percentile > 50.0)
      {
        Percentile = 50.0;
      }

      *v4 = llroundf(Percentile);
      v24 = Nightingale::getPercentile(&__p, 1, 0.3);
      if (v24 > 50.0)
      {
        v24 = 50.0;
      }

      *(a2 + 12) = llroundf(v24);
      v22 = __p;
    }

    if (v22)
    {
      v40 = v22;
      operator delete(v22);
    }
  }

  v27 = this + 272;
  v25 = *(this + 34);
  v26 = *(v27 + 1);
  if (v26 == v25)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v28 = 0;
    v29 = (v26 - v25) >> 3;
    v30 = v25;
    do
    {
      if (*(v30 + 4) == 1 && *v30 > 11)
      {
        ++v28;
      }

      v30 += 8;
    }

    while (v30 != v26);
    v31 = 0;
    v32 = v29;
    *(a2 + 32) = v28 / v29;
    v33 = v25;
    do
    {
      if (*(v33 + 4) == 1 && *v33 > 17)
      {
        ++v31;
      }

      v33 += 8;
    }

    while (v33 != v26);
    v34 = 0;
    *(a2 + 36) = v31 / v32;
    v35 = v25;
    do
    {
      if (*(v35 + 4) == 1 && *v35 > 23)
      {
        ++v34;
      }

      v35 += 8;
    }

    while (v35 != v26);
    *(a2 + 40) = v34 / v32;
    __p = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      if (*(v25 + 4) == 1)
      {
        v42 = *v25;
      }

      else
      {
        v42 = 0.0;
      }

      std::vector<float>::push_back[abi:ne200100](&__p, &v42);
      v25 += 8;
    }

    while (v25 != v26);
    v36 = __p;
    if (v40 != __p)
    {
      std::__sort<std::__less<float,float> &,float *>();
      v37 = Nightingale::getPercentile(&__p, 1, 0.5);
      if (v37 > 50.0)
      {
        v37 = 50.0;
      }

      *(a2 + 8) = llroundf(v37);
      v38 = Nightingale::getPercentile(&__p, 1, 0.3);
      if (v38 > 50.0)
      {
        v38 = 50.0;
      }

      *(a2 + 16) = llroundf(v38);
      v36 = __p;
    }

    if (v36)
    {
      v40 = v36;
      operator delete(v36);
    }
  }
}

void sub_25C66F708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double Nightingale::lstmHrFw::getHrSignalQuality@<D0>(Nightingale::lstmHrFw *this@<X0>, uint64_t a2@<X8>)
{
  if (Nightingale::lstmHr::acquireHr(this))
  {

    Nightingale::lstmHrFw::computeHrSignalQuality(this, a2);
  }

  else
  {
    *a2 = -1082130432;
    *(a2 + 4) = -1;
    *(a2 + 12) = -1;
    __asm { FMOV            V0.4S, #-1.0 }

    *(a2 + 20) = _Q0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a2 + 36) = result;
  }

  return result;
}

_BYTE *Nightingale::lstmHrPeriod::lstmHrPeriod(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = Nightingale::lstmHr::lstmHr(a1, a2, a3, a4, a5);
  *v8 = &unk_286E2A300;
  *(v8 + 388) = a6;
  Nightingale::CGradient::CGradient((v8 + 50));
  a1[456] = 0;
  a1[460] = 0;
  a1[464] = 0;
  a1[468] = 0;
  a1[472] = 0;
  a1[476] = 0;
  a1[480] = 0;
  a1[484] = 0;
  a1[488] = 0;
  a1[580] = 0;
  return a1;
}

void Nightingale::lstmHrPeriod::~lstmHrPeriod(Nightingale::lstmHrPeriod *this)
{
  *this = &unk_286E2A300;
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  Nightingale::lstmHr::~lstmHr(this);
}

__n128 Nightingale::lstmHrPeriod::estimatePeriodStartHr@<Q0>(Nightingale::lstmHrPeriod *this@<X0>, uint64_t a2@<X8>)
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
  if (*(this + 392) == 1)
  {
    v5 = *(*(this + 23) + 104);
    if ((v5 & 0x100000000) == 0 || ((v6 = *(this + 388), v7 = v5 + 1, (v6 & 0x100000000) != 0) ? (v8 = v7 < v6) : (v8 = 1), v8))
    {
      if (Nightingale::lstmHr::acquireHr(this) && Nightingale::lstmHr::validateHr(this, 0) && Nightingale::lstmHr::preConditionHr(this))
      {
        if (*(this + 108) != 1 || *(this + 116) != 1 || (*(this + 236) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        Nightingale::lstmHr::prepareUiVectors(this, *(this + 26), *(this + 28), *(this + 58));
        Nightingale::lstmHrPeriod::applyAlgs(this);
        if ((this + 400) != a2)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a2, *(this + 50), *(this + 51), (*(this + 51) - *(this + 50)) >> 2);
        }

        *(a2 + 24) = *(this + 424);
        *(a2 + 33) = *(this + 433);
        *(a2 + 56) = *(this + 456);
        result = *(this + 469);
        *(a2 + 69) = result;
      }
    }
  }

  return result;
}

void sub_25C66F9F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::lstmHrPeriod::applyAlgs(Nightingale::lstmHrPeriod *this)
{
  Nightingale::lstmModelCommonPeriod::lstmModelCommonPeriod(&v3);
  Nightingale::lstmHrPeriod::getPeriodProjFromLstmModel(this, &v3);
  v2 = *(this + 23);
  if (*(v2 + 100) == 1)
  {
    Nightingale::lstmModelCommonPeriod::applyNoflowUpdateDL(&v3, (this + 400), *(v2 + 96) - *(*(v2 + 8) - 96));
  }

  *(this + 118) = *(this + 97);
  *(this + 476) = *(this + 392);
  Nightingale::lstmModelCommonPeriod::~lstmModelCommonPeriod(&v3);
}

__n128 Nightingale::lstmHrPeriod::getEnsembleTelemetry@<Q0>(Nightingale::lstmHrPeriod *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 536);
  *(a2 + 32) = *(this + 520);
  *(a2 + 48) = v2;
  v3 = *(this + 568);
  *(a2 + 64) = *(this + 552);
  *(a2 + 80) = v3;
  result = *(this + 488);
  v5 = *(this + 504);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t Nightingale::lstmHrPeriod::acquireHrSlices(Nightingale::lstmHrPeriod *this)
{
  if ((*(this + 392) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  Nightingale::heartRateInputAcquisition::acquireSlicesPeriodDayStream(this + 372, *(this + 22), *(this + 97), this + 8);
  result = Nightingale::heartRateInputAcquisition::get1stJDayDailyIdx((this + 372));
  *(this + 58) = result;
  *(this + 236) = BYTE4(result);
  *(this + 60) = v3;
  *(this + 244) = v4;
  return result;
}

void Nightingale::lstmHrPeriod::getPeriodProjFromLstmModel(Nightingale::lstmHrPeriod *this, Nightingale::lstmModelCommonPeriod *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  Nightingale::lstmHr::copyASliceToLstmStruct(this, &v24, this + 1, 0, 0x2Du);
  Nightingale::lstmHr::copyASliceToLstmStruct(this, &v25 + 1, this + 4, 0, 0x2Du);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v27, v27, *(this + 37), (*(this + 37) + 180), 45);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v28 + 1, *(&v28 + 1), *(this + 40), (*(this + 40) + 180), 45);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v30, v30, *(this + 43), (*(this + 43) + 180), 45);
  Nightingale::ngt_dnn_period_predict_t::ngt_dnn_period_predict_t(&v23, *(this + 24));
  if ((Nightingale::ngt_dnn_period_predict_t::ngt_dnn_process_period(&v23, &v24, &v32) & 1) == 0)
  {
    if ((*(this + 392) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v3 = *(this + 97) - *(*(*(this + 23) + 8) - 96);
    Nightingale::lstmModelCommonPeriod::periodDLPostProcess(&v32, v3, v36);
    v4 = *(this + 50);
    if (v4)
    {
      *(this + 51) = v4;
      operator delete(v4);
      *(this + 50) = 0;
      *(this + 51) = 0;
      *(this + 52) = 0;
    }

    v5 = *v36;
    *(this + 50) = *v36;
    v6 = *&v36[8];
    *(this + 408) = *&v36[8];
    *(this + 424) = v37[0];
    *(this + 433) = *(v37 + 9);
    *(this + 456) = v38[0];
    *(this + 469) = *(v38 + 13);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    memset(v36, 0, sizeof(v36));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v36, v5, v6, (v6 - v5) >> 2);
    v37[0] = *(this + 424);
    *(v37 + 9) = *(this + 433);
    v38[0] = *(this + 456);
    *(v38 + 13) = *(this + 469);
    v39 = 0;
    std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::insert(&v20, 0, v36);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v36);
    v7 = *(this + 24);
    v8 = *(v7 + 264);
    v9 = *(v7 + 272);
    if (v9 == v8)
    {
      goto LABEL_21;
    }

    if ((*(v7 + 311) & 0x8000000000000000) != 0)
    {
      if (!*(v7 + 296))
      {
LABEL_21:
        *v36 = &v20;
        std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__destroy_vector::operator()[abi:ne200100](v36);
        goto LABEL_22;
      }
    }

    else if (!*(v7 + 311))
    {
      goto LABEL_21;
    }

    v12 = v3;
    while (1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v10 = Nightingale::ngt_dnn_period_predict_transformer_t::ngt_dnn_period_predict_transformer_t(buf, v8);
      if (Nightingale::ngt_dnn_period_predict_transformer_t::predict(v10, &v24, &v17))
      {
        break;
      }

      if ((*(this + 392) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v11 = v21;
      Nightingale::lstmModelCommonPeriod::periodDLTransformerPostProcess(&v17, *(this + 97) - *(*(*(this + 23) + 8) - 96), __p);
      *v36 = *__p;
      *&v36[16] = v14;
      __p[1] = 0;
      v14 = 0;
      __p[0] = 0;
      v37[0] = v15[0];
      *(v37 + 9) = *(v15 + 9);
      *&v38[0] = v16;
      v39 = 1;
      std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::insert(&v20, v11, v36);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v36);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      Nightingale::ngt_dnn_period_predict_transformer_t::~ngt_dnn_period_predict_transformer_t(buf);
      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      v8 += 24;
      if (v8 == v9)
      {
        Nightingale::lstmHrPeriod::getEnsembleInput(this, &v20, v12, v36);
      }
    }

    Nightingale::ngt_dnn_period_predict_transformer_t::~ngt_dnn_period_predict_transformer_t(buf);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    goto LABEL_21;
  }

LABEL_22:
  Nightingale::ngt_dnn_period_predict_t::~ngt_dnn_period_predict_t(&v23);
  if (v30)
  {
    *(&v30 + 1) = v30;
    operator delete(v30);
  }

  if (*(&v28 + 1))
  {
    *&v29 = *(&v28 + 1);
    operator delete(*(&v28 + 1));
  }

  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }

  if (*(&v25 + 1))
  {
    *&v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  if (v24)
  {
    *(&v24 + 1) = v24;
    operator delete(v24);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_25C6700A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  Nightingale::ngt_dnn_period_predict_Ensemble_t::~ngt_dnn_period_predict_Ensemble_t(&a20);
  if (__p)
  {
    operator delete(__p);
  }

  v30[20] = &a23;
  std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__destroy_vector::operator()[abi:ne200100]((v31 - 208));
  Nightingale::ngt_dnn_period_predict_t::~ngt_dnn_period_predict_t(&a26);
  Nightingale::ngt_hr_DLin_t::~ngt_hr_DLin_t(&a28);
  v33 = v30[15];
  if (v33)
  {
    v30[16] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    if (v9 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = a2 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 5);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    }

    if (v11 >= 0x155555555555555)
    {
      v13 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v19 = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(a1, v13);
    }

    v15 = 0;
    v16 = 32 * (v10 >> 5);
    v17 = v16;
    v18 = 0;
    std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::emplace_back<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>(&v15, a3);
    v4 = std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__swap_out_circular_buffer(a1, &v15, v4);
    std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(&v15);
  }

  else if (a2 == v7)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1[1], a3);
    a1[1] = v7 + 96;
  }

  else
  {
    std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__move_range(a1, a2, a1[1], a2 + 96);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v4, a3);
  }

  return v4;
}

void sub_25C6702E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Nightingale::lstmHrPeriod::getEnsembleInput(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  Nightingale::uiLogProcessor::uiLogProcessor(v16, *(*(a1 + 192) + 48));
  Nightingale::uiLogProcessor::getEnsembleInput(v16, *(a1 + 184), *(a1 + 192), a4);
  if (*(a2 + 8) != *a2)
  {
    Nightingale::get_width_and_days_to_drs(*a2, a3);
    a4[3] = v8;
    a4[4] = v9;
    if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5) > 1)
    {
      Nightingale::get_width_and_days_to_drs((*a2 + 96), a3);
      a4[5] = v10;
      a4[6] = v11;
      if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5) > 2)
      {
        Nightingale::get_width_and_days_to_drs((*a2 + 192), a3);
        a4[7] = v12;
        a4[8] = v13;
        v14 = *(a1 + 192);
        if (*(v14 + 52) == 1)
        {
          v15 = *(v14 + 48);
        }

        else
        {
          v15 = 2143289344;
        }

        a4[9] = v15;
        Nightingale::vMean<float>();
      }

      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<int>::__throw_out_of_range[abi:ne200100]();
}

void sub_25C670770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  Nightingale::uiLogProcessor::~uiLogProcessor(&a17);
  _Unwind_Resume(a1);
}

uint64_t Nightingale::get_phase_day_format(Nightingale *this)
{
  v1 = 0x100000000;
  if (this == -2)
  {
    v2 = 254;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  if (this == -2)
  {
    v3 = -256;
  }

  else
  {
    v3 = 0;
  }

  if (this >= 0)
  {
    v1 = 0x100000000;
    v2 = (this - 1);
    v3 = (this - 1) & 0xFFFFFF00;
  }

  return v1 | v3 | v2;
}

uint64_t Nightingale::get_days_since(uint64_t a1, int a2)
{
  v2 = a2 - a1;
  if (a2 <= a1 || a1 == -2)
  {
    v2 = -1;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return v2;
  }

  else
  {
    return 4294967293;
  }
}

uint64_t Nightingale::get_width_and_days_to_drs(unsigned int *a1, int a2)
{
  v5 = a2;
  v4[0] = &v5;
  v4[1] = &v5;
  v2 = a1[22];
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = v4;
  return off_286E2A378[v2](&v6, a1);
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<BOOL>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void Nightingale::hrSlicesStruct::~hrSlicesStruct(Nightingale::hrSlicesStruct *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t std::vector<std::optional<float>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::optional<float> const*>,std::__wrap_iter<std::optional<float> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::optional<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C670C54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = v6;
    do
    {
      v11 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v8, v10);
      v10 += 96;
      v8 = v11 + 96;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *>(&v13, a2, v7, v6);
}

uint64_t std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::emplace_back<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 5);
      }

      v10 = a1[4];
      v12[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(v10, v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *>(v12, v5, v4, v5 - 96 * (v6 >> 1));
    v4 = v8;
    a1[1] += 32 * v7;
    a1[2] = v8;
  }

  result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v4, a2);
  a1[2] += 96;
  return result;
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(a1, v7, a3, v9);
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

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 88) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 88);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286E2A358[v5])(&v6, a2);
    *(a1 + 88) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2 != -1)
  {
    result = (off_286E2A348[v2])(&v3, result);
  }

  *(v1 + 88) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN11Nightingale19lstmPeriodOutStructENS8_21lstmPeriodTFOutStructEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN11Nightingale19lstmPeriodOutStructENS8_21lstmPeriodTFOutStructEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  *(v2 + 33) = *(a2 + 33);
  *(v2 + 24) = v3;
  result = *(a2 + 56);
  *(v2 + 69) = *(a2 + 69);
  *(v2 + 56) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 33) = *(a2 + 33);
  *(v2 + 24) = result;
  *(v2 + 56) = *(a2 + 56);
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a4 - 96;
  v8 = a3;
  while (v8 != a2)
  {
    v8 -= 96;
    v4 -= 96;
    v9 = v7 - 96;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v7, v8);
    v7 = v9;
  }

  return a3;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 88);
  if (*(result + 88) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_286E2A368[v4])(v6);
    }
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__assign_alt[abi:ne200100]<0ul,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodOutStruct>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a3;
    *(a1 + 16) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v5 = *(a3 + 24);
    *(a1 + 33) = *(a3 + 33);
    *(a1 + 24) = v5;
    result = *(a3 + 56);
    *(a1 + 69) = *(a3 + 69);
    *(a1 + 56) = result;
    *(a1 + 88) = 0;
  }

  else
  {
    std::vector<float>::__move_assign(a2, a3);
    v8 = *(a3 + 24);
    *(a2 + 33) = *(a3 + 33);
    *(a2 + 24) = v8;
    result = *(a3 + 56);
    *(a2 + 69) = *(a3 + 69);
    *(a2 + 56) = result;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__assign_alt[abi:ne200100]<1ul,Nightingale::lstmPeriodTFOutStruct,Nightingale::lstmPeriodTFOutStruct>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) == 1)
  {
    std::vector<float>::__move_assign(a2, a3);
    result = *(a3 + 24);
    *(a2 + 33) = *(a3 + 33);
    *(a2 + 24) = result;
    *(a2 + 56) = *(a3 + 56);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a3;
    *(a1 + 16) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = *(a3 + 24);
    *(a1 + 33) = *(a3 + 33);
    *(a1 + 24) = result;
    *(a1 + 56) = *(a3 + 56);
    *(a1 + 88) = 1;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(a4, v5);
      v5 += 96;
      a4 += 96;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a4, v7);
      v7 += 96;
      a4 = v8 + 96;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
      v6 += 96;
    }
  }
}

uint64_t std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

float std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<Nightingale::overloaded<Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_0,Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&>(int a1, Nightingale::CGradient *this)
{
  Nightingale::CGradient::get_expectation(this);
  if ((*(this + 68) & 1) == 0 || (*(this + 60) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return roundf((*(this + 16) - *(this + 14)) + 1.0);
}

uint64_t Nightingale::lstmLuna::lstmLuna(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4)
{
  *a1 = &unk_286E2A398;
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
  *(a1 + 192) = 0;
  *(a1 + 264) = 0;
  *(a1 + 232) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition((a1 + 296));
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess((a1 + 368));
  Nightingale::wristTemperatureInputValidation::wristTemperatureInputValidation((a1 + 369));
  Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fw_dl_tmp_process((a1 + 376), a4);
  Nightingale::lstmModelCommonFw::lstmModelCommonFw((a1 + 384));
  return a1;
}

void sub_25C671718(_Unwind_Exception *a1)
{
  Nightingale::ngt_luna_fw_dl_tmp_process::~ngt_luna_fw_dl_tmp_process((v1 + 47));
  Nightingale::wristTemperatureInputValidation::~wristTemperatureInputValidation((v1 + 369));
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess((v1 + 46));
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition((v3 + 13));
  v6 = v1[33];
  if (v6)
  {
    v1[34] = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[30] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  v9 = v1[19];
  if (v9)
  {
    v1[20] = v9;
    operator delete(v9);
  }

  v10 = v1[16];
  if (v10)
  {
    v1[17] = v10;
    operator delete(v10);
  }

  Nightingale::extractKaliInputsRtn::~extractKaliInputsRtn(v2);
  _Unwind_Resume(a1);
}

void Nightingale::lstmLuna::~lstmLuna(Nightingale::lstmLuna *this)
{
  *this = &unk_286E2A398;
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
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
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
  v9 = *(this + 10);
  v10 = v18;
  v11 = v19;
  v18 = 0;
  v17 = 0uLL;
  *(this + 8) = v10;
  *(this + 9) = v11;
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
    *(this + 10) = 0;
    *(this + 11) = 0;
    *(this + 12) = 0;
  }

  v12 = *(this + 13);
  *(this + 5) = *__p;
  *(this + 12) = v21;
  __p[1] = 0;
  v21 = 0;
  __p[0] = 0;
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
    *(this + 13) = 0;
    *(this + 14) = 0;
    *(this + 15) = 0;
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
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (*(this + 6) == *(this + 7))
  {
    v8 = 0;
    *(this + 184) = 1;
  }

  else
  {
    Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches((this + 48), 45, 1, a2, &v17);
    v13 = v17;
    v8 = v17 != *(&v17 + 1);
    if (v17 == *(&v17 + 1))
    {
      v14 = 1;
      v15 = 184;
    }

    else
    {
      if ((this + 128) != v17)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 16, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 2);
        v13 = v17;
      }

      if ((this + 152) != v13)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 19, *v13, v13[1], (v13[1] - *v13) >> 2);
      }

      v14 = *v19;
      v15 = 176;
    }

    *(this + v15) = v14;
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
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  *&v17 = v24;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v8;
}

void sub_25C671B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  Nightingale::pickSlicesStruct::~pickSlicesStruct(&a9);
  a9 = &a19;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t Nightingale::lstmLuna::validateWTmp(Nightingale::lstmLuna *this, int a2, float a3)
{
  v37 = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  v6 = (this + 128);
  LODWORD(v33) = (*(this + 17) - *(this + 16)) >> 2;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&v29, &v33, &v33 + 4, 1uLL);
  *&v33 = a3;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v26, &v33, &v33 + 4, 1uLL);
  v33 = &unk_286E2A0F0;
  v34 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
  v35 = 0;
  v36 = &v33;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v32, &v33);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v33);
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v29, v30, (v30 - v29) >> 2);
  v7 = *(this + 176);
  v8 = *(this + 13);
  if (v7 >= (*(this + 14) - v8) >> 3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if ((*(v8 + 8 * v7 + 4) & 1) != 0 || **v6 >= 0.0)
  {
    Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 369, v32, v6, &__p, &v26, 1, &v33);
    v9 = *v33;
    v34 = v33;
    operator delete(v33);
  }

  else
  {
    v9 = 0x3F80000000000001;
  }

  v21 = v9;
  std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 192, &v21);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  v10 = *(this + 17);
  v34 = 0;
  v35 = 0;
  v33 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v33, v10 - 84, v10, 0x15uLL);
  v21 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpDay2dayNoiseHigh;
  v22 = 0;
  std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator=<std::pair<BOOL,float> (Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::*)(std::vector<float> const&,int,float),void>(v32[0], &v21);
  *v29 = (v34 - v33) >> 2;
  *v26 = 1039851848;
  Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 369, v32, &v33, &v29, &v26, 1, &v21);
  std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 192, v22 - 1);
  v11 = *(*(this + 2) + 8);
  if ((*(v11 - 60) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v12 = *(v11 - 96) - a2 + (roundf(*(v11 - 64)) + -13.0);
  LOBYTE(v20) = v12 > 0;
  *(&v20 + 1) = v12;
  std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 192, &v20);
  *(this + 45) = 3;
  v14 = *(this + 24);
  v13 = *(this + 25);
  *(this + 184) = *v14;
  if (v14 == v13)
  {
    v18 = 1;
  }

  else
  {
    v15 = v14 + 8;
    do
    {
      v16 = *(v15 - 2);
      if (v16)
      {
        break;
      }

      v17 = v15 == v13;
      v15 += 8;
    }

    while (!v17);
    v18 = v16 ^ 1;
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  v33 = v32;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&v33);
  return v18 & 1;
}

void sub_25C671E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char *a20, char *a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 88);
  if (v25)
  {
    *(v23 - 80) = v25;
    operator delete(v25);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  a20 = &a23;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<BOOL,float>>>(a1, v10);
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
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v7 = 0;
  if (v4 & 1 | v3)
  {
    v6[0] = &unk_286E2A0F0;
    v6[1] = v3;
    v6[2] = v4;
    v7 = v6;
  }

  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::swap[abi:ne200100](v6, a1);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](v6);
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
  *result = &unk_286E2A3B8;
  return result;
}

{
  result = Nightingale::lstmLuna::lstmLuna(a1, a2, a3, a4);
  *result = &unk_286E2A3B8;
  return result;
}

uint64_t Nightingale::lstmLunaFw::getOngoingFwLstmLuna(Nightingale::lstmLunaFw *this, uint64_t a2)
{
  if (Nightingale::lstmLuna::acquireWTmp(this, a2 - 44, a2) && (**this)(this, a2, 0.3) && (*(*this + 8))(this, 36.048, 0.46548) && (Nightingale::lstmLunaFw::applyLunaAlgs(this), Nightingale::lstmLunaFw::validateLunaRslt(this, a2)))
  {
    if ((*(this + 260) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v4 = (*(this + 64) + a2) & 0xFFFFFF00;
    v5 = (*(this + 256) + a2);
    v6 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  return v6 | v4 | v5;
}

void Nightingale::lstmLunaFw::applyLunaAlgs(Nightingale::lstmLunaFw *this)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<double>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v10, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 2);
  __p = 0;
  v8 = 0;
  v9 = 0;
  if ((Nightingale::ngt_luna_fw_dl_tmp_process::ngt_luna_fwEndFlagDLTmp(this + 47, &v10, &__p) & 1) == 0)
  {
    Nightingale::lstmModelCommonFw::fwDLPostProcess(&__p, 1, -17, v4);
    v2 = *(this + 29);
    *(this + 27) = v4[0];
    *(this + 221) = *(v4 + 5);
    if (v2)
    {
      *(this + 30) = v2;
      operator delete(v2);
      *(this + 29) = 0;
      *(this + 30) = 0;
      *(this + 31) = 0;
    }

    *(this + 232) = v5;
    *(this + 31) = v6;
    if (*(this + 220))
    {
      v3 = Nightingale::lstmLunaFw::adjustLSTMFwEnd(v2, this + 128, *(this + 54));
      *(this + 64) = v3;
      *(this + 260) = BYTE4(v3);
    }
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_25C67241C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    *(v16 - 32) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Nightingale::lstmLunaFw::validateLunaRslt(Nightingale::lstmLunaFw *this, int a2)
{
  if (*(this + 220) != 1)
  {
    return 0;
  }

  v4 = *(this + 54);
  v5 = v4 >= -2 ? -2 : *(this + 54);
  v6 = v5 <= 0xFFFFFFF1 ? -15 : v5;
  LOBYTE(v31) = v4 == v6;
  *(&v31 + 1) = v4;
  std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 264, &v31);
  if (v4 != v6)
  {
    return 0;
  }

  v7 = *(this + 17);
  if (1 - ((v7 - *(this + 16)) >> 2) > (v4 - 7))
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, v7 + 4 * (v4 - 7), v7, (-4 * (v4 - 7)) >> 2);
  v28 = 0;
  v29 = 0;
  __p = 0;
  v10 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v31, v32, (v32 - v31) >> 2);
  v30 = Nightingale::lstmLunaFw::signalShiftHighCheck(0.15, 1.0, v10, 7, &__p);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 264, &v30);
  if (*(this + 260))
  {
    v11 = (*(this + 64) + a2 - *(*(*(this + 2) + 8) - 96));
    v26 = Nightingale::follicularPhaseCheck(v11, 6, 100);
    std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 264, &v26);
    v12 = *(*(this + 2) + 8);
    if ((*(v12 - 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v26 = Nightingale::lutealPhaseCheck(v11, *(v12 - 64), 1.0);
    std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 264, &v26);
    v13 = *(*(this + 2) + 8);
    if (*(v13 - 60) != 1 || (*(v13 - 52) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v14 = sqrtf(*(v13 - 56));
    v15 = *(v13 - 64) + -13.0;
    v16 = (v15 + fminf(fmaxf(v14 * 9.0, 5.0), 15.0)) + 0.001;
    v18 = ((v15 - fminf(fmaxf(v14 * 4.0, 5.0), 15.0)) + -0.001) < v11 && v16 > v11;
    v26 = v18 | (LODWORD(v15) << 32);
    std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 264, &v26);
    if ((*(this + 260) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v19 = *(this + 64);
    memset(v25, 0, sizeof(v25));
    v20 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v25, *(this + 16), *(this + 17), (*(this + 17) - *(this + 16)) >> 2);
    v26 = Nightingale::lstmLunaFw::missingRateAtDetectionCheck(0.3, v20, v19, v25);
    std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 264, &v26);
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    v22 = *(this + 33);
    v21 = *(this + 34);
    if (v22 == v21)
    {
      v8 = 1;
    }

    else
    {
      v23 = v22 + 8;
      do
      {
        v8 = *(v23 - 8);
        if (*(v23 - 8))
        {
          v24 = v23 == v21;
        }

        else
        {
          v24 = 1;
        }

        v23 += 8;
      }

      while (!v24);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v8;
}

void sub_25C67273C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 56);
  if (v17)
  {
    *(v15 - 48) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
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
  v10 = -4 * a3;
  while (a3 <= 0)
  {
    v11 = v5 + *(a2 + 8);
    v21 = 0;
    v22 = 0;
    v20 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v20, v11 - 28, v11, 7uLL);
    v12 = *(a2 + 8);
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v5 + v12, v12, v10 >> 2);
    MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v20, &__p, -1.0);
    if ((MeanDiffOf2Windows & 0x100000000) != 0)
    {
      v14 = 1;
      if (*&MeanDiffOf2Windows >= 0.2 && (*&MeanDiffOf2Windows - v6) >= 0.04)
      {
        v14 = 0;
        v9 = v8;
        v6 = *&MeanDiffOf2Windows;
      }
    }

    else
    {
      v14 = 1;
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    ++v7;
    --v8;
    v10 += 4;
    v5 -= 4;
    if (v15)
    {
      return v9 | 0x100000000;
    }
  }

  return 0;
}

void sub_25C672988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t Nightingale::lstmLunaFw::signalShiftHighCheck(float a1, float a2, uint64_t a3, int a4, uint64_t *a5)
{
  v9 = *a5;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v20, v9, v9 + 4 * a4, a4);
  v10 = a5[1];
  v11 = *a5 + 4 * a4;
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v11, v10, (v10 - v11) >> 2);
  MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v20, &__p, -1.0);
  v13 = MeanDiffOf2Windows;
  if ((MeanDiffOf2Windows & 0x100000000) != 0)
  {
    v14 = *&MeanDiffOf2Windows >= a1 && *&MeanDiffOf2Windows <= a2;
  }

  else
  {
    v14 = 0;
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v15 = v13 << 32;
  if ((v13 & 0x100000000) == 0)
  {
    v15 = 0x41F0000000000000;
  }

  return v14 | v15;
}

void sub_25C672A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

unint64_t Nightingale::lstmLunaFw::closeToCalOvuCheck(Nightingale::lstmLunaFw *this, int a2, float a3, float a4)
{
  v4 = a3 + -13.0;
  v5 = (v4 + fminf(fmaxf(a4 * 9.0, 5.0), 15.0)) + 0.001;
  v7 = ((v4 - fminf(fmaxf(a4 * 4.0, 5.0), 15.0)) + -0.001) < a2 && v5 > a2;
  return v7 | (LODWORD(v4) << 32);
}

unint64_t Nightingale::lstmLunaFw::missingRateAtDetectionCheck(float a1, uint64_t a2, int a3, __int128 *a4)
{
  v6 = *a4;
  v7 = *(a4 + 1);
  if (a3 >= 1 && v6 == v7)
  {
    return 0xBF80000000000000;
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v7 + 4 * a3, v7, (-4 * a3) >> 2);
  MissingCnt = Nightingale::getMissingCnt(&__p);
  if (a3)
  {
    v10 = MissingCnt;
    v11 = (MissingCnt / -a3) <= a1;
  }

  else
  {
    v11 = MissingCnt == 0;
    v10 = MissingCnt;
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v11 | (LODWORD(v10) << 32);
}

void sub_25C672C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }
  }

  return 1;
}

_BYTE *Nightingale::lstmLunaPeriod::lstmLunaPeriod(_BYTE *a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4, uint64_t a5)
{
  v8 = Nightingale::lstmLuna::lstmLuna(a1, a2, a3, a4);
  *v8 = &unk_286E2A3D8;
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

void sub_25C672DC4(_Unwind_Exception *a1)
{
  Nightingale::ngt_luna_period_dl_tmp_process::~ngt_luna_period_dl_tmp_process((v1 + 70));
  v3 = v1[59];
  if (v3)
  {
    v1[60] = v3;
    operator delete(v3);
  }

  v4 = v1[56];
  if (v4)
  {
    v1[57] = v4;
    operator delete(v4);
  }

  v5 = v1[53];
  if (v5)
  {
    v1[54] = v5;
    operator delete(v5);
  }

  v6 = v1[50];
  if (v6)
  {
    v1[51] = v6;
    operator delete(v6);
  }

  Nightingale::lstmLuna::~lstmLuna(v1);
  _Unwind_Resume(a1);
}

void Nightingale::lstmLunaPeriod::~lstmLunaPeriod(Nightingale::lstmLunaPeriod *this)
{
  *this = &unk_286E2A3D8;
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
      if (*(this + 556))
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
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a2, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
  }

  *(a2 + 24) = *(this + 31);
  *(a2 + 33) = *(this + 505);
  *(a2 + 56) = *(this + 33);
  result = *(this + 541);
  *(a2 + 69) = result;
  return result;
}

void sub_25C672FB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Nightingale::lstmLunaPeriod::getLunaPeriodEstimationADay(Nightingale::lstmLunaPeriod *this, int a2, uint64_t a3)
{
  if (Nightingale::lstmLuna::acquireWTmp(this, a2, a3) && ((**this)(this, a3, 0.3) & 1) != 0)
  {
    if ((*(*this + 8))(this, 36.054, 0.46308))
    {
      if ((*(this + 40) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (Nightingale::lstmLunaPeriod::prepareUiVectors(this, a2, a3, *(this + 8)))
      {

        Nightingale::lstmLunaPeriod::applyAlgs(this, a3);
      }
    }
  }

  else
  {
    *(this + 138) = a3;
    *(this + 556) = 1;
  }
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
  v20 = xmmword_25C67CAB0;
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

void sub_25C6731BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Nightingale::uiProcessForLstm::~uiProcessForLstm(va);
  _Unwind_Resume(a1);
}

void Nightingale::lstmLunaPeriod::applyAlgs(Nightingale::lstmLunaPeriod *this, int a2)
{
  Nightingale::lstmLunaPeriod::getPeriodProjFromLstmModel(this, (this + 568), a2);
  *(this + 136) = a2;
  *(this + 548) = 1;
  *(this + 138) = a2;
  *(this + 556) = 1;
  v4 = *(this + 2);
  if (*(v4 + 100) == 1 && *(this + 532) == 1)
  {
    v5 = *(v4 + 96) - *(*(v4 + 8) - 96);
    if (*(this + 132) <= v5)
    {

      Nightingale::lstmModelCommonPeriod::applyNoflowUpdateDL((this + 568), (this + 472), v5);
    }
  }
}

uint64_t Nightingale::lstmLunaPeriod::validateWTmp(Nightingale::lstmLunaPeriod *this, float a2)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v3 = (this + 128);
  LODWORD(v25) = (*(this + 17) - *(this + 16)) >> 2;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<Nightingale::fwEndConfirmationFailureReason_t>::__init_with_size[abi:ne200100]<Nightingale::fwEndConfirmationFailureReason_t const*,Nightingale::fwEndConfirmationFailureReason_t const*>(&v21, &v25, &v25 + 4, 1uLL);
  LODWORD(v25) = 1050253722;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v18, &v25, &v25 + 4, 1uLL);
  v25 = &unk_286E2A0F0;
  v26 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh;
  v27 = 0;
  v28 = &v25;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::push_back[abi:ne200100](v24, &v25);
  std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::~__value_func[abi:ne200100](&v25);
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v21, v22, (v22 - v21) >> 2);
  v4 = *(this + 176);
  v5 = *(this + 13);
  if (v4 >= (*(this + 14) - v5) >> 3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if ((*(v5 + 8 * v4 + 4) & 1) != 0 || **v3 >= 0.0)
  {
    Nightingale::wristTemperatureInputValidation::checkListOfConditions(this + 369, v24, v3, &__p, &v18, 1, &v25);
    v6 = *v25;
    v26 = v25;
    operator delete(v25);
  }

  else
  {
    v6 = 0x3F80000000000001;
  }

  v17 = v6;
  std::vector<std::pair<BOOL,float>>::push_back[abi:ne200100](this + 192, &v17);
  if (__p)
  {
    v15 = __p;
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

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  v25 = v24;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&v25);
  return v7 & 1;
}

void sub_25C6734A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char *a16, char *a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a19;
  std::vector<std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void Nightingale::lstmLunaPeriod::getPeriodProjFromLstmModel(Nightingale::lstmLunaPeriod *this, Nightingale::lstmModelCommonPeriod *a2, int a3)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v5 = *(*(*(this + 2) + 8) - 96);
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  *v15 = 0u;
  *__src = 0u;
  *v13 = 0u;
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p[1], 0, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 2);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(__src, 0, *(this + 50), *(this + 51), (*(this + 51) - *(this + 50)) >> 2);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v13[1], v13[1], *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v15, v15[0], *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
  Nightingale::ngt_luna_period_dl_tmp_process::ngt_luna_periodRegressorLSTM(this + 70, __src, &v18);
  Nightingale::lstmModelCommonPeriod::periodDLPostProcess(&v18, a3 - v5, &v8);
  v6 = (this + 472);
  v7 = *(this + 59);
  if (v7)
  {
    *(this + 60) = v7;
    operator delete(v7);
    *v6 = 0;
    *(this + 60) = 0;
    *(this + 61) = 0;
  }

  *v6 = v8;
  *(this + 61) = v9;
  *(this + 31) = v10[0];
  *(this + 505) = *(v10 + 9);
  *(this + 33) = v11[0];
  *(this + 541) = *(v11 + 13);
  if (__p[1])
  {
    *&v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v13[1])
  {
    *&v14 = v13[1];
    operator delete(v13[1]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_25C6736AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  Nightingale::ngt_luna_DLin_periodRegressorLSTM_t::~ngt_luna_DLin_periodRegressorLSTM_t(va);
  v15 = *(v13 - 72);
  if (v15)
  {
    *(v13 - 64) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

double *std::vector<double>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(double **a1, float *a2, float *a3, unint64_t a4)
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

      std::vector<unsigned long>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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

void Nightingale::ngt_luna_DLin_periodRegressorLSTM_t::~ngt_luna_DLin_periodRegressorLSTM_t(Nightingale::ngt_luna_DLin_periodRegressorLSTM_t *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void *std::__function::__value_func<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_25C673AD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Nightingale::phaseFactorProcessor::ccMenstCycleLen_handling(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_25C4D8000, a2, OS_LOG_TYPE_DEBUG, "\tccMenstCycleLen_handling: {jDayLastEndOfCC: %d}\n\n)", v2, 8u);
}

void Nightingale::ngtProjector::projector(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void Nightingale::ngtProjector::isFinite_aProj()
{
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngtProjector::isFinite_aGrad()
{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void Nightingale::uiLogProcessor::genPeriodSlide()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::genPeriodSlide(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void Nightingale::uiLogProcessor::genCycleSlide()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::process()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::uiLogProcessor::print_anUILog()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void Nightingale::uiLogProcessor::print_anUILog(_DWORD *a1, uint64_t a2, int *a3)
{
  if (*(a2 + 8) == 1)
  {
    v3 = *(a2 + 4);
  }

  else
  {
    v3 = -1;
  }

  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

{
  if (*(a2 + 24) == 1)
  {
    v3 = *(a2 + 20);
  }

  else
  {
    v3 = -1;
  }

  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

{
  if (*(a2 + 16) == 1)
  {
    v3 = *(a2 + 12);
  }

  else
  {
    v3 = -1;
  }

  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

void Nightingale::uiLogProcessor::print_anUILog(float *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = -1.0;
  if (*(a2 + 36) == 1)
  {
    v4 = *(a2 + 32);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

{
  v4 = -1.0;
  if (*(a2 + 44) == 1)
  {
    v4 = *(a2 + 40);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

{
  v4 = -1.0;
  if (*(a2 + 52) == 1)
  {
    v4 = *(a2 + 48);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

{
  v4 = -1.0;
  if (*(a2 + 60) == 1)
  {
    v4 = *(a2 + 56);
  }

  OUTLINED_FUNCTION_9(v4, 3.852e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void Nightingale::uiLogProcessor::print_anUILog(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_25C4D8000, v2, v2, "phases: [", v3);
}

{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_25C4D8000, v2, v2, ", ", v3);
}

{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_25C4D8000, v2, v2, "]} ", v3);
}

{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_6(&dword_25C4D8000, v2, v2, ",\n", v3);
}

void Nightingale::ngt_HistoricalAnalyzer::analyze()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "Historical Analyzer debug message: {\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "  CycleProcessHistOut: {fwStart: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "],\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "\t\t\tfwEnd: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "]},\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "\t\t\talgUsed: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, "\t\t\tFailureCode: [", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_25C4D8000, v0, v1, " dummy_key:0 \n},\n\n", v2, v3, v4, v5, v6);
}

void std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void Nightingale::ngt_DayStreamProcessor::analyze()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printInputDayStreamProc()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_25C4D8000, v1, OS_LOG_TYPE_DEBUG, "\t{jDay: %d, phase: %d}", v2, 0xEu);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Au);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void Nightingale::ngt_DayStreamProcessor::printDeviations()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t Data.init<A>(buffer:)()
{
  return MEMORY[0x28211D3D0]();
}

{
  return MEMORY[0x28211D3D8]();
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x2821FBD90](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x2821FBF50](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Array.subscript.getter()
{
  return MEMORY[0x2821FC3A8]();
}

{
  return MEMORY[0x2821FC3C0]();
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x2821FD718]();
}

{
  return MEMORY[0x2821FD720]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}

{
  return MEMORY[0x2821FDE70]();
}

void Nightingale::vVar<double>()
{
    ;
  }
}

void Nightingale::vVar<float>()
{
    ;
  }
}

void Nightingale::vMean<double>()
{
    ;
  }
}

void Nightingale::vMean<float>()
{
    ;
  }
}

void Nightingale::vMedian<double>()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}