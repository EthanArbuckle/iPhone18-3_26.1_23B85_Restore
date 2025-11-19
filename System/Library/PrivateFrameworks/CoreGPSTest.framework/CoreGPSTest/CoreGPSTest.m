void sub_2454AB234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E804F0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

__CFString *stringifyTest(unsigned int a1)
{
  if (a1 > 8)
  {
    return @"Success";
  }

  else
  {
    return off_278E80500[a1];
  }
}

uint64_t errorCodeTranslator(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_2455817C0[a1];
  }
}

uint64_t factTestReturnCodeTranslator(uint64_t a1)
{
  if (a1 < 9)
  {
    return dword_2455817E4[a1];
  }

  NSLog(&cfstr_Unknownretrunc.isa, a1);
  return 8;
}

uint64_t forkProcessGpsTest(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x19;
  if (v5 || v6 == 0)
  {
    MEMORY[0x245D6AB60](a1, "isEnableGpsTestForkProcess,0");
    v15 = 2;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCACB0]);
    [v8 setLaunchPath:@"/usr/local/bin/gpsfactorytest"];
    [v8 setArguments:v3];
    v9 = [v3 componentsJoinedByString:{@", "}];
    NSLog(&cfstr_Commandargumen.isa, v9);
    v10 = [MEMORY[0x277CCAC10] pipe];
    [v8 setStandardOutput:v10];
    v11 = [v10 fileHandleForReading];
    [v8 launch];
    [v8 waitUntilExit];
    v12 = [v8 terminationStatus];
    v13 = [v11 readDataToEndOfFile];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
    std::string::basic_string[abi:ne200100]<0>(&v17, [v14 UTF8String]);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v17;
    *(a1 + 16) = v18;
    NSLog(&cfstr_TestresultD.isa, v12);
    NSLog(&cfstr_Testoutput.isa, v14);
    v15 = factTestReturnCodeTranslator(v12);
  }

  return v15;
}

void sub_2454ABCAC(_Unwind_Exception *a1)
{
  MEMORY[0x245D6AEE0](v2, 0x10B2C4012DFF3E0);

  _Unwind_Resume(a1);
}

void sub_2454AC01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454AC14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454AC6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 105) < 0)
  {
    operator delete(*(v34 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_2454AC94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454ACB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454ACD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454ACEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2454AD024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *__assign_helper_atomic_property_(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v6 = *(a2 + 96);
  v5 = *(a2 + 112);
  v7 = *(a2 + 80);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 96) = v6;
  *(a1 + 112) = v5;
  *(a1 + 80) = v7;
  std::string::operator=((a1 + 144), (a2 + 144));
  *(a1 + 168) = *(a2 + 168);
  std::string::operator=((a1 + 176), (a2 + 176));

  return std::string::operator=((a1 + 200), (a2 + 200));
}

std::string *GpsFactoryTest::Options::Options(std::string *this, const Options *a2)
{
  if (*(&a2->uartPortName.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->uartPortName.__rep_.__l.__data_, a2->uartPortName.__rep_.__l.__size_);
  }

  else
  {
    v4 = *a2->uartPortName.__rep_.__s.__data_;
    this->__r_.__value_.__r.__words[2] = *(&a2->uartPortName.__rep_.__l + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (a2[1].uartPortName.__rep_.__s.__data_[15] < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *&a2->var0, a2[1].uartPortName.__rep_.__l.__data_);
  }

  else
  {
    v5 = *&a2->var0;
    this[1].__r_.__value_.__r.__words[2] = a2[1].uartPortName.__rep_.__l.__size_;
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a2[2].uartPortName.__rep_.__s.__data_;
  *&this[2].__r_.__value_.__l.__data_ = *(&a2[1].uartPortName.__rep_.__l + 1);
  *&this[2].__r_.__value_.__r.__words[2] = v6;
  v7 = *(&a2[2].uartPortName.__rep_.__l + 1);
  v8 = *a2[3].uartPortName.__rep_.__s.__data_;
  v9 = *(&a2[3].uartPortName.__rep_.__l + 1);
  *(this[5].__r_.__value_.__r.__words + 4) = *&a2[3].var1;
  *&this[4].__r_.__value_.__l.__data_ = v8;
  *&this[4].__r_.__value_.__r.__words[2] = v9;
  *&this[3].__r_.__value_.__r.__words[1] = v7;
  if (a2[5].uartPortName.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(&a2[4].uartPortName.__rep_.__l + 2), *&a2[4].var0);
  }

  else
  {
    v10 = *(&a2[4].uartPortName.__rep_.__l + 1);
    this[6].__r_.__value_.__r.__words[2] = a2[5].uartPortName.__rep_.__l.__data_;
    *&this[6].__r_.__value_.__l.__data_ = v10;
  }

  LODWORD(this[7].__r_.__value_.__l.__data_) = a2[5].uartPortName.__rep_.__l.__size_;
  if (a2[6].uartPortName.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(&a2[5].uartPortName.__rep_.__l + 2), *&a2[5].var0);
  }

  else
  {
    v11 = *(&a2[5].uartPortName.__rep_.__l + 1);
    this[8].__r_.__value_.__r.__words[0] = a2[6].uartPortName.__rep_.__l.__data_;
    *&this[7].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(&a2[6].var1 + 3) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), a2[6].uartPortName.__rep_.__l.__size_, *(&a2[6].uartPortName.__rep_.__l + 2));
  }

  else
  {
    v12 = *&a2[6].uartPortName.__rep_.__l.__size_;
    this[9].__r_.__value_.__r.__words[0] = *&a2[6].var0;
    *&this[8].__r_.__value_.__r.__words[1] = v12;
  }

  return this;
}

void sub_2454AD420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E804F8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

double GnssHal::ExtensionsFireImpl::getGpsCrossCorrelationMaxThreshold_dBHz(GnssHal::ExtensionsFireImpl *this)
{
  v6 = *MEMORY[0x277D85DE8];
  GpsdPlatformInfo::instance(0);
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134349056;
    v5 = 0x4042000000000000;
    _os_log_debug_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEBUG, "HalExtensions,getGpsCrossCorrelationMaxThreshold_dBHz,%{public}f", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 36.0;
}

double GnssHal::ExtensionsFireImpl::getGpsCrossCorrelationMinThreshold_dBHz(GnssHal::ExtensionsFireImpl *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = GpsdPlatformInfo::instance(0);
  GpsCrossCorrelationMinThreshold_dBHz = GpsdPlatformInfo::getGpsCrossCorrelationMinThreshold_dBHz(v1);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349056;
    v7 = GpsCrossCorrelationMinThreshold_dBHz;
    _os_log_debug_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEBUG, "HalExtensions,getGpsCrossCorrelationMinThreshold_dBHz,%{public}f", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return GpsCrossCorrelationMinThreshold_dBHz;
}

uint64_t GnssHal::ExtensionsFireImpl::submitSoftwareRecoveryStatistics(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::factoryTestXml@<X0>(GnssHal::ExtensionsFireImpl *this@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  result = *(this + 11);
  if (result)
  {
    (*(*result + 48))(__p);
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __p;
      if (v7 < 0)
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v9 = v4;
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "factoryTestXml,%{public}s", buf, 0xCu);
    }

    operator new();
  }

  *a2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454AD8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x245D6AEE0](v15, 0x1012C40EC159624);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GnssHal::ExtensionsFireImpl::factoryTestJob@<X0>(GnssHal::ExtensionsFireImpl *this@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  result = *(this + 15);
  if (result)
  {
    (*(*result + 48))(__p);
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = __p;
      if (v7 < 0)
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v9 = v4;
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "factoryTestJob,%{public}s", buf, 0xCu);
    }

    operator new();
  }

  *a2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454ADA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x245D6AEE0](v15, 0x1012C40EC159624);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GnssHal::ExtensionsFireImpl::bundleName(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  GpsdPreferences::bundleName(v1, &v2);
  operator new();
}

void sub_2454ADB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsFireImpl::nvStorePath(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  GpsdPreferences::nvStorePath(v1, &v2);
  operator new();
}

void sub_2454ADBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::ExtensionsFireImpl::platform(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::forceFireExtensionsPlatform(v1) + 1;
  if (v2 < 9 && ((0x199u >> v2) & 1) != 0)
  {
    return dword_24558186C[v2];
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 103)
  {
    return 2;
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 106)
  {
    return 3;
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    return 4;
  }

  v4 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_2454AA000, v4, OS_LOG_TYPE_FAULT, "UnknownPlatformExtensionFire", v5, 2u);
    return 0;
  }

  return result;
}

void GnssHal::ExtensionsFireImpl::~ExtensionsFireImpl(GnssHal::ExtensionsFireImpl *this)
{
  GnssHal::ExtensionsFireImpl::~ExtensionsFireImpl(this);

  JUMPOUT(0x245D6AEE0);
}

{
  *this = &unk_28585B6E8;
  v2 = this + 32;
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](v2);
}

char *GnssHal::ExtensionsFireImpl::getGpsWeekFromBuildDate(GnssHal::ExtensionsFireImpl *this)
{
  if (*(this + 16))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

uint64_t GnssHal::ExtensionsFireImpl::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsFireImpl::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

void GnssHal::ExtensionsFireImpl::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

uint64_t GnssHal::ExtensionsFireImpl::debugFeaturesBitmask(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsFireImpl::platformSpecificFeaturesBitmask(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsFireImpl::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

uint64_t std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t GnssHal::ExtensionsOlafImpl::requestLtlInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 56))
  {
    v4 = result;
    std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](v7, a3);
    v5 = *(v4 + 56);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, a2, v7);
    result = std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double GnssHal::ExtensionsOlafImpl::groupDelayL1InCAChips(GnssHal::ExtensionsOlafImpl *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = GpsdPreferences::instance(0);
  GpsdPreferences::groupDelayL1InCAChips(v1);
  v3 = v2;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "ExtensionsOlafImpl,groupDelayL1InCAChips,%f", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL GnssHal::ExtensionsOlafImpl::platform(GnssHal::ExtensionsOlafImpl *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    return 0;
  }

  if (*(GpsdPlatformInfo::instance(0) + 8) == 202)
  {
    return 1;
  }

  v2 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_2454AA000, v2, OS_LOG_TYPE_FAULT, "Unhandled platform in ExtensionsOlaf", v3, 2u);
    return 0;
  }

  return result;
}

void GnssHal::ExtensionsOlafImpl::requestBasebandReset(uint64_t a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a3;
    if (*(a3 + 23) < 0)
    {
      v7 = *a3;
    }

    *buf = 67240451;
    *v16 = a2;
    *&v16[4] = 2081;
    *&v16[6] = v7;
    _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEFAULT, "#bbReset,extensionsOlaf,%{public}d,%{private}s", buf, 0x12u);
  }

  v8 = *(a1 + 88);
  if (!v8)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "requestBasebandReset invoked without a handler", buf, 2u);
      v10 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v16 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalExtensionsOlafImpl.cpp";
      *&v16[8] = 1026;
      *&v16[10] = 49;
      v17 = 2082;
      v18 = "requestBasebandReset";
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v14, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v13, "requestBasebandReset");
    std::string::basic_string[abi:ne200100]<0>(&v12, "requestBasebandReset invoked without a handler");
    gpsd::util::triggerDiagnosticReport(&v14, &v13, &v12);
    std::string::~string(&v12);
    std::string::~string(&v13);
    std::string::~string(&v14);
    __assert_rtn("requestBasebandReset", "GnssHalExtensionsOlafImpl.cpp", 49, "false && requestBasebandReset invoked without a handler");
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    v8 = *(a1 + 88);
    *buf = a2;
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    __p = *a3;
    *buf = a2;
  }

  (*(*v8 + 48))(v8, buf, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2454AE548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsOlafImpl::~ExtensionsOlafImpl(GnssHal::ExtensionsOlafImpl *this)
{
  *this = &unk_28585B8B8;
  v1 = this + 32;
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](v1);
}

{
  *this = &unk_28585B8B8;
  v1 = this + 32;
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](v1);

  JUMPOUT(0x245D6AEE0);
}

char *GnssHal::ExtensionsOlafImpl::getGpsWeekFromBuildDate(GnssHal::ExtensionsOlafImpl *this)
{
  if (*(this + 16))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

uint64_t GnssHal::ExtensionsOlafImpl::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsOlafImpl::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

void GnssHal::ExtensionsOlafImpl::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

uint64_t GnssHal::ExtensionsOlafImpl::debugFeaturesBitmask(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsOlafImpl::platformSpecificFeaturesBitmask(GnssHal::ExtensionsOlafImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsOlafImpl::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

double GnssHal::ExtensionsOlafImpl::crossCorrelationSettings(GnssHal::ExtensionsOlafImpl *this)
{
  result = *(this + 12);
  v2 = *(this + 13);
  v3 = *(this + 14);
  v4 = *(this + 15);
  return result;
}

uint64_t std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GnssHal::PlatformTimer::~PlatformTimer(GnssHal::PlatformTimer *this)
{
  *this = &unk_28585B9A8;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_2454AA000, v2, OS_LOG_TYPE_FAULT, "#timer,dtor,unexpected", v4, 2u);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 8);
}

{
  GnssHal::PlatformTimer::~PlatformTimer(this);

  JUMPOUT(0x245D6AEE0);
}

void GnssHal::PlatformTimer::start(GnssHal::PlatformTimer *this, int a2, char a3)
{
  v3 = *(this + 6);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN7GnssHal13PlatformTimer5startEib_block_invoke;
  v4[3] = &__block_descriptor_tmp;
  v4[4] = this;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void GnssHal::PlatformTimer::setTimer(GnssHal::PlatformTimer *this, int a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 || (a3 & 1) != 0)
  {
    v6 = *(this + 5);
    if (!v6 || (a3 & 1) == 0)
    {
      if (!v6)
      {
        operator new();
      }

      v7 = (a2 * 0.001 * 1000000000.0);
      v8 = *(v6 + 8);
      v9 = dispatch_time(0, v7);
      if (a3)
      {
        v10 = v7;
      }

      else
      {
        v10 = -1;
      }

      dispatch_source_set_timer(v8, v9, v10, 0x5F5E100uLL);
    }
  }

  else
  {
    v5 = *(this + 6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN7GnssHal13PlatformTimer8setTimerEib_block_invoke;
    block[3] = &__block_descriptor_tmp_2;
    block[4] = this;
    dispatch_async(v5, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void GnssHal::PlatformTimer::stop(GnssHal::PlatformTimer *this)
{
  v1 = *(this + 6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN7GnssHal13PlatformTimer4stopEv_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = this;
  dispatch_async(v1, block);
}

uint64_t ___ZN7GnssHal13PlatformTimer4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 40);
  *(v1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void GnssHal::PlatformTimer::handleEvent(GnssHal::PlatformTimer *this)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(*v3 + 48);

    v4();
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "timer,handleEvent,callback,nullptr", v6, 2u);
    }
  }
}

uint64_t GnssHal::PlatformTimer::setCallback(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1174405120;
  v5[2] = ___ZN7GnssHal13PlatformTimer11setCallbackENSt3__18functionIFvvEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_11;
  v5[4] = a1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
  dispatch_async(v2, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZN7GnssHal13PlatformTimer11setCallbackENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a1 + 40);
  v2 = v1 + 8;
  if (v7 != (v1 + 8))
  {
    v3 = v8;
    v4 = *(v1 + 32);
    if (v8 == v7)
    {
      if (v4 == v2)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(v1 + 32) + 24))(*(v1 + 32), v7);
        (*(**(v1 + 32) + 32))(*(v1 + 32));
        *(v1 + 32) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, v1 + 8);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(v1 + 32);
      }

      *(v1 + 32) = v2;
    }

    else if (v4 == v2)
    {
      (*(*v4 + 24))(*(v1 + 32), v7);
      (*(**(v1 + 32) + 32))(*(v1 + 32));
      *(v1 + 32) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(v1 + 32);
      *(v1 + 32) = v3;
    }
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454AF4C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
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

void *gpsd::util::GnssTimer::GnssTimer(void *a1, dispatch_queue_t queue, void *a3)
{
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  *a1 = &unk_285863C00;
  a1[1] = v5;
  gpsd::util::DispatchSource::setupHandler(a1, a3);
  *a1 = &unk_28585BA40;
  return a1;
}

void gpsd::util::GnssTimer::~GnssTimer(gpsd::util::GnssTimer *this)
{
  gpsd::util::DispatchSource::~DispatchSource(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t GnssHal::ExtensionsCommon::ExtensionsCommon(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28585BA78;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134349056;
    v9 = a2;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#hal,ExtensionsCommon,extensionsUtil,%{public}p", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  return GnssHal::ExtensionsCommon::ExtensionsCommon(a1, a2, a3);
}

char *GnssHal::ExtensionsCommon::getGpsWeekFromBuildDate(GnssHal::ExtensionsCommon *this)
{
  if (*(this + 8))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

void GnssHal::ExtensionsCommon::setGnssChipInfo(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v9 = 136446467;
    v10 = v6;
    v11 = 2081;
    v12 = v7;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#hal,chipVersion,%{public}s,serial,%{private}s", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t GnssHal::ExtensionsCommon::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsCommon::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void GnssHal::ExtensionsCommon::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

uint64_t GnssHal::ExtensionsCommon::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

uint64_t GnssHal::ExtensionsCommon::supportsL5(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::enableL5(v1);
  v3 = 0;
  if (v2)
  {
    v3 = *(GpsdPlatformInfo::instance(0) + 24);
  }

  return v3 & 1;
}

uint64_t GnssHal::ExtensionsCommon::isBeiDouConsistencyRequired(GnssHal::ExtensionsCommon *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *((**v2)(v2) + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 2);
    v8 = 134349312;
    v9 = v5;
    v10 = 1026;
    v11 = v3 & 1;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "hal,#bcr,%{public}p,%{public}d", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

uint64_t GnssHal::ExtensionsCommon::isStandaloneBeiDouSupportRequired(GnssHal::ExtensionsCommon *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(**v2)(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 2);
    v8 = 134349312;
    v9 = v5;
    v10 = 1026;
    v11 = v3 & 1;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "hal,#sbsr,%{public}p,%{public}d", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

uint64_t GnssHal::ExtensionsCommon::debugFeaturesBitmask(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsCommon::platformSpecificFeaturesBitmask(GnssHal::ExtensionsCommon *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsCommon::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

uint64_t GnssHal::InterfacesImpl::InterfacesImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v13 = *a2;
  *a2 = 0;
  v14 = *(a1 + 8);
  *a1 = &unk_28585BB20;
  *(a1 + 8) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *a3;
  *a3 = 0;
  v16 = *(a1 + 16);
  *(a1 + 16) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *a4;
  *a4 = 0;
  v18 = *(a1 + 24);
  *(a1 + 24) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *a5;
  *a5 = 0;
  v20 = *(a1 + 32);
  *(a1 + 32) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *a6;
  *a6 = 0;
  v22 = *(a1 + 40);
  *(a1 + 40) = v21;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *a7;
  *a7 = 0;
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  return a1;
}

void GnssHal::InterfacesImpl::InterfacesImpl(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_28585BB20;
  if (a2)
  {
    (*(*a2 + 48))(a2);
    v2 = GpsdPreferences::instance(0);
    GpsdPreferences::getLogLevel(v2);
    v3 = GpsdPreferences::instance(0);
    GpsdPreferences::getSecondaryLogLevel(v3);
    v4 = GpsdPreferences::instance(0);
    GpsdPreferences::getLogMask(v4);
    operator new();
  }

  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#hal,InterfacesImpl,halInterfacesUtil,nullptr", &buf, 2u);
    v5 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    buf = 136446722;
    buf_4 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalImpl.cpp";
    v14 = 1026;
    v15 = 42;
    v16 = 2082;
    v17 = "InterfacesImpl";
    _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, "assert");
  std::string::basic_string[abi:ne200100]<0>(v8, "InterfacesImpl");
  std::string::basic_string[abi:ne200100]<0>(__p, "#hal,InterfacesImpl,halInterfacesUtil,nullptr");
  gpsd::util::triggerDiagnosticReport(v10, v8, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  __assert_rtn("InterfacesImpl", "GnssHalImpl.cpp", 42, "false && #hal,InterfacesImpl,halInterfacesUtil,nullptr");
}

void sub_2454B095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  MEMORY[0x245D6AEE0](v48, 0x10A1C40751DFAB8);
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  (*(*v46 + 8))(v46);
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](&a42);
  (*(*v44 + 8))(v44);
  (*(*v43 + 8))(v43);
  GnssHal::Interfaces::~Interfaces(v42);
  _Unwind_Resume(a1);
}

void GnssHal::Interfaces::~Interfaces(GnssHal::Interfaces *this)
{
  *this = &unk_28585BB68;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

{
  GnssHal::Interfaces::~Interfaces(this);

  JUMPOUT(0x245D6AEE0);
}

void GnssHal::InterfacesImpl::~InterfacesImpl(GnssHal::InterfacesImpl *this)
{
  GnssHal::Interfaces::~Interfaces(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0>,void ()(GnssHal::TimeTransferPulseMark)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28585BB88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_0>,void ()(GnssHal::TimeTransferPulseMark)>::target(uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1>,void ()(std::string)>::operator()(gnss::Exception *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *v3 = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = gnss::Exception::instance(a1);
  gnss::Exception::set(v2, 5);
}

void sub_2454B13F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_1>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2>,void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28585BCA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2>,void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = (a3 + 24);
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      v11 = v10;
      (*(*v5 + 24))(v5, v10);
      goto LABEL_7;
    }

    v11 = *(a3 + 24);
  }

  else
  {
    v6 = &v11;
  }

  *v6 = 0;
LABEL_7:
  v7 = *(a1 + 8);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__value_func[abi:ne200100](v12, v10);
  (*(*v7 + 56))(v7, a2, v12);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v12);
  result = std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454B1760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_2>,void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3>,void ()(int,std::string)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28585BD38;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3>,void ()(int,std::string)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 23);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  (*(**(a1 + 8) + 64))(*(a1 + 8), 4);
  if (v4 < 0)
  {

    operator delete(v3);
  }
}

void sub_2454B18F8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3,std::allocator<GnssHal::InterfacesImpl::InterfacesImpl(GnssHal::InterfacesUtil *)::$_3>,void ()(int,std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(int,std::string)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t GnssHal::ExtensionsOlafImpl::ExtensionsOlafImpl(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = &unk_28585B8B8;
  v7 = a1 + 64;
  GnssHal::ExtensionsCommon::ExtensionsCommon(a1 + 8, 0, a4);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::__value_func[abi:ne200100](a1 + 32, a2);
  std::__function::__value_func<void ()(int,std::string)>::__value_func[abi:ne200100](v7, a3);
  GpsdPlatformInfo::instance(0);
  __asm { FMOV            V1.2D, #23.0 }

  *(a1 + 96) = xmmword_245581990;
  *(a1 + 112) = _Q1;
  *(a1 + 128) = 0;
  return a1;
}

void sub_2454B1B28(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](v1 + 32);
  _Unwind_Resume(a1);
}

void *GnssHal::ExtensionsFireImpl::ExtensionsFireImpl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = &unk_28585B6E8;
  v10 = (a1 + 8);
  GnssHal::ExtensionsCommon::ExtensionsCommon((a1 + 1), a2, a6);
  std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::__value_func[abi:ne200100]((a1 + 4), a3);
  std::__function::__value_func<std::string ()(void)>::__value_func[abi:ne200100](v10, a4);
  std::__function::__value_func<std::string ()(void)>::__value_func[abi:ne200100]((a1 + 12), a5);
  return a1;
}

void sub_2454B1BDC(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::string ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t GnssHal::ExtensionsIndusImpl::ExtensionsIndusImpl(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = &unk_28585C1E0;
  GnssHal::ExtensionsCommon::ExtensionsCommon(a1 + 8, a2, a3);
  v4 = GpsdPlatformInfo::instance(0);
  *(a1 + 32) = GpsdPlatformInfo::indusCrossCorrelationSettings(v4);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return a1;
}

uint64_t GnssHal::CommUart::CommUart(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28585BDC8;
  v4 = GpsdPreferences::instance(0);
  *(a1 + 8) = GpsdPreferences::verboseCommDataSniffer(v4);
  *(a1 + 16) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(a1 + 40) = *(a2 + 24);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 32);
  *(a1 + 56) = -1;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  if ((*(*a1 + 72))(a1))
  {
    operator new();
  }

  return a1;
}

void sub_2454B1EC4(_Unwind_Exception *a1)
{
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  MEMORY[0x245D6AEE0](v3, 0x1070C4039216641);
  std::unique_ptr<GnssHal::CommUart::AsyncReader>::reset[abi:ne200100](v2, 0);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(a1);
}

void GnssHal::CommUart::~CommUart(GnssHal::CommUart *this)
{
  *this = &unk_28585BDC8;
  GnssHal::CommUart::close(this);
  std::unique_ptr<GnssHal::CommUart::AsyncReader>::reset[abi:ne200100](this + 8, 0);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  GnssHal::CommUart::~CommUart(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t GnssHal::CommUart::open(GnssHal::CommUart *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(*this + 32))(this))
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "#comm,already open", &__p, 2u);
    }

    v3 = *(this + 60);
    goto LABEL_26;
  }

  if (*(this + 47) < 0)
  {
    v4 = *(this + 4);
    if (v4)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 3), v4);
      goto LABEL_11;
    }
  }

  else if (*(this + 47))
  {
    __p = *(this + 1);
    goto LABEL_11;
  }

  GpsdPlatformInfo::instance(0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/dev/cu.gps");
LABEL_11:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = open(p_p, 131074, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  *(this + 14) = v6;
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v12 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v16 = v12;
    v17 = 1026;
    v18 = 131074;
    _os_log_debug_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEBUG, "#comm,open,%{public}s,flag,0x%{public}X", buf, 0x12u);
    v6 = *(this + 14);
  }

  if (v6 == -1)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v13 = *__error();
      *buf = 67240192;
      LODWORD(v16) = v13;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "#comm,open,errno,%{public}d", buf, 8u);
    }
  }

  else if ((*(*this + 112))(this) && GnssHal::CommUart::configure(this))
  {
    v8 = *(this + 8);
    if (v8)
    {
      GnssHal::CommUart::AsyncReader::open(v8);
    }

    v3 = 1;
    goto LABEL_24;
  }

  v3 = 0;
LABEL_24:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_26:
  v10 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

void sub_2454B2268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::CommUart::configure(GnssHal::CommUart *this)
{
  v31 = *MEMORY[0x277D85DE8];
  if (tcgetattr(*(this + 14), &v30) == -1)
  {
    v9 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v22 = *__error();
    *buf = 67240192;
    *v28 = v22;
    v6 = "#comm,configure,tcgetattr failed,%{public}d";
LABEL_27:
    v7 = v9;
    v8 = 8;
    goto LABEL_28;
  }

  cfmakeraw(&v30);
  v30.c_cc[16] = 0;
  v30.c_cc[17] = *(this + 17);
  if (v30.c_cc[17])
  {
    v25 = 115200;
    v26 = 115200;
    v2 = GnssHal::CommUart::Config::lookupBaudRate((this + 16), &v26, &v25);
    v3 = v26;
    if (cfsetspeed(&v30, v26))
    {
      v4 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        *buf = 134349312;
        *v28 = v3;
        *&v28[8] = 1026;
        LODWORD(v29[0]) = v5;
        v6 = "#comm,configure,cfsetspeed failed,%{public}lu,%{public}d";
        v7 = v4;
LABEL_6:
        v8 = 18;
LABEL_28:
        _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      }

LABEL_8:
      v10 = 0;
      *(this + 60) = 0;
      goto LABEL_12;
    }

    v14 = v30.c_cflag | 0x30300;
    if (!*(this + 16))
    {
      v14 = v30.c_cflag & 0xFFFFFFFFFFFCFCFFLL | 0x300;
    }

    v30.c_cflag = v14;
    if (tcsetattr(*(this + 14), 0, &v30))
    {
      v9 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v15 = *__error();
      *buf = 67240192;
      *v28 = v15;
      v6 = "#comm,configure,tcsetattr failed,%{public}d";
      goto LABEL_27;
    }

    if (v2)
    {
      v16 = ioctl(*(this + 14), 0x80085402uLL, &v25);
      v17 = GpsdLogObjectGeneral;
      if (v16 == -1)
      {
        if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v23 = v25;
        v24 = *__error();
        *buf = 134349312;
        *v28 = v23;
        *&v28[8] = 1026;
        LODWORD(v29[0]) = v24;
        v6 = "#comm,configure,IOSSIOSPEED failed,%{public}lu,%{public}d";
        v7 = v17;
        goto LABEL_6;
      }

      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v28 = v25;
        *&v28[8] = 2050;
        v29[0] = v3;
        _os_log_debug_impl(&dword_2454AA000, v17, OS_LOG_TYPE_DEBUG, "#comm,configure,IOSSIOSPEED,%{public}lu,standardSpeed,%{public}lu", buf, 0x16u);
      }
    }

    v18 = GpsdLogObjectGeneral;
    v10 = 1;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      v19 = *(this + 16);
      v20 = *(this + 17);
      v21 = v25;
      if (!v2)
      {
        v21 = v3;
      }

      *buf = 67240704;
      *v28 = v19;
      *&v28[4] = 1026;
      *&v28[6] = v20;
      LOWORD(v29[0]) = 2050;
      *(v29 + 2) = v21;
      _os_log_impl(&dword_2454AA000, v18, OS_LOG_TYPE_INFO, "#comm,configured,flowCtrl,%{public}d,timeoutTenths,%{public}d,baud,%{public}lu", buf, 0x18u);
    }
  }

  else
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v11, OS_LOG_TYPE_ERROR, "#comm,configure,timeoutTenthsOfSeconds is 0", buf, 2u);
    }

    v10 = 0;
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void GnssHal::CommUart::AsyncReader::open(GnssHal::CommUart::AsyncReader *this)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(**this + 40))(*this);
  std::vector<unsigned char>::reserve(this + 8, 0x1000uLL);
  v2 = MEMORY[0x277D85DD0];
  v3 = 0x40000000;
  v4 = ___ZN7GnssHal8CommUart11AsyncReader4openEv_block_invoke;
  v5 = &__block_descriptor_tmp_0;
  v6 = this;
  operator new();
}

void GnssHal::CommUart::close(GnssHal::CommUart *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*this + 32))(this))
  {
    v2 = *(this + 8);
    if (v2)
    {
      GnssHal::CommUart::AsyncReader::close(v2);
    }

    if (close(*(this + 14)) < 0)
    {
      v9 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *__error();
        v12[0] = 67240192;
        v12[1] = v10;
        v4 = "#comm,close,errno,%{public}d";
        v5 = v9;
        v6 = OS_LOG_TYPE_DEFAULT;
        v7 = 8;
        goto LABEL_11;
      }
    }

    else
    {
      v3 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        v4 = "#comm,close,completed";
        v5 = v3;
        v6 = OS_LOG_TYPE_INFO;
        v7 = 2;
LABEL_11:
        _os_log_impl(&dword_2454AA000, v5, v6, v4, v12, v7);
      }
    }

    *(this + 14) = -1;
    goto LABEL_13;
  }

  v8 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_INFO, "#comm,close,not open", v12, 2u);
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

void GnssHal::CommUart::AsyncReader::close(GnssHal::CommUart::AsyncReader *this)
{
  if (*(this + 1))
  {
    v2 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
    v3 = v2 > 4;
    v4 = (1 << v2) & 0x19;
    if (!v3 && v4 != 0)
    {
      (*(**(this + 1) + 16))(*(this + 1));
    }
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 8);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

BOOL GnssHal::CommUart::waitForDataAvailable(GnssHal::CommUart *this)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(*this + 32))(this))
  {
    v2 = *(this + 14);
    memset(&v17, 0, sizeof(v17));
    if (__darwin_check_fd_set_overflow(v2, &v17, 0))
    {
      *(v17.fds_bits + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
    }

    v3 = select(v2 + 1, &v17, 0, 0, 0);
    v4 = v3 >= 0;
    if (v3 < 0)
    {
      v12 = *__error();
      v13 = GpsdLogObjectGeneral;
      if (v12 == 9)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          v19 = v2;
          _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_INFO, "#comm,select,interrupted,fd,%{public}d", buf, 8u);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        v15 = __error();
        v16 = strerror(*v15);
        *buf = 67240706;
        v19 = v14;
        v20 = 2082;
        v21 = v16;
        v22 = 1026;
        v23 = v2;
        v6 = "#comm,select,errno,%{public}d,%{public}s,fd,%{public}d";
        v7 = v13;
        v8 = 24;
        goto LABEL_17;
      }
    }

    else if (*(this + 61) == 1)
    {
      v5 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v6 = "#comm,rx data while in sleep";
        v7 = v5;
        v8 = 2;
LABEL_17:
        _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      }
    }
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17.fds_bits[0]) = 0;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "#comm,waitForDataAvailable,portNotOpen", &v17, 2u);
    }

    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

ssize_t GnssHal::CommUart::readTimeout(GnssHal::CommUart *this, unsigned __int8 *a2, size_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 60) != 1 || ((*(*this + 32))(this) & 1) == 0)
  {
    v10 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 60);
      v12 = (*(*this + 32))(this);
      v15 = 67240448;
      v16 = v11;
      v17 = 1026;
      LODWORD(v18) = v12;
      _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "#comm,read,unavailable,good,%{public}d,open,%{public}d", &v15, 0xEu);
    }

    goto LABEL_12;
  }

  v7 = read(*(this + 14), a2, a3);
  if (*(this + 8) == 1)
  {
    gpsd::util::logBinaryBytes(a2, v7, "#comm,read", v6);
  }

  if (v7 == -1)
  {
    v8 = *__error();
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67240450;
      v16 = v8;
      v17 = 2082;
      v18 = strerror(v8);
      _os_log_debug_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEBUG, "#comm,read,errno,%{public}d,%{public}s", &v15, 0x12u);
    }

    if (v8 == 35)
    {
      v7 = 0;
      goto LABEL_13;
    }

    *(this + 60) = 0;
LABEL_12:
    v7 = -1;
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t GnssHal::CommUart::isReadCallbackSupported(GnssHal::CommUart *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::usesAsyncCommRead(v1);
}

BOOL GnssHal::CommUart::setReadCallback(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](v5, a2);
    GnssHal::CommUart::AsyncReader::setReadCallback(v2, v5);
    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v5);
  }

  result = v2 != 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454B31C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::CommUart::AsyncReader::setReadCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#comm,setReadCallback,alreadySet", buf, 2u);
    }
  }

  std::function<void ()(unsigned char *,unsigned long)>::operator=((a1 + 24), a2);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEBUG, "#comm,setReadCallback", v7, 2u);
  }

  return 1;
}

BOOL GnssHal::CommUart::readComplete(GnssHal::CommUart *this, unsigned __int8 *a2, unint64_t a3)
{
  v6 = 0;
  do
  {
    v7 = v6;
    if (a3 <= v6)
    {
      break;
    }

    v8 = (*(*this + 56))(this, &a2[v6], a3 - v6);
    v6 = v8 + v7;
  }

  while ((v8 & 0x8000000000000000) == 0);
  return a3 == v7;
}

uint64_t GnssHal::CommUart::write(GnssHal::CommUart *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 8) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#comm,write", a4);
  }

  if (*(this + 60) != 1 || ((*(*this + 32))(this) & 1) == 0)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(this + 60);
      v17 = (*(*this + 32))(this);
      v18 = 67240448;
      *v19 = v16;
      *&v19[4] = 1026;
      *&v19[6] = v17;
      _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "#comm,write,unavailable,good,%{public}d,open,%{public}d", &v18, 0xEu);
    }

    goto LABEL_11;
  }

  v7 = write(*(this + 14), a2, a3);
  if (v7 != -1)
  {
    v8 = v7;
    if (v7 < a3)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134349312;
        *v19 = a3;
        *&v19[8] = 1026;
        v20 = v8;
        _os_log_debug_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEBUG, "#comm,write,overflow,toWrite,%{public}zu,done,%{public}d,retry", &v18, 0x12u);
      }
    }

    goto LABEL_12;
  }

  v13 = *__error();
  if (v13 != 35)
  {
    *(this + 60) = 0;
    v15 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67240192;
      *v19 = v13;
      _os_log_impl(&dword_2454AA000, v15, OS_LOG_TYPE_DEFAULT, "#comm,write,errno,%{public}d", &v18, 8u);
    }

LABEL_11:
    v8 = -1;
    goto LABEL_12;
  }

  v14 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v18 = 67240192;
    *v19 = 35;
    _os_log_debug_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEBUG, "#comm,write,errno,%{public}d", &v18, 8u);
  }

  v8 = 0;
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL GnssHal::CommUart::writeComplete(GnssHal::CommUart *this, const unsigned __int8 *a2, unint64_t a3)
{
  v6 = 0;
  do
  {
    v7 = v6;
    if (a3 <= v6)
    {
      break;
    }

    v8 = (*(*this + 88))(this, &a2[v6], a3 - v6);
    v6 = v8 + v7;
  }

  while ((v8 & 0x8000000000000000) == 0);
  return a3 == v7;
}

BOOL GnssHal::CommUart::enterLowPowerMode(GnssHal::CommUart *this)
{
  v2 = GnssHal::CommUart::setRtsState(this, 0);
  v3 = GpsdLogObjectGeneral;
  if (v2)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#comm,enterLowPowerMode,success", buf, 2u);
    }

    *(this + 61) = 1;
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "#comm,enterLowPowerMode,failure", v5, 2u);
  }

  return v2;
}

BOOL GnssHal::CommUart::setRtsState(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v12 = a2;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "#comm,setRtsState,%{public}d", buf, 8u);
  }

  v10 = 4;
  if (a2 != 1)
  {
    if (!a2 && ioctl(*(a1 + 56), 0x8004746BuLL, &v10) < 0)
    {
      v5 = GpsdLogObjectGeneral;
      result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v7 = *__error();
        *buf = 67240448;
        v12 = 0;
        v13 = 1026;
        v14 = v7;
LABEL_13:
        _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#comm,setRtsState,%{public}d,ioctl error,%{public}d", buf, 0xEu);
        result = 0;
        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_9:
    result = 1;
    goto LABEL_10;
  }

  if ((ioctl(*(a1 + 56), 0x8004746CuLL, &v10) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v5 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v9 = *__error();
    *buf = 67240448;
    v12 = 1;
    v13 = 1026;
    v14 = v9;
    goto LABEL_13;
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL GnssHal::CommUart::exitLowPowerMode(GnssHal::CommUart *this)
{
  v2 = GnssHal::CommUart::setRtsState(this, 1);
  v3 = GpsdLogObjectGeneral;
  if (v2)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#comm,exitLowPowerMode,success", buf, 2u);
    }

    *(this + 61) = 0;
  }

  else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "#comm,exitLowPowerMode,failure", v5, 2u);
  }

  return v2;
}

BOOL GnssHal::CommUart::readWriteFlush(GnssHal::CommUart *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*this + 32))(this))
  {
    if (tcflush(*(this + 14), 3))
    {
      v2 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *__error();
        v8[0] = 67240192;
        v8[1] = v3;
        _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#comm,readWriteFlush,TCIOFLUSH error,%{public}d", v8, 8u);
      }

      result = 0;
      *(this + 60) = 0;
    }

    else
    {
      v6 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8[0]) = 0;
        _os_log_debug_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEBUG, "#comm,readWriteFlush,success", v8, 2u);
      }

      result = 1;
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_INFO, "#comm,readWriteFlush,not open", v8, 2u);
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL GnssHal::CommUart::readFlush(GnssHal::CommUart *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*this + 32))(this))
  {
    v2 = tcflush(*(this + 14), 1);
    v3 = GpsdLogObjectGeneral;
    if (v2)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v4 = *__error();
        v8[0] = 67240192;
        v8[1] = v4;
        _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "#comm,readFlush,TCIFLUSH error,%{public}d", v8, 8u);
      }

      result = 0;
      *(this + 60) = 0;
    }

    else
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8[0]) = 0;
        _os_log_debug_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEBUG, "#comm,readFlush,success", v8, 2u);
      }

      result = 1;
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_INFO, "#comm,readFlush,not open", v8, 2u);
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GnssHal::CommUart::Config::lookupBaudRate(GnssHal::CommUart::Config *this, unint64_t *a2, unint64_t *a3)
{
  if (*(this + 36) == 1)
  {
    v5 = *(this + 8);
  }

  else
  {
    v5 = GnssHal::CommUart::Config::platformDefaultBaudRate(this);
  }

  result = 0;
  *a2 = 115200;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 0:
        result = 0;
        *a2 = 9600;
        return result;
      case 1:
        v7 = 921600;
        break;
      case 3:
        v7 = 1000000;
        break;
      default:
        return result;
    }
  }

  else if (v5 > 5)
  {
    if (v5 == 6)
    {
      v7 = 3200000;
    }

    else
    {
      if (v5 != 7)
      {
        return result;
      }

      v7 = 4800000;
    }
  }

  else if (v5 == 4)
  {
    v7 = 2400000;
  }

  else
  {
    v7 = 3000000;
  }

  *a3 = v7;
  return 1;
}

uint64_t GnssHal::CommUart::Config::platformDefaultBaudRate(GnssHal::CommUart::Config *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    v1 = GpsdPreferences::instance(0);
    if (GpsdPreferences::baudRate4M8(v1))
    {
      v2 = 7;
    }

    else
    {
      v2 = 4;
    }
  }

  else if (*(GpsdPlatformInfo::instance(0) + 8) == 103 || *(GpsdPlatformInfo::instance(0) + 8) == 106)
  {
    v2 = 6;
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    v2 = 1;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67240192;
      v6[1] = 1;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "UnsupportedHardware,defaultRate,%{public}d,used", v6, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

void GnssHal::CommUart::pulseTimeMarkStrobe(GnssHal::CommUart *this@<X0>, uint64_t a2@<X8>)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "#comm,CommUart::pulseTimeMarkStrobe", &v7, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    GnssHal::CommUart::AsyncReader::pulseTimeMarkStrobe(v5, &v7);
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "#comm,fAsyncReader,null", &v7, 2u);
    }
  }
}

void GnssHal::CommUart::AsyncReader::pulseTimeMarkStrobe(GnssHal::CommUart::AsyncReader *this@<X0>, uint64_t a2@<X8>)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "#comm,CommUart::AsyncReader::pulseTimeMarkStrobe", &v7, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 48))(&v7);
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "#comm,fGpio,null", &v7, 2u);
    }
  }
}

dispatch_queue_t GnssHal::CommUart::AsyncReader::createDispatchQueue(GnssHal::CommUart::AsyncReader *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::maxSchedulerQos(v1);
  v3 = dispatch_queue_attr_make_with_qos_class(0, v2, 0);
  if (!v3)
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#comm,async,nullattr", buf, 2u);
    }
  }

  result = dispatch_queue_create("com.apple.gpsd.comm", v3);
  if (!result)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "#comm,async,createQ,nullptr", buf, 2u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommUart.cpp";
      v13 = 1026;
      v14 = 437;
      v15 = 2082;
      v16 = "createDispatchQueue";
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v9, "createDispatchQueue");
    std::string::basic_string[abi:ne200100]<0>(&v8, "#comm,async,createQ,nullptr");
    gpsd::util::triggerDiagnosticReport(&v10, &v9, &v8);
    std::string::~string(&v8);
    std::string::~string(&v9);
    std::string::~string(&v10);
    __assert_rtn("createDispatchQueue", "GnssHalCommUart.cpp", 437, "false && #comm,async,createQ,nullptr");
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454B4290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(unsigned char *,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t ___ZN7GnssHal8CommUart11AsyncReader4openEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(**v1 + 56))(*v1, v1[8], v1[10] - v1[8]);
  if (result >= 1 && v1[6])
  {
    v3 = v1[8];

    return std::function<void ()(unsigned char *,unsigned long)>::operator()((v1 + 3), v3, result);
  }

  return result;
}

uint64_t std::function<void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

GnssHal::CommUart::AsyncReader **std::unique_ptr<GnssHal::CommUart::AsyncReader>::reset[abi:ne200100](GnssHal::CommUart::AsyncReader **result, GnssHal::CommUart::AsyncReader *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    GnssHal::CommUart::AsyncReader::close(v2);
    v3 = *(v2 + 8);
    if (v3)
    {
      *(v2 + 9) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 7);
    *(v2 + 7) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v2 + 24);
    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned char *,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_2454B497C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gpsd::util::DispatchSourceRead::~DispatchSourceRead(gpsd::util::DispatchSourceRead *this)
{
  gpsd::util::DispatchSource::~DispatchSource(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t getGnssDeviceDylib(void)
{
  if (!gGnssDeviceDylibInstance)
  {
    v0 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_2454AA000, v0, OS_LOG_TYPE_DEFAULT, "initGnssDeviceDylib", v2, 2u);
    }

    operator new();
  }

  return *gGnssDeviceDylibInstance;
}

uint64_t newGnssDevice(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  GnssDeviceDylib = getGnssDeviceDylib();
  v7 = dlsym(GnssDeviceDylib, "newGnssDevice");
  if (!v7)
  {
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, "#gdd,dlsym failed", buf, 2u);
      v16 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v25 = 1026;
      v26 = 30;
      v27 = 2082;
      v28 = "newGnssDevice";
      _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v20, "newGnssDevice");
    std::string::basic_string[abi:ne200100]<0>(&v19, "#gdd,dlsym failed");
    gpsd::util::triggerDiagnosticReport(&v21, &v20, &v19);
    std::string::~string(&v19);
    std::string::~string(&v20);
    std::string::~string(&v21);
    __assert_rtn("newGnssDevice", "GpsdGnssDeviceDylib.cpp", 30, "false && #gdd,dlsym failed");
  }

  v8 = v7;
  v9 = *a1;
  *a1 = 0;
  v10 = *a2;
  *a2 = 0;
  v17 = v10;
  v18 = v9;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a3);
  v11 = v8(&v18, &v17, v22);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2454B4CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a30);
  if (a10)
  {
    (*(*a10 + 48))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t newGnssDeviceTest(uint64_t *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  GnssDeviceDylib = getGnssDeviceDylib();
  v5 = dlsym(GnssDeviceDylib, "newGnssDeviceTest");
  if (!v5)
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v12, OS_LOG_TYPE_ERROR, "#gdd,dlsym failed", buf, 2u);
      v12 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v20 = 1026;
      v21 = 37;
      v22 = 2082;
      v23 = "newGnssDeviceTest";
      _os_log_error_impl(&dword_2454AA000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v15, "newGnssDeviceTest");
    std::string::basic_string[abi:ne200100]<0>(&v14, "#gdd,dlsym failed");
    gpsd::util::triggerDiagnosticReport(&v16, &v15, &v14);
    std::string::~string(&v14);
    std::string::~string(&v15);
    std::string::~string(&v16);
    __assert_rtn("newGnssDeviceTest", "GpsdGnssDeviceDylib.cpp", 37, "false && #gdd,dlsym failed");
  }

  v6 = v5;
  v7 = *a1;
  *a1 = 0;
  v13 = v7;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a2);
  v8 = v6(&v13, v17);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2454B4FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a28);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t getVersionString()
{
  v14 = *MEMORY[0x277D85DE8];
  GnssDeviceDylib = getGnssDeviceDylib();
  v1 = dlsym(GnssDeviceDylib, "getVersionString");
  if (!v1)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#gdd,Could not dlsym for version string", buf, 2u);
      v4 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v10 = 1026;
      v11 = 46;
      v12 = 2082;
      v13 = "getVersionString";
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v7, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v6, "getVersionString");
    std::string::basic_string[abi:ne200100]<0>(&v5, "#gdd,Could not dlsym for version string");
    gpsd::util::triggerDiagnosticReport(&v7, &v6, &v5);
    std::string::~string(&v5);
    std::string::~string(&v6);
    std::string::~string(&v7);
    __assert_rtn("getVersionString", "GpsdGnssDeviceDylib.cpp", 46, "false && #gdd,Could not dlsym for version string");
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

void sub_2454B5228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getGnssDeviceVersion()
{
  v14 = *MEMORY[0x277D85DE8];
  GnssDeviceDylib = getGnssDeviceDylib();
  v1 = dlsym(GnssDeviceDylib, "getGnssDeviceVersion");
  if (!v1)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#gdd,Could not dlsym for version number", buf, 2u);
      v4 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v10 = 1026;
      v11 = 55;
      v12 = 2082;
      v13 = "getGnssDeviceVersion";
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v7, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v6, "getGnssDeviceVersion");
    std::string::basic_string[abi:ne200100]<0>(&v5, "#gdd,Could not dlsym for version number");
    gpsd::util::triggerDiagnosticReport(&v7, &v6, &v5);
    std::string::~string(&v5);
    std::string::~string(&v6);
    std::string::~string(&v7);
    __assert_rtn("getGnssDeviceVersion", "GpsdGnssDeviceDylib.cpp", 55, "false && #gdd,Could not dlsym for version number");
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

void sub_2454B5428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void GpsdGnssDeviceDylib::GpsdGnssDeviceDylib(GpsdGnssDeviceDylib *this)
{
  v34 = *MEMORY[0x277D85DE8];
  *this = 0;
  v2 = GpsdPlatformInfo::instance(0);
  GpsdPlatformInfo::vendorDylibFullPathName(v2, &v27);
  GpsdPreferences::instance(0);
  GpsdPreferences::forceGnssDeviceLibraryName(&__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(&v27, &__str);
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#gdd,createDevice,forcing gnssDevLibName", buf, 2u);
    }
  }

  v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v27.__r_.__value_.__l.__size_;
  }

  v7 = GpsdLogObjectGeneral;
  if (!v5)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "#gdd,createDevice,unsupported platform", buf, 2u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v30 = 1026;
      v31 = 71;
      v32 = 2082;
      v33 = "GpsdGnssDeviceDylib";
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "assert");
    std::string::basic_string[abi:ne200100]<0>(v23, "GpsdGnssDeviceDylib");
    std::string::basic_string[abi:ne200100]<0>(v21, "#gdd,createDevice,unsupported platform");
    gpsd::util::triggerDiagnosticReport(v25, v23, v21);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v13 = "false && #gdd,createDevice,unsupported platform";
    v14 = 71;
    if ((v25[23] & 0x80000000) != 0)
    {
      v15 = v25;
      goto LABEL_32;
    }

LABEL_33:
    __assert_rtn("GpsdGnssDeviceDylib", "GpsdGnssDeviceDylib.cpp", v14, v13);
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v27.__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v8 = &v27;
    }

    *buf = 136380675;
    v29 = v8;
    _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "#gdd,createDevice,gnssDevLibName,%{private}s", buf, 0xCu);
    LOBYTE(v6) = *(&v27.__r_.__value_.__s + 23);
  }

  if ((v6 & 0x80u) == 0)
  {
    v9 = &v27;
  }

  else
  {
    v9 = v27.__r_.__value_.__r.__words[0];
  }

  v10 = dlopen(v9, 4);
  *this = v10;
  if (!v10)
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v12, OS_LOG_TYPE_ERROR, "#gdd,dlopen failed", buf, 2u);
      v12 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Device/GpsdGnssDeviceDylib.cpp";
      v30 = 1026;
      v31 = 77;
      v32 = 2082;
      v33 = "GpsdGnssDeviceDylib";
      _os_log_error_impl(&dword_2454AA000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "assert");
    std::string::basic_string[abi:ne200100]<0>(v18, "GpsdGnssDeviceDylib");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gdd,dlopen failed");
    gpsd::util::triggerDiagnosticReport(v20, v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v13 = "false && #gdd,dlopen failed";
    v14 = 77;
    if ((v20[23] & 0x80000000) != 0)
    {
      v15 = v20;
LABEL_32:
      operator delete(*v15);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2454B58A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (*(v50 - 97) < 0)
  {
    operator delete(*(v50 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t GnssHal::CommPcie::CommPcie(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x277D85DE8];
  *a1 = &unk_28585BED0;
  *(a1 + 96) = 0;
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](a1 + 104, a3);
  if (qword_27EE14D18)
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#pcie,sReadCallbackFunction collision", v9, 2u);
    }
  }

  std::__function::__value_func<void ()(std::string)>::__value_func[abi:ne200100](v9, a2);
  v6 = v10;
  if (v10 == v9)
  {
    if (qword_27EE14D38 == &qword_27EE14D20)
    {
      (*(*v10 + 24))();
      (*(*v10 + 32))(v10);
      v10 = 0;
      (*(*qword_27EE14D38 + 24))(qword_27EE14D38, v9);
      (*(*qword_27EE14D38 + 32))(qword_27EE14D38);
      qword_27EE14D38 = 0;
      v10 = v9;
      (*(v11[0] + 24))(v11, &qword_27EE14D20);
      (*(v11[0] + 32))(v11);
    }

    else
    {
      (*(*v10 + 24))();
      (*(*v10 + 32))(v10);
      v10 = qword_27EE14D38;
    }

    qword_27EE14D38 = &qword_27EE14D20;
  }

  else if (qword_27EE14D38 == &qword_27EE14D20)
  {
    (*(qword_27EE14D20 + 24))(&qword_27EE14D20, v9);
    (*(*qword_27EE14D38 + 32))(qword_27EE14D38);
    qword_27EE14D38 = v10;
    v10 = v9;
  }

  else
  {
    v10 = qword_27EE14D38;
    qword_27EE14D38 = v6;
  }

  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2454B5DA0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::CommPcie::~CommPcie(GnssHal::CommPcie *this)
{
  *this = &unk_28585BED0;
  GnssHal::CommPcie::close(this);
  std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]();
  if (*(this + 96) == 1)
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "#pcie,freeInternal", buf, 2u);
    }

    v3 = TelephonyUtilTransportFree();
    v4 = GpsdLogObjectGeneral;
    if (v3)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#pcie,freeInternal,success", v6, 2u);
      }
    }

    else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#pcie,freeInternal,failure", v5, 2u);
    }

    *(this + 96) = 0;
  }

  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](this + 104);
}

{
  GnssHal::CommPcie::~CommPcie(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t GnssHal::CommPcie::setReadCallback(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::function<void ()(unsigned char *,unsigned long)>::operator=(_MergedGlobals, a2);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 24) != 0;
    v7[0] = 67240192;
    v7[1] = v4;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#pcie,setReadCallback,%{public}d", v7, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL GnssHal::CommPcie::openInternal(GnssHal::CommPcie *this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  if (*(this + 96) == 1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#pcie,open,already open", buf, 2u);
    }

    result = 1;
  }

  else
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      v12 = a2;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "#pcie,open,creating,timeout,%{public}d", buf, 8u);
    }

    TelephonyBasebandPCITransportInitParameters();
    *buf = 14;
    v14 = 1000 * a2;
    v15 |= 5u;
    v16 = 0x100000000004;
    v19 = 25;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke;
    v10[3] = &__block_descriptor_tmp_1;
    v10[4] = this;
    v13 = v10;
    v17 = &__block_literal_global;
    v18 = &__block_literal_global_10;
    v6 = TelephonyBasebandPCITransportCreate();
    v7 = GpsdLogObjectGeneral;
    if (v6)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "#pcie,open,success", v9, 2u);
      }

      result = 1;
    }

    else
    {
      result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v9 = 0;
        _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "#pcie,open,failure", v9, 2u);
        result = 0;
      }
    }

    *(this + 96) = result;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  memset(&v15, 0, sizeof(v15));
  v8 = GpsdLogObjectGeneral;
  v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (a2 == 1)
    {
      if (v9)
      {
        *buf = 134283777;
        *v17 = a3;
        *&v17[8] = 2049;
        *&v17[10] = a4;
        _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "#pcie,statusBlock,PCITransportStatusError,%{private}p,%{private}p", buf, 0x16u);
      }

      v10 = "#pcie_TransportStatusError";
    }

    else
    {
      if (v9)
      {
        *buf = 67240705;
        *v17 = a2;
        *&v17[4] = 2049;
        *&v17[6] = a3;
        *&v17[14] = 2049;
        *&v17[16] = a4;
        _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "#pcie,statusBlock,Unrecognized status 0x%{public}08x,%{private}p,%{private}p", buf, 0x1Cu);
      }

      v10 = "#pcie_UnknownStatus";
    }
  }

  else
  {
    if (v9)
    {
      *buf = 134283777;
      *v17 = a3;
      *&v17[8] = 2049;
      *&v17[10] = a4;
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "#pcie,statusBlock,PCITransportStatusNotReady,%{private}p,%{private}p", buf, 0x16u);
    }

    v10 = "#pcie_TransportStatusNotReady";
  }

  MEMORY[0x245D6AB60](&v15, v10);
  (*(*v7 + 24))(v7);
  if (!qword_27EE14D38)
  {
    exit(-1);
  }

  v11 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = &v15;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    *v17 = v12;
    _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEFAULT, "#pcie,invoking exit callback,%{public}s", buf, 0xCu);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v15;
  }

  if (!qword_27EE14D38)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*qword_27EE14D38 + 48))(qword_27EE14D38, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]();
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2454B6504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke_5(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = qword_27EE14D18;
  if (!a2 && a4 && qword_27EE14D18)
  {
    v8 = *MEMORY[0x277D85DE8];

    std::function<void ()(unsigned char *,unsigned long)>::operator()(_MergedGlobals, a3, a4);
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67241216;
      v11[1] = a2;
      v12 = 1026;
      v13 = a2 == -536870165;
      v14 = 1026;
      v15 = a2 == -536870168;
      v16 = 1026;
      v17 = a4;
      v18 = 1026;
      v19 = v7 != 0;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "#pcie,async read failure,0x%{public}08x,is_aborted,%{public}d,is_overrun,%{public}d,sz,%{public}u,callback,%{public}d", v11, 0x20u);
    }

    free(a3);
    v10 = *MEMORY[0x277D85DE8];
  }
}

void ___ZN7GnssHal8CommPcie12openInternalEi_block_invoke_2(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v13 = a2;
      v14 = 1026;
      v15 = a4;
      _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "#pcie,write error,0x%{public}08x,sz,%{public}u", buf, 0xEu);
    }

    v7 = qword_27EE14D38;
    if (!qword_27EE14D38)
    {
      exit(-2);
    }

    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "#pcie,invoking exit callback,#pcie_writeError", buf, 2u);
      v7 = qword_27EE14D38;
      v11 = 16;
      strcpy(__p, "#pcie_writeError");
      if (!qword_27EE14D38)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      v11 = 16;
      strcpy(__p, "#pcie_writeError");
    }

    (*(*v7 + 48))(v7, __p);
    if (v11 < 0)
    {
      operator delete(*__p);
    }

    std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t *GnssHal::CommPcie::close(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "#pcie,ignoring close", v3, 2u);
  }

  result = qword_27EE14D18;
  qword_27EE14D18 = 0;
  if (result == &_MergedGlobals)
  {
    return (*(_MergedGlobals + 32))(&_MergedGlobals);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t GnssHal::CommPcie::openWithRetries(GnssHal::CommPcie *this, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  v5 = MachContinuousTimeNs * 0.000000001;
  v6 = a2;
  v7 = gpsd::util::getMachContinuousTimeNs(MachContinuousTimeNs) * 0.000000001;
  v8 = v5 - v7 + a2;
  v9 = llround(v8);
  if (v9 >= 1)
  {
    if (v9 >= 0x1E)
    {
      v10 = 30;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *buf = 67240448;
        v28 = v10;
        v29 = 2050;
        v30 = v8;
        _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_INFO, "#pcie,thisOpen,start,thisTimeoutSec,%{public}d,timeLeftSec,%{public}.3f", buf, 0x12u);
      }

      v12 = GnssHal::CommPcie::openInternal(this, v10);
      v13 = v12;
      v14 = gpsd::util::getMachContinuousTimeNs(v12) * 0.000000001;
      v15 = v14 - v7;
      v16 = v5 - v14 + v6;
      v17 = GpsdLogObjectGeneral;
      v18 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        *buf = 67240704;
        v28 = v13;
        v29 = 2050;
        v30 = v15;
        v31 = 2050;
        v32 = v16;
        _os_log_impl(&dword_2454AA000, v17, OS_LOG_TYPE_DEFAULT, "#pcie,thisOpen,success,%{public}d,durationSec,%{public}.3f,timeLeftSec,%{public}.3f", buf, 0x1Cu);
      }

      v19 = v16 < 5.0 || v13;
      if (v19)
      {
        break;
      }

      if (v15 < 5.0)
      {
        v18 = sleep(5u);
      }

      v7 = gpsd::util::getMachContinuousTimeNs(v18) * 0.000000001;
      v8 = v5 - v7 + v6;
      v20 = llround(v8);
      v10 = v20 >= 0x1E ? 30 : v20;
    }

    while (v20 > 0);
  }

  v21 = (*(*this + 32))(this);
  v22 = GpsdLogObjectGeneral;
  v23 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    v24 = gpsd::util::getMachContinuousTimeNs(v23);
    *buf = 67240448;
    v28 = v21;
    v29 = 2050;
    v30 = v24 * 0.000000001 - v5;
    _os_log_impl(&dword_2454AA000, v22, OS_LOG_TYPE_DEFAULT, "#pcie,overallOpen,success,%{public}d,durationSeconds,%{public}.3f", buf, 0x12u);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t GnssHal::CommPcie::write(GnssHal::CommPcie *this, const unsigned __int8 *a2, uint64_t a3)
{
  v10 = 0;
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (!v5 || (v6 = a3, (v4(v3, a2, a3, &v10, 1, 1000, 0) & 1) == 0))
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "#pcie, TelephonyUtilTransportWrite failure", v9, 2u);
    }

    return -1;
  }

  return v6;
}

uint64_t GnssHal::CommPcie::enterLowPowerMode(GnssHal::CommPcie *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "enterLowPowerMode";
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "#pcie, %s, interface not available on PCIe platform", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t GnssHal::CommPcie::exitLowPowerMode(GnssHal::CommPcie *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "exitLowPowerMode";
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "#pcie, %s, interface not available on PCIe platform", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t GnssHal::CommPcie::readWriteFlush(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_INFO, "#pcie,readWriteFlush not available on PCIe", v3, 2u);
  }

  return 1;
}

uint64_t GnssHal::CommPcie::readFlush(GnssHal::CommPcie *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_INFO, "#pcie,readFlush not available on PCIe", v3, 2u);
  }

  return 1;
}

void GnssHal::CommPcie::pulseTimeMarkStrobe(GnssHal::CommPcie *this@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v3 - 301) < 2 || v3 == 107 || v3 == 202)
  {
    if (*(this + 96) == 1)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3002000000;
      v6[3] = __Block_byref_object_copy_;
      v6[4] = __Block_byref_object_dispose_;
      operator new();
    }
  }

  else
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#pcie,#tt,pulseTimemarkStrobe not supported", &__lk, 2u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2454B7840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::exception_ptr a26, std::mutex *a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::~promise((v28 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN7GnssHal8CommPcie19pulseTimeMarkStrobeEv_block_invoke(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 || !a4)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v12) = 67240192;
      DWORD1(v12) = a2;
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "#pcie,#tt,completion failure,0x%{public}08x", &v12, 8u);
    }

    v9 = *(*(a1 + 32) + 8);
    LOBYTE(v12) = 0;
    v14 = 2;
    std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(*(v9 + 40), &v12);
  }

  else if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    v10 = *(*(a1 + 32) + 8);
    v12 = *a4;
    v13 = *(a4 + 2);
    v14 = 0;
    std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(*(v10 + 40), &v12);
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_INFO, "#pcie,#tt,completion success", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  v5 = a2[1];
  *(a1 + 144) = *a2;
  *(a1 + 160) = v5;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void ___ZN7GnssHal8CommPcie19pulseTimeMarkStrobeEv_block_invoke_14(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    *v6 = *a2;
    v4 = 1;
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#pcie,#tt-ptm,completion failure", v6, 2u);
    }

    v3 = *(*(a1 + 32) + 8);
    v6[0] = 0;
    v4 = 2;
  }

  v7 = v4;
  std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::set_value(*(v3 + 40), v6);
}

void GnssHal::CommPcie::getPortString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *std::__function::__value_func<void ()(std::string)>::operator=[abi:ne200100]()
{
  result = qword_27EE14D38;
  qword_27EE14D38 = 0;
  if (result == &qword_27EE14D20)
  {
    return (*(qword_27EE14D20 + 32))(&qword_27EE14D20);
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__assoc_state<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x245D6AEE0);
}

uint64_t *std::promise<std::variant<PCITransportTimesyncMeasurement,PCITransportTimeEvent,BOOL>>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v12);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x245D6AC00](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x277D82838] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v2, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x245D6AC10](v10);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x245D6AC00](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

uint64_t _GLOBAL__sub_I_GnssHalCommPcie_cpp()
{
  qword_27EE14D18 = 0;
  __cxa_atexit(std::function<void ()(unsigned char *,unsigned long)>::~function, _MergedGlobals, &dword_2454AA000);
  qword_27EE14D38 = 0;

  return __cxa_atexit(std::function<void ()(std::string)>::~function, &qword_27EE14D20, &dword_2454AA000);
}

uint64_t GnssHal::PlatformLog::PlatformLog(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *a1 = &unk_28585C020;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  v6 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogAllToOsLog(v7))
  {
    *(a1 + 50) = 0x101010001100111;
    *(a1 + 58) = 16908545;
    v8 = 258;
    v9 = 64;
  }

  else
  {
    if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) < 2)
    {
      goto LABEL_5;
    }

    *(a1 + 50) = 17826065;
    v16 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
    if (v16 > 4)
    {
      v8 = 256;
      v9 = 54;
    }

    else
    {
      v9 = *&a8_0[8 * v16];
      v8 = 256;
    }
  }

  *(a1 + v9) = v8;
LABEL_5:
  *v6 &= 0xFFFFFFFFFFFFFE00;
  v10 = GpsdPreferences::instance(0);
  LogLevel = GpsdPreferences::getLogLevel(v10);
  v12 = 0;
  if (LogLevel >= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = LogLevel;
  }

  v14 = (v13 + 1);
  do
  {
    if (v12)
    {
      *v6 |= 1 << v12;
    }

    ++v12;
  }

  while (v14 != v12);
  return a1;
}

void GnssHal::PlatformLog::outOfLevelWarning(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (((*(a1 + 40) >> a2) & 1) == 0)
  {
    v4 = GnssHal::PlatformLog::outOfLevelWarning(GnssHal::LogLevel,std::function<char const* ()(void)>)::levelWarningCount;
    if (GnssHal::PlatformLog::outOfLevelWarning(GnssHal::LogLevel,std::function<char const* ()(void)>)::levelWarningCount <= 0xA)
    {
      v6 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67240448;
        v12[0] = v4;
        LOWORD(v12[1]) = 1026;
        *(&v12[1] + 2) = a2;
        _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEFAULT, "VendorLogger,outOfLevel,count,%{public}d,level,%{public}d", &v11, 0xEu);
      }

      v7 = *(a3 + 24);
      if (v7)
      {
        v8 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          v9 = (*(*v7 + 48))(v7);
          v11 = 136642819;
          *v12 = v9;
          _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_INFO, "VendorLogger,outOfLevel,content,%{sensitive}s", &v11, 0xCu);
        }
      }

      ++GnssHal::PlatformLog::outOfLevelWarning(GnssHal::LogLevel,std::function<char const* ()(void)>)::levelWarningCount;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t GnssHal::PlatformLog::log(uint64_t a1, unsigned int a2, std::string *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 2 * a2 + 48);
  if ((v6 & 0x100) != 0)
  {
    v7 = GpsdLogObjectDevice;
    if (os_log_type_enabled(GpsdLogObjectDevice, v6))
    {
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136642819;
      v16 = v8;
      _os_log_impl(&dword_2454AA000, v7, v6, "%{sensitive}s", buf, 0xCu);
    }
  }

  v14[0] = &unk_28585C0A8;
  v14[1] = a3;
  v14[3] = v14;
  GnssHal::PlatformLog::outOfLevelWarning(a1, a2, v14);
  result = std::__function::__value_func<char const* ()(void)>::~__value_func[abi:ne200100](v14);
  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v11 = size;
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    result = *(a1 + 32);
    if (result)
    {
      if (v11 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = a3->__r_.__value_.__r.__words[0];
      }

      if (v12->__r_.__value_.__s.__data_[size - 1] != 10)
      {
        std::string::push_back(a3, 10);
        result = *(a1 + 32);
      }

      result = (*(*result + 16))(result, a3);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void GnssHal::PlatformLog::log(uint64_t a1, unsigned int a2, const void *a3, size_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  GnssHal::PlatformLog::outOfLevelWarning(a1, a2, v11);
  std::__function::__value_func<char const* ()(void)>::~__value_func[abi:ne200100](v11);
  if (*(a1 + 32))
  {
    if (a4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    v10 = a4;
    p_p = &__p;
    if (a4)
    {
      memcpy(&__p, a3, a4);
      p_p = (&__p + a4);
    }

    *p_p = 0;
    (*(**(a1 + 32) + 16))(*(a1 + 32), &__p);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2454B85C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::PlatformLog::logSystemException(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v114[19] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v8 > 0x20)
  {
    if (v8 <= 0x40)
    {
      v12 = v7 + v8;
      v13 = *(v7 + v8 - 16);
      v14 = *(v7 + v8 - 8);
      v15 = *v7 - 0x3C5A37A36834CED9 * (v13 + v8);
      v17 = v7[2];
      v16 = v7[3];
      v18 = __ROR8__(v15 + v16, 52);
      v19 = __ROR8__(v15, 37);
      v20 = v15 + v7[1];
      v21 = __ROR8__(v20, 7);
      v22 = v20 + v17;
      v23 = v21 + v19;
      v24 = *(v12 - 4) + v17;
      v25 = v14 + v16;
      v26 = __ROR8__(v25 + v24, 52);
      v27 = v23 + v18;
      v28 = __ROR8__(v24, 37);
      v29 = *(v12 - 3) + v24;
      v30 = __ROR8__(v29, 7);
      v31 = v27 + __ROR8__(v22, 31);
      v32 = v29 + v13;
      v33 = v32 + v25;
      v34 = v22 + v16 + v28 + v30 + v26 + __ROR8__(v32, 31);
      v35 = 0x9AE16A3B2F90404FLL;
      v36 = v31 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v33 + v31) - 0x651E95C4D06FBFB1 * v34) ^ ((0xC3A5C85C97CB3127 * (v33 + v31) - 0x651E95C4D06FBFB1 * v34) >> 47));
LABEL_15:
      v11 = (v36 ^ (v36 >> 47)) * v35;
      goto LABEL_19;
    }

    v44 = *(v7 + v8 - 48);
    v43 = *(v7 + v8 - 40);
    v45 = *(v7 + v8 - 24);
    v46 = *(v7 + v8 - 56);
    v47 = *(v7 + v8 - 16);
    v48 = *(v7 + v8 - 8);
    v49 = v46 + v47;
    v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v8))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v8))));
    v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
    v52 = *(v7 + v8 - 64) + v8;
    v53 = v44 + v46 + v52;
    v54 = __ROR8__(v53, 44) + v52;
    v55 = __ROR8__(v52 + v43 + v51, 21);
    v56 = v53 + v43;
    v57 = v54 + v55;
    v58 = v49 + *(v7 + v8 - 32) - 0x4B6D499041670D8DLL;
    v59 = v45 + v47 + v58;
    v60 = v59 + v48;
    v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
    v62 = v7 + 4;
    v63 = *v7 - 0x4B6D499041670D8DLL * v43;
    v64 = -((v8 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v65 = *(v62 - 3);
      v66 = v63 + v56 + v49 + v65;
      v67 = v62[2];
      v68 = v62[3];
      v69 = v62[1];
      v49 = v69 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v67, 42);
      v70 = v51 + v60;
      v71 = *(v62 - 2);
      v72 = *(v62 - 1);
      v73 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
      v74 = v73 + v60 + v72;
      v75 = v73 + v65 + v71;
      v56 = v75 + v72;
      v76 = __ROR8__(v75, 44) + v73;
      v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v61;
      v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
      v57 = v76 + __ROR8__(v74 + v77, 21);
      v78 = v63 + v61 + *v62;
      v60 = v69 + v67 + v78 + v68;
      v61 = __ROR8__(v69 + v67 + v78, 44) + v78 + __ROR8__(v49 + v71 + v78 + v68, 21);
      v62 += 8;
      v51 = v77;
      v64 += 64;
    }

    while (v64);
    v79 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
    v80 = 0x9DDFEA08EB382D69 * (v79 ^ (v77 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47))));
    v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) ^ ((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) >> 47));
  }

  else
  {
    if (v8 > 0x10)
    {
      v37 = v7[1];
      v38 = 0xB492B66FBE98F273 * *v7;
      v39 = __ROR8__(0x9AE16A3B2F90404FLL * *(v7 + v8 - 8), 30) + __ROR8__(v38 - v37, 43);
      v40 = v38 + v8 + __ROR8__(v37 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v7 + v8 - 8);
      v41 = (v39 - 0x3C5A37A36834CED9 * *(v7 + v8 - 16)) ^ v40;
      v35 = 0x9DDFEA08EB382D69;
      v42 = v40 ^ ((0x9DDFEA08EB382D69 * v41) >> 47) ^ (0x9DDFEA08EB382D69 * v41);
LABEL_14:
      v36 = 0x9DDFEA08EB382D69 * v42;
      goto LABEL_15;
    }

    if (v8 >= 9)
    {
      v9 = *(v7 + v8 - 8);
      v10 = __ROR8__(v9 + v8, v8);
      v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ *v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ *v7)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ *v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ *v7)))) >> 47))) ^ v9;
      goto LABEL_19;
    }

    if (v8 >= 4)
    {
      v98 = *(v7 + v8 - 4);
      v99 = (v8 + (8 * *v7)) ^ v98;
      v35 = 0x9DDFEA08EB382D69;
      v42 = v98 ^ ((0x9DDFEA08EB382D69 * v99) >> 47) ^ (0x9DDFEA08EB382D69 * v99);
      goto LABEL_14;
    }

    v11 = 0x9AE16A3B2F90404FLL;
    if (v8)
    {
      v100 = v8 | (4 * *(v7 + v8 - 1));
      v101 = 0x9AE16A3B2F90404FLL * (*v7 | (*(v7 + (v8 >> 1)) << 8));
      v11 = 0x9AE16A3B2F90404FLL * ((0xC949D7C7509E6557 * v100) ^ v101 ^ (((0xC949D7C7509E6557 * v100) ^ v101) >> 47));
    }
  }

LABEL_19:
  if (*(a1 + 24) == 1)
  {
    v81 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v82 = a3[1] - *a3;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
      *(buf.__r_.__value_.__r.__words + 4) = v7;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
      v112 = v82;
      _os_log_error_impl(&dword_2454AA000, v81, OS_LOG_TYPE_ERROR, "logSystemException,%{private}s,%{public}zu,size,%{public}zu", &buf, 0x20u);
    }
  }

  else
  {
    v83 = GpsdPreferences::instance(0);
    GpsdPreferences::vendorLogDirectory(v83, &buf);
    v84 = std::string::append(&buf, "/gnss_hw_exception.bin");
    __p = *v84;
    v84->__r_.__value_.__l.__size_ = 0;
    v84->__r_.__value_.__r.__words[2] = 0;
    v84->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v114[6] = 0;
    v85 = MEMORY[0x277D82860] + 64;
    v114[0] = MEMORY[0x277D82860] + 64;
    v86 = MEMORY[0x277D82810];
    v87 = *(MEMORY[0x277D82810] + 16);
    buf.__r_.__value_.__r.__words[0] = *(MEMORY[0x277D82810] + 8);
    *(buf.__r_.__value_.__r.__words + *(buf.__r_.__value_.__r.__words[0] - 24)) = v87;
    v88 = (&buf + *(buf.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v88, &buf.__r_.__value_.__r.__words[1]);
    v89 = MEMORY[0x277D82860] + 24;
    v88[1].__vftable = 0;
    v88[1].__fmtflags_ = -1;
    buf.__r_.__value_.__r.__words[0] = v89;
    v114[0] = v85;
    MEMORY[0x245D6AC40](&buf.__r_.__value_.__r.__words[1]);
    if (!std::filebuf::open())
    {
      std::ios_base::clear((&buf + *(buf.__r_.__value_.__r.__words[0] - 24)), *&v113[*(buf.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "logSystemException(", 19);
    v91 = MEMORY[0x245D6AD00](v90, v11);
    v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, ",", 1);
    v93 = MEMORY[0x245D6AD00](v92, a3[1] - *a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ")\n", 2);
    v94 = *a3;
    v95 = a3[1];
    std::ostream::write();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&buf + *(buf.__r_.__value_.__r.__words[0] - 24)), *&v113[*(buf.__r_.__value_.__r.__words[0] - 24)] | 4);
    }

    v96 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v102 = a2;
      }

      else
      {
        v102 = *a2;
      }

      v103 = a3[1] - *a3;
      *v105 = 136381187;
      v106 = v102;
      v107 = 2050;
      v108 = v11;
      v109 = 2050;
      v110 = v103;
      _os_log_fault_impl(&dword_2454AA000, v96, OS_LOG_TYPE_FAULT, "logSystemException,%{private}s,%{public}zu,size,%{public}zu", v105, 0x20u);
    }

    *(a1 + 24) = 1;
    buf.__r_.__value_.__r.__words[0] = *v86;
    *(buf.__r_.__value_.__r.__words + *(buf.__r_.__value_.__r.__words[0] - 24)) = v86[3];
    MEMORY[0x245D6AC50](&buf.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x245D6AE70](v114);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v97 = *MEMORY[0x277D85DE8];
}

void sub_2454B8EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::ostream::~ostream();
  MEMORY[0x245D6AE70](v25);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GnssHal::PlatformLog::flush(GnssHal::PlatformLog *this)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x245D6AC50](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::__function::__func<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0,std::allocator<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0>,char const* ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28585C0A8;
  a2[1] = v2;
  return result;
}

char *std::__function::__func<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0,std::allocator<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0>,char const* ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t std::__function::__func<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0,std::allocator<GnssHal::PlatformLog::log(GnssHal::LogLevel,std::string const&)::$_0>,char const* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<char const* ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D6ACD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245D6ACE0](v13);
  return a1;
}

void sub_2454B9310(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245D6ACE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2454B92F0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2454B9544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::ExtensionsIndusImpl::requestBasebandReset(uint64_t a1, int a2, uint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v7[0] = 67240451;
    v7[1] = a2;
    v8 = 2081;
    v9 = a3;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#bbReset,extensionsIndus,%{public}d,%{private}s", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

char *GnssHal::ExtensionsIndusImpl::getGpsWeekFromBuildDate(GnssHal::ExtensionsIndusImpl *this)
{
  if (*(this + 16))
  {
    return 2049;
  }

  else
  {
    return gpsd::util::getGpsWeekFromBuildDate(this);
  }
}

uint64_t GnssHal::ExtensionsIndusImpl::updateReceiverClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::updateRtcClockAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::updateL5GroupDelayAnalyticsData(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::updateBeiDouConsistencyStats(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t GnssHal::ExtensionsIndusImpl::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsIndusImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

void GnssHal::ExtensionsIndusImpl::platformCalibrationGlonassGroupDelayMeters(const void **a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::glonassPerFrequencyGroupDelayMeters(a1);
}

uint64_t GnssHal::ExtensionsIndusImpl::debugFeaturesBitmask(GnssHal::ExtensionsIndusImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

uint64_t GnssHal::ExtensionsIndusImpl::platformSpecificFeaturesBitmask(GnssHal::ExtensionsIndusImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::platformSpecificFeaturesBitmask(v1);
}

void GnssHal::ExtensionsIndusImpl::debugSettingsString(_BYTE *a1@<X8>)
{
  GpsdPreferences::instance(0);

  GpsdPreferences::debugSettingsString(a1);
}

double GnssHal::ExtensionsIndusImpl::crossCorrelationSettings(GnssHal::ExtensionsIndusImpl *this)
{
  result = *(this + 4);
  v2 = *(this + 5);
  v3 = *(this + 6);
  v4 = *(this + 7);
  return result;
}

void *GnssHal::GpioEmbedded::GpioEmbedded(void *a1, uint64_t a2)
{
  *a1 = &unk_28585C2B8;
  a1[4] = 0;
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100]((a1 + 5), a2);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "#gpio,frontend,ctor,start", buf, 2u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v5 = GnssHal::GpioEmbedded::GpioBackend::instance(v4);
  GnssHal::GpioEmbedded::GpioBackend::setFrontend(v5, a1);
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_INFO, "#gpio,frontend,ctor,end", v8, 2u);
  }

  std::mutex::unlock(&GnssHal::sMutex);
  return a1;
}

void sub_2454B997C(_Unwind_Exception *a1)
{
  std::mutex::unlock(&GnssHal::sMutex);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::instance(GnssHal::GpioEmbedded::GpioBackend *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (GnssHal::GpioEmbedded::GpioBackend::instance(void)::pred != -1)
  {
    dispatch_once(&GnssHal::GpioEmbedded::GpioBackend::instance(void)::pred, &__block_literal_global_0);
  }

  result = GnssHal::GpioEmbedded::GpioBackend::fInstance;
  if (!GnssHal::GpioEmbedded::GpioBackend::fInstance)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "null GpioBackend", buf, 2u);
      v3 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalGpioImpl.cpp";
      v9 = 1026;
      v10 = 299;
      v11 = 2082;
      v12 = "instance";
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v5, "instance");
    std::string::basic_string[abi:ne200100]<0>(&v4, "null GpioBackend");
    gpsd::util::triggerDiagnosticReport(&v6, &v5, &v4);
    std::string::~string(&v4);
    std::string::~string(&v5);
    std::string::~string(&v6);
    __assert_rtn("instance", "GnssHalGpioImpl.cpp", 299, "false && null GpioBackend");
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454B9B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::GpioEmbedded::GpioBackend::setFrontend(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67240192;
    v5[1] = a2 == 0;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "#gpio,set frontend,isNull,%{public}d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void GnssHal::GpioEmbedded::~GpioEmbedded(GnssHal::GpioEmbedded *this)
{
  *this = &unk_28585C2B8;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "#gpio,frontend,dtor,start", buf, 2u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
  GnssHal::GpioEmbedded::GpioBackend::setFrontend(v4, 0);
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_INFO, "#gpio,frontend,dtor,end", v6, 2u);
  }

  std::mutex::unlock(&GnssHal::sMutex);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](this + 40);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](this + 8);
}

{
  GnssHal::GpioEmbedded::~GpioEmbedded(this);

  JUMPOUT(0x245D6AEE0);
}

void GnssHal::GpioEmbedded::setResetLow(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 103 || v1 == 201 || v1 == 106)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setResetLow", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 1u, 0);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::GpioBackend::setGpioState(uint64_t a1, uint32_t a2, uint64_t a3)
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  input = a3;
  std::mutex::lock(&GnssHal::sMutex);
  if (*(a1 + 8) == 1)
  {
    IOConnectCallScalarMethod(*(a1 + 12), a2, &input, 1u, 0, 0);
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v10 = a2;
      v11 = 1026;
      v12 = v3;
      _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "#gpio,setGpioState failed,selector,%{public}d,input,%{public}d", buf, 0xEu);
    }
  }

  std::mutex::unlock(&GnssHal::sMutex);
  v7 = *MEMORY[0x277D85DE8];
}

void GnssHal::GpioEmbedded::setResetHigh(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 103 || v1 == 201 || v1 == 106)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setResetHigh", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 1u, 1uLL);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::setDeviceWakeLow(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 106 || v1 == 103)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setDeviceWakeLow", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 3u, 1uLL);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::setDeviceWakeHigh(GnssHal::GpioEmbedded *this)
{
  v1 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v1 == 106 || v1 == 103)
  {
    v2 = GpsdLogObjectGeneral;
    v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpio,setDeviceWakeHigh", buf, 2u);
    }

    v4 = GnssHal::GpioEmbedded::GpioBackend::instance(v3);
    GnssHal::GpioEmbedded::GpioBackend::setGpioState(v4, 3u, 0);
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#gpio,not supported on platform", v6, 2u);
    }
  }
}

void GnssHal::GpioEmbedded::pulseTimeMarkStrobe(GnssHal::GpioEmbedded *this@<X0>, uint64_t a2@<X8>)
{
  v40[3] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = GpsdPlatformInfo::instance(0);
  v5 = *(v4 + 2);
  if (v5 != 103 && v5 != 106 && v5 != 201)
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v21 = "#gpio,pulseTimeMarkStrobe not supported";
    goto LABEL_17;
  }

  connection = 0;
  v6 = GnssHal::GpioEmbedded::GpioBackend::instance(v4);
  if (!GnssHal::GpioEmbedded::GpioBackend::controlConnect(v6, &connection))
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v21 = "#gpio,#tt,GPSControlConnect failed";
LABEL_17:
    _os_log_error_impl(&dword_2454AA000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_32;
  }

  outputCnt = 2;
  v8 = IOConnectCallScalarMethod(connection, 5u, 0, 0, output, &outputCnt);
  if (v8 || outputCnt != 2)
  {
    v22 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_2454AA000, v22, OS_LOG_TYPE_ERROR, "#gpio,#tt,TogglePIN,failed,Result,%{public}08x", buf, 8u);
    }
  }

  else
  {
    v25 = 0;
    CurrentMachContinuousMinusMachAbsoluteNanoseconds = gpsd::util::getCurrentMachContinuousMinusMachAbsoluteNanoseconds(&v25, v7);
    if (CurrentMachContinuousMinusMachAbsoluteNanoseconds)
    {
      MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(CurrentMachContinuousMinusMachAbsoluteNanoseconds);
      *(a2 + 16) = 1;
      v11 = gpsd::util::convertMachTimeInTicksToNs(output[0]);
      v12 = v25;
      v13 = v25 + v11;
      *a2 = v25 + v11;
      v14 = gpsd::util::convertMachTimeInTicksToNs(output[1]);
      v15 = v14 + v12;
      *(a2 + 8) = v14 + v12;
      v16 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v17 = gpsd::util::convertMachTimeInTicksToNs(output[0]);
        v18 = gpsd::util::convertMachTimeInTicksToNs(output[1]);
        *buf = 134350336;
        *&buf[4] = v13;
        *&buf[12] = 2050;
        *&buf[14] = v15;
        v32 = 2050;
        v33 = (v14 - v11);
        v34 = 2050;
        v35 = MachContinuousTimeNs;
        v36 = 2050;
        v37 = v17;
        v38 = 2050;
        v39 = v18;
        _os_log_impl(&dword_2454AA000, v16, OS_LOG_TYPE_INFO, "#gpio,#tt,TogglePIN,beforeContNs,%{public}llu,afterContNs,%{public}llu,widthNs,%{public}llu,nowContNs,%{public}llu,beforeMachNs,%{public}llu,afterMachNs,%{public}llu", buf, 0x3Eu);
      }

      v30 = 0;
      std::mutex::lock(&GnssHal::sMutex);
      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](buf, this + 40);
      v19 = v33;
      if (v33 == buf)
      {
        if (v30 == v29)
        {
          (*(*v33 + 24))();
          (*(*v33 + 32))(v33);
          v33 = 0;
          (*(*v30 + 24))(v30, buf);
          (*(*v30 + 32))(v30);
          v30 = 0;
          v33 = buf;
          (*(v40[0] + 24))(v40, v29);
          (*(v40[0] + 32))(v40);
        }

        else
        {
          (*(*v33 + 24))();
          (*(*v33 + 32))(v33);
          v33 = v30;
        }

        v30 = v29;
      }

      else if (v30 == v29)
      {
        (*(*v30 + 24))(v30, buf);
        (*(*v30 + 32))(v30);
        v30 = v33;
        v33 = buf;
      }

      else
      {
        v33 = v30;
        v30 = v19;
      }

      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](buf);
      std::mutex::unlock(&GnssHal::sMutex);
      if (v30)
      {
        *buf = *output;
        (*(*v30 + 48))(v30, buf);
      }

      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v29);
    }

    else
    {
      v23 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v23, OS_LOG_TYPE_ERROR, "#gpio,#tt,machCont timestamping failed", buf, 2u);
      }
    }
  }

  IOServiceClose(connection);
LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2454BA7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL GnssHal::GpioEmbedded::GpioBackend::controlConnect(GnssHal::GpioEmbedded::GpioBackend *this, unsigned int *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  mainPort = 0;
  v4 = MEMORY[0x245D6A540](0, &mainPort);
  if (v4)
  {
    v5 = v4;
    v6 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_3;
    }

    *buf = 67240192;
    LODWORD(v23) = v5;
    v12 = "#gpio,IOMasterPort failed,%{public}d";
    goto LABEL_15;
  }

  v9 = IOServiceMatching("AppleEmbeddedGPSControl");
  if (!v9)
  {
    v13 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_3;
    }

    *buf = 136315138;
    v23 = "AppleEmbeddedGPSControl";
    v12 = "#gpio,IOServiceMatching failed,%s";
    v14 = v13;
    v15 = 12;
LABEL_16:
    _os_log_error_impl(&dword_2454AA000, v14, OS_LOG_TYPE_ERROR, v12, buf, v15);
    result = 0;
    goto LABEL_3;
  }

  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(mainPort, v9, &existing);
  if (MatchingServices)
  {
    v11 = MatchingServices;
    v6 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_3;
    }

    *buf = 67240192;
    LODWORD(v23) = v11;
    v12 = "#gpio,IOServiceGetMatchingServices failed,%{public}d";
    goto LABEL_15;
  }

  *(this + 4) = IOIteratorNext(existing);
  IOObjectRelease(existing);
  v16 = *(this + 4);
  if (!v16)
  {
    v19 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_3;
    }

    *buf = 0;
    v12 = "#gpio,No fServiceObject";
    v14 = v19;
    v15 = 2;
    goto LABEL_16;
  }

  v17 = IOServiceOpen(v16, *MEMORY[0x277D85F48], 0, a2);
  if (!v17)
  {
    result = 1;
    goto LABEL_3;
  }

  v18 = v17;
  v6 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 67240192;
    LODWORD(v23) = v18;
    v12 = "#gpio,IOServiceOpen failed,%{public}d";
LABEL_15:
    v14 = v6;
    v15 = 8;
    goto LABEL_16;
  }

LABEL_3:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void GnssHal::GpioEmbedded::GpioBackend::callback(GnssHal::GpioEmbedded::GpioBackend *this, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "#gpio,callback,locked", &v8, 2u);
    }

    if (a2)
    {
      if (a2 == 1)
      {
        GnssHal::GpioEmbedded::notifyDevice(*this, 0);
        ++*(this + 6);
      }

      else
      {
        v6 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v8 = 134349056;
          v9 = a2;
          _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "#gpio,Unrecognized messageArg,%{public}llu", &v8, 0xCu);
        }
      }
    }

    else
    {
      GnssHal::GpioEmbedded::notifyDevice(*this, 1);
      ++*(this + 5);
    }
  }

  else
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134349056;
      v9 = a2;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#gpio,pGpioObject null,%{public}llu", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void GnssHal::GpioEmbedded::notifyDevice(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = GpsdLogObjectGeneral;
  v6 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v9 = 67240192;
      v10 = a2;
      _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_INFO, "#gpio,notifyDevice,int,sending,%{public}d,", &v9, 8u);
      v4 = *(a1 + 32);
      v9 = a2;
      if (!v4)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      v9 = a2;
    }

    (*(*v4 + 48))(v4, &v9);
  }

  else if (v6)
  {
    v9 = 67240192;
    v10 = a2;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_INFO, "#gpio,notifyDevice,int,no callback,%{public}d,", &v9, 8u);
  }

  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_INFO, "#gpio,notifyDevice,done", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::incrementApGpioTransitionCount(uint64_t this, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return this;
    }

LABEL_5:
    ++*(this + 24);
    return this;
  }

  ++*(this + 20);
  if (a3)
  {
    goto LABEL_5;
  }

  return this;
}

BOOL GnssHal::GpioEmbedded::GpioBackend::registerForNotifications(GnssHal::GpioEmbedded::GpioBackend *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (v2)
  {
    v3 = v2;
    global_queue = dispatch_get_global_queue(2, 0);
    IONotificationPortSetDispatchQueue(v3, global_queue);
    notification = 0;
    v5 = IOServiceAddInterestNotification(v3, *(this + 4), "IOGeneralInterest", GnssHal::GPSControlInterestCallback, 0, &notification);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5;
      v8 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v14 = v7;
        _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "#gpio,failed to register interest in notification,%{public}d", buf, 8u);
      }
    }
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "#gpio,failed to create notification port", buf, 2u);
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

void GnssHal::GPSControlInterestCallback(GnssHal *this, void *a2, int a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67240448;
    v12[1] = a3;
    v13 = 2050;
    v14 = a4;
    _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_INFO, "#gpio,callback,begin,%{public}u,%{public}llu", v12, 0x12u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v9 = GnssHal::GpioEmbedded::GpioBackend::instance(v8);
  GnssHal::GpioEmbedded::GpioBackend::callback(v9, a4);
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_INFO, "#gpio,callback,end", v12, 2u);
  }

  std::mutex::unlock(&GnssHal::sMutex);
  v11 = *MEMORY[0x277D85DE8];
}

void GnssHal::GpioEmbedded::setGpioNotifier(uint64_t a1, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 24) == 0;
    v11[0] = 67240192;
    v11[1] = v5;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "#gpio,setGpioNotifier,int,isNull,%{public}d", v11, 8u);
  }

  std::mutex::lock(&GnssHal::sMutex);
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a2)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v12 = v6;
    goto LABEL_8;
  }

  v12 = v11;
  (*(*v6 + 24))(v6, v11);
LABEL_8:
  v7 = a1 + 8;
  if (v11 != (a1 + 8))
  {
    v8 = v12;
    v9 = *(a1 + 32);
    if (v12 == v11)
    {
      if (v9 == v7)
      {
        (*(*v12 + 24))();
        (*(*v12 + 32))(v12);
        v12 = 0;
        (*(**(a1 + 32) + 24))(*(a1 + 32), v11);
        (*(**(a1 + 32) + 32))(*(a1 + 32));
        *(a1 + 32) = 0;
        v12 = v11;
        (*(v13[0] + 24))(v13, a1 + 8);
        (*(v13[0] + 32))(v13);
      }

      else
      {
        (*(*v12 + 24))();
        (*(*v12 + 32))(v12);
        v12 = *(a1 + 32);
      }

      *(a1 + 32) = v7;
    }

    else if (v9 == v7)
    {
      (*(*v9 + 24))(*(a1 + 32), v11);
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      *(a1 + 32) = v12;
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 32);
      *(a1 + 32) = v8;
    }
  }

  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v11);
  std::mutex::unlock(&GnssHal::sMutex);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2454BB3C0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::getApGpioZeroTransitionCount(GnssHal::GpioEmbedded::GpioBackend *this)
{
  std::mutex::lock(&GnssHal::sMutex);
  v2 = *(this + 5);
  std::mutex::unlock(&GnssHal::sMutex);
  return v2;
}

uint64_t GnssHal::GpioEmbedded::GpioBackend::getApGpioOneTransitionCount(GnssHal::GpioEmbedded::GpioBackend *this)
{
  std::mutex::lock(&GnssHal::sMutex);
  v2 = *(this + 6);
  std::mutex::unlock(&GnssHal::sMutex);
  return v2;
}

void GnssHal::GpioEmbedded::GpioBackend::clearApGpioTransitionCounts(GnssHal::GpioEmbedded::GpioBackend *this)
{
  std::mutex::lock(&GnssHal::sMutex);
  *(this + 5) = 0;
  *(this + 6) = 0;

  std::mutex::unlock(&GnssHal::sMutex);
}

GnssHal::GpioEmbedded::GpioBackend *GnssHal::GpioEmbedded::GpioBackend::GpioBackend(GnssHal::GpioEmbedded::GpioBackend *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "#gpio,backend,ctor,start", buf, 2u);
  }

  v3 = GnssHal::GpioEmbedded::GpioBackend::controlConnect(this, this + 3);
  *(this + 8) = v3;
  if (v3)
  {
    GnssHal::GpioEmbedded::GpioBackend::registerForNotifications(this);
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "#gpio,controlConnect,success", v10, 2u);
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#gpio,controlConnect,failure", v9, 2u);
    }
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_INFO, "#gpio,backend,ctor,end", v8, 2u);
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GnssHal::CommSpi::CommSpi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28585C350;
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::__value_func[abi:ne200100](a1 + 8, a2);
  v5 = GpsdPreferences::instance(0);
  *(a1 + 40) = GpsdPreferences::verboseCommDataSize(v5);
  v6 = GpsdPreferences::instance(0);
  v7 = GpsdPreferences::verboseCommDataSniffer(v6);
  *(a1 + 96) = 0u;
  *(a1 + 41) = v7;
  *(a1 + 42) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0u;
  v8 = GpsdPreferences::instance(0);
  v9 = GpsdPreferences::maxSchedulerQos(v8);
  *(a1 + 96) = GpsdRuntime::dispatchQueueInit(v9, "commTx", v10);
  v12 = GpsdRuntime::dispatchQueueInit(0x19, "commRx", v11);
  *(a1 + 104) = v12;
  if (!*(a1 + 88))
  {
    *(a1 + 88) = v12;
  }

  operator new();
}

void sub_2454BBBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v49 - 112);
  MEMORY[0x245D6AEE0](v47, 0x1030C401BFD8499);
  std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](v46, 0);
  std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100]((v48 + 24), 0);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v48 - 40);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v45);
  _Unwind_Resume(a1);
}

void GnssHal::CommSpi::setGnssChipPowerStateOn(GnssHal::CommSpi *this, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (GnssHal::CommSpi::isGnssChipPowerStateOn(this) == a2)
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *v15 = a2;
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#spi,setGnssChipPowerStateOn,alreadyInState,%{public}d", buf, 8u);
    }
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = (*(**(this + 14) + 96))(*(this + 14), v5);
  v7 = GpsdLogObjectGeneral;
  if (v6)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v6);
      *buf = 67240450;
      *v15 = v6;
      *&v15[4] = 2082;
      *&v15[6] = v10;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,SetPowerState,errCode,0x%{public}X,%{public}s", buf, 0x12u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v15 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v15[8] = 1026;
      *&v15[10] = 61;
      v16 = 2082;
      v17 = "setGnssChipPowerStateOn";
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v13, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v12, "setGnssChipPowerStateOn");
    std::string::basic_string[abi:ne200100]<0>(&v11, "#spi,fail,gpti,SetPowerState,errCode,0x%{public}X,%{public}s");
    gpsd::util::triggerDiagnosticReport(&v13, &v12, &v11);
    std::string::~string(&v11);
    std::string::~string(&v12);
    std::string::~string(&v13);
    __assert_rtn("setGnssChipPowerStateOn", "GnssHalCommSpi.cpp", 61, "false && #spi,fail, gpti, SetPowerState ,errCode,0x%{public}X,%{public}s");
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    *v15 = a2;
    *&v15[4] = 1026;
    *&v15[6] = v5;
    _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "#spi,setGnssChipPowerStateOn,enable,%{public}d,set,%{public}d", buf, 0xEu);
  }

  if (GnssHal::CommSpi::isGnssChipPowerStateOn(this) != a2)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "#spi,setGnssChipPowerStateOn,failed", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2454BBFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL GnssHal::CommSpi::isGnssChipPowerStateOn(GnssHal::CommSpi *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v1 = (*(**(this + 14) + 104))(*(this + 14), &v9);
  v2 = GpsdLogObjectGeneral;
  if (v1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v1);
      *buf = 67240450;
      *v11 = v1;
      *&v11[4] = 2082;
      *&v11[6] = v5;
      _os_log_error_impl(&dword_2454AA000, v2, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,GetGnssChipPowerState,errCode,0x%{public}X,%{public}s", buf, 0x12u);
      v2 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v11 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v11[8] = 1026;
      *&v11[10] = 71;
      v12 = 2082;
      v13 = "isGnssChipPowerStateOn";
      _os_log_error_impl(&dword_2454AA000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v8, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v7, "isGnssChipPowerStateOn");
    std::string::basic_string[abi:ne200100]<0>(&v6, "#spi,fail,gpti,GetGnssChipPowerState,errCode,0x%{public}X,%{public}s");
    gpsd::util::triggerDiagnosticReport(&v8, &v7, &v6);
    std::string::~string(&v6);
    std::string::~string(&v7);
    std::string::~string(&v8);
    __assert_rtn("isGnssChipPowerStateOn", "GnssHalCommSpi.cpp", 71, "false && #spi,fail, gpti, GetGnssChipPowerState ,errCode,0x%{public}X,%{public}s");
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *v11 = v9;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#spi,GetGnssChipPowerState,%{public}d", buf, 8u);
  }

  result = v9 == 2;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454BC21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::CommSpi::setReadCallback(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  if (v4)
  {
    if (a1[10])
    {
      v5 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "#spi,setReadCallback,overwrite", buf, 2u);
      }
    }

    std::function<void ()(unsigned char *,unsigned long)>::operator=(a1 + 7, a2);
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v7 = "#spi,setReadCallback";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_9:
      _os_log_impl(&dword_2454AA000, v9, v10, v7, v8, 2u);
    }
  }

  else
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v7 = "#spi,setReadCallback,notSupported";
      v8 = v15;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t GnssHal::CommSpi::open(GnssHal::CommSpi *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*this + 32))(this))
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#spi,open,alreadyOpen", &v8, 2u);
    }
  }

  else
  {
    v3 = *(this + 6);
    if (v3 && (v4 = *(this + 14)) != 0)
    {
      v5 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v8 = 134349312;
        v9 = v3;
        v10 = 2050;
        v11 = v4;
        _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_INFO, "#spi,open,existing,plugin,%{public}p,ifc,%{public}p", &v8, 0x16u);
      }
    }

    else
    {
      GnssHal::CommSpi::createIoPlugin(this);
    }

    GnssHal::CommSpi::setGnssChipPowerStateOn(this, 0);
    GnssHal::CommSpi::setGnssChipPowerStateOn(this, 1);
    *(this + 42) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

void GnssHal::CommSpi::createIoPlugin(GnssHal::CommSpi *this)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = (this + 48);
  if (!*(this + 6))
  {
    v3 = *MEMORY[0x277CD2898];
    v4 = IOServiceNameMatching("gnss");
    MatchingService = IOServiceGetMatchingService(v3, v4);
    if (!MatchingService)
    {
      v27 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v27, OS_LOG_TYPE_ERROR, "#spi,fail,IOServiceGetMatchingService", buf, 2u);
        v27 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 128;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v63, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v62, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v61, "#spi,fail,IOServiceGetMatchingService");
      gpsd::util::triggerDiagnosticReport(&v63, &v62, &v61);
      std::string::~string(&v61);
      std::string::~string(&v62);
      std::string::~string(&v63);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 128, "false && #spi,fail,IOServiceGetMatchingService");
    }

    child = 0;
    ChildEntry = IORegistryEntryGetChildEntry(MatchingService, "IOService", &child);
    if (ChildEntry)
    {
      v28 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v29 = mach_error_string(ChildEntry);
        *buf = 67240450;
        *v65 = ChildEntry;
        *&v65[4] = 2082;
        *&v65[6] = v29;
        _os_log_error_impl(&dword_2454AA000, v28, OS_LOG_TYPE_ERROR, "#spi,fail,kern,IORegistryEntryGetChildEntry,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v28 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 132;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v59, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v58, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v57, "#spi,fail,kern,IORegistryEntryGetChildEntry,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v59, &v58, &v57);
      std::string::~string(&v57);
      std::string::~string(&v58);
      std::string::~string(&v59);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 132, "false && #spi,fail, kern, IORegistryEntryGetChildEntry ,errCode,0x%{public}X,%{public}s");
    }

    theScore = 0;
    v7 = child;
    v8 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0x31u, 0x68u, 0xB0u, 0x8Eu, 0xE5u, 0x7Du, 0x4Eu, 4u, 0x92u, 0xC9u, 0xC0u, 0x15u, 0xB8u, 0xB0u, 0xE9u, 0xABu);
    v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v10 = IOCreatePlugInInterfaceForService(v7, v8, v9, v2, &theScore);
    if (v10)
    {
      v32 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v33 = mach_error_string(v10);
        *buf = 67240450;
        *v65 = v10;
        *&v65[4] = 2082;
        *&v65[6] = v33;
        _os_log_error_impl(&dword_2454AA000, v32, OS_LOG_TYPE_ERROR, "#spi,fail,kern,IOCreatePlugInInterfaceForService,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v32 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 136;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v55, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v54, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v53, "#spi,fail,kern,IOCreatePlugInInterfaceForService,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v55, &v54, &v53);
      std::string::~string(&v53);
      std::string::~string(&v54);
      std::string::~string(&v55);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 136, "false && #spi,fail, kern, IOCreatePlugInInterfaceForService ,errCode,0x%{public}X,%{public}s");
    }

    v11 = *v2;
    if (!*v2 || !*v11)
    {
      v26 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v26, OS_LOG_TYPE_ERROR, "#spi,fIOCFPluginInterface,nullptr", buf, 2u);
        v26 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 137;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v52, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v51, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v50, "#spi,fIOCFPluginInterface,nullptr");
      gpsd::util::triggerDiagnosticReport(&v52, &v51, &v50);
      std::string::~string(&v50);
      std::string::~string(&v51);
      std::string::~string(&v52);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 137, "false && #spi,fIOCFPluginInterface,nullptr");
    }

    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *v65 = v11;
      *&v65[8] = 1026;
      *&v65[10] = theScore;
      _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "#spi,opened,plugin,%{public}p,score,%{public}d", buf, 0x12u);
    }
  }

  v14 = (this + 112);
  v13 = *(this + 14);
  if (!v13)
  {
    v15 = *v2;
    QueryInterface = (**v2)->QueryInterface;
    v17 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0xE8u, 0x77u, 0xCDu, 0x61u, 0x8Du, 0x30u, 0x46u, 0x2Du, 0xA3u, 0xB7u, 0xB0u, 0x11u, 0x5Au, 0x2Cu, 0xF8u, 0xA8u);
    v18 = CFUUIDGetUUIDBytes(v17);
    (QueryInterface)(v15, *&v18.byte0, *&v18.byte8, this + 112);
    ((**v2)->Release)(*v2);
    v19 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *v14;
      *buf = 134349056;
      *v65 = v20;
      _os_log_impl(&dword_2454AA000, v19, OS_LOG_TYPE_DEFAULT, "#spi,opened,ifc,%{public}p", buf, 0xCu);
    }

    v21 = (*(**(this + 14) + 64))(*(this + 14), *(this + 13));
    if (v21)
    {
      v30 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v31 = mach_error_string(v21);
        *buf = 67240450;
        *v65 = v21;
        *&v65[4] = 2082;
        *&v65[6] = v31;
        _os_log_error_impl(&dword_2454AA000, v30, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,SetDispatchQueue,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v30 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 145;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v30, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v49, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v48, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v47, "#spi,fail,gpti,SetDispatchQueue,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v49, &v48, &v47);
      std::string::~string(&v47);
      std::string::~string(&v48);
      std::string::~string(&v49);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 145, "false && #spi,fail, gpti, SetDispatchQueue ,errCode,0x%{public}X,%{public}s");
    }

    v22 = (*(**(this + 14) + 72))(*(this + 14), GnssHal::CommSpi::readCallback, this);
    if (v22)
    {
      v34 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v35 = mach_error_string(v22);
        *buf = 67240450;
        *v65 = v22;
        *&v65[4] = 2082;
        *&v65[6] = v35;
        _os_log_error_impl(&dword_2454AA000, v34, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,RegisterDataHandler,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v34 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 146;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v46, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v45, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v44, "#spi,fail,gpti,RegisterDataHandler,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v46, &v45, &v44);
      std::string::~string(&v44);
      std::string::~string(&v45);
      std::string::~string(&v46);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 146, "false && #spi,fail, gpti, RegisterDataHandler ,errCode,0x%{public}X,%{public}s");
    }

    v23 = (*(**(this + 14) + 88))(*(this + 14), GnssHal::CommSpi::eventCallback, this);
    if (v23)
    {
      v36 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v37 = mach_error_string(v23);
        *buf = 67240450;
        *v65 = v23;
        *&v65[4] = 2082;
        *&v65[6] = v37;
        _os_log_error_impl(&dword_2454AA000, v36, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,RegisterEventHandler,errCode,0x%{public}X,%{public}s", buf, 0x12u);
        v36 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&v65[8] = 1026;
        *&v65[10] = 147;
        v66 = 2082;
        v67 = "createIoPlugin";
        _os_log_error_impl(&dword_2454AA000, v36, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v43, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v42, "createIoPlugin");
      std::string::basic_string[abi:ne200100]<0>(&v41, "#spi,fail,gpti,RegisterEventHandler,errCode,0x%{public}X,%{public}s");
      gpsd::util::triggerDiagnosticReport(&v43, &v42, &v41);
      std::string::~string(&v41);
      std::string::~string(&v42);
      std::string::~string(&v43);
      __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 147, "false && #spi,fail, gpti, RegisterEventHandler ,errCode,0x%{public}X,%{public}s");
    }

    v13 = *v14;
    if (!*v14)
    {
      goto LABEL_18;
    }
  }

  if (!*v13)
  {
LABEL_18:
    v25 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v25, OS_LOG_TYPE_ERROR, "#spi,open,failed,fGNSSPassthroughInterface,nullptr", buf, 2u);
      v25 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v65 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v65[8] = 1026;
      *&v65[10] = 150;
      v66 = 2082;
      v67 = "createIoPlugin";
      _os_log_error_impl(&dword_2454AA000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v40, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v39, "createIoPlugin");
    std::string::basic_string[abi:ne200100]<0>(&v38, "#spi,open,failed,fGNSSPassthroughInterface,nullptr");
    gpsd::util::triggerDiagnosticReport(&v40, &v39, &v38);
    std::string::~string(&v38);
    std::string::~string(&v39);
    std::string::~string(&v40);
    __assert_rtn("createIoPlugin", "GnssHalCommSpi.cpp", 150, "false && #spi,open,failed,fGNSSPassthroughInterface,nullptr");
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2454BD288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void GnssHal::CommSpi::close(GnssHal::CommSpi *this)
{
  if ((*(*this + 32))(this))
  {
    GnssHal::CommSpi::setGnssChipPowerStateOn(this, 0);
    *(this + 42) = 0;
  }

  else
  {
    v2 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#spi,close,notOpen", v3, 2u);
    }
  }
}

void GnssHal::CommSpi::readCallback(GnssHal::CommSpi::AsyncBuffering **this, unsigned __int8 *a2, int64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    if (!this)
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *block = 0;
        _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "#spi,readCallback,commSpiObj,null", block, 2u);
        v10 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *block = 136446722;
        *&block[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&block[12] = 1026;
        *&block[14] = 166;
        *&block[18] = 2082;
        *&block[20] = "readCallback";
        _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", block, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v13, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v12, "readCallback");
      std::string::basic_string[abi:ne200100]<0>(&v11, "#spi,readCallback,commSpiObj,null");
      gpsd::util::triggerDiagnosticReport(&v13, &v12, &v11);
      std::string::~string(&v11);
      std::string::~string(&v12);
      std::string::~string(&v13);
      __assert_rtn("readCallback", "GnssHalCommSpi.cpp", 166, "false && #spi,readCallback,commSpiObj,null");
    }

    GnssHal::CommSpi::AsyncBuffering::input(this[16], a2, a3);
    v6 = this[16];
    v7 = *v6;
    *block = MEMORY[0x277D85DD0];
    *&block[8] = 0x40000000;
    *&block[16] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
    *&block[24] = &__block_descriptor_tmp_3;
    v15 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *block = 134349312;
      *&block[4] = a2;
      *&block[12] = 2050;
      *&block[14] = a3;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "#spi,read,invalid,data,%{public}p,size,%{public}zu", block, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2454BD7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::CommSpi::eventCallback(GnssHal::CommSpi *this, void *a2, gpsd::util *a3, const unsigned __int8 *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (!this)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#spi,eventCallback,commSpiObj,null", buf, 2u);
      v4 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v16 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v16[8] = 1026;
      *&v16[10] = 195;
      v17 = 2082;
      v18 = "eventCallback";
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v14, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v13, "eventCallback");
    std::string::basic_string[abi:ne200100]<0>(&v12, "#spi,eventCallback,commSpiObj,null");
    gpsd::util::triggerDiagnosticReport(&v14, &v13, &v12);
    std::string::~string(&v12);
    std::string::~string(&v13);
    std::string::~string(&v14);
    __assert_rtn("eventCallback", "GnssHalCommSpi.cpp", 195, "false && #spi,eventCallback,commSpiObj,null");
  }

  v7 = a2;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    gpsd::util::charToHex(a3, a4, 0, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 67241218;
    *v16 = v7;
    *&v16[4] = 2082;
    *&v16[6] = p_p;
    v17 = 2050;
    v18 = this;
    v19 = 2050;
    v20 = a3;
    v21 = 2050;
    v22 = a4;
    _os_log_fault_impl(&dword_2454AA000, v4, OS_LOG_TYPE_FAULT, "#spi,eventCallback,type,%{public}d,data,hex,%{public}s,context,%{public}p,eventp,%{public}p,size,%{public}zu", buf, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2454BDA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::CommSpi::destroyIoPlugin(IOCFPlugInInterface ***this)
{
  v10 = *MEMORY[0x277D85DE8];
  IODestroyPlugInInterface(this[6]);
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = this[6];
    v4 = this[14];
    v6 = 134349312;
    v7 = v3;
    v8 = 2050;
    v9 = v4;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#spi,closed,plugin,%{public}p,ifc,%{public}p", &v6, 0x16u);
  }

  this[6] = 0;
  this[14] = 0;
  v5 = *MEMORY[0x277D85DE8];
}

void GnssHal::CommSpi::AsyncBuffering::input(GnssHal::CommSpi::AsyncBuffering *this, const unsigned __int8 *a2, int64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::mutex::lock((this + 40));
    v6 = *(this + 14);
    v7 = *(this + 13);
    v8 = (*(this + 15) - v7);
    v9 = (v6 - v7);
    if (v8 < v6 - v7 + a3)
    {
      v10 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 134349568;
        *&v19[4] = v7;
        *&v19[12] = 2050;
        *&v19[14] = v6 - v7 + a3;
        *&v19[22] = 2050;
        v20 = v8;
        _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "#spi,ab,overflow,@%{public}p,sz,%{public}zu,cap,%{public}zu", v19, 0x20u);
        v7 = *(this + 13);
        v6 = *(this + 14);
        v9 = (v6 - v7);
      }
    }

    if (a3 >= 1)
    {
      v11 = *(this + 15);
      if (v11 - v6 >= a3)
      {
        v16 = 0;
        do
        {
          *(v6 + v16) = a2[v16];
          ++v16;
        }

        while (a3 != v16);
        *(this + 14) = v6 + v16;
      }

      else
      {
        v12 = v6 - v7 + a3;
        if (v12 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = v11 - v7;
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          operator new();
        }

        memcpy(v9, a2, a3);
        *(this + 14) = &v9[v7];
        memcpy(v7 + v9 - v6, v7, v9);
        *(this + 13) = v7 + v9 - v6;
        *(this + 14) = &v9[a3];
        *(this + 15) = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }
    }

    if (((*(this + 14) - *(this + 13)) & 0x7FFFFFFFFFFFF800) != 0)
    {
      v17 = *this;
      *v19 = MEMORY[0x277D85DD0];
      *&v19[8] = 0x40000000;
      *&v19[16] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
      v20 = &__block_descriptor_tmp_3;
      v21 = this;
      dispatch_async(v17, v19);
    }

    std::mutex::unlock((this + 40));
  }

  else
  {
    v15 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_2454AA000, v15, OS_LOG_TYPE_DEFAULT, "#spi,ab,input,zerosize", v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void GnssHal::CommSpi::AsyncBuffering::flush(NSObject **this)
{
  v1 = *this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = this;
  dispatch_async(v1, block);
}

void GnssHal::CommSpi::readCallbackInternal(GnssHal::CommSpi *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 41) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,read,bin", a4);
  }

  if (!*(this + 10))
  {
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    LOWORD(v14) = 0;
    v12 = "#spi,readCallback,null";
LABEL_15:
    _os_log_fault_impl(&dword_2454AA000, v11, OS_LOG_TYPE_FAULT, v12, &v14, 2u);
    goto LABEL_13;
  }

  if ((*(this + 42) & 1) == 0)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,read,bin", a4);
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    LOWORD(v14) = 0;
    v12 = "#spi,readcallback,portClosed";
    goto LABEL_15;
  }

  v7 = 0.0;
  if (*(this + 40) == 1)
  {
    v7 = gpsd::util::getMachContinuousTimeNs(this) * 0.000000001;
  }

  v8 = std::function<void ()(unsigned char *,unsigned long)>::operator()(this + 56, a2, a3);
  if (*(this + 40) == 1)
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v8);
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134349312;
      v15 = a3;
      v16 = 2050;
      v17 = (MachContinuousTimeNs * 0.000000001 - v7) * 1000000.0;
      _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "#spi,hal,read,size,%{public}zu,duration,us,%{public}.1f", &v14, 0x16u);
    }
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

const unsigned __int8 *GnssHal::CommSpi::writeInternal(GnssHal::CommSpi *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  v4 = a3;
  v33 = *MEMORY[0x277D85DE8];
  if (*(this + 41) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,write,bin", a4);
  }

  v7 = (*(*this + 32))(this);
  if ((v7 & 1) == 0)
  {
    gpsd::util::logBinaryBytes(a2, v4, "#spi,write,bin", v8);
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, "#spi,write,notOpen", buf, 2u);
    }

    goto LABEL_19;
  }

  if (a2 && v4)
  {
    v9 = 0.0;
    if (*(this + 40) == 1)
    {
      v9 = gpsd::util::getMachContinuousTimeNs(v7) * 0.000000001;
    }

    v10 = (*(**(this + 14) + 80))(*(this + 14), a2, v4);
    if (v10)
    {
      v11 = v10;
      MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v10);
      v13 = *(this + 11) + 1;
      *(this + 11) = v13;
      v14 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        v22 = mach_error_string(v11);
        v23 = *(this + 11);
        *buf = 67241474;
        *v28 = v11;
        *&v28[4] = 2082;
        *&v28[6] = v22;
        *&v28[14] = 1026;
        *&v28[16] = v23;
        *&v28[20] = 1026;
        *&v28[22] = 5;
        v29 = 2050;
        v30 = v4;
        v31 = 2050;
        v32 = (MachContinuousTimeNs * 0.000000001 - v9) * 1000000.0;
        _os_log_fault_impl(&dword_2454AA000, v14, OS_LOG_TYPE_FAULT, "#spi,write,failed,%{public}X,%{public}s,count,%{public}d/%{public}d,size,%{public}zu,duration,us,%{public}.1f", buf, 0x32u);
        v13 = *(this + 11);
      }

      if (v13 >= 5)
      {
        v15 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "#spi,continuousWriteError", buf, 2u);
          v15 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *v28 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
          *&v28[8] = 1026;
          *&v28[10] = 224;
          *&v28[14] = 2082;
          *&v28[16] = "writeInternal";
          _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v26, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v25, "writeInternal");
        std::string::basic_string[abi:ne200100]<0>(&v24, "#spi,continuousWriteError");
        gpsd::util::triggerDiagnosticReport(&v26, &v25, &v24);
        std::string::~string(&v24);
        std::string::~string(&v25);
        std::string::~string(&v26);
        __assert_rtn("writeInternal", "GnssHalCommSpi.cpp", 224, "false && #spi,continuousWriteError");
      }

LABEL_19:
      v4 = -1;
      goto LABEL_23;
    }

    *(this + 11) = 0;
    if (*(this + 40) == 1)
    {
      v20 = (gpsd::util::getMachContinuousTimeNs(v10) * 0.000000001 - v9) * 1000000.0;
      v21 = GpsdLogObjectGeneral;
      if (v20 > (8 * v4) / 5.0 + 100000.0 && os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349312;
        *v28 = v4;
        *&v28[8] = 2050;
        *&v28[10] = v20;
        _os_log_fault_impl(&dword_2454AA000, v21, OS_LOG_TYPE_FAULT, "#spi,write,longDelay,size,%{public}zu,duration,us,%{public}.1f", buf, 0x16u);
        v21 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v28 = v4;
        *&v28[8] = 2050;
        *&v28[10] = v20;
        _os_log_debug_impl(&dword_2454AA000, v21, OS_LOG_TYPE_DEBUG, "#spi,write,size,%{public}zu,duration,us,%{public}.1f", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *v28 = a2;
      *&v28[8] = 2050;
      *&v28[10] = v4;
      _os_log_impl(&dword_2454AA000, v17, OS_LOG_TYPE_DEFAULT, "$spi,write,invalid,buffer,%{public}p,size,%{public}zu", buf, 0x16u);
    }

    v4 = 0;
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2454BE6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *GnssHal::CommSpi::write(GnssHal::CommSpi *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 41) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,hal,write,bin", a4);
  }

  v7 = 0.0;
  if (*(this + 40) == 1)
  {
    v7 = gpsd::util::getMachContinuousTimeNs(this) * 0.000000001;
  }

  GnssHal::CommSpi::AsyncBuffering::input(*(this + 15), a2, a3);
  if (*(this + 40) == 1)
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v8);
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134349312;
      v14 = a3;
      v15 = 2050;
      v16 = (MachContinuousTimeNs * 0.000000001 - v7) * 1000000.0;
      _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "#spi,hal,write,size,%{public}zu,duration,us,%{public}.1f", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t GnssHal::CommSpi::readFlush(GnssHal::CommSpi *this)
{
  v1 = *(this + 16);
  v2 = *v1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = v1;
  dispatch_async(v2, block);
  return 1;
}

uint64_t GnssHal::CommSpi::readWriteFlush(GnssHal::CommSpi *this)
{
  v2 = *(this + 16);
  v3 = *v2;
  block = MEMORY[0x277D85DD0];
  v8 = 0x40000000;
  v9 = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  v10 = &__block_descriptor_tmp_3;
  v11 = v2;
  dispatch_async(v3, &block);
  v4 = *(this + 15);
  v5 = *v4;
  block = MEMORY[0x277D85DD0];
  v8 = 0x40000000;
  v9 = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  v10 = &__block_descriptor_tmp_3;
  v11 = v4;
  dispatch_async(v5, &block);
  return 1;
}

void GnssHal::CommSpi::pulseTimeMarkStrobe(GnssHal::CommSpi *this@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  v21[1] = 0;
  v5 = (*(**(this + 14) + 112))(*(this + 14), v21, &v21[1]);
  if (v5)
  {
    v15 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v16 = mach_error_string(v5);
      *buf = 67240450;
      *&buf[4] = v5;
      *&buf[8] = 2082;
      *&buf[10] = v16;
      _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,pulseTimeMarkStrobe,errCode,0x%{public}X,%{public}s", buf, 0x12u);
      v15 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&buf[12] = 1026;
      *&buf[14] = 273;
      *&buf[18] = 2082;
      *&buf[20] = "pulseTimeMarkStrobe";
      _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v20, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v19, "pulseTimeMarkStrobe");
    std::string::basic_string[abi:ne200100]<0>(&v18, "#spi,fail,gpti,pulseTimeMarkStrobe,errCode,0x%{public}X,%{public}s");
    gpsd::util::triggerDiagnosticReport(&v20, &v19, &v18);
    std::string::~string(&v18);
    std::string::~string(&v19);
    std::string::~string(&v20);
    __assert_rtn("pulseTimeMarkStrobe", "GnssHalCommSpi.cpp", 273, "false && #spi,fail, gpti, pulseTimeMarkStrobe ,errCode,0x%{public}X,%{public}s");
  }

  v17 = 0;
  if (gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(&v17, v4))
  {
    v6 = *(this + 4);
    if (v6)
    {
      *buf = vsubq_s64(*v21, vdupq_lane_s64(v17, 0));
      (*(*v6 + 48))(v6, buf);
    }

    v7 = gpsd::util::convertMachTimeInTicksToNs(v21[0]);
    *a2 = v7;
    v8 = gpsd::util::convertMachTimeInTicksToNs(v21[1]);
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
    v9 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
    if (v10)
    {
      MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v10);
      v12 = gpsd::util::convertMachTimeInTicksToNs(v17);
      *buf = 134349824;
      *&buf[4] = v7;
      *&buf[12] = 2050;
      *&buf[14] = v8;
      *&buf[22] = 2050;
      *&buf[24] = MachContinuousTimeNs;
      v23 = 2050;
      v24 = v12;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_INFO, "#spi,#tt,pulseTimeMarkStrobe,low,ns,%{public}llu,upper,ns,%{public}llu,current,ns,%{public}llu,machContMinusMachAbs,ns,%{public}llu", buf, 0x2Au);
    }
  }

  else
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "#spi,#tt,pulseTimeMarkStrobe,offset,failed", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2454BED20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GnssHal::CommSpi::AsyncBuffering::AsyncBuffering(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::__value_func[abi:ne200100](a1 + 8, a3);
  *(a1 + 40) = 850045863;
  *(a1 + 128) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  if (!*a1)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "#spi,ab,queue,null", buf, 2u);
      v9 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      v26 = 1026;
      v27 = 306;
      v28 = 2082;
      v29 = "AsyncBuffering";
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v23, "assert");
    std::string::basic_string[abi:ne200100]<0>(v21, "AsyncBuffering");
    std::string::basic_string[abi:ne200100]<0>(__p, "#spi,ab,queue,null");
    gpsd::util::triggerDiagnosticReport(v23, v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    v10 = "false && #spi,ab,queue,null";
    v11 = 306;
    if (v23[23] < 0)
    {
      v12 = v23;
LABEL_24:
      operator delete(*v12);
    }

LABEL_25:
    __assert_rtn("AsyncBuffering", "GnssHalCommSpi.cpp", v11, v10);
  }

  if (!*(a3 + 24))
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "#spi,ab,cb,null", buf, 2u);
      v13 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      v26 = 1026;
      v27 = 307;
      v28 = 2082;
      v29 = "AsyncBuffering";
      _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v18, "assert");
    std::string::basic_string[abi:ne200100]<0>(v16, "AsyncBuffering");
    std::string::basic_string[abi:ne200100]<0>(v14, "#spi,ab,cb,null");
    gpsd::util::triggerDiagnosticReport(v18, v16, v14);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    v10 = "false && #spi,ab,cb,null";
    v11 = 307;
    if ((v18[23] & 0x80000000) != 0)
    {
      v12 = v18;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  std::vector<unsigned char>::reserve((a1 + 104), a4);
  std::vector<unsigned char>::reserve((a1 + 128), a4);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2454BF0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  v48 = *v46;
  if (*v46)
  {
    v44[17] = v48;
    operator delete(v48);
  }

  v49 = v44[13];
  if (v49)
  {
    v44[14] = v49;
    operator delete(v49);
  }

  std::mutex::~mutex(v45);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100]((v44 + 1));
  _Unwind_Resume(a1);
}

void GnssHal::CommSpi::AsyncBuffering::flushInternal(GnssHal::CommSpi::AsyncBuffering *this)
{
  std::mutex::lock((this + 40));
  v2 = *(this + 13);
  v3 = *(this + 14);
  if (v2 == v3)
  {

    std::mutex::unlock((this + 40));
  }

  else
  {
    *(this + 104) = *(this + 8);
    v4 = *(this + 18);
    v5 = *(this + 15);
    *(this + 17) = v3;
    *(this + 18) = v5;
    *(this + 15) = v4;
    *(this + 16) = v2;
    std::mutex::unlock((this + 40));
    std::function<void ()(unsigned char *,unsigned long)>::operator()(this + 8, *(this + 16), *(this + 17) - *(this + 16));
    v6 = *(this + 16);
    if (*(this + 17) != v6)
    {
      *(this + 17) = v6;
    }

    v7 = *this;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = this;
    dispatch_async(v7, block);
  }
}

void GnssHal::CommSpi::~CommSpi(GnssHal::CommSpi *this)
{
  GnssHal::CommSpi::~CommSpi(this);

  JUMPOUT(0x245D6AEE0);
}

{
  *this = &unk_28585C350;
  GnssHal::CommSpi::close(this);
  std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](this + 16, 0);
  std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](this + 15, 0);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](this + 56);
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t *std::unique_ptr<GnssHal::CommSpi::AsyncBuffering>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      *(v2 + 136) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 104);
    if (v4)
    {
      *(v2 + 112) = v4;
      operator delete(v4);
    }

    std::mutex::~mutex((v2 + 40));
    std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v2 + 8);

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28585C410;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_0>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28585C4A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1,std::allocator<GnssHal::CommSpi::CommSpi(std::function<void ()(GnssHal::TimeTransferPulseMark)>,dispatch_queue_s *)::$_1>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

GnssHal::PlatformNvStore *GnssHal::PlatformNvStore::PlatformNvStore(GnssHal::PlatformNvStore *this)
{
  *this = &unk_28585C628;
  v2 = (this + 8);
  *(this + 1) = &unk_2858638D8;
  v3 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v3, v2);
  *this = &unk_28585C520;
  *(this + 1) = &unk_28585C5B0;
  proto::gnsshal::NvStore::NvStore((this + 16));
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  proto::gnsshal::NvStore::NvStore((this + 104));
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 31) = 0;
  *(this + 32) = this + 264;
  *(this + 184) = xmmword_245582420;
  proto::gnsshal::NvStore::Clear((this + 104));
  *(this + 38) |= 1u;
  *(this + 36) = 1;
  *(this + 12) = 0;
  proto::gnsshal::NvStore::Clear((this + 16));
  *(this + 16) |= 1u;
  *(this + 14) = 1;
  GnssHal::PlatformNvStore::configure(this);
  GnssHal::PlatformNvStore::readCacheFromDisk(this, (this + 104));
  GnssHal::PlatformNvStore::readCacheFromDisk(this, (this + 16));
  return this;
}

void sub_2454BF76C(_Unwind_Exception *a1)
{
  GnssHal::PlatformNvStore::Cache::~Cache((v2 + 16));
  GpsdSessionHandler::~GpsdSessionHandler(v1);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::PlatformNvStore::Cache::reset(GnssHal::PlatformNvStore::Cache *this)
{
  *(this + 10) = 0;
  result = proto::gnsshal::NvStore::Clear(this);
  *(this + 12) |= 1u;
  *(this + 10) = 1;
  return result;
}

uint64_t GnssHal::PlatformNvStore::configure(void **this)
{
  v2 = GpsdPreferences::instance(0);
  GpsdPreferences::nvStoreFile(v2, &v4);
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  *(this + 10) = v4;
  this[22] = v5;
  return MEMORY[0x245D6AB60](this + 9, &str);
}

uint64_t GnssHal::PlatformNvStore::readCacheFromDisk(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 79);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v5 = a2 + 56;
    if ((GnssHal::PlatformNvStore::readCacheFromFile(this, a2, a2 + 7) & 1) == 0)
    {
      if (*(a2 + 79) >= 0)
      {
        v6 = *(a2 + 79);
      }

      else
      {
        v6 = *(a2 + 8);
      }

      v7 = __p;
      std::string::basic_string[abi:ne200100](__p, v6 + 4);
      if (v17 < 0)
      {
        v7 = *__p;
      }

      if (v6)
      {
        if (*(a2 + 79) >= 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = *(a2 + 7);
        }

        memmove(v7, v8, v6);
      }

      strcpy(&v7[v6], ".bak");
      CacheFromFile = GnssHal::PlatformNvStore::readCacheFromFile(this, a2, __p);
      if (v17 < 0)
      {
        operator delete(*__p);
      }

      v10 = GpsdLogObjectGeneral;
      if (CacheFromFile)
      {
        v11 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          if (*(a2 + 79) >= 0)
          {
            v12 = v5;
          }

          else
          {
            v12 = *(a2 + 7);
          }

          *__p = 136446210;
          *&__p[4] = v12;
          _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "NvStore,Needed to read from backup file, %{public}s, is corrupt", __p, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 79) >= 0)
          {
            v13 = v5;
          }

          else
          {
            v13 = *(a2 + 7);
          }

          *__p = 136446210;
          *&__p[4] = v13;
          _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "NvStore,Failed to read from primary and backup files for,%{public}s, using an empty cache", __p, 0xCu);
        }

        *(a2 + 10) = 0;
        v11 = proto::gnsshal::NvStore::Clear(a2);
        *(a2 + 12) |= 1u;
        *(a2 + 10) = 1;
      }

      GnssHal::PlatformNvStore::writeCacheToDisk(v11, a2);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_2454BFA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::PlatformNvStore::Cache::~Cache(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  proto::gnsshal::NvStore::~NvStore(this);
}

void GnssHal::PlatformNvStore::~PlatformNvStore(GnssHal::PlatformNvStore *this)
{
  *this = &unk_28585C520;
  v2 = (this + 8);
  *(this + 1) = &unk_28585C5B0;
  GnssHal::PlatformNvStore::flushSession(this);
  (*(*this + 56))(this);
  std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(this + 256, *(this + 33));
  std::mutex::~mutex(this + 3);
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  proto::gnsshal::NvStore::~NvStore((this + 104));
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  proto::gnsshal::NvStore::~NvStore((this + 16));
  *(this + 1) = &unk_2858638D8;
  v4 = GpsdSessionHandlerManager::instance(v3);
  GpsdSessionHandlerManager::removeEventHandler(v4, v2);
}

{
  GnssHal::PlatformNvStore::~PlatformNvStore(this);

  JUMPOUT(0x245D6AEE0);
}

void non-virtual thunk toGnssHal::PlatformNvStore::~PlatformNvStore(GnssHal::PlatformNvStore *this)
{
  GnssHal::PlatformNvStore::~PlatformNvStore((this - 8));
}

{
  GnssHal::PlatformNvStore::~PlatformNvStore((this - 8));

  JUMPOUT(0x245D6AEE0);
}

uint64_t GnssHal::PlatformNvStore::notifyStop(GnssHal::PlatformNvStore *this)
{
  (*(*this + 48))(this);
  v2 = *(*this + 56);

  return v2(this);
}

uint64_t non-virtual thunk toGnssHal::PlatformNvStore::notifyStop(GnssHal::PlatformNvStore *this)
{
  v1 = this - 8;
  (*(*(this - 1) + 48))(this - 8);
  v2 = *(*v1 + 56);

  return v2(v1);
}

BOOL GnssHal::PlatformNvStore::storeSession(std::mutex *a1, int a2, uint64_t a3)
{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1->__m_.__opaque[8], &a1[1].__m_.__opaque[32]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

BOOL GnssHal::PlatformNvStore::storeInternal(GnssHal::PlatformNvStore *a1, uint64_t a2, uint64_t a3, uint64_t a4, GnssHal::PlatformNvStore::Cache *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if (GnssHal::PlatformNvStore::existsInCache(a1, a5, a2))
  {
    v9 = GpsdLogObjectWarning;
    v10 = 0;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "NvStore,Item already in alternate cache", &v20, 2u);
      v10 = 0;
    }
  }

  else
  {
    GnssHal::PlatformNvStore::printState(a1, "pre-store");
    v11 = GpsdLogObjectGeneral;
    v12 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2 - 0x7FFFFFFF;
      }

      v17 = gpsd::util::getMachContinuousTimeNs(v12) * 0.000000001;
      v18 = (*(a3 + 8) - *a3);
      v19 = gpsd::util::truncatedSha256(*a3, v18);
      v20 = 134349824;
      v21 = v17;
      v22 = 1026;
      v23 = v16;
      v24 = 2050;
      v25 = v18;
      v26 = 1026;
      v27 = v19;
      _os_log_debug_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEBUG, "NvStore,store,mach_cont_s,%{public}.3f,id,%{public}d,size,%{public}zu,hash,%{public}x", &v20, 0x22u);
    }

    v10 = GnssHal::PlatformNvStore::storeToCache(v12, a4, a2, a3);
    if (!v10)
    {
      v13 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "NvStore,storeToCache failed", &v20, 2u);
      }
    }

    GnssHal::PlatformNvStore::printState(a1, "post-store");
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t GnssHal::PlatformNvStore::storeSession(std::mutex *a1, int a2, uint64_t a3)
{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1->__m_.__opaque[8], &a1[1].__m_.__opaque[32]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

uint64_t GnssHal::PlatformNvStore::storeInternal(GnssHal::PlatformNvStore *this, int a2, uint64_t a3, uint64_t a4, GnssHal::PlatformNvStore::Cache *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *(this + 33);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = (this + 264);
  do
  {
    if (*(v10 + 8) >= a2)
    {
      v11 = v10;
    }

    v10 = v10[*(v10 + 8) < a2];
  }

  while (v10);
  if (v11 != (this + 264) && *(v11 + 8) <= a2)
  {
    GnssHal::PlatformNvStore::printState(this, "pre-storeNamed");
    v16 = GpsdLogObjectGeneral;
    v17 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      v19 = gpsd::util::getMachContinuousTimeNs(v17) * 0.000000001;
      v20 = (*(a3 + 8) - *a3);
      v21 = gpsd::util::truncatedSha256(*a3, v20);
      v22 = 134349824;
      *v23 = v19;
      *&v23[8] = 1026;
      *&v23[10] = a2;
      v24 = 2050;
      v25 = v20;
      v26 = 1026;
      v27 = v21;
      _os_log_debug_impl(&dword_2454AA000, v16, OS_LOG_TYPE_DEBUG, "NvStore,storeNamed,mach_cont_s,%{public}.3f,id,%{public}d,size,%{public}zu,hash,%{public}x", &v22, 0x22u);
    }

    v13 = GnssHal::PlatformNvStore::writeBlobToDedicatedFile(v17, v11 + 5, a3);
    v18 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v22 = 67240192;
      *v23 = v13;
      _os_log_debug_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEBUG, "NvStore,storeReturn,%{public}d", &v22, 8u);
    }

    GnssHal::PlatformNvStore::printState(this, "post-storeNamed");
  }

  else
  {
LABEL_8:
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v22 = 67240448;
      *v23 = a2;
      *&v23[4] = 2050;
      *&v23[6] = a2 + 0x80000000;
      _os_log_debug_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEBUG, "NvStore,Did not find dedicated file for NamedType,%{public}d,Converting to id,%{public}lld", &v22, 0x12u);
    }

    v13 = GnssHal::PlatformNvStore::storeInternal(this, a2 + 0x80000000, a3, a4, a5);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL GnssHal::PlatformNvStore::storePermanent(std::mutex *a1, int a2, uint64_t a3)
{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1[1].__m_.__opaque[32], &a1->__m_.__opaque[8]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

uint64_t GnssHal::PlatformNvStore::storePermanent(std::mutex *a1, int a2, uint64_t a3)
{
  std::mutex::lock(a1 + 3);
  v6 = GnssHal::PlatformNvStore::storeInternal(a1, a2, a3, &a1[1].__m_.__opaque[32], &a1->__m_.__opaque[8]);
  std::mutex::unlock(a1 + 3);
  return v6;
}

void GnssHal::PlatformNvStore::flushSession(std::mutex *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "NvStore,flushSession", v4, 2u);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::flushInternal(v3, &this->__m_.__opaque[8]);
  std::mutex::unlock(this + 3);
}

void GnssHal::PlatformNvStore::flushInternal(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2)
{
  if ((GnssHal::PlatformNvStore::writeCacheToDisk(this, a2) & 1) == 0)
  {
    v2 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "NvStore,flush,writeCacheToDisk failed", v3, 2u);
    }
  }
}

void GnssHal::PlatformNvStore::flushPermanent(std::mutex *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "NvStore,flushPermanent", v4, 2u);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::flushInternal(v3, &this[1].__m_.__opaque[32]);
  std::mutex::unlock(this + 3);
}

void GnssHal::PlatformNvStore::recall(std::mutex *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock(this + 3);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  GnssHal::PlatformNvStore::recallInternal(this, a2, a3);

  std::mutex::unlock(this + 3);
}

void sub_2454C0584(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::mutex::unlock(v1 + 3);
  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::recallInternal(uint64_t a1, uint64_t a2, gpsd::util **a3)
{
  v4 = a2;
  v29 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (v6 < 1)
  {
LABEL_5:
    v9 = *(a1 + 128);
    if (v9 < 1)
    {
      goto LABEL_15;
    }

    v10 = *(a1 + 120);
    while (1)
    {
      v8 = *v10;
      if (*(*v10 + 16) == a2)
      {
        break;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    while (1)
    {
      v8 = *v7;
      if (*(*v7 + 16) == a2)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  v11 = *(v8 + 24);
  v12 = v11[23];
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = *(v11 + 1);
  }

  std::vector<unsigned char>::reserve(a3, v12);
  v13 = v11[23];
  if (v13 < 0)
  {
    v14 = v11;
    v11 = *v11;
    v13 = *(v14 + 1);
  }

  std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(v11, &v11[v13], a3);
LABEL_15:
  v15 = GpsdLogObjectGeneral;
  v16 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v4 > 0x7FFFFFFF)
    {
      LODWORD(v4) = v4 - 0x7FFFFFFF;
    }

    v18 = gpsd::util::getMachContinuousTimeNs(v16) * 0.000000001;
    v19 = *a3;
    v20 = (a3[1] - *a3);
    v21 = 134349824;
    v22 = v18;
    v23 = 1026;
    v24 = v4;
    v25 = 2050;
    v26 = v20;
    v27 = 1026;
    v28 = gpsd::util::truncatedSha256(v19, v20);
    _os_log_debug_impl(&dword_2454AA000, v15, OS_LOG_TYPE_DEBUG, "NvStore,recall,mach_cont_s,%{public}.3f,id,%{public}d,size,%{public}zu,hash,%{public}x", &v21, 0x22u);
  }

  GnssHal::PlatformNvStore::printState(a1, "recalled");
  v17 = *MEMORY[0x277D85DE8];
}

void GnssHal::PlatformNvStore::recall(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 192));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 264);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 264;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 != a1 + 264 && *(v7 + 32) <= a2)
  {
    v10 = GpsdLogObjectGeneral;
    v11 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      v12 = (v7 + 40);
      if (*(v7 + 63) < 0)
      {
        v12 = *v12;
      }

      v13 = 67240450;
      v14 = a2;
      v15 = 2082;
      v16 = v12;
      _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "NvStore: Reading NamedType=%{public}d from dedicated file %{public}s", &v13, 0x12u);
    }

    GnssHal::PlatformNvStore::readBlobFromDedicatedFile(v11, v7 + 40, a3);
  }

  else
  {
LABEL_8:
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67240448;
      v14 = a2;
      v15 = 2050;
      v16 = a2 + 0x80000000;
      _os_log_debug_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEBUG, "NvStore: Did not find dedicated file for NamedType=%{public}d, converting it to id=%{public}lld", &v13, 0x12u);
    }

    GnssHal::PlatformNvStore::recallInternal(a1, a2 + 0x80000000, a3);
  }

  std::mutex::unlock((a1 + 192));
  v9 = *MEMORY[0x277D85DE8];
}

void sub_2454C091C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::mutex::unlock(v1 + 3);
  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::readBlobFromDedicatedFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = fopen(v4, "rb");
  if (!v5)
  {
    v10 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v12 = *__error();
    *buf = 67240192;
    v24 = v12;
    v11 = "NvStore,Failed to open file for reading,%{public}d";
    goto LABEL_14;
  }

  v6 = v5;
  __ptr = 0;
  v7 = fread(&__ptr, 4uLL, 1uLL, v5);
  v8 = __ptr;
  if (v7 != 1 || __ptr >= 0x7A1201)
  {
    fclose(v6);
    v10 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 67240192;
    v24 = v8;
    v11 = "NvStore,Failed to read itemId/numBytes or out of range,numBytes,%{public}d";
LABEL_14:
    v13 = v10;
    v14 = 8;
LABEL_15:
    _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, v11, buf, v14);
    goto LABEL_27;
  }

  v15 = *a3;
  v16 = *(a3 + 8) - *a3;
  if (__ptr <= v16)
  {
    if (__ptr < v16)
    {
      *(a3 + 8) = &v15[__ptr];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a3, __ptr - v16);
    v15 = *a3;
  }

  v17 = fread(v15, 1uLL, v8, v6);
  v18 = fclose(v6);
  if (v17 == v8)
  {
    if (v18)
    {
      v19 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v11 = "NvStore,Failed to close file after reading";
        v13 = v19;
        v14 = 2;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v20 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v20, OS_LOG_TYPE_ERROR, "NvStore,Failed to read payload", buf, 2u);
    }

    *(a3 + 8) = *a3;
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t GnssHal::PlatformNvStore::clear(std::mutex *this, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v10 = 134349312;
    v11 = gpsd::util::getMachContinuousTimeNs(v5) * 0.000000001;
    v12 = 1026;
    v13 = a2;
    _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "NvStore,clear,mach_cont_s,%{public}.3f,id,%{public}d", &v10, 0x12u);
  }

  std::mutex::lock(this + 3);
  v7 = GnssHal::PlatformNvStore::clearFromCache(v6, &this->__m_.__opaque[8], a2);
  GnssHal::PlatformNvStore::clearFromCache(v7, &this[1].__m_.__opaque[32], a2);
  std::mutex::unlock(this + 3);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t GnssHal::PlatformNvStore::clearInternal(GnssHal::PlatformNvStore *this, uint64_t a2)
{
  v4 = GnssHal::PlatformNvStore::clearFromCache(this, (this + 16), a2);
  GnssHal::PlatformNvStore::clearFromCache(v4, (this + 104), a2);
  return 1;
}

uint64_t GnssHal::PlatformNvStore::clear(uint64_t a1, int a2)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    LODWORD(v17[0]) = 134349312;
    *(v17 + 4) = gpsd::util::getMachContinuousTimeNs(v5) * 0.000000001;
    WORD2(v17[1]) = 1026;
    *(&v17[1] + 6) = a2;
    _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "NvStore,clearNamed,mach_cont_s,%{public}.3f,id,%{public}d", v17, 0x12u);
  }

  std::mutex::lock((a1 + 192));
  v6 = *(a1 + 264);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1 + 264;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 != a1 + 264 && *(v7 + 32) <= a2)
  {
    v14 = GpsdLogObjectGeneral;
    v15 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      v16 = (v7 + 40);
      if (*(v7 + 63) < 0)
      {
        v16 = *v16;
      }

      LODWORD(v17[0]) = 67240450;
      HIDWORD(v17[0]) = a2;
      LOWORD(v17[1]) = 2082;
      *(&v17[1] + 2) = v16;
      _os_log_debug_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEBUG, "NvStore: Clearing NamedType=%{public}d from dedicated file %{public}s", v17, 0x12u);
    }

    memset(v17, 0, 24);
    v11 = GnssHal::PlatformNvStore::writeBlobToDedicatedFile(v15, (v7 + 40), v17);
  }

  else
  {
LABEL_10:
    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      LODWORD(v17[0]) = 67240448;
      HIDWORD(v17[0]) = a2;
      LOWORD(v17[1]) = 2050;
      *(&v17[1] + 2) = a2 + 0x80000000;
      _os_log_debug_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEBUG, "NvStore: Did not find dedicated file for NamedType=%{public}d, converting it to id=%{public}lld", v17, 0x12u);
    }

    v10 = GnssHal::PlatformNvStore::clearFromCache(v9, (a1 + 16), a2 + 0x80000000);
    GnssHal::PlatformNvStore::clearFromCache(v10, (a1 + 104), a2 + 0x80000000);
    v11 = 1;
  }

  std::mutex::unlock((a1 + 192));
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t GnssHal::PlatformNvStore::clearSessionStorage(std::mutex *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v7 = 134349056;
    v8 = gpsd::util::getMachContinuousTimeNs(v3) * 0.000000001;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "NvStore,clearSession,mach_cont_s,%{public}.3f", &v7, 0xCu);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::clearCache(v4, &this->__m_.__opaque[8]);
  std::mutex::unlock(this + 3);
  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

void GnssHal::PlatformNvStore::clearCache(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2)
{
  *(a2 + 10) = 0;
  v3 = proto::gnsshal::NvStore::Clear(a2);
  *(a2 + 12) |= 1u;
  *(a2 + 10) = 1;
  if ((GnssHal::PlatformNvStore::writeCacheToDisk(v3, a2) & 1) == 0)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "NvStore,clearCache requested but not completed due to writeCacheToDisk failure", v5, 2u);
    }
  }
}

uint64_t GnssHal::PlatformNvStore::clearPermanentStorage(std::mutex *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v7 = 134349056;
    v8 = gpsd::util::getMachContinuousTimeNs(v3) * 0.000000001;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "NvStore,clearPermanent,mach_cont_s,%{public}.3f", &v7, 0xCu);
  }

  std::mutex::lock(this + 3);
  GnssHal::PlatformNvStore::clearCache(v4, &this[1].__m_.__opaque[32]);
  std::mutex::unlock(this + 3);
  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

void GnssHal::PlatformNvStore::printState(GnssHal::PlatformNvStore *this, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE14D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE14D58))
  {
    v8 = GpsdPreferences::instance(0);
    _MergedGlobals_0 = GpsdPreferences::verboseNvStore(v8);
    __cxa_guard_release(&qword_27EE14D58);
  }

  if (_MergedGlobals_0 == 1)
  {
    v4 = GpsdLogObjectGeneral;
    v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      v9 = 136446210;
      v10 = a2;
      _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "NvStore,printState,begin,%{public}s", &v9, 0xCu);
    }

    if (*(this + 12) >= 1)
    {
      GnssHal::PlatformNvStore::printState(v5, (this + 16));
    }

    GnssHal::PlatformNvStore::printState(v5, (this + 104));
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = a2;
      _os_log_debug_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEBUG, "NvStore,printState,end,%{public}s", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t GnssHal::PlatformNvStore::writeBlobToDedicatedFile(uint64_t a1, const void **a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 4);
  if (v35 < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, ".tmp");
  if (v35 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = fopen(v8, "wb+");
  if (!v9)
  {
    v18 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      *buf = 136446210;
      v37 = v19;
      v15 = "NvStore,Failed to open dedicated tmp file,%{public}s";
      v16 = v18;
      v17 = 12;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  __ptr = *(a3 + 8) - *a3;
  if (fwrite(&__ptr, 4uLL, 1uLL, v9) != 1 || (v10 = fwrite(*a3, 1uLL, __ptr, v9), v10 != __ptr))
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v32 = __p;
      if (v35 < 0)
      {
        v32 = __p[0];
      }

      *buf = 136446466;
      v37 = v32;
      v38 = 1026;
      v39 = __ptr;
      _os_log_error_impl(&dword_2454AA000, v11, OS_LOG_TYPE_ERROR, "NvStore,Failed to write to temp file,%{public}s,localNumByes,%{public}d", buf, 0x12u);
    }
  }

  if (fclose(v9))
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67240192;
      LODWORD(v37) = v14;
      v15 = "NvStore,Failed to close temp file,%{public}d";
      v16 = v13;
      v17 = 8;
LABEL_38:
      _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (v35 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (*(a2 + 23) >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  rename(v20, v21, v12);
  if (v22)
  {
    v23 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a2 + 23);
      v25 = *a2;
      v26 = __error();
      if (v24 >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = v25;
      }

      v28 = *v26;
      *buf = 136446466;
      v37 = v27;
      v38 = 1026;
      v39 = v28;
      v15 = "NvStore,Failed to move temp file to primary dedicated,%{public}s,%{public}d";
      v16 = v23;
      v17 = 18;
      goto LABEL_38;
    }

LABEL_39:
    v29 = 0;
    goto LABEL_40;
  }

  v29 = 1;
LABEL_40:
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void sub_2454C16A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL GnssHal::PlatformNvStore::existsInCache(GnssHal::PlatformNvStore *this, const GnssHal::PlatformNvStore::Cache *a2, uint64_t a3)
{
  v3 = *(a2 + 6);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(*(a2 + 2) + 8 * v5);
    if (*(v6 + 16) == a3)
    {
      break;
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  if (v3 <= v5)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    v6 = *(*(a2 + 2) + 8 * v5);
  }

  v8 = *(v6 + 24);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  return v9 != 0;
}

void sub_2454C1794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL GnssHal::PlatformNvStore::storeToCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v8 = v7;
  if (v7 >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(a2 + 16) + 8 * v9);
      if (*(v10 + 16) == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        goto LABEL_5;
      }
    }

    if (v7 <= v9)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
      v10 = *(*(a2 + 16) + 8 * v9);
    }

    v17 = *(v10 + 24);
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v18 = *(v17 + 8);
    }

    v11 = *(a2 + 80) + *(a4 + 8) - *a4 - v18;
    if (v11 < 8000000)
    {
      *(a2 + 80) = v11;
      GnssHal::PlatformNvStore::storeToProtobuf(a1, v10, a3, a4);
LABEL_19:
      result = 1;
      goto LABEL_21;
    }

    v15 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_5:
  v11 = *(a4 + 8) - *a4 + *(a2 + 80);
  if (v11 < 8000000)
  {
    *(a2 + 80) = v11;
    v12 = *(a2 + 28);
    if (v8 >= v12)
    {
      if (v12 == *(a2 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
        v12 = *(a2 + 28);
      }

      *(a2 + 28) = v12 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
    }

    v13 = *(a2 + 16);
    *(a2 + 24) = v8 + 1;
    v14 = *(v13 + 8 * v8);
    *(v14 + 64) |= 8u;
    *(v14 + 32) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    *(v14 + 64) |= 0x10u;
    *(v14 + 40) = Current;
    GnssHal::PlatformNvStore::storeToProtobuf(v20, v14, a3, a4);
    goto LABEL_19;
  }

  v15 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_22:
    *buf = 134349312;
    v23 = v11;
    v24 = 2050;
    v25 = 8000000;
    _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "NvStore,NV_LIMIT_TOTAL_SIZE reached,%{public}lld,%{public}lld", buf, 0x16u);
    result = 0;
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454C1A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore *this, const GnssHal::PlatformNvStore::Cache *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 79);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 79);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "NvStore,writeCacheToDisk", buf, 2u);
      v2 = *(a2 + 79);
      v4 = *(a2 + 8);
      v3 = *(a2 + 79);
    }

    if (v3 >= 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = v4;
    }

    v9 = v35;
    std::string::basic_string[abi:ne200100](v35, v8 + 4);
    if (v36 < 0)
    {
      v9 = v35[0];
    }

    if (v8)
    {
      if (*(a2 + 79) >= 0)
      {
        v10 = a2 + 56;
      }

      else
      {
        v10 = *(a2 + 7);
      }

      memmove(v9, v10, v8);
    }

    strcpy(v9 + v8, ".tmp");
    if (*(a2 + 79) >= 0)
    {
      v11 = *(a2 + 79);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = __p;
    std::string::basic_string[abi:ne200100](__p, v11 + 4);
    if (v34 < 0)
    {
      v12 = __p[0];
    }

    if (v11)
    {
      if (*(a2 + 79) >= 0)
      {
        v13 = a2 + 56;
      }

      else
      {
        v13 = *(a2 + 7);
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ".bak");
    if (v36 >= 0)
    {
      v14 = v35;
    }

    else
    {
      v14 = v35[0];
    }

    unlink(v14);
    if (v36 >= 0)
    {
      v15 = v35;
    }

    else
    {
      v15 = v35[0];
    }

    v16 = fopen(v15, "wb+");
    v32 = v16;
    if (v16)
    {
      gpsd::util::changeFileToClassD(v16, v17);
      wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
      v20 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a2 + 10);
        v25 = *(a2 + 6);
        v26 = proto::gnsshal::NvStore::ByteSize(a2, v21);
        *buf = 134349824;
        v38 = 0;
        v39 = 1026;
        *v40 = v24;
        *&v40[4] = 1026;
        *&v40[6] = v25;
        v41 = 1026;
        v42 = v26;
        _os_log_error_impl(&dword_2454AA000, v20, OS_LOG_TYPE_ERROR, "NvStore,Could not serialize to string,stringSize,%{public}zu,cacheVer,%{public}d,cacheNum,%{public}d,cacheBytes,%{public}d", buf, 0x1Eu);
      }
    }

    else
    {
      v18 = __error();
      v19 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v27 = *v18;
        v28 = v36;
        v29 = v35[0];
        v30 = strerror(v27);
        v31 = v35;
        if (v28 < 0)
        {
          v31 = v29;
        }

        *buf = 136446466;
        v38 = v31;
        v39 = 2082;
        *v40 = v30;
        _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, "NvStore,Failed to open temp file,%{public}s,%{public}s", buf, 0x16u);
      }
    }

    std::unique_ptr<__sFILE,GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore::Cache const&,BOOL)::$_0>::reset[abi:ne200100](&v32);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2454C211C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, FILE *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<__sFILE,GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore::Cache const&,BOOL)::$_0>::reset[abi:ne200100](&a15);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::printState(GnssHal::PlatformNvStore *this, const GnssHal::PlatformNvStore::Cache *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v20 = a2 + 56;
    v21 = *(a2 + 10);
    if (*(a2 + 79) < 0)
    {
      v20 = *(a2 + 7);
    }

    *buf = 134349314;
    v23 = v21;
    v24 = 2082;
    v25 = v20;
    _os_log_debug_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEBUG, "NvStore,printState,currentSize,%{public}lld,filePath,%{public}s", buf, 0x16u);
  }

  if (*(a2 + 6) < 1)
  {
    v18 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEBUG, "NvStore,printState,empty", buf, 2u);
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(a2 + 6);
    if (v5 >= 1)
    {
      v6 = Current;
      v7 = 0;
      v8 = GpsdLogObjectGeneral;
      do
      {
        v9 = *(*(a2 + 2) + 8 * v7);
        v10 = *(v9 + 16);
        if (v10 <= 0x7FFFFFFF)
        {
          v11 = *(v9 + 16);
        }

        else
        {
          v11 = v10 - 0x7FFFFFFF;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(v9 + 24);
          v13 = *(v12 + 23);
          if ((v13 & 0x8000000000000000) != 0)
          {
            v13 = *(v12 + 8);
          }

          v14 = *(v9 + 56);
          v15 = v6 - *(v9 + 40);
          v16 = v6 - *(v9 + 48);
          v17 = *(v9 + 32);
          *buf = 134350336;
          v23 = v11;
          v24 = 2050;
          v25 = v13;
          v26 = 1026;
          v27 = v14;
          v28 = 2050;
          v29 = v15;
          v30 = 2050;
          v31 = v16;
          v32 = 2050;
          v33 = v17;
          _os_log_debug_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEBUG, "NvStore,printState,id,%{public}lld,size,%{public}zu,hash,%{public}x,createAgeSeconds,%{public}.1f,modAgeSeconds,%{public}.1f,modCount,%{public}lld", buf, 0x3Au);
          v8 = GpsdLogObjectGeneral;
          v5 = *(a2 + 6);
        }

        ++v7;
      }

      while (v7 < v5);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}