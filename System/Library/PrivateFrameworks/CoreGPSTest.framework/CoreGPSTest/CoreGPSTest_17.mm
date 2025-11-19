void GpsdPreferences::dumpSettingsToLog(GpsdPreferences *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = GpsdLogObjectGeneral;
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    *buf = 134349056;
    v21 = gpsd::util::getMachContinuousTimeNs(v2) * 0.000000001;
    _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "#version,CoreGPS-328.0.1,machContSec,%{public}.3f,BuildTime,{Oct 10 2025,21:36:42}", buf, 0xCu);
  }

  v15 = [fDefaults dictionaryRepresentation];
  v3 = [v15 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v8 = *v17;
    *&v7 = 138543618;
    v14 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 isEqualToString:{@"AppleLanguages", v14}] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NSLanguages") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NSInterfaceStyle") & 1) == 0)
        {
          v11 = [v15 objectForKeyedSubscript:v10];
          v12 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
          {
            *buf = v14;
            v21 = *&v10;
            v22 = 2114;
            v23 = v11;
            _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_INFO, "Pref: %{public}@ = %{public}@", buf, 0x16u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

_DWORD *GpsdPreferences::setMode(int a1)
{
  result = GpsdPreferences::instance(a1);
  if (result)
  {
    return (*result == a1);
  }

  return result;
}

uint64_t GpsdPreferences::instance(int a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN15GpsdPreferences8instanceENS_4ModeE_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v3 = a1;
  if (GpsdPreferences::instance(GpsdPreferences::Mode)::pred != -1)
  {
    dispatch_once(&GpsdPreferences::instance(GpsdPreferences::Mode)::pred, block);
  }

  return GpsdPreferences::fInstance;
}

void GpsdPreferences::vendorLogDirectory(GpsdPreferences *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (*this > 2)
  {
    if (v3 == 3)
    {
      v4 = "/var/root/gps_unittest_logs";
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      v4 = "/private/var/logs/BurnIn/gps";
      goto LABEL_13;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = "/var/root/gpstool_logs";
      goto LABEL_13;
    }

    if (v3 == 2)
    {
      v4 = "/var/root/gpsfactorytest_logs";
LABEL_13:

      std::string::basic_string[abi:ne200100]<0>(a2, v4);
      return;
    }
  }

  v5 = [fDefaults stringForKey:@"VendorLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void GpsdPreferences::vendorLogDirectoryAssumingGpsd(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"VendorLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t GpsdPreferences::vendorLogPrefixWithTimestamp(GpsdPreferences *this)
{
  if (*this == 3)
  {
    return 0;
  }

  else
  {
    return [fDefaults BOOLForKey:@"VendorLogPrefixWithTimestamp"];
  }
}

uint64_t GpsdPreferences::vendorLogMaxDirectorySizeMB(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"VendorLogMaxDirectorySizeMB"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&unk_285865C00 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t GpsdPreferences::vendorLogRotationSizeMB(GpsdPreferences *this)
{
  if (*this == 3)
  {
    return 2000;
  }

  v1 = [fDefaults integerForKey:@"VendorLogRotationSizeMB"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&unk_285865C00 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t GpsdPreferences::vendorLogMaxNumberOfFiles(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"VendorLogMaxNumberOfFiles"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&unk_285865C18 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

void GpsdPreferences::forceGnssDeviceLibraryName(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"ForceGnssDeviceLibraryName"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t integerToHalLogLevel(unsigned int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 9)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67240192;
      v5[1] = a1;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "Invalid LogLevel preference %{public}d", v5, 8u);
    }

    result = 3;
  }

  else
  {
    result = dword_2455859C4[a1 & 0xF];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GpsdPreferences::getLogLevel(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"LogLevel"];

  return integerToHalLogLevel(v1);
}

uint64_t GpsdPreferences::getSecondaryLogLevel(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"SecondaryLogLevel"];

  return integerToHalLogLevel(v1);
}

uint64_t GpsdPreferences::getPvtmTimeOut(GpsdPreferences *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults integerForKey:@"PvtmTimeOut"];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67240192;
    v5[1] = v1;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref: kPvtmTimeOut = %{public}d", v5, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t GpsdPreferences::nmeaMaskOverride(GpsdPreferences *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults stringForKey:@"NmeaMaskOverride"];
  v7 = 0;
  v2 = [MEMORY[0x277CCAC80] scannerWithString:v1];
  [v2 scanHexLongLong:&v7];
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v9 = v7;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "Pref: kNmeaMaskOverride = 0x%{public}llx", buf, 0xCu);
  }

  v4 = v7;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t GpsdPreferences::maxSchedulerQos(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"MaxSchedulerQos"];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v1 == 2)
  {
    if (v3)
    {
      *v6 = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,UserInteractive", v6, 2u);
    }

    return 33;
  }

  else if (v1 == 1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,UserInitiated", buf, 2u);
    }

    return 25;
  }

  else
  {
    if (v3)
    {
      *v5 = 0;
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,Default", v5, 2u);
    }

    return 21;
  }
}

void GpsdPreferences::protobufLogDirectory(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"ProtobufLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::nvStorePath(GpsdPreferences *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = [fDefaults stringForKey:@"DatabasePath"];
  v5 = v4;
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, off_278E808C8[*this]);
  }
}

void GpsdPreferences::nvStoreFile(GpsdPreferences *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if ((*this - 1) < 2)
  {
    v4 = "/var/root/gpstool_nvstore.bin";
    goto LABEL_7;
  }

  if (v3 == 4)
  {
    v4 = "/private/var/logs/BurnIn/gps/nvstore.bin";
    goto LABEL_7;
  }

  if (v3 == 3)
  {
    v4 = "/var/mobile/CoreGPS_UnitTests_nvstore.bin";
LABEL_7:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  v5 = [fDefaults stringForKey:@"NvStoreFile"];
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void GpsdPreferences::storeLongTermPredictionsFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"LongTermPredictionsFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::storeShortTermPredictionsFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"ShortTermPredictionsFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::storeRTIFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"RTIFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::storeRavenOrbitFile(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"RavenOrbitFile"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::recoveryTestCase(GpsdPreferences *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined", buf, 2u);
    v1 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v6 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdPreferences.mm";
    v7 = 1026;
    v8 = 685;
    v9 = 2082;
    v10 = "recoveryTestCase";
    _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "assert");
  std::string::basic_string[abi:ne200100]<0>(&v3, "recoveryTestCase");
  std::string::basic_string[abi:ne200100]<0>(&v2, "Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined");
  gpsd::util::triggerDiagnosticReport(&v4, &v3, &v2);
  std::string::~string(&v2);
  std::string::~string(&v3);
  std::string::~string(&v4);
  __assert_rtn("recoveryTestCase", "GpsdPreferences.mm", 685, "false && Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined");
}

void sub_24557296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t GpsdPreferences::enableConstellationsBitfield(GpsdPreferences *this)
{
  v1 = [fDefaults BOOLForKey:@"EnableGps"];
  if ([fDefaults BOOLForKey:@"EnableQzss"])
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  if ([fDefaults BOOLForKey:@"EnableGlonass"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([fDefaults BOOLForKey:@"EnableGalileo"])
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  if ([fDefaults BOOLForKey:@"EnableBeidou"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if ([fDefaults BOOLForKey:@"EnableNavic"])
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  return v6 | v7 | v8;
}

unint64_t GpsdPreferences::determineLibindusFinalCoExConfig(GpsdPreferences *this, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = GpsdPlatformInfo::instance(0);
  LibindusPlatformCo = GpsdPlatformInfo::getLibindusPlatformCoExConfigDefault(v5);
  v7 = LibindusPlatformCo;
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = LibindusPlatformCo;
  }

  v9 = [fDefaults objectForKey:@"CREnableCoexBlanking2G"];

  if (v9)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexBlanking2G"])
    {
      v8 |= 1uLL;
    }

    else
    {
      v8 &= ~1uLL;
    }
  }

  v10 = [fDefaults objectForKey:@"CREnableCoexBlankingNR"];

  if (v10)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexBlankingNR"])
    {
      v8 |= 2uLL;
    }

    else
    {
      v8 &= ~2uLL;
    }
  }

  v11 = [fDefaults objectForKey:@"CREnableCoexLTEB13"];

  if (v11)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexLTEB13"])
    {
      v8 |= 4uLL;
    }

    else
    {
      v8 &= ~4uLL;
    }
  }

  v12 = [fDefaults objectForKey:@"CREnableCoexLTEB14"];

  if (v12)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexLTEB14"])
    {
      v8 |= 8uLL;
    }

    else
    {
      v8 &= ~8uLL;
    }
  }

  v13 = [fDefaults objectForKey:@"CREnableCoexEnhancedAssistance"];

  if (v13)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexEnhancedAssistance"])
    {
      v8 |= 0x10uLL;
    }

    else
    {
      v8 &= ~0x10uLL;
    }
  }

  v14 = [fDefaults objectForKey:@"CREnableSTWMitigation"];

  if (v14 && ![fDefaults BOOLForKey:@"CREnableSTWMitigation"])
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFDFLL;
  }

  else
  {
    v15 = v8 | 0x20;
  }

  v16 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v17 = "No";
    v20 = 134349826;
    v21 = v15;
    v22 = 2050;
    if (a3)
    {
      v17 = "Yes";
    }

    v23 = v7;
    v24 = 2082;
    v25 = v17;
    v26 = 2050;
    v27 = a2;
    _os_log_impl(&dword_2454AA000, v16, OS_LOG_TYPE_INFO, "#gdm,decodeCoexConfig,coexConfigPostOverride,0x%{public}llx,coexConfigDefault,0x%{public}llx,isCLOverride,%{public}s,coexConfigCLOverride,0x%{public}llx", &v20, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t GpsdPreferences::libolafCoexFlagsBitfield(GpsdPreferences *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults BOOLForKey:@"EnableCoexBitEnhancedFreqAsst"];
  v24 = [fDefaults BOOLForKey:@"EnableCoexBitCdmaFineTimeAsst"];
  v25 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingGpsL1"];
  v2 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingGloL1"];
  v3 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingBdsB1I"];
  v4 = [fDefaults BOOLForKey:@"EnableCoexBitStaticSpur"];
  v5 = [fDefaults BOOLForKey:@"EnableCoexBitDynamicNotch"];
  v6 = [fDefaults BOOLForKey:@"EnableCoexBitJammer"];
  v7 = [fDefaults integerForKey:@"CoexForceGpsL1Filter"];
  v8 = [fDefaults integerForKey:@"CoexForceGloL1Filter"];
  v9 = [fDefaults integerForKey:@"CoexForceB1IFilter"];
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 67242752;
    v27 = v1;
    v28 = 1026;
    v29 = v24;
    v30 = 1026;
    v31 = v25;
    v32 = 1026;
    v33 = v2;
    v34 = 1026;
    v35 = v3;
    v36 = 1026;
    v37 = v7;
    v38 = 1026;
    v39 = v8;
    v40 = 1026;
    v41 = v9;
    v42 = 1026;
    v43 = v4;
    v44 = 1026;
    v45 = v5;
    v46 = 1026;
    v47 = v6;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_INFO, "#coex,eFA,%{public}d,FTA,%{public}d,blankingGPS/GLO/B1I,%{public}d,%{public}d,%{public}d,forceFilterGPS/GLO/B1I,%{public}d,%{public}d,%{public}d,enableSpurStatic,%{public}d,enableSpurDynamic,%{public}d,enableJammer,%{public}d", buf, 0x44u);
  }

  if ((v7 - 1) > 3)
  {
    v11 = 30720;
  }

  else
  {
    v11 = qword_2455859E8[v7 - 1];
  }

  if ((v9 - 1) > 2)
  {
    v12 = 917504;
  }

  else
  {
    v12 = qword_245585A08[v9 - 1];
  }

  v13 = 98304;
  if (v8 == 2)
  {
    v13 = 0x10000;
  }

  if (v8 == 1)
  {
    v13 = 0x8000;
  }

  v14 = 0x100000;
  if (!(v7 | v8))
  {
    v14 = (v9 != 0) << 20;
  }

  v15 = 4;
  if (!v1)
  {
    v15 = 0;
  }

  v16 = 8;
  if (!v4)
  {
    v16 = 0;
  }

  v17 = 16;
  if (!v5)
  {
    v17 = 0;
  }

  v18 = 32;
  if (!v6)
  {
    v18 = 0;
  }

  v19 = 256;
  if (!v25)
  {
    v19 = 0;
  }

  v20 = 512;
  if (!v2)
  {
    v20 = 0;
  }

  v21 = 1024;
  if (!v3)
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15 | v24 | v19 | v20 | v21 | v16 | v17 | v18 | v13 | v14 | v11 | v12;
}

void GpsdPreferences::glonassPerFrequencyGroupDelayMeters(const void **a1@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = [fDefaults arrayForKey:@"GlonassPerFrequencyGroupDelayMeters"];
  v4 = v3;
  if (v3 && [v3 count] > 0xD)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = *v24;
      v9 = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v23 + 1) + 8 * i) doubleValue];
          v13 = a1[1];
          v12 = a1[2];
          if (v13 >= v12)
          {
            v15 = *a1;
            v16 = v13 - *a1;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v19 = v12 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v20);
            }

            *(8 * v17) = v11;
            v14 = 8 * v17 + 8;
            memcpy(0, v15, v16);
            v21 = *a1;
            *a1 = 0;
            a1[1] = v14;
            a1[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }

            v4 = v9;
          }

          else
          {
            *v13 = v11;
            v14 = (v13 + 8);
          }

          a1[1] = v14;
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "Invalid glonassPerFrequencyGroupDelayMeters parameters", buf, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_24557339C(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdPreferences::debugFeaturesBitmask(GpsdPreferences *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [fDefaults integerForKey:@"DebugFeaturesBitmask"];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    v6 = v1;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "debugFeaturesBitmask,0x%{public}llx", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void GpsdPreferences::debugSettingsString(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"DebugSettingsString"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t GpsdPreferences::platformSpecificFeaturesBitmask(GpsdPreferences *this)
{
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v1 = [fDefaults BOOLForKey:@"EnableCoexL5NotchFilter"];
    if ([fDefaults BOOLForKey:@"HasXtalFreqJumpRisk"])
    {
      return v1 | 2;
    }

    else
    {
      return v1;
    }
  }

  else if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    return 0;
  }

  else
  {
    return [fDefaults BOOLForKey:@"EnableReceivingFTA"];
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t GpsdPlatformInfoHardware::detectHardware(GpsdPlatformInfoHardware *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = xmmword_245585A28;
  v5 = 710807826;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 470738981, v4 = xmmword_245585A3C, (MGIsDeviceOfType()))
  {
    result = 10401;
    goto LABEL_4;
  }

  v5 = -2085056298;
  v4 = xmmword_245585A50;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 1860682089, v4 = xmmword_245585A64, (MGIsDeviceOfType()))
  {
    result = 10403;
    goto LABEL_4;
  }

  v5 = -338255497;
  v4 = xmmword_245585A78;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 152704997, v4 = xmmword_245585A8C, (MGIsDeviceOfType()))
  {
    result = 10509;
    goto LABEL_4;
  }

  v5 = 283967174;
  v4 = xmmword_245585AA0;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -1040127899, v4 = xmmword_245585AB4, (MGIsDeviceOfType()))
  {
    result = 10511;
    goto LABEL_4;
  }

  v5 = -1742178852;
  v4 = xmmword_245585AC8;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 2146530832, v4 = xmmword_245585ADC, (MGIsDeviceOfType()))
  {
    result = 10501;
    goto LABEL_4;
  }

  v5 = 1330813729;
  v4 = xmmword_245585AF0;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 617174804, v4 = xmmword_245585B04, (MGIsDeviceOfType()))
  {
    result = 10503;
    goto LABEL_4;
  }

  v5 = -871113647;
  v4 = xmmword_245585B18;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 1530707451, v4 = xmmword_245585B2C, (MGIsDeviceOfType()))
  {
    result = 10601;
    goto LABEL_4;
  }

  v5 = 1472775220;
  v4 = xmmword_245585B40;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 483476120, v4 = xmmword_245585B54, (MGIsDeviceOfType()))
  {
    result = 10603;
    goto LABEL_4;
  }

  v5 = 282158961;
  v4 = xmmword_245585B68;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 56502976, v4 = xmmword_245585B7C, (MGIsDeviceOfType()))
  {
    result = 10606;
    goto LABEL_4;
  }

  v5 = -961843768;
  v4 = xmmword_245585B90;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 1282132887, v4 = xmmword_245585BA4, (MGIsDeviceOfType()))
  {
    result = 10608;
    goto LABEL_4;
  }

  v5 = -441172408;
  v4 = xmmword_245585BB8;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 1326690998, v4 = xmmword_245585BCC, (MGIsDeviceOfType()))
  {
    result = 10610;
    goto LABEL_4;
  }

  v5 = 1756484512;
  v4 = xmmword_245585BE0;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -126099363, v4 = xmmword_245585BF4, (MGIsDeviceOfType()))
  {
    result = 10612;
    goto LABEL_4;
  }

  v5 = -1092155788;
  v4 = xmmword_245585C08;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 763775061, v4 = xmmword_245585C1C, (MGIsDeviceOfType()))
  {
    result = 10614;
    goto LABEL_4;
  }

  v5 = -63049871;
  v4 = xmmword_245585C30;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -557458837, v4 = xmmword_245585C44, (MGIsDeviceOfType()))
  {
    result = 10616;
    goto LABEL_4;
  }

  v5 = 1730000236;
  v4 = xmmword_245585C58;
  if (MGIsDeviceOfType())
  {
    result = 10618;
    goto LABEL_4;
  }

  v5 = 1530338216;
  v4 = xmmword_245585C6C;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 406601745, v4 = xmmword_245585C80, (MGIsDeviceOfType()))
  {
    result = 10701;
    goto LABEL_4;
  }

  v5 = 1654218604;
  v4 = xmmword_245585C94;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -1930811061, v4 = xmmword_245585CA8, (MGIsDeviceOfType()))
  {
    result = 10703;
    goto LABEL_4;
  }

  v5 = -182498503;
  v4 = xmmword_245585CBC;
  if (MGIsDeviceOfType())
  {
    result = 10705;
    goto LABEL_4;
  }

  v5 = 841005628;
  v4 = xmmword_245585CD0;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -2030489149, v4 = xmmword_245585CE4, (MGIsDeviceOfType()))
  {
    result = 10708;
    goto LABEL_4;
  }

  v5 = 1219348060;
  v4 = xmmword_245585CF8;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 223445260, v4 = xmmword_245585D0C, (MGIsDeviceOfType()))
  {
    result = 10710;
    goto LABEL_4;
  }

  v5 = -1921398171;
  v4 = xmmword_245585D20;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 373548423, v4 = xmmword_245585D34, (MGIsDeviceOfType()))
  {
    result = 10717;
    goto LABEL_4;
  }

  v5 = -936391310;
  v4 = xmmword_245585D48;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 2140507472, v4 = xmmword_245585D5C, (MGIsDeviceOfType()))
  {
    result = 10719;
    goto LABEL_4;
  }

  v5 = -1384522500;
  v4 = xmmword_245585D70;
  if (MGIsDeviceOfType())
  {
    result = 10712;
    goto LABEL_4;
  }

  v5 = 1815762806;
  v4 = xmmword_245585D84;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -782763850, v4 = xmmword_245585D98, (MGIsDeviceOfType()))
  {
    result = 10713;
    goto LABEL_4;
  }

  v5 = -652049476;
  v4 = xmmword_245585DAC;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = -1897771119, v4 = xmmword_245585DC0, (MGIsDeviceOfType()))
  {
    result = 10715;
    goto LABEL_4;
  }

  v5 = -232427879;
  v4 = xmmword_245585DD4;
  if (MGIsDeviceOfType())
  {
    result = 21102;
    goto LABEL_4;
  }

  v5 = -427474227;
  v4 = xmmword_245585DE8;
  if (MGIsDeviceOfType() & 1) != 0 || (v5 = 1477534141, v4 = xmmword_245585DFC, (MGIsDeviceOfType()))
  {
    result = 21106;
    goto LABEL_4;
  }

  v5 = -1843102369;
  v4 = xmmword_245585E10;
  if (MGIsDeviceOfType())
  {
    result = 21108;
    goto LABEL_4;
  }

  v5 = -61007701;
  v4 = xmmword_245585E24;
  if (MGIsDeviceOfType())
  {
    result = 21203;
    goto LABEL_4;
  }

  v5 = -235416490;
  v4 = xmmword_245585E38;
  if (MGIsDeviceOfType())
  {
    result = 21205;
    goto LABEL_4;
  }

  v5 = -820493242;
  v4 = xmmword_245585E4C;
  if (MGIsDeviceOfType())
  {
    result = 21201;
    goto LABEL_4;
  }

  v5 = -121925081;
  v4 = xmmword_245585E60;
  if (MGIsDeviceOfType())
  {
    result = 21210;
    goto LABEL_4;
  }

  v5 = -1820426635;
  v4 = xmmword_245585E74;
  if (MGIsDeviceOfType())
  {
    result = 21502;
    goto LABEL_4;
  }

  v5 = -937652876;
  v4 = xmmword_245585E88;
  if (MGIsDeviceOfType())
  {
    result = 21503;
    goto LABEL_4;
  }

  v5 = 169342588;
  v4 = xmmword_245585E9C;
  if (MGIsDeviceOfType())
  {
    result = 21705;
    goto LABEL_4;
  }

  v5 = 1874287171;
  v4 = xmmword_245585EB0;
  if (MGIsDeviceOfType())
  {
    goto LABEL_99;
  }

  v5 = -781324731;
  v4 = xmmword_245585EC4;
  if (MGIsDeviceOfType())
  {
    result = 21602;
    goto LABEL_4;
  }

  v5 = 431774303;
  v4 = xmmword_245585ED8;
  if (MGIsDeviceOfType())
  {
LABEL_99:
    result = 21603;
    goto LABEL_4;
  }

  v5 = 1214880059;
  v4 = xmmword_245585EEC;
  if (MGIsDeviceOfType())
  {
    result = 21701;
    goto LABEL_4;
  }

  v5 = 426359977;
  v4 = xmmword_245585F00;
  if (MGIsDeviceOfType())
  {
    result = 21702;
    goto LABEL_4;
  }

  v5 = -1354433901;
  v4 = xmmword_245585F14;
  if (MGIsDeviceOfType())
  {
    result = 21801;
    goto LABEL_4;
  }

  v5 = 1021543808;
  v4 = xmmword_245585F28;
  if (MGIsDeviceOfType())
  {
    result = 21802;
    goto LABEL_4;
  }

  v5 = 1459208360;
  v4 = xmmword_245585F3C;
  if (MGIsDeviceOfType())
  {
    result = 21804;
    goto LABEL_4;
  }

  v5 = -1841712216;
  v4 = xmmword_245585F50;
  if (MGIsDeviceOfType())
  {
    result = 31102;
    goto LABEL_4;
  }

  v5 = 213746202;
  v4 = xmmword_245585F64;
  if (MGIsDeviceOfType())
  {
    result = 31104;
    goto LABEL_4;
  }

  v5 = 300442574;
  v4 = xmmword_245585F78;
  if (MGIsDeviceOfType())
  {
LABEL_119:
    result = 30808;
    goto LABEL_4;
  }

  v5 = 440949464;
  v4 = xmmword_245585F8C;
  if (MGIsDeviceOfType())
  {
    result = 31302;
    goto LABEL_4;
  }

  v5 = -762483149;
  v4 = xmmword_245585FA0;
  if (MGIsDeviceOfType())
  {
    goto LABEL_121;
  }

  v5 = -1294188889;
  v4 = xmmword_245585FB4;
  if (MGIsDeviceOfType())
  {
    goto LABEL_119;
  }

  v5 = -1926937532;
  v4 = xmmword_245585FC8;
  if (MGIsDeviceOfType())
  {
LABEL_121:
    result = 30804;
    goto LABEL_4;
  }

  v5 = -2132668294;
  v4 = xmmword_245585FDC;
  if (MGIsDeviceOfType())
  {
    result = 30712;
  }

  else
  {
    v5 = -858079590;
    v4 = xmmword_245585FF0;
    if (MGIsDeviceOfType())
    {
      result = 31107;
    }

    else
    {
      v5 = -1675932945;
      v4 = xmmword_245586004;
      if (MGIsDeviceOfType())
      {
        result = 30812;
      }

      else
      {
        v5 = 300130091;
        v4 = xmmword_245586018;
        if (MGIsDeviceOfType())
        {
          result = 30810;
        }

        else
        {
          v5 = 646100384;
          v4 = xmmword_24558602C;
          if (MGIsDeviceOfType())
          {
            result = 31202;
          }

          else
          {
            v5 = -2071977621;
            v4 = xmmword_245586040;
            if (MGIsDeviceOfType())
            {
              result = 31702;
            }

            else
            {
              v5 = -1597604211;
              v4 = xmmword_245586054;
              if (MGIsDeviceOfType())
              {
                result = 31704;
              }

              else
              {
                v3 = GpsdLogObjectGeneral;
                result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
                if (result)
                {
                  LODWORD(v4) = 67109120;
                  DWORD1(v4) = MGGetProductType();
                  _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,Unknown or unsupported hardware,%x", &v4, 8u);
                  result = 0;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_4:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GpsdHardwareConfig::GpsdHardwareConfig(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2 > 21200)
  {
    if (a2 <= 30711)
    {
      if (a2 <= 21700)
      {
        if ((a2 - 21201) <= 9 && ((1 << (a2 + 47)) & 0x215) != 0)
        {
          goto LABEL_45;
        }

        if ((a2 - 21502) < 2)
        {
          *(a1 + 16) = 1;
          v8 = 0x401799999999999ALL;
LABEL_66:
          *(a1 + 8) = v8;
          goto LABEL_67;
        }

        if ((a2 - 21602) >= 2)
        {
          goto LABEL_73;
        }

LABEL_49:
        *(a1 + 16) = 1;
        *(a1 + 8) = 0x401799999999999ALL;
        *(a1 + 32) = 1;
        *(a1 + 24) = 0x4039000000000000;
        goto LABEL_67;
      }

      if (a2 > 21800)
      {
        if ((a2 - 21801) < 2)
        {
          goto LABEL_49;
        }

        if ((a2 - 21804) >= 2)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if ((a2 - 21701) < 2)
        {
          goto LABEL_49;
        }

        if (a2 != 21705)
        {
          if (a2 != 21706)
          {
            goto LABEL_73;
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
          v5 = 302;
LABEL_72:
          *a1 = v5;
          goto LABEL_73;
        }
      }

LABEL_60:
      *(a1 + 16) = 1;
      *(a1 + 8) = 0;
      v5 = 301;
      goto LABEL_72;
    }

    if (a2 <= 31201)
    {
      if (a2 <= 30809)
      {
        if (a2 != 30712 && a2 != 30804 && a2 != 30808)
        {
          goto LABEL_73;
        }

        goto LABEL_56;
      }

      if ((a2 - 31102) <= 5 && ((1 << (a2 - 126)) & 0x25) != 0)
      {
LABEL_56:
        v5 = 201;
        goto LABEL_72;
      }

      if (a2 != 30810 && a2 != 30812)
      {
        goto LABEL_73;
      }

LABEL_45:
      v5 = 202;
      goto LABEL_72;
    }

    if (a2 <= 31610)
    {
      if (a2 == 31202)
      {
        goto LABEL_56;
      }

      if (a2 == 31302)
      {
        goto LABEL_45;
      }

      v6 = 31609;
    }

    else if (a2 > 31703)
    {
      if (a2 == 31704)
      {
        goto LABEL_60;
      }

      v6 = 31802;
    }

    else
    {
      if (a2 == 31611)
      {
        goto LABEL_60;
      }

      v6 = 31702;
    }

    if (a2 != v6)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (a2 > 10700)
  {
    if ((a2 - 10701) <= 0x12)
    {
      v3 = 1 << (a2 + 51);
      if ((v3 & 0x552E5) != 0)
      {
        goto LABEL_67;
      }

      if ((v3 & 0x810) != 0)
      {
LABEL_65:
        *(a1 + 16) = 1;
        v8 = 0x3FF3333333333333;
        goto LABEL_66;
      }
    }

    if ((a2 - 21102) > 6 || ((1 << (a2 - 110)) & 0x51) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (a2 > 10600)
  {
    v4 = a2 - 110;
    if ((a2 - 10606) > 0xC)
    {
      goto LABEL_68;
    }

    if (((1 << v4) & 0x550) == 0)
    {
      if (((1 << v4) & 5) != 0)
      {
        v5 = 106;
        goto LABEL_72;
      }

      if (a2 == 10618)
      {
        goto LABEL_65;
      }

LABEL_68:
      if (a2 != 10601)
      {
        v7 = 10603;
LABEL_70:
        if (a2 != v7)
        {
          goto LABEL_73;
        }
      }

LABEL_71:
      v5 = 103;
      goto LABEL_72;
    }

LABEL_67:
    v5 = 107;
    goto LABEL_72;
  }

  if (a2 > 10500)
  {
    if ((a2 - 10501) > 0xA || ((1 << (a2 - 5)) & 0x505) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  if (a2)
  {
    if (a2 != 10401)
    {
      v7 = 10403;
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v12[0] = 67240192;
    v12[1] = 0;
    _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,device,%{public}d,unknown/unsupported", v12, 8u);
  }

LABEL_73:
  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t GpsdHardwareConfig::getEarliestBornYear(GpsdHardwareConfig *this)
{
  v1 = *this;
  v2 = 0x100000000;
  v3 = 2017;
  v4 = 2018;
  v5 = 2023;
  v6 = 2026;
  if (*this != 302)
  {
    v6 = 2017;
  }

  if (v1 != 301)
  {
    v5 = v6;
  }

  if (v1 != 202)
  {
    v4 = v5;
  }

  if (v1 == 107)
  {
    v2 = 0x100000000;
    v3 = 2021;
  }

  if (v1 == 106)
  {
    v2 = 0x100000000;
    v3 = 2020;
  }

  if (!v1)
  {
    v2 = 0;
    v3 = 1792;
  }

  v7 = v1 <= 201;
  if (v1 <= 201)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x100000000;
  }

  if (v7)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  return v9 | v8;
}

BOOL GpsdPlatformInfo::isGpsdSupported(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  if ((v1 - 201) < 2)
  {
    return 1;
  }

  v3 = v1 - 103;
  v4 = (v1 - 301) < 2;
  v5 = v3 >= 4;
  v7 = v3 == 4;
  v6 = (1 << v3) & 0x19;
  v7 = !v7 && v5 || v6 == 0;
  return !v7 || v4;
}

uint64_t GpsdPlatformInfo::isPhone(GpsdPlatformInfo *this)
{
  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  return _MergedGlobals_3;
}

void ___ZN16GpsdPlatformInfo7isPhoneEv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      _MergedGlobals_3 = 1;
    }

    CFRelease(v1);
  }
}

void GpsdPlatformInfo::vendorDylibFullPathName(GpsdPlatformInfo *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if ((v3 - 201) <= 1)
  {
    v4 = "/usr/lib/libolaf.dylib";
LABEL_11:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  if (v3 == 107)
  {
    v4 = "/usr/lib/libfire7.dylib";
    goto LABEL_11;
  }

  if (GpsdPlatformInfo::isLibgll6(this))
  {
    v4 = "/usr/lib/libfire6.dylib";
    goto LABEL_11;
  }

  if (GpsdPlatformInfo::isLibgll3(this))
  {
    v4 = "/usr/lib/libfire3.dylib";
    goto LABEL_11;
  }

  if ((*(this + 2) - 301) <= 1)
  {
    v4 = "/usr/lib/libindus.dylib";
    goto LABEL_11;
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_2454AA000, v6, OS_LOG_TYPE_FAULT, "PlatformInfo,unknown vendorDylibFullPathName", v7, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

BOOL GpsdPlatformInfo::isLibgll6(GpsdPlatformInfo *this)
{
  if (*(this + 2) == 106)
  {
    return 1;
  }

  v3 = GpsdPreferences::instance(0);
  isRavenExpected = GpsdPreferences::isRavenExpected(v3);
  result = 0;
  if (isRavenExpected)
  {
    return *(this + 2) == 103;
  }

  return result;
}

uint64_t GpsdPlatformInfo::isLibgll3(GpsdPlatformInfo *this)
{
  if (*(this + 2) != 103)
  {
    return 0;
  }

  v1 = GpsdPreferences::instance(0);
  return GpsdPreferences::isRavenExpected(v1) ^ 1;
}

BOOL GpsdPlatformInfo::isEnableReceivingFineTimeAssistance(GpsdPlatformInfo *this)
{
  if (*(this + 2) != 301)
  {
    return 0;
  }

  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  return (_MergedGlobals_3 & 1) != 0;
}

uint64_t GpsdPlatformInfo::expectedToHaveRaven(GpsdPlatformInfo *this)
{
  v2 = *(this + 2);
  if ((v2 - 301) < 2 || (v2 - 201) <= 1)
  {
    if (qword_27EE14DE0 != -1)
    {
      dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
    }

    if (_MergedGlobals_3)
    {
      return 1;
    }

    v2 = *(this + 2);
  }

  v3 = v2 - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    if (qword_27EE14DE0 != -1)
    {
      dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
    }

    if (_MergedGlobals_3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GpsdPlatformInfo::supportsNavic(GpsdPlatformInfo *this)
{
  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  if (_MergedGlobals_3 != 1)
  {
    return 0;
  }

  v2 = *(this + 2);
  result = 1;
  if ((v2 - 301) >= 2 && v2 != 107)
  {
    return 0;
  }

  return result;
}

double GpsdPlatformInfo::groupDelayL1InCAChips(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  result = 0.036;
  if (v1 != 202)
  {
    result = 0.0;
  }

  if (v1 == 201)
  {
    return -7.149;
  }

  return result;
}

double GpsdPlatformInfo::externalToChipL5GroupDelayMeters(GpsdPlatformInfo *this)
{
  result = 0.0;
  if (*(this + 24) == 1)
  {
    return *(this + 2);
  }

  return result;
}

void GpsdPlatformInfo::glonassPerFrequencyGroupDelayMeters(GpsdPlatformInfo *this@<X0>, void *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  if (v3 == 107)
  {
    v4 = 15.0;
    if (*(this + 40) == 1)
    {
      v4 = *(this + 4);
    }

    v5 = vdupq_lane_s64(COERCE__INT64(v4 + -520.569214), 0);
    v15 = vaddq_f64(v5, xmmword_2455860B0);
    v16 = vaddq_f64(v5, xmmword_2455860C0);
    v17 = vaddq_f64(v5, xmmword_2455860D0);
    v18 = vaddq_f64(v5, xmmword_2455860E0);
    v19 = vaddq_f64(v5, xmmword_2455860F0);
    *&v20 = v4 + -520.569214;
    *(&v20 + 1) = v4 + -520.569214 + 0.1;
    *&v21 = *(&v20 + 1);
    *(&v21 + 1) = *(&v20 + 1);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>();
  }

  if ((v3 - 301) > 1)
  {
    goto LABEL_23;
  }

  v6 = *this;
  if (*this <= 31610)
  {
    if (v6 == 21705 || v6 == 21804)
    {
      v9 = &xmmword_245586100;
      goto LABEL_20;
    }

    v7 = 31609;
    goto LABEL_18;
  }

  if (v6 > 31703)
  {
    if (v6 != 31704)
    {
      v7 = 31802;
      goto LABEL_18;
    }

LABEL_19:
    v9 = &xmmword_245586170;
LABEL_20:
    v10 = v9[5];
    v19 = v9[4];
    v20 = v10;
    v21 = v9[6];
    v11 = v9[1];
    v15 = *v9;
    v16 = v11;
    v12 = v9[3];
    v17 = v9[2];
    v18 = v12;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>();
  }

  if (v6 == 31611)
  {
    goto LABEL_19;
  }

  v7 = 31702;
LABEL_18:
  if (v6 == v7)
  {
    goto LABEL_19;
  }

  v13 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v15.f64[0]) = 67240192;
    HIDWORD(v15.f64[0]) = v6;
    _os_log_error_impl(&dword_2454AA000, v13, OS_LOG_TYPE_ERROR, "glonassPerFrequencyGroupDelayMeters,Unexpected hardware,%{public}d", &v15, 8u);
  }

LABEL_23:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v14 = *MEMORY[0x277D85DE8];
}

double GpsdPlatformInfo::getNonAsicPowerParameters(GpsdPlatformInfo *this)
{
  v1 = *this;
  result = 0.0;
  if (*this > 31610)
  {
    if (v1 > 31703)
    {
      v3 = v1 == 31704;
      v4 = 31802;
    }

    else
    {
      v3 = v1 == 31611;
      v4 = 31702;
    }

    if (v3 || v1 == v4)
    {
      return 1.9;
    }
  }

  else if (v1 > 21804)
  {
    if (v1 == 21805 || v1 == 31609)
    {
      return 1.9;
    }
  }

  else if (v1 == 21705 || v1 == 21804)
  {
    return 1.9;
  }

  return result;
}

double GpsdPlatformInfo::getGpsCrossCorrelationMinThreshold_dBHz(GpsdPlatformInfo *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_27EE14DE0 != -1)
  {
    dispatch_once(&qword_27EE14DE0, &__block_literal_global_4);
  }

  v2 = 24.0;
  if ((_MergedGlobals_3 & 1) == 0)
  {
    v3 = GpsdLogObjectGeneral;
    v2 = -1.0;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v6 = *this;
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "HalExtensions,Unexpected hardware,%{public}d", v7, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL GpsdPlatformInfo::usesPcie(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 202;
  return v2 < 2 || v3;
}

BOOL GpsdPlatformInfo::usesResetGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

BOOL GpsdPlatformInfo::usesTimeMarkGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

BOOL GpsdPlatformInfo::usesAsyncCommRead(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 107 || v1 == 202;
  return v2 < 2 || v3;
}

BOOL GpsdPlatformInfo::usesTimeMarkPciDoorbell(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 107 || v1 == 202;
  return v2 < 2 || v3;
}

BOOL GpsdPlatformInfo::usesGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

uint64_t GpsdPlatformInfo::getLibindusPlatformCoExConfigDefault(GpsdPlatformInfo *this)
{
  v1 = *this;
  result = 61;
  if (v1 <= 31701)
  {
    v4 = (v1 - 21705) >= 2;
    v3 = v1 - 21804;
    v4 = v4 && v3 >= 2;
    if (!v4)
    {
      return result;
    }

    return 32;
  }

  if (v1 != 31702 && v1 != 31704)
  {
    return 32;
  }

  return result;
}

uint64_t GpsdPlatformInfo::instance(int a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN16GpsdPlatformInfo8instanceEN24GpsdPlatformInfoHardware8HardwareE_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v3 = a1;
  if (GpsdPlatformInfo::instance(GpsdPlatformInfoHardware::Hardware)::pred != -1)
  {
    dispatch_once(&GpsdPlatformInfo::instance(GpsdPlatformInfoHardware::Hardware)::pred, block);
  }

  return GpsdPlatformInfo::fInstance;
}

void ___ZN16GpsdPlatformInfo8instanceEN24GpsdPlatformInfoHardware8HardwareE_block_invoke(GpsdPlatformInfoHardware *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 8))
  {
    v1 = GpsdPlatformInfoHardware::detectHardware(a1);
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67240448;
      v3[1] = v1;
      v4 = 1026;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "PlatformInfo,Product type detected,%{public}d,isInternal,%{public}d", v3, 0xEu);
    }
  }

  operator new();
}

GpsdPlatformInfo *GpsdPlatformInfo::GpsdPlatformInfo(GpsdPlatformInfo *a1, int a2)
{
  *a1 = a2;
  GpsdHardwareConfig::GpsdHardwareConfig(a1 + 8, a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  GpsdPlatformInfo::checkVendorLibs(a1);
  GpsdPlatformInfo::readMlbBornOnYww(a1);
  return a1;
}

void GpsdPlatformInfo::checkVendorLibs(GpsdPlatformInfo *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  v3 = (v1 - 103) <= 4 && ((1 << (v1 - 103)) & 0x19) != 0 || (v1 - 201) < 2;
  if ((v1 - 301) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 >= 2)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,conflicting vendor libs", buf, 2u);
      v9 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdPlatformInfo.mm";
      v15 = 1026;
      v16 = 605;
      v17 = 2082;
      v18 = "checkVendorLibs";
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v12, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v11, "checkVendorLibs");
    std::string::basic_string[abi:ne200100]<0>(&v10, "GpsdPlatformInfo,conflicting vendor libs");
    gpsd::util::triggerDiagnosticReport(&v12, &v11, &v10);
    std::string::~string(&v10);
    std::string::~string(&v11);
    std::string::~string(&v12);
    __assert_rtn("checkVendorLibs", "GpsdPlatformInfo.mm", 605, "false && GpsdPlatformInfo,conflicting vendor libs");
  }

  v6 = GpsdLogObjectGeneral;
  if (!v4 && os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2454AA000, v6, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,invoked on platform that does not have a supported vendor lib", buf, 2u);
    v6 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *this;
    *buf = 67240192;
    LODWORD(v14) = v7;
    _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_INFO, "GpsdPlatformInfo,hardware,%{public}d", buf, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_245575A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void GpsdPlatformInfo::readMlbBornOnYww(GpsdPlatformInfo *this)
{
  GpsdPlatformInfo::readMlbSerialNumber(&__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
LABEL_3:
      if (size < 0x12)
      {
        GpsdPlatformInfo::parseWeekFromYwwMlbSerialNumber(this, &__p);
      }

      else
      {
        GpsdPlatformInfo::parseWeekFromDomMlbSerialNumber(this, &__p);
      }

      goto LABEL_9;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_3;
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "MlbSn,aborted,empty", v4, 2u);
  }

LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_245575B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdPlatformInfo::getNoiseFigure(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67240192;
    v11[1] = a2;
    _os_log_debug_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEBUG, "GpsdPlatformInfo,getNoiseFigure,band,%{public}d", v11, 8u);
  }

  v5 = *(a1 + 8);
  if ((v5 - 201) >= 2)
  {
    v8 = v5 - 103;
    if ((v5 - 103) > 4)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = qword_2455861E0[v8];
      v7 = qword_245586208[v8];
    }
  }

  else
  {
    v6 = 0x100000000;
    v7 = 1078355558;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

void GpsdPlatformInfo::readMlbSerialNumber(uint64_t *a1@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    MEMORY[0x245D6AB60](a1, CStringPtr);
    CFRelease(v4);
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = *a1;
      }

      v10 = 136380675;
      v11 = v7;
      _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_INFO, "MlbSn,%{private}s", &v10, 0xCu);
    }
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "MlbSn,readSN,failed", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_245575DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void GpsdPlatformInfo::parseWeekFromDomMlbSerialNumber(uint64_t a1, const std::string *a2)
{
  v4 = 0;
  v5 = 0;
  v30 = *MEMORY[0x277D85DE8];
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  v7 = v6->__r_.__value_.__r.__words + 3;
  do
  {
    v8 = *(v7 + v5);
    v9 = charToIntBase34(v8);
    if (v9 < 0)
    {
      v14 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      LODWORD(v25.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v25.__r_.__value_.__r.__words[0]) = v8;
      v15 = "MlbSn,dom,unexpectedCh,%{public}c";
      v16 = v14;
      v17 = 8;
      goto LABEL_18;
    }

    v4 = v9 + 34 * v4;
    ++v5;
  }

  while (v5 != 3);
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string(&v25, a2, 3uLL, 3uLL, &v24);
    v11 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
    *buf = 136446466;
    v27 = v11;
    v28 = 1026;
    v29 = v4;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,%{public}s,%{public}d", buf, 0x12u);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  EarliestBornYear = GpsdHardwareConfig::getEarliestBornYear((a1 + 8));
  if (!HIDWORD(EarliestBornYear))
  {
    v13 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,EarliestBornYear,unknown", &v25, 2u);
    }

    goto LABEL_26;
  }

  v18 = ((EarliestBornYear - 1980) * 365.25 / 7.0);
  v19 = (v4 - 3657) / 7;
  if (v19 < v18)
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LODWORD(v25.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(v25.__r_.__value_.__r.__words[0]) = (v4 - 3657) / 7;
    LOWORD(v25.__r_.__value_.__r.__words[1]) = 1026;
    *(&v25.__r_.__value_.__r.__words[1] + 2) = v18;
    v15 = "MlbSn,dom,weekOutOfRange,mlb,%{public}d,earliest,%{public}d";
    v16 = v20;
    v17 = 14;
LABEL_18:
    _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, v15, &v25, v17);
    goto LABEL_26;
  }

  *(a1 + 56) = v19;
  *(a1 + 60) = 1;
  v21 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *(a1 + 56);
    LODWORD(v25.__r_.__value_.__l.__data_) = 67240192;
    HIDWORD(v25.__r_.__value_.__r.__words[0]) = v22;
    _os_log_impl(&dword_2454AA000, v21, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,bornOnGpsWeek,%{public}d", &v25, 8u);
  }

LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
}

void GpsdPlatformInfo::parseWeekFromYwwMlbSerialNumber(uint64_t a1, std::string::size_type a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v30 = *a2;
    if (v4 >= 0)
    {
      v30 = a2;
    }

    LODWORD(v32.__r_.__value_.__l.__data_) = 136380931;
    *(v32.__r_.__value_.__r.__words + 4) = v30;
    WORD2(v32.__r_.__value_.__r.__words[1]) = 2050;
    *(&v32.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_debug_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEBUG, "MlbSn,parse,%{private}s,sz,%{public}zu", &v32, 0x16u);
  }

  if (v5 == 11 || v5 == 13)
  {
    v8 = 2;
  }

  else
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x10)
    {
      v26 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v32.__r_.__value_.__l.__data_) = 134349056;
        *(v32.__r_.__value_.__r.__words + 4) = v5;
        v18 = "MlbSn,unexpectedSize,%{public}zu";
        v19 = v26;
        v20 = 12;
        goto LABEL_35;
      }

      goto LABEL_40;
    }

    v8 = 3;
  }

  std::string::basic_string(&v32, a2, v8, 3uLL, &v31);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v32.__r_.__value_.__r.__words[0];
    *(a1 + 48) = atoi(v32.__r_.__value_.__l.__data_);
    v9 = (a1 + 48);
    *(a1 + 52) = 1;
    v10 = (a1 + 52);
    operator delete(v11);
  }

  else
  {
    *(a1 + 48) = atoi(&v32);
    v9 = (a1 + 48);
    *(a1 + 52) = 1;
    v10 = (a1 + 52);
  }

  v12 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ((*v10 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13 = *v9;
    LODWORD(v32.__r_.__value_.__l.__data_) = 134349312;
    *(v32.__r_.__value_.__r.__words + 4) = v5;
    WORD2(v32.__r_.__value_.__r.__words[1]) = 1026;
    *(&v32.__r_.__value_.__r.__words[1] + 6) = v13;
    _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "MlbSn,sz,%{public}zu,yww,%{public}d", &v32, 0x12u);
  }

  if ((*v10 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = *v9;
  v15 = *v9 / 100;
  v16 = v14 - 100 * v15;
  if ((v16 - 54) > 0xFFFFFFCA)
  {
    EarliestBornYear = GpsdHardwareConfig::getEarliestBornYear((a1 + 8));
    if ((EarliestBornYear & 0x100000000) != 0)
    {
      v23 = v15 + 10 * (EarliestBornYear / 10);
      if (v23 >= EarliestBornYear)
      {
        v24 = v15 + 10 * (EarliestBornYear / 10);
      }

      else
      {
        v24 = v23 + 10;
      }

      v25 = v16 + ((v24 - 1980) * 365.25 / 7.0);
      if (v25 <= gpsd::util::getGpsWeekFromBuildDate(EarliestBornYear))
      {
        *(a1 + 56) = v25;
        *(a1 + 60) = 1;
        v27 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(a1 + 60) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v28 = *(a1 + 56);
          LODWORD(v32.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v32.__r_.__value_.__r.__words[0]) = v28;
          _os_log_impl(&dword_2454AA000, v27, OS_LOG_TYPE_DEFAULT, "MlbSn,bornOnGpsWeek,%{public}d", &v32, 8u);
        }
      }

      else
      {
        v17 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v32.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v32.__r_.__value_.__r.__words[0]) = v25;
          v18 = "MlbSn,weekOutOfRange,mlb,%{public}d";
          goto LABEL_23;
        }
      }
    }

    else
    {
      v22 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v32.__r_.__value_.__l.__data_) = 0;
        v18 = "MlbSn,EarliestBornYear,unknown";
        v19 = v22;
        v20 = 2;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v17 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v32.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v32.__r_.__value_.__r.__words[0]) = v16;
      v18 = "MlbSn,invalid,ww,%{public}d";
LABEL_23:
      v19 = v17;
      v20 = 8;
LABEL_35:
      _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, v18, &v32, v20);
    }
  }

LABEL_40:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t charToIntBase34(int a1)
{
  if ((a1 - 97) >= 0x1A)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 - 32;
  }

  v2 = v1;
  v3 = (v1 - 48);
  if ((v2 - 80) >= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v2 - 57;
  }

  if ((v2 - 74) <= 4)
  {
    v5 = v2 - 56;
  }

  else
  {
    v5 = v4;
  }

  if ((v2 - 65) <= 7u)
  {
    v6 = v2 - 55;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 - 48;
  if (v3 <= 9)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_24557663C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::triggerDiagnosticReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a1, *(a1 + 8));
  }

  else
  {
    v5 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v8 = 0;
  gpsd::util::triggerDiagnosticReport(&v5, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_245576740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::triggerDiagnosticReport(gpsd::util *this, const gpsd::util::DiagnosticReportParameters *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v3 = objc_alloc_init(MEMORY[0x277D6AFC0]);
    if (*(this + 23) >= 0)
    {
      v4 = this;
    }

    else
    {
      v4 = *this;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v6 = *(this + 3);
    if (*(this + 47) >= 0)
    {
      v7 = this + 24;
    }

    else
    {
      v7 = *(this + 3);
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = *(this + 6);
    if (*(this + 71) >= 0)
    {
      v10 = this + 48;
    }

    else
    {
      v10 = *(this + 6);
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    v12 = [v3 signatureWithDomain:@"GPSDaemon" type:v5 subType:v8 subtypeContext:v11 detectedProcess:@"com.apple.gpsd" triggerThresholdValues:0];

    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 23) >= 0)
      {
        v14 = this;
      }

      else
      {
        v14 = *this;
      }

      if (*(this + 47) >= 0)
      {
        v15 = this + 24;
      }

      else
      {
        v15 = *(this + 3);
      }

      if (*(this + 71) >= 0)
      {
        v16 = this + 48;
      }

      else
      {
        v16 = *(this + 6);
      }

      LODWORD(buf.__m_.__sig) = 136315650;
      *(&buf.__m_.__sig + 4) = v14;
      *&buf.__m_.__opaque[4] = 2080;
      *&buf.__m_.__opaque[6] = v15;
      *&buf.__m_.__opaque[14] = 2080;
      *&buf.__m_.__opaque[16] = v16;
      _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "#gsdr,type,%s,subtype,%s,context,%s", &buf, 0x20u);
    }

    memset(v37.__cv_.__opaque, 0, sizeof(v37.__cv_.__opaque));
    v37.__cv_.__sig = 1018212795;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3812000000;
    v32 = __Block_byref_object_copy__1;
    v33 = __Block_byref_object_dispose__1;
    v34 = &unk_24559C877;
    v35 = 0;
    if (*(this + 72) == 1)
    {
      operator new();
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = ___ZN4gpsd4util23triggerDiagnosticReportERKNS0_26DiagnosticReportParametersE_block_invoke;
    v28[3] = &unk_278E80940;
    v28[4] = &v29;
    if ([v3 snapshotWithSignature:v12 duration:0 events:0 payload:0 actions:v28 reply:0.0])
    {
      if (*(this + 72) == 1)
      {
        memset(buf.__m_.__opaque, 0, sizeof(buf.__m_.__opaque));
        buf.__m_.__sig = 850045863;
        __lk.__m_ = &buf;
        __lk.__owns_ = 1;
        std::mutex::lock(&buf);
        v17 = v30[6];
        v18.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v19.__d_.__rep_)
        {
          if (v19.__d_.__rep_ < 1)
          {
            if (v19.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v20.__d_.__rep_ = 1000 * v19.__d_.__rep_ + 5000000000;
            }

            else
            {
              v20.__d_.__rep_ = 0x800000012A05F200;
            }
          }

          else if (v19.__d_.__rep_ < 0x20C49BA59708B8)
          {
            v20.__d_.__rep_ = 1000 * v19.__d_.__rep_ + 5000000000;
          }

          else
          {
            v20.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v20.__d_.__rep_ = 5000000000;
        }

        std::condition_variable::__do_timed_wait(v17, &__lk, v20);
        if (std::chrono::steady_clock::now().__d_.__rep_ - v18.__d_.__rep_ > 0x12A05F1FFLL)
        {
          v22 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *v26 = 0;
            _os_log_error_impl(&dword_2454AA000, v22, OS_LOG_TYPE_ERROR, "#gsdr,wait timeout", v26, 2u);
          }
        }

        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        std::mutex::~mutex(&buf);
      }
    }

    else
    {
      v21 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__m_.__sig) = 0;
        _os_log_error_impl(&dword_2454AA000, v21, OS_LOG_TYPE_ERROR, "#gsdr,return failure", &buf, 2u);
      }
    }

    v23 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__m_.__sig) = 0;
      _os_log_impl(&dword_2454AA000, v23, OS_LOG_TYPE_DEFAULT, "#gsdr,exit", &buf, 2u);
    }

    _Block_object_dispose(&v29, 8);
    v24 = v35;
    v35 = 0;
    if (v24)
    {
      std::condition_variable::~condition_variable(v24);
      MEMORY[0x245D6AEE0]();
    }

    std::condition_variable::~condition_variable(&v37);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_245576C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::mutex::~mutex(&a25);
  _Block_object_dispose(&a18, 8);
  std::unique_ptr<std::condition_variable>::reset[abi:ne200100]((v27 + 48), 0);
  std::condition_variable::~condition_variable((v28 - 136));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN4gpsd4util23triggerDiagnosticReportERKNS0_26DiagnosticReportParametersE_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B1A0]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B190]];
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = 136315138;
    v14 = [v6 UTF8String];
    v8 = "#gsdr,accepted,%s";
    v9 = v7;
    v10 = 12;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B170]];
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = 67109120;
    LODWORD(v14) = [v6 intValue];
    v8 = "#gsdr,rejected,reason,%d";
    v9 = v7;
    v10 = 8;
  }

  _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_7:

  v11 = *(*(*(a1 + 32) + 8) + 48);
  if (v11)
  {
    std::condition_variable::notify_one(v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t gpsd::util::copyFile(gpsd::util *this, const char *a2, const char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v7 = [v6 copyItemAtPath:v4 toPath:v5 error:&v15];
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 localizedDescription];
      v13 = v12;
      v14 = [v12 UTF8String];
      *buf = 136446210;
      v17 = v14;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "VendorLogger,copyFile,error:%{public}s", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void gpsd::util::enumerateFiles(uint64_t a1, const void **a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v34 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v7 = [v34 contentsOfDirectoryAtPath:v6 error:0];

  std::vector<std::string>::clear[abi:ne200100](a3);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v9)
  {
    v35 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v8);
        }

        v11 = [*(*(&v41 + 1) + 8 * i) UTF8String];
        if (v11)
        {
          std::string::basic_string[abi:ne200100]<0>(buf, v11);
          v12 = v7;
          v13 = *(a2 + 23);
          if (v13 >= 0)
          {
            v14 = *(a2 + 23);
          }

          else
          {
            v14 = a2[1];
          }

          v15 = v40;
          if ((v40 & 0x8000000000000000) != 0)
          {
            if (v14 == -1)
            {
LABEL_52:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v17 = *buf;
            if (v39 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v39;
            }
          }

          else
          {
            if (v14 == -1)
            {
              goto LABEL_52;
            }

            if (v40 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v40;
            }

            v17 = buf;
          }

          if (v13 >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          if (!memcmp(v17, v19, v16) && v16 == v14)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v11);
            v22 = *(a3 + 8);
            v21 = *(a3 + 16);
            if (v22 >= v21)
            {
              v24 = *a3;
              v25 = v22 - *a3;
              v26 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3) + 1;
              if (v26 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x555555555555555)
              {
                v28 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v28 = v26;
              }

              if (v28)
              {
                if (v28 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v29 = 8 * (v25 >> 3);
              *v29 = *__p;
              *(v29 + 16) = v37;
              __p[1] = 0;
              v37 = 0;
              __p[0] = 0;
              v30 = v29 + 24;
              v31 = v29 - v25;
              memcpy((v29 - v25), v24, v25);
              *a3 = v31;
              *(a3 + 8) = v30;
              *(a3 + 16) = 0;
              if (v24)
              {
                operator delete(v24);
                v32 = SHIBYTE(v37);
                *(a3 + 8) = v30;
                if (v32 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                *(a3 + 8) = v30;
              }
            }

            else
            {
              v23 = *__p;
              *(v22 + 16) = v37;
              *v22 = v23;
              *(a3 + 8) = v22 + 24;
            }

            v15 = v40;
          }

          if (v15 < 0)
          {
            operator delete(*buf);
          }

          v7 = v12;
        }

        else
        {
          v18 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2454AA000, v18, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,null filename from reverseEnumerateFiles", buf, 2u);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v9);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void gpsd::util::DispatchSource::~DispatchSource(gpsd::util::DispatchSource *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = &unk_285863C00;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 1);
    v6 = 134349056;
    v7 = v3;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "DispatchSource,dtor,%{public}p", &v6, 0xCu);
  }

  dispatch_source_cancel(*(this + 1));
  v4 = *(this + 1);
  *(this + 1) = 0;

  v5 = *MEMORY[0x277D85DE8];
}

{
  gpsd::util::DispatchSource::~DispatchSource(this);

  JUMPOUT(0x245D6AEE0);
}

void gpsd::util::DispatchSource::setupHandler(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "DispatchSource,setupHandler,nullptr", buf, 2u);
      v8 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtilObjc.mm";
      v17 = 1026;
      v18 = 126;
      v19 = 2082;
      v20 = "setupHandler";
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v13, "assert");
    std::string::basic_string[abi:ne200100]<0>(v11, "setupHandler");
    std::string::basic_string[abi:ne200100]<0>(__p, "DispatchSource,setupHandler,nullptr");
    gpsd::util::triggerDiagnosticReport(v13, v11, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    __assert_rtn("setupHandler", "GpsdUtilObjc.mm", 126, "false && DispatchSource,setupHandler,nullptr");
  }

  dispatch_source_set_event_handler(v4, v3);
  dispatch_resume(*(a1 + 8));
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 134349056;
    v16 = v6;
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "DispatchSource,setupHandler,%{public}p", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24557780C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void gpsd::util::GnssTimer::setTimer(gpsd::util::GnssTimer *this, double a2, double a3, int a4)
{
  v5 = (a2 * 1000000000.0);
  v6 = (a3 * 1000000000.0);
  v7 = *(this + 1);
  v8 = dispatch_time(0, v5);
  if (a4)
  {
    v9 = v5;
  }

  else
  {
    v9 = -1;
  }

  dispatch_source_set_timer(v7, v8, v9, v6);
}

gpsd::util::OsTransaction *gpsd::util::OsTransaction::OsTransaction(gpsd::util::OsTransaction *this, const char *a2)
{
  *this = 0;
  v3 = os_transaction_create();
  v4 = *this;
  *this = v3;

  return this;
}

void gpsd::util::OsTransaction::~OsTransaction(id *this)
{
  v2 = *this;
  *this = 0;
}

{
  v2 = *this;
  *this = 0;
}

void gpsd::util::DiagnosticReportParameters::~DiagnosticReportParameters(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::condition_variable *std::unique_ptr<std::condition_variable>::reset[abi:ne200100](std::condition_variable **a1, std::condition_variable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::condition_variable::~condition_variable(result);

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

uint64_t TestCommConfig::castBaudRateToEnum(TestCommConfig *this)
{
  if (this <= 2399999)
  {
    if (this == 9600)
    {
      return 0;
    }

    if (this != 921600)
    {
      if (this == 1000000)
      {
        return 3;
      }

      return 2;
    }

    return 1;
  }

  else if (this > 3199999)
  {
    if (this != 3200000)
    {
      if (this == 4800000)
      {
        return 7;
      }

      return 2;
    }

    return 6;
  }

  else
  {
    if (this != 2400000)
    {
      if (this == 3000000)
      {
        return 5;
      }

      return 2;
    }

    return 4;
  }
}

uint64_t convertToHardwareEnum(char *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "2");
  v42 = 10401;
  std::string::basic_string[abi:ne200100]<0>(v43, "fire3");
  v44 = 10401;
  std::string::basic_string[abi:ne200100]<0>(v45, "5");
  v46 = 10606;
  std::string::basic_string[abi:ne200100]<0>(v47, "fire6");
  v48 = 10606;
  std::string::basic_string[abi:ne200100]<0>(v49, "6");
  v50 = 10618;
  std::string::basic_string[abi:ne200100]<0>(v51, "fire7");
  v52 = 10618;
  std::string::basic_string[abi:ne200100]<0>(v53, "3");
  v54 = 21102;
  std::string::basic_string[abi:ne200100]<0>(v55, "4");
  v56 = 21203;
  std::string::basic_string[abi:ne200100]<0>(v57, "7");
  v58 = 21705;
  std::string::basic_string[abi:ne200100]<0>(v59, "8");
  __s = a1;
  v60 = 21706;
  std::string::basic_string[abi:ne200100]<0>(v61, "9");
  v2 = 0;
  v3 = 0;
  v62 = 21805;
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v4 = v37;
  while (1)
  {
    v5 = v37;
    if (v4 == v37)
    {
      goto LABEL_8;
    }

    v6 = v2;
    v7 = v37;
    if (v2)
    {
      do
      {
        v5 = v6;
        v6 = *(v6 + 1);
      }

      while (v6);
    }

    else
    {
      do
      {
        v5 = v7[2];
        v8 = *v5 == v7;
        v7 = v5;
      }

      while (v8);
    }

    if (std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](v5 + 4, &__p[v3]))
    {
LABEL_8:
      if (v2)
      {
        v9 = v5;
      }

      else
      {
        v9 = &v36;
      }

      if (!v9[1])
      {
LABEL_19:
        operator new();
      }
    }

    else
    {
      if (!v2)
      {
        goto LABEL_19;
      }

      while (1)
      {
        while (1)
        {
          v10 = v2;
          if (!std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](&__p[v3], v2 + 4))
          {
            break;
          }

          v2 = *v2;
          if (!*v10)
          {
            goto LABEL_19;
          }
        }

        if (!std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](v2 + 4, &__p[v3]))
        {
          break;
        }

        v2 = *(v2 + 1);
        if (!v2)
        {
          goto LABEL_19;
        }
      }
    }

    v3 += 32;
    if (v3 == 352)
    {
      break;
    }

    v4 = v36;
    v2 = v37[0];
  }

  v11 = 44;
  v12 = __s;
  do
  {
    if (SHIBYTE(v37[v11]) < 0)
    {
      operator delete((&__s)[v11]);
    }

    v11 -= 4;
  }

  while (v11 * 8);
  v13 = std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v14 = v37[0];
  if (!v37[0])
  {
    goto LABEL_39;
  }

  v15 = v37;
  do
  {
    v16 = v15;
    v17 = v14 + 32;
    v13 = std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](v14 + 4, __p);
    if (v13)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (!v13)
    {
      v15 = v14;
    }

    v14 = *&v14[v18];
  }

  while (v14);
  if (v15 == v37 || (!v13 ? (v19 = v17) : (v19 = (v16 + 4)), v13 = std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](__p, v19), v13))
  {
LABEL_39:
    v15 = v37;
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*__p);
  }

  if (v37 == v15)
  {
    v28 = *MEMORY[0x277D85DF8];
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v13);
    fprintf(v28, "[%5.1f][ERROR]Failed to convert hardware type %s to hardware enum\n", ProcessUptimeSec, v12);
    v30 = GpsdLogObjectGeneral;
    v31 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      v34 = gpsd::util::getProcessUptimeSec(v31);
      *__p = 134218242;
      *&__p[4] = v34;
      v39 = 2080;
      v40 = v12;
      _os_log_error_impl(&dword_2454AA000, v30, OS_LOG_TYPE_ERROR, "[%5.1f]Failed to convert hardware type %s to hardware enum", __p, 0x16u);
    }

    v27 = 0;
  }

  else
  {
    v20 = gpsd::util::getProcessUptimeSec(v13);
    v21 = (v15 + 4);
    v22 = (v15 + 4);
    if (*(v15 + 55) < 0)
    {
      v22 = *v21;
    }

    printf("[%5.1f]Converted hardware type %s to hardware enum %d\n", v20, v22, *(v15 + 14));
    v23 = GpsdLogObjectGeneral;
    v24 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      v25 = gpsd::util::getProcessUptimeSec(v24);
      if (*(v15 + 55) < 0)
      {
        v21 = *v21;
      }

      v26 = *(v15 + 14);
      *__p = 134218498;
      *&__p[4] = v25;
      v39 = 2080;
      v40 = v21;
      v41 = 1024;
      v42 = v26;
      _os_log_impl(&dword_2454AA000, v23, OS_LOG_TYPE_DEFAULT, "[%5.1f]Converted hardware type %s to hardware enum %d", __p, 0x1Cu);
    }

    v27 = *(v15 + 14);
  }

  std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(v37[0]);
  v32 = *MEMORY[0x277D85DE8];
  return v27;
}

void GpsFactoryTest::GpsFactoryTest(GpsFactoryTest *this, const Options *a2)
{
  v3 = GpsFactoryTest::Options::Options(this, a2);
  *&v3[9].__r_.__value_.__r.__words[1] = xmmword_2455862A0;
  *&v3[10].__r_.__value_.__l.__data_ = 0u;
  *&v3[10].__r_.__value_.__r.__words[2] = 0u;
  v3[11].__r_.__value_.__l.__size_ = 0;
  v3[11].__r_.__value_.__r.__words[2] = 850045863;
  v3[14].__r_.__value_.__r.__words[2] = 0;
  *&v3[12].__r_.__value_.__l.__data_ = 0u;
  *&v3[12].__r_.__value_.__r.__words[2] = 0u;
  *&v3[13].__r_.__value_.__r.__words[1] = 0u;
  *(&v3[13].__r_.__value_.__r.__words[2] + 1) = 0u;
  LODWORD(v3[15].__r_.__value_.__l.__data_) = 0;
  v3[15].__r_.__value_.__s.__data_[4] = 0;
  LODWORD(v3[15].__r_.__value_.__r.__words[1]) = 0;
  *&v3[15].__r_.__value_.__r.__words[2] = xmmword_2455862B0;
  *&v3[16].__r_.__value_.__r.__words[1] = 0u;
  *&v3[17].__r_.__value_.__l.__data_ = 0u;
  v3[17].__r_.__value_.__r.__words[2] = 0;
  v3[18].__r_.__value_.__r.__words[0] = 850045863;
  v3[33].__r_.__value_.__l.__size_ = 0;
  v3[22].__r_.__value_.__l.__size_ = 0;
  *&v3[21].__r_.__value_.__l.__data_ = 0u;
  *&v3[21].__r_.__value_.__r.__words[2] = 0u;
  *&v3[19].__r_.__value_.__r.__words[2] = 0u;
  *&v3[20].__r_.__value_.__r.__words[1] = 0u;
  *&v3[18].__r_.__value_.__r.__words[1] = 0u;
  *&v3[19].__r_.__value_.__l.__data_ = 0u;
  v4 = GpsdPreferences::instance(0);
  v5 = GpsdPreferences::maxSchedulerQos(v4);
  v6 = dispatch_queue_attr_make_with_qos_class(0, v5, 0);
  if (!v6)
  {
    v7 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "#spi,queue,nullattr", v8, 2u);
    }
  }

  *(this + 100) = dispatch_queue_create("com.apple.gpsfactorytest", v6);
}

void sub_245578394(_Unwind_Exception *a1)
{
  v3 = *(v1 + 536);
  *(v1 + 536) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 528);
  *(v1 + 528) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  if (*(v1 + 519) < 0)
  {
    operator delete(*(v1 + 496));
  }

  std::mutex::~mutex((v1 + 432));
  std::condition_variable::~condition_variable((v1 + 384));
  std::mutex::~mutex((v1 + 280));
  std::condition_variable::~condition_variable((v1 + 232));
  GpsFactoryTest::Options::~Options(v1);
  _Unwind_Resume(a1);
}

void GpsFactoryTest::stop(GpsFactoryTest *this)
{
  v2 = *(this + 67);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  atomic_store(0, this + 364);

  GpsFactoryTest::BasicTimer::wakeNow((this + 224));
}

uint64_t GpsFactoryTest::flushLogs(GpsFactoryTest *this)
{
  result = *(this + 67);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void GpsFactoryTest::BasicTimer::wakeNow(GpsFactoryTest::BasicTimer *this)
{
  std::mutex::lock((this + 56));
  *(this + 120) = 1;
  std::condition_variable::notify_all((this + 8));

  std::mutex::unlock((this + 56));
}

void GpsFactoryTest::deviceInterfaceCallback(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v5 = atomic_load((a1 + 376));
    if ((v5 & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    GpsFactoryTest::stringify(v5, v13);
    v6 = v14;
    v7 = v13[0];
    GpsFactoryTest::stringify(a2, __p);
    v8 = v13;
    if (v6 < 0)
    {
      v8 = v7;
    }

    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v16 = v8;
    v17 = 2082;
    v18 = v9;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "deviceInterfaceCallback,results,current:%{public}s,new:%{public}s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  atomic_store(a2 | 0x100000000, (a1 + 376));
  std::mutex::lock((a1 + 432));
  atomic_store(0, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));
  std::mutex::unlock((a1 + 432));
  v10 = *MEMORY[0x277D85DE8];
}

void sub_245578684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *GpsFactoryTest::stringify@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 8)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_278E80980[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void GpsFactoryTest::mutateState(uint64_t a1, unsigned int a2)
{
  std::mutex::lock((a1 + 432));
  atomic_store(a2, (a1 + 368));
  std::condition_variable::notify_all((a1 + 384));

  std::mutex::unlock((a1 + 432));
}

void GpsFactoryTest::waitForIdle(GpsFactoryTest *this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(this + 90);
  if (v2)
  {
    if (v2 < -1500)
    {
      goto LABEL_41;
    }

    v3 = (v2 + 2500) / 0x3E8u;
  }

  else
  {
    v3 = 60;
  }

  v4 = 0;
  v26 = (this + 496);
  v5 = 0.0;
  do
  {
    __lk.__m_ = (this + 432);
    __lk.__owns_ = 1;
    std::mutex::lock((this + 432));
    v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (atomic_load(this + 92))
    {
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
      {
        goto LABEL_23;
      }

      v8.__d_.__rep_ = v6.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v8.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v9.__d_.__rep_)
        {
          if (v9.__d_.__rep_ < 1)
          {
            if (v9.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_17;
            }

            v10 = 0x8000000000000000;
          }

          else
          {
            if (v9.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v10 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }

LABEL_17:
            v10 = 1000 * v9.__d_.__rep_;
LABEL_18:
            if (v10 > (v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v11.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
              std::condition_variable::__do_timed_wait(this + 8, &__lk, v11);
              std::chrono::steady_clock::now();
              goto LABEL_22;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v11.__d_.__rep_ = v10 + v8.__d_.__rep_;
        goto LABEL_21;
      }

LABEL_22:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
      {
LABEL_23:
        if (atomic_load(this + 92))
        {
          v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
          v14 = *(this + 44);
          if (v5 >= v14)
          {
            v14 = v5;
          }

          if ((v13.__d_.__rep_ - *(this + 28)) / 1000000000.0 > v14 + 60.0)
          {
            ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v13.__d_.__rep_);
            v16 = v26;
            if (*(this + 519) < 0)
            {
              v16 = *v26;
            }

            v17 = atomic_load(this + 92);
            printf("[%5.1f][TOOL  ] Running: %s,%d/%d,state,%d,lastHeartbeat,%.1f\n", ProcessUptimeSec, v16, v4 + 1, v3, v17, *(this + 44));
            v18 = GpsdLogObjectGeneral;
            v19 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              v20 = gpsd::util::getProcessUptimeSec(v19);
              v21 = v26;
              if (*(this + 519) < 0)
              {
                v21 = *v26;
              }

              v22 = atomic_load(this + 92);
              v23 = *(this + 44);
              *buf = 134219266;
              v29 = v20;
              v30 = 2080;
              v31 = v21;
              v32 = 1024;
              v33 = v4 + 1;
              v34 = 1024;
              v35 = v3;
              v36 = 1024;
              v37 = v22;
              v38 = 2048;
              v39 = v23;
              _os_log_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] Running: %s,%d/%d,state,%d,lastHeartbeat,%.1f", buf, 0x32u);
            }

            v5 = (std::chrono::steady_clock::now().__d_.__rep_ - *(this + 28)) / 1000000000.0;
          }

          if (v4 >= (v3 - 1))
          {
            atomic_store(0x100000006uLL, this + 47);
          }

          goto LABEL_38;
        }

        break;
      }
    }

    v24 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v24, OS_LOG_TYPE_INFO, "waitForIdle,done", buf, 2u);
    }

LABEL_38:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    ++v4;
  }

  while (v4 != v3);
LABEL_41:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_245578A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::mutex *a19, char a20)
{
  if (a20 == 1)
  {
    std::mutex::unlock(a19);
  }

  _Unwind_Resume(exception_object);
}

void GpsFactoryTest::waitForInit(GpsFactoryTest *this)
{
  v3.__m_ = (this + 432);
  v3.__owns_ = 1;
  std::mutex::lock((this + 432));
  while (1)
  {
    v2 = atomic_load(this + 92);
    if (v2 == 2)
    {
      break;
    }

    std::condition_variable::wait(this + 8, &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

void GpsFactoryTest::printResult(GpsFactoryTest *this, const char *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 47);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7;
  }

  v5 = atomic_load(this + 47);
  if ((v5 & 0x100000000) == 0)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(this);
    if (!a2)
    {
      a2 = "unknown";
    }

    printf("[%5.1f][TOOL  ] %s\n", ProcessUptimeSec, a2);
    v7 = GpsdLogObjectGeneral;
    v8 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 134218242;
      *&buf[4] = gpsd::util::getProcessUptimeSec(v8);
      v27 = 2080;
      v28 = a2;
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] %s", buf, 0x16u);
    }

    goto LABEL_33;
  }

  if (v4 == 1)
  {
    v9 = gpsd::util::getProcessUptimeSec(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Success");
    if (v29 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    if (!a2)
    {
      a2 = "unknown";
    }

    printf("[%5.1f][TOOL  ] %s, %s\n", v9, v10, a2);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

    v11 = GpsdLogObjectGeneral;
    v12 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      v13 = gpsd::util::getProcessUptimeSec(v12);
      std::string::basic_string[abi:ne200100]<0>(__p, "Success");
      if (v25 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 134218498;
      *&buf[4] = v13;
      v27 = 2080;
      v28 = v14;
      v29 = 2080;
      v30 = a2;
      _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] %s, %s", buf, 0x20u);
      goto LABEL_22;
    }
  }

  else
  {
    v15 = *MEMORY[0x277D85DF8];
    v16 = gpsd::util::getProcessUptimeSec(this);
    GpsFactoryTest::stringify(v4, buf);
    if (v29 >= 0)
    {
      v17 = buf;
    }

    else
    {
      v17 = *buf;
    }

    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = "unknown";
    }

    fprintf(v15, "[%5.1f][ERROR][TOOL  ] %s, %s\n", v16, v17, v18);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

    v19 = GpsdLogObjectGeneral;
    v20 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      v22 = gpsd::util::getProcessUptimeSec(v20);
      GpsFactoryTest::stringify(v4, __p);
      if (v25 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      *buf = 134218498;
      *&buf[4] = v22;
      v27 = 2080;
      v28 = v23;
      v29 = 2080;
      v30 = v18;
      _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, "[%5.1f][TOOL  ] %s, %s", buf, 0x20u);
LABEL_22:
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_33:
  v21 = *MEMORY[0x277D85DE8];
}

void GpsFactoryTest::waitForIdleAndPrintResult(GpsFactoryTest *this, const char *a2)
{
  GpsFactoryTest::waitForIdle(this);

  GpsFactoryTest::printResult(this, a2);
}

void GpsFactoryTest::constructDevice(GpsFactoryTest *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    buf[0] = 136315394;
    *&buf[1] = "constructDevice";
    v10 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  if (!*(this + 66))
  {
    gnss::deviceVersionCheck(1);
    operator new();
  }

  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v3);
  printf("[%5.1f]%s, already constructed\n", ProcessUptimeSec, "constructDevice");
  v5 = GpsdLogObjectGeneral;
  v6 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = gpsd::util::getProcessUptimeSec(v6);
    buf[0] = 134218242;
    *&buf[1] = v7;
    v10 = 2080;
    MachContinuousTimeNs = "constructDevice";
    _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "[%5.1f]%s, already constructed", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24557A0C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *__p, int a46, __int16 a47, char a48, char a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  MEMORY[0x245D6AEE0](v66, 0x10B3C408487180ALL);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  (*(*v63 + 8))(v63);
  (*(*v62 + 8))(v62);
  JUMPOUT(0x24557A59CLL);
}

void sub_24557A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](v48 - 152);
  std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<void ()(GnssHal::ExtensionsFire::RecoveryStatistics const&)>::~__value_func[abi:ne200100](&a47);
  MEMORY[0x245D6AEE0](v47, 0x10A1C404BF63068);
  JUMPOUT(0x24557A40CLL);
}

void sub_24557A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__function::__value_func<void ()(int,std::string)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfoRequest const&,std::function<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>)>::~__value_func[abi:ne200100](&a47);
  JUMPOUT(0x24557A250);
}

void sub_24557A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](&a47);
  JUMPOUT(0x24557A290);
}

void sub_24557A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](&a47);
  MEMORY[0x245D6AEE0](v47, 0x10A1C40B5258EBFLL);
  JUMPOUT(0x24557A544);
}

void sub_24557A2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a37);
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(a1);
}

void sub_24557A374(_Unwind_Exception *a1)
{
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_24557A384()
{
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x24557A4C4);
}

void sub_24557A3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (a46 < 0)
    {
      operator delete(__p);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_24557A420(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_24557A430(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  JUMPOUT(0x24557A4C4);
}

void GpsFactoryTest::destructDevice(GpsFactoryTest *this)
{
  v2 = *(this + 67);
  if (v2)
  {
    VendorLogger::prepareForTermination(v2);
  }

  std::mutex::lock((this + 432));
  atomic_store(0, this + 92);
  std::condition_variable::notify_all(this + 8);
  std::mutex::unlock((this + 432));
  atomic_store(0x100000001uLL, this + 47);
}

void GpsFactoryTest::fixCallback(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  v6 = ProcessUptimeSec;
  if (v4)
  {
    GpsFactoryTest::stringify(a1, *a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    printf("[%5.1f][FIX   ] %s\n", v6, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = gpsd::util::getProcessUptimeSec(v9);
      GpsFactoryTest::stringify(a1, *a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 134218242;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][FIX   ] %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    GpsFactoryTest::BasicTimer::heartbeat((a1 + 224));
  }

  else
  {
    printf("[%5.1f][WARN  ] null gnss::Fix\n", ProcessUptimeSec);
    v12 = GpsdLogObjectGeneral;
    v13 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = gpsd::util::getProcessUptimeSec(v13);
      _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "[%5.1f][WARN  ] null gnss::Fix", &__p, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void GpsFactoryTest::stringify(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  GpsFactoryTest::stringify(a1, a2, &v21);
  v6 = std::string::append(&v21, ", ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify(a1, a2 + 48, v19);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v22, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v23, ", ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify(a1, (a2 + 136), __p);
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v24, v14, v15);
  *a3 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
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

void sub_24557A978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void GpsFactoryTest::BasicTimer::heartbeat(GpsFactoryTest::BasicTimer *this)
{
  std::mutex::lock((this + 56));
  *(this + 16) = (std::chrono::steady_clock::now().__d_.__rep_ - *this) / 1000000000.0;

  std::mutex::unlock((this + 56));
}

void GpsFactoryTest::rfMeasurementCallback(_BOOL8 a1, unsigned __int8 **a2)
{
  v14 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
      GpsFactoryTest::stringify(*v2, __p);
      if (v20 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      printf("[%5.1f][RFMEAS] %s.%d, %.2f dB-Hz, %.2f dBm, %.2f Hz offset\n", ProcessUptimeSec, v5, *(v2 + 1), *(v2 + 1), *(v2 + 2), *(v2 + 3));
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*__p);
      }

      v6 = GpsdLogObjectGeneral;
      a1 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v7 = gpsd::util::getProcessUptimeSec(a1);
        GpsFactoryTest::stringify(*v2, v15);
        v8 = v15;
        if (v16 < 0)
        {
          v8 = v15[0];
        }

        v9 = *(v2 + 1);
        v10 = *(v2 + 1);
        v11 = *(v2 + 2);
        v12 = *(v2 + 3);
        *__p = 134219266;
        *&__p[4] = v7;
        v18 = 2080;
        v19 = v8;
        v20 = 1024;
        v21 = v9;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        _os_log_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEFAULT, "[%5.1f][RFMEAS] %s.%d, %.2f dB-Hz, %.2f dBm, %.2f Hz offset", __p, 0x3Au);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }

      v2 += 40;
    }

    while (v2 != v3);
  }

  GpsFactoryTest::BasicTimer::heartbeat((v14 + 224));
  v13 = *MEMORY[0x277D85DE8];
}

_BYTE *GpsFactoryTest::stringify@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 9)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_278E809C8[(a1 - 1)];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void GpsFactoryTest::loobackResultCallback(gpsd::util *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  printf("[%5.1f]%s\n", ProcessUptimeSec, "loobackResultCallback");
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 134218242;
    v6 = gpsd::util::getProcessUptimeSec(v3);
    v7 = 2080;
    v8 = "loobackResultCallback";
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "[%5.1f]%s", buf, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void GpsFactoryTest::EventNotificationCb()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "EventNotificationCb";
    _os_log_impl(&dword_2454AA000, v0, OS_LOG_TYPE_DEFAULT, "%s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void GpsFactoryTest::commPingCallback(gpsd::util *a1, const char *a2, const char *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (a3[23] >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  printf("[%5.1f][EVENT ] commPing result: version %s, serial %s\n", ProcessUptimeSec, v6, v7);
  v8 = GpsdLogObjectGeneral;
  v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = gpsd::util::getProcessUptimeSec(v9);
    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (a3[23] >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    *buf = 134218498;
    v15 = v10;
    v16 = 2080;
    v17 = v11;
    v18 = 2080;
    v19 = v12;
    _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] commPing result: version %s, serial %s", buf, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t GpsFactoryTest::run(GpsFactoryTest *this)
{
  v2 = *(this + 100);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN14GpsFactoryTest3runEv_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = this;
  dispatch_sync(v2, block);
  v3 = this + 496;
  if (*(this + 519) < 0)
  {
    v3 = *v3;
  }

  GpsFactoryTest::waitForIdle(this);
  GpsFactoryTest::printResult(this, v3);
  sleep(1u);
  v4 = atomic_load(this + 47);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7;
  }

  GpsFactoryTest::destructDevice(this);
  return v5;
}

uint64_t GpsFactoryTest::runInternal(GpsFactoryTest *this)
{
  v147[4] = *MEMORY[0x277D85DE8];
  atomic_store(1u, this + 364);
  *(this + 28) = std::chrono::steady_clock::now();
  *(this + 44) = 0;
  GpsFactoryTest::constructDevice(this);
  v147[0] = &unk_285863DD0;
  v147[1] = this;
  v147[3] = v147;
  if (*(this + 74) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 74) = 0;
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v2);
    printf("[%5.1f][EVENT ] starting test: commPing\n", ProcessUptimeSec);
    v4 = GpsdLogObjectGeneral;
    v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *buf = 134217984;
      v127 = gpsd::util::getProcessUptimeSec(v5);
      _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: commPing", buf, 0xCu);
    }

    v6 = *(this + 66);
    v7 = *(this + 33);
    v146[0] = &unk_285863E50;
    v146[1] = this;
    v146[3] = v146;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v145, v147);
    (*(*v6 + 88))(v6, v7, v146, v145);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v145);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v146);
    *(this + 90) = *(this + 33);
    MEMORY[0x245D6AB60](this + 496, "commPing");
    goto LABEL_74;
  }

  if (*(this + 65) == 1)
  {
    v8 = GpsdPreferences::instance(0);
    if (!GpsdPreferences::nmeaMaskOverride(v8))
    {
      v21 = *(GpsdPlatformInfo::instance(0) + 8);
      if ((v21 - 201) >= 2 && (v21 - 301) >= 2)
      {
        v22 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
        if (v22 <= 4)
        {
          v23 = qword_2455877C0[v22];
        }
      }
    }

    v9 = *(this + 66);
    v144[0] = &unk_285863EE0;
    v144[3] = v144;
    v143[0] = &unk_285863F70;
    v143[3] = v143;
    (*(*v9 + 96))(v9);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v143);
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v144);
    GpsFactoryTest::waitForIdle(this);
  }

  v10 = GpsdPlatformInfo::instance(0);
  v11 = *(v10 + 8) - 103;
  v12 = v11 > 4;
  v13 = (1 << v11) & 0x19;
  if (!v12 && v13 != 0)
  {
    if (*(this + 80) == 1)
    {
      v15 = *(this + 19);
      if (v15 == 13)
      {
        v16 = 1;
        goto LABEL_31;
      }

      if (v15 == 14)
      {
        v16 = 2;
        goto LABEL_31;
      }

      v24 = gpsd::util::getProcessUptimeSec(v10);
      if ((*(this + 80) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      printf("[%5.1f][EVENT ] Unknown LTE filter band %d\n", v24, *(this + 19));
      v25 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v26 = gpsd::util::getProcessUptimeSec(v10);
        if ((*(this + 80) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v27 = *(this + 19);
        *buf = 134218240;
        v127 = v26;
        *v128 = 1024;
        *&v128[2] = v27;
        _os_log_impl(&dword_2454AA000, v25, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] Unknown LTE filter band %d", buf, 0x12u);
      }
    }

    v16 = 0;
LABEL_31:
    if (*(this + 87) == 1)
    {
      v20 = *(this + 86);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_34;
  }

  if ((*(this + 80) & 1) != 0 || *(this + 87) == 1)
  {
    v17 = *MEMORY[0x277D85DF8];
    v18 = gpsd::util::getProcessUptimeSec(v10);
    fprintf(v17, "[%5.1f][ERROR][EVENT ] LTE filter / blanking only supported in FIRE\n", v18);
    v19 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      *buf = 134217984;
      v127 = gpsd::util::getProcessUptimeSec(v10);
      _os_log_error_impl(&dword_2454AA000, v19, OS_LOG_TYPE_ERROR, "[%5.1f][EVENT ] LTE filter / blanking only supported in FIRE", buf, 0xCu);
    }
  }

  v20 = 0;
  v16 = 0;
LABEL_34:
  if (v16 | (v20 << 8))
  {
    v28 = gpsd::util::getProcessUptimeSec(v10);
    printf("[%5.1f][TOOL  ] coexConfig,val,0x%llx,lte,%d,blanking,%d,bitmask,0x%x\n", v28, v16 | (v20 << 8), v16, v20, 0);
    v29 = GpsdLogObjectGeneral;
    v30 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      v31 = gpsd::util::getProcessUptimeSec(v30);
      *buf = 134219008;
      v127 = v31;
      *v128 = 2048;
      *&v128[2] = v16 | (v20 << 8);
      *&v128[10] = 1024;
      *v129 = v16;
      *&v129[4] = 1024;
      *v130 = v20;
      *&v130[4] = 1024;
      v131[0] = 0;
      _os_log_impl(&dword_2454AA000, v29, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL  ] coexConfig,val,0x%llx,lte,%d,blanking,%d,bitmask,0x%x", buf, 0x28u);
    }

    v32 = *(this + 66);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v142, v147);
    (*(*v32 + 104))(v32, v16 | (v20 << 8), v142);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v142);
    GpsFactoryTest::waitForIdle(this);
  }

  if ((*(this + 68) & 1) != 0 || *(this + 69) == 1)
  {
    v33 = GpsdPlatformInfo::instance(0);
    NoiseFigure = GpsdPlatformInfo::getNoiseFigure(v33, *(this + 104));
    v35 = gpsd::util::getProcessUptimeSec(NoiseFigure);
    printf("[%5.1f][INFO  ] C/N0 measured at correlator; RSSI referred to antenna port: C/N0 - 174 + NF\n", v35);
    v36 = GpsdLogObjectGeneral;
    v37 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v37)
    {
      v38 = gpsd::util::getProcessUptimeSec(v37);
      *buf = 134217984;
      v127 = v38;
      _os_log_impl(&dword_2454AA000, v36, OS_LOG_TYPE_DEFAULT, "[%5.1f][INFO  ] C/N0 measured at correlator; RSSI referred to antenna port: C/N0 - 174 + NF", buf, 0xCu);
    }

    if ((NoiseFigure & 0x100000000) != 0)
    {
      v45 = gpsd::util::getProcessUptimeSec(v37);
      v46 = *&NoiseFigure;
      printf("[%5.1f][INFO  ] Noise Figure: %.1f dB\n", v45, *&NoiseFigure);
      v47 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        goto LABEL_48;
      }

      v48 = gpsd::util::getProcessUptimeSec(v10);
      *buf = 134218240;
      v127 = v48;
      *v128 = 2048;
      *&v128[2] = v46;
      v42 = "[%5.1f][INFO  ] Noise Figure: %.1f dB";
      v43 = v47;
      v44 = 22;
    }

    else
    {
      v39 = gpsd::util::getProcessUptimeSec(v37);
      printf("[%5.1f][INFO  ] Noise Figure: unknown\n", v39);
      v40 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        goto LABEL_48;
      }

      v41 = gpsd::util::getProcessUptimeSec(v10);
      *buf = 134217984;
      v127 = v41;
      v42 = "[%5.1f][INFO  ] Noise Figure: unknown";
      v43 = v40;
      v44 = 12;
    }

    _os_log_impl(&dword_2454AA000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
  }

LABEL_48:
  if (*(this + 67) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 67) = 0;
    v50 = gpsd::util::getProcessUptimeSec(v49);
    printf("[%5.1f][EVENT ] starting test: PERIODIC\n", v50);
    v51 = GpsdLogObjectGeneral;
    v52 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v52)
    {
      v53 = gpsd::util::getProcessUptimeSec(v52);
      *buf = 134217984;
      v127 = v53;
      _os_log_impl(&dword_2454AA000, v51, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: PERIODIC", buf, 0xCu);
    }

    v54 = *(this + 66);
    v55 = *(this + 22);
    v141[0] = &unk_285863FF0;
    v141[1] = this;
    v141[3] = v141;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v140, v147);
    (*(*v54 + 24))(v54, v55, v141, v140);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v140);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v141);
    v56 = *(this + 22);
    if (v56 < 1)
    {
      if (v56 == -1)
      {
        std::mutex::lock((this + 432));
        atomic_store(1u, this + 92);
        std::condition_variable::notify_all(this + 8);
        std::mutex::unlock((this + 432));
      }
    }

    else
    {
      v57 = *(GpsdPlatformInfo::instance(0) + 8);
      if ((v57 - 301) < 2 || (v57 - 201) <= 1)
      {
        sleep(*(this + 22) + 1);
      }
    }

    *(this + 90) = 1000 * *(this + 22);
    v75 = "periodic";
    goto LABEL_73;
  }

  if (*(this + 68) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 68) = 0;
    v59 = gpsd::util::getProcessUptimeSec(v58);
    printf("[%5.1f][EVENT ] starting test: CW\n", v59);
    v60 = GpsdLogObjectGeneral;
    v61 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v61)
    {
      v62 = gpsd::util::getProcessUptimeSec(v61);
      *buf = 134217984;
      v127 = v62;
      _os_log_impl(&dword_2454AA000, v60, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: CW", buf, 0xCu);
    }

    v63 = *(this + 104);
    if (v63 == 4)
    {
      v64 = *(this + 27);
    }

    else
    {
      v64 = 0;
      *(this + 27) = 0;
    }

    v85 = *(this + 66);
    v86 = *(this + 23);
    v87 = *(this + 24);
    v88 = *(this + 25);
    v139[0] = &unk_285864080;
    v139[1] = this;
    v139[3] = v139;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v138, v147);
    (*(*v85 + 32))(v85, v86, v63, v64, v88, v139, v138, v87);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v138);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v139);
    *(this + 90) = 1000 * *(this + 23);
    v75 = "cw";
    goto LABEL_73;
  }

  if (*(this + 69) == 1)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    *(this + 69) = 0;
    v66 = gpsd::util::getProcessUptimeSec(v65);
    printf("[%5.1f][EVENT ] *** starting test: modulated\n", v66);
    v67 = GpsdLogObjectGeneral;
    v68 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v68)
    {
      v69 = gpsd::util::getProcessUptimeSec(v68);
      *buf = 134217984;
      v127 = v69;
      _os_log_impl(&dword_2454AA000, v67, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] *** starting test: modulated", buf, 0xCu);
    }

    v70 = *(this + 66);
    v71 = *(this + 104);
    v72 = *(this + 27);
    v73 = *(this + 28);
    v74 = *(this + 25);
    v137[0] = &unk_285864110;
    v137[1] = this;
    v137[3] = v137;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v136, v147);
    (*(*v70 + 40))(v70, v73, v71, v72, v74, v137, v136);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v136);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v137);
    *(this + 90) = 1000 * *(this + 28);
    v75 = "modulated";
    goto LABEL_73;
  }

  if (*(this + 70) == 1)
  {
    *(this + 70) = 0;
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    v77 = gpsd::util::getProcessUptimeSec(v76);
    printf("[%5.1f][EVENT ] *** starting test: record IQ\n", v77);
    v78 = GpsdLogObjectGeneral;
    v79 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v79)
    {
      v80 = gpsd::util::getProcessUptimeSec(v79);
      *buf = 134217984;
      v127 = v80;
      _os_log_impl(&dword_2454AA000, v78, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] *** starting test: record IQ", buf, 0xCu);
    }

    v81 = *(this + 66);
    v82 = *(this + 29);
    v83 = *(this + 104);
    v84 = *(this + 27);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v135, v147);
    (*(*v81 + 48))(v81, v82, v83, v84, v135);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v135);
    *(this + 90) = 1000 * *(this + 29);
    v75 = "recordIQ";
    goto LABEL_73;
  }

  if (*(this + 71) == 1)
  {
    *(this + 71) = 0;
    v91 = *(this + 66);
    v92 = *(this + 30);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v134, v147);
    (*(*v91 + 64))(v91, v92, v134);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v134);
    v75 = "powerMode";
LABEL_73:
    MEMORY[0x245D6AB60](this + 496, v75);
    goto LABEL_74;
  }

  if (*(this + 72) == 1)
  {
    GpsFactoryTest::mutateState(this, 1u);
    *(this + 72) = 0;
    v93 = *(this + 66);
    v94 = *(this + 31);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v133, v147);
    (*(*v93 + 72))(v93, v94, v133);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v133);
    v75 = "HostWakeGpio";
    goto LABEL_73;
  }

  if (*(this + 73) == 1)
  {
    v95 = gpsd::util::getProcessUptimeSec(v10);
    printf("[%5.1f][EVENT ] starting test: TimeMark\n", v95);
    v96 = GpsdLogObjectGeneral;
    v97 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v97)
    {
      v98 = gpsd::util::getProcessUptimeSec(v97);
      *buf = 134217984;
      v127 = v98;
      _os_log_impl(&dword_2454AA000, v96, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: TimeMark", buf, 0xCu);
    }

    GpsFactoryTest::mutateState(this, 1u);
    *(this + 73) = 0;
    v99 = *(this + 66);
    v100 = *(this + 32);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v132, v147);
    (*(*v99 + 80))(v99, v100, v132);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v132);
    *(this + 90) = *(this + 32);
    v75 = "TimeMarkGpio";
    goto LABEL_73;
  }

  if (*(this + 75) == 1)
  {
    GpsFactoryTest::mutateState(this, 1u);
    *(this + 75) = 0;
    v102 = gpsd::util::getProcessUptimeSec(v101);
    printf("[%5.1f][EVENT ] starting test: commLoopback\n", v102);
    v103 = GpsdLogObjectGeneral;
    v104 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v104)
    {
      v105 = gpsd::util::getProcessUptimeSec(v104);
      *buf = 134217984;
      v127 = v105;
      _os_log_impl(&dword_2454AA000, v103, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] starting test: commLoopback", buf, 0xCu);
    }

    v106 = *(this + 34);
    v122 = 1;
    v123 = 8;
    v120 = 9;
    v121 = 1;
    v107 = *(this + 167);
    if (v107 < 0)
    {
      v107 = *(this + 19);
    }

    if (v107)
    {
      std::istringstream::basic_istringstream[abi:ne200100](buf, this + 6);
      v108 = MEMORY[0x245D6ACA0](buf, &v122);
      v109 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v108, &v119);
      v110 = MEMORY[0x245D6ACA0](v109, &v121);
      v111 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v110, &v119);
      v112 = MEMORY[0x245D6ACA0](v111, &v123);
      v113 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v112, &v119);
      MEMORY[0x245D6ACA0](v113, &v120);
      v104 = std::istringstream::~istringstream(buf);
    }

    v114 = gpsd::util::getProcessUptimeSec(v104);
    printf("[%5.1f][INFO  ] Options: duration,%d,sec,min,%d,step,%d,max,%d,kB,loops,%d\n", v114, v106, v122, v121, v123, v120);
    v115 = GpsdLogObjectGeneral;
    v116 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v116)
    {
      v117 = gpsd::util::getProcessUptimeSec(v116);
      *buf = 134219264;
      v127 = v117;
      *v128 = 1024;
      *&v128[2] = v106;
      *&v128[6] = 1024;
      *&v128[8] = v122;
      *v129 = 1024;
      *&v129[2] = v121;
      *v130 = 1024;
      *&v130[2] = v123;
      LOWORD(v131[0]) = 1024;
      *(v131 + 2) = v120;
      _os_log_impl(&dword_2454AA000, v115, OS_LOG_TYPE_DEFAULT, "[%5.1f][INFO  ] Options: duration,%d,sec,min,%d,step,%d,max,%d,kB,loops,%d", buf, 0x2Au);
    }

    *buf = v122 << 10;
    LODWORD(v127) = v123 << 10;
    HIDWORD(v127) = v121 << 10;
    *v128 = v120;
    v118 = *(this + 66);
    v125[0] = &unk_285864190;
    v125[1] = this;
    v125[3] = v125;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v124, v147);
    (*(*v118 + 56))(v118, v106, buf, v125, v124);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v124);
    std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](v125);
    *(this + 90) = 1000 * v106;
    MEMORY[0x245D6AB60](this + 496, "CommLoopback");
  }

LABEL_74:
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v147);
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep GpsFactoryTest::BasicTimer::reset(GpsFactoryTest::BasicTimer *this)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *this = result;
  *(this + 16) = 0;
  return result;
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v5 = *(MEMORY[0x277D82820] + 16);
  v6 = *(MEMORY[0x277D82820] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 16));
  v8 = MEMORY[0x277D82898] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D6AE20](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  *(a1 + 104) = 0;
  v9 = *(a1 + 103);
  if (v9 < 0)
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
  }

  else
  {
    v10 = a1 + 80;
    v11 = *(a1 + 103);
  }

  v12 = *(a1 + 112);
  if ((v12 & 8) != 0)
  {
    *(a1 + 104) = v10 + v11;
    *(a1 + 32) = v10;
    *(a1 + 40) = v10;
    *(a1 + 48) = v10 + v11;
  }

  if ((v12 & 0x10) != 0)
  {
    *(a1 + 104) = v10 + v11;
    if ((v9 & 0x80000000) != 0)
    {
      v13 = (*(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v13 = 22;
    }

    std::string::resize((a1 + 80), v13, 0);
    v14 = *(a1 + 103);
    if (v14 < 0)
    {
      v14 = *(a1 + 88);
    }

    *(a1 + 56) = v10;
    *(a1 + 64) = v10;
    *(a1 + 72) = v10 + v14;
    if ((*(a1 + 112) & 3) != 0)
    {
      if (v11 >> 31)
      {
        v15 = ((v11 - 0x80000000) * 0x200000005uLL) >> 64;
        v16 = 0x7FFFFFFF * ((v15 + ((v11 - 0x80000000 - v15) >> 1)) >> 30);
        v10 += v16 + 0x7FFFFFFF;
        v11 = v11 - v16 - 0x7FFFFFFF;
        *(a1 + 64) = v10;
      }

      if (v11)
      {
        *(a1 + 64) = v10 + v11;
      }
    }
  }

  return a1;
}

void *std::operator>>[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2)
{
  MEMORY[0x245D6AC80](&v8, a1, 0);
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

void sub_24557C5E4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x24557C5A4);
  }

  __cxa_rethrow();
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x245D6AE70](a1 + 120);
  return a1;
}

uint64_t GpsFactoryTest::testInitialize(GpsFactoryTest *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "testInitialize";
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "+%s", &v6, 0xCu);
  }

  atomic_store(1u, this + 364);
  *(this + 28) = std::chrono::steady_clock::now();
  *(this + 44) = 0;
  GpsFactoryTest::constructDevice(this);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "testInitialize";
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "-%s", &v6, 0xCu);
  }

  usleep(0x4E20u);
  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

unint64_t GpsFactoryTest::testPeriodicFix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "testPeriodicFix";
    _os_log_debug_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEBUG, "+%s", buf, 0xCu);
  }

  v6 = atomic_load((a1 + 364));
  if (v6)
  {
    std::mutex::lock((a1 + 432));
    atomic_store(1u, (a1 + 368));
    std::condition_variable::notify_all((a1 + 384));
    std::mutex::unlock((a1 + 432));
    v7 = *(a1 + 528);
    v12[0] = &unk_285864220;
    v12[1] = a1;
    v12[3] = v12;
    v11[0] = &unk_2858642A0;
    v11[1] = a1;
    v11[3] = v11;
    (*(*v7 + 24))(v7, a3, v12, v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](v12);
    v8 = *(GpsdPlatformInfo::instance(0) + 8);
    if ((v8 - 301) < 2 || (v8 - 201) <= 1)
    {
      sleep(a3 + 1);
    }

    GpsFactoryTest::waitForIdle(a1);
    GpsFactoryTest::printResult(a1, "testPeriodicFix");
    result = atomic_load((a1 + 376));
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    result = 7;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24557CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testCw(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = GpsdLogObjectGeneral;
  v14 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    *buf = 136315394;
    v23 = "testCw";
    v24 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v14);
    _os_log_impl(&dword_2454AA000, v13, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v15 = atomic_load((a1 + 364));
  if (v15)
  {
    std::mutex::lock((a1 + 432));
    atomic_store(1u, (a1 + 368));
    std::condition_variable::notify_all((a1 + 384));
    std::mutex::unlock((a1 + 432));
    v16 = *(a1 + 528);
    v21[0] = &unk_285864320;
    v21[1] = a1;
    v21[3] = v21;
    v20[0] = &unk_2858643A0;
    v20[1] = a1;
    v20[3] = v20;
    (*(*v16 + 32))(v16, a4, a5, a6, a7, v21, v20, a2);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v21);
    v17 = *(GpsdPlatformInfo::instance(0) + 8);
    if ((v17 - 301) < 2 || (v17 - 201) <= 1)
    {
      sleep(a4 + 1);
    }

    GpsFactoryTest::waitForIdle(a1);
    GpsFactoryTest::printResult(a1, "testCw");
    result = atomic_load((a1 + 376));
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    result = 7;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24557CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testModulated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = GpsdLogObjectGeneral;
  v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *buf = 136315394;
    v19 = "testModulated";
    v20 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v10);
    _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v11 = atomic_load((a1 + 364));
  if (v11)
  {
    std::mutex::lock((a1 + 432));
    atomic_store(1u, (a1 + 368));
    std::condition_variable::notify_all((a1 + 384));
    std::mutex::unlock((a1 + 432));
    v12 = *(a1 + 528);
    v17[0] = &unk_285864420;
    v17[1] = a1;
    v17[3] = v17;
    v16[0] = &unk_2858644A0;
    v16[1] = a1;
    v16[3] = v16;
    (*(*v12 + 40))(v12, a3, a4, a5, 0xFFFFFFFFLL, v17, v16);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v17);
    v13 = *(GpsdPlatformInfo::instance(0) + 8);
    if ((v13 - 301) < 2 || (v13 - 201) <= 1)
    {
      sleep(a3 + 1);
    }

    GpsFactoryTest::waitForIdle(a1);
    GpsFactoryTest::printResult(a1, "testModulated");
    result = atomic_load((a1 + 376));
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    result = 7;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24557CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testApSignal(GpsFactoryTest *this)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v19 = 136315394;
    v20 = "testApSignal";
    v21 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", &v19, 0x16u);
  }

  v4 = atomic_load(this + 364);
  if (v4)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    v6 = GnssHal::GpioEmbedded::GpioBackend::instance(v5);
    std::mutex::lock(&GnssHal::sMutex);
    *(v6 + 20) = 0;
    *(v6 + 24) = 0;
    std::mutex::unlock(&GnssHal::sMutex);
    v7 = *(this + 66);
    v25[0] = &unk_285864520;
    v25[1] = this;
    v25[3] = v25;
    (*(*v7 + 72))(v7, 1500, v25);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    GpsFactoryTest::waitForIdle(this);
    GpsFactoryTest::printResult(this, "testApSignal");
    v8 = sleep(1u);
    v9 = GnssHal::GpioEmbedded::GpioBackend::instance(v8);
    std::mutex::lock(&GnssHal::sMutex);
    v10 = *(v9 + 20);
    std::mutex::unlock(&GnssHal::sMutex);
    v12 = GnssHal::GpioEmbedded::GpioBackend::instance(v11);
    std::mutex::lock(&GnssHal::sMutex);
    v13 = *(v12 + 24);
    std::mutex::unlock(&GnssHal::sMutex);
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "testApSignal";
      v21 = 2048;
      MachContinuousTimeNs = v10;
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "%s,zero transitions, %llu, one transitions, %llu,", &v19, 0x20u);
    }

    v15 = atomic_load(this + 47);
    if ((v15 & 0x1FFFFFFFFLL) == 0x100000001)
    {
      if (v13)
      {
        v16 = v10 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        result = 8;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = atomic_load(this + 47);
      if ((result & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }
    }
  }

  else
  {
    result = 7;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24557D190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testTimeMark(GpsFactoryTest *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 136315394;
    v10 = "testTimeMark";
    v11 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v4 = atomic_load(this + 364);
  if (v4)
  {
    std::mutex::lock((this + 432));
    atomic_store(1u, this + 92);
    std::condition_variable::notify_all(this + 8);
    std::mutex::unlock((this + 432));
    v5 = *(this + 66);
    v8[0] = &unk_2858645A0;
    v8[1] = this;
    v8[3] = v8;
    (*(*v5 + 80))(v5, 1500, v8);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
    GpsFactoryTest::waitForIdle(this);
    GpsFactoryTest::printResult(this, "testTimeMark");
    sleep(1u);
    result = atomic_load(this + 47);
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    result = 7;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t GpsFactoryTest::testCommPing(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 136315394;
    v11 = "testCommPing";
    v12 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v3);
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v4 = atomic_load((a1 + 364));
  if (v4)
  {
    std::mutex::lock((a1 + 432));
    atomic_store(1u, (a1 + 368));
    std::condition_variable::notify_all((a1 + 384));
    std::mutex::unlock((a1 + 432));
    v5 = *(a1 + 528);
    v9[0] = &unk_285864620;
    v9[1] = a1;
    v9[3] = v9;
    v8[0] = &unk_2858646A0;
    v8[1] = a1;
    v8[3] = v8;
    (*(*v5 + 88))(v5, 1500, v9, v8);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v9);
    GpsFactoryTest::waitForIdle(a1);
    GpsFactoryTest::printResult(a1, "testCommPing");
    sleep(1u);
    result = atomic_load((a1 + 376));
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    result = 7;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24557D4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t GpsFactoryTest::testPowerMode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 136315394;
    v12 = "testPowerMode";
    v13 = 2048;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v5);
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,%s,timesync,machContNs,%llu", buf, 0x16u);
  }

  v6 = atomic_load((a1 + 364));
  if (v6)
  {
    std::mutex::lock((a1 + 432));
    atomic_store(1u, (a1 + 368));
    std::condition_variable::notify_all((a1 + 384));
    std::mutex::unlock((a1 + 432));
    v7 = *(a1 + 528);
    v10[0] = &unk_285864720;
    v10[1] = a1;
    v10[3] = v10;
    (*(*v7 + 64))(v7, a2, v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    GpsFactoryTest::waitForIdle(a1);
    GpsFactoryTest::printResult(a1, "testPowerMode");
    sleep(1u);
    result = atomic_load((a1 + 376));
    if ((result & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    result = 7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *GpsFactoryTest::stringify@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 24);
  snprintf((a1 + 544), 0x100uLL, "rxTimeNs=%12llu, gpsTimeNs=%12llu(%4.1f)", v5, *a2, *(a2 + 8));

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

{
  GpsFactoryTest::stringify((a2 + 68), __p);
  if (v11 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  snprintf((a1 + 544), 0x100uLL, "%s, ll=%6.3f,%6.3f, hUnc=%6.3f, alt=%6.3f(%6.3f), undul=%6.3f", v6, *a2, *(a2 + 8), v7, *(a2 + 16), v8, *(a2 + 24));
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

_BYTE *GpsFactoryTest::stringify@<X0>(uint64_t a1@<X0>, double *a2@<X1>, _BYTE *a3@<X8>)
{
  snprintf((a1 + 544), 0x100uLL, "hSpeed=%4.2f(%5.2f), vVel=%4.2f(%5.2f)", *a2, a2[1], a2[2], a2[3]);

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

void GpsFactoryTest::stringify_json(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  GpsFactoryTest::stringify_json(a1, a2, &v25);
  v6 = std::string::insert(&v25, 0, "{fix: {");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v26, ", ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify_json(a1, a2 + 48, v23);
  if ((v24 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v23[1];
  }

  v12 = std::string::append(&v27, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ", ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  GpsFactoryTest::stringify_json(a1, (a2 + 136), __p);
  if ((v22 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v17 = v22;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v29, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v30, "}}");
  *a3 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_24557DA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *GpsFactoryTest::stringify_json@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 24);
  snprintf((a1 + 544), 0x100uLL, "time:{mClockNanoSeconds:%12llu,mGpsNanoSeconds:%12llu, mGpsTimeUncertaintyNanoSeconds:%4.1f}", v5, *a2, *(a2 + 8));

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

{
  GpsFactoryTest::stringify((a2 + 68), __p);
  if (v11 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  snprintf((a1 + 544), 0x100uLL, "position:{mReliability:%s,mLatitude:%6.3f, mLongitude:%6.3f,mSemiMajorHorizontalUncertainty:%6.3f,mAltWgs84:%6.3f,mVerticalUncertainty:%6.3f,mUndulation:%6.3f}", v6, *a2, *(a2 + 8), v7, *(a2 + 16), v8, *(a2 + 24));
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

_BYTE *GpsFactoryTest::stringify_json@<X0>(uint64_t a1@<X0>, double *a2@<X1>, _BYTE *a3@<X8>)
{
  snprintf((a1 + 544), 0x100uLL, "velocity:{mHorizSpeed:%4.2f,mHorizSpeedUnc:%5.2f, mVertVelocity:%4.2f,mVertVelocityUnc:%5.2f}", *a2, a2[1], a2[2], a2[3]);

  return std::string::basic_string[abi:ne200100]<0>(a3, (a1 + 544));
}

uint64_t GpsFactoryTest::stringify@<X0>(int *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  if (*a1 <= 24)
  {
    if (!v3)
    {
      v4 = "NotSet";
      return MEMORY[0x245D6AB60](a2, v4);
    }

    if (v3 == 10)
    {
      v4 = "VeryLow";
      return MEMORY[0x245D6AB60](a2, v4);
    }

LABEL_12:
    v4 = "Error";
    return MEMORY[0x245D6AB60](a2, v4);
  }

  if (v3 == 25)
  {
    v4 = "Low";
    return MEMORY[0x245D6AB60](a2, v4);
  }

  if (v3 == 50)
  {
    v4 = "Medium";
    return MEMORY[0x245D6AB60](a2, v4);
  }

  if (v3 != 75)
  {
    goto LABEL_12;
  }

  v4 = "High";
  return MEMORY[0x245D6AB60](a2, v4);
}

void sub_24557DD2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void GpsFactoryTest::BasicTimer::waitUntil(GpsFactoryTest::BasicTimer *this, double a2)
{
  v3 = (this + 8);
  v4 = (a2 * 1000000000.0 + *this) / 1000000000.0;
  v12.__m_ = (this + 56);
  v12.__owns_ = 1;
  std::mutex::lock((this + 56));
  v5 = v4 * 1000000000.0;
  v6 = -9.22337204e18;
  if (v4 * 1000000000.0 > -9.22337204e18)
  {
    v6 = v4 * 1000000000.0;
  }

  if (v5 < 9.22337204e18)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while ((*(this + 120) & 1) == 0 && v5 > std::chrono::steady_clock::now().__d_.__rep_)
  {
    v8.__d_.__rep_ = v7 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v8.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_)
      {
        if (v9.__d_.__rep_ < 1)
        {
          if (v9.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_16;
          }

          v10 = 0x8000000000000000;
        }

        else
        {
          if (v9.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v10 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_17;
          }

LABEL_16:
          v10 = 1000 * v9.__d_.__rep_;
LABEL_17:
          if (v10 > (v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v11.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
            std::condition_variable::__do_timed_wait(v3, &v12, v11);
            std::chrono::steady_clock::now();
            goto LABEL_21;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v11.__d_.__rep_ = v10 + v8.__d_.__rep_;
      goto LABEL_20;
    }

LABEL_21:
    if (v5 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }
  }

  if (v12.__owns_)
  {
    std::mutex::unlock(v12.__m_);
  }
}

void GpsFactoryTest::Options::~Options(void **this)
{
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::__map_value_compare<std::string,std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,GpsdPlatformInfoHardware::Hardware>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_1,std::allocator<GpsFactoryTest::constructDevice(void)::$_1>,std::string ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863C30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::constructDevice(void)::$_1,std::allocator<GpsFactoryTest::constructDevice(void)::$_1>,std::string ()(void)>::operator()(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_1,std::allocator<GpsFactoryTest::constructDevice(void)::$_1>,std::string ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_2,std::allocator<GpsFactoryTest::constructDevice(void)::$_2>,std::string ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863CC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::constructDevice(void)::$_2,std::allocator<GpsFactoryTest::constructDevice(void)::$_2>,std::string ()(void)>::operator()(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (*(v2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 200), *(v2 + 208));
  }

  else
  {
    v3 = *(v2 + 200);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 216);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_2,std::allocator<GpsFactoryTest::constructDevice(void)::$_2>,std::string ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_0,std::allocator<GpsFactoryTest::constructDevice(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863D40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::constructDevice(void)::$_0,std::allocator<GpsFactoryTest::constructDevice(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_0,std::allocator<GpsFactoryTest::runInternal(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863DD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_0,std::allocator<GpsFactoryTest::runInternal(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_1,std::allocator<GpsFactoryTest::runInternal(void)::$_1>,void ()(std::string const&,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863E50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_1,std::allocator<GpsFactoryTest::runInternal(void)::$_1>,void ()(std::string const&,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_2,std::allocator<GpsFactoryTest::runInternal(void)::$_2>,void ()(std::vector<std::string> &&)>::operator()(uint64_t a1, std::string **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
      v5 = v2;
      size = v4;
      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        v5 = v2->__r_.__value_.__r.__words[0];
        size = v2->__r_.__value_.__l.__size_;
      }

      v7 = v5 + size;
      v8 = memchr(v5, 13, size);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      v10 = v9 + 1;
      if (v9 != v7 && v10 != v7)
      {
        do
        {
          v12 = *v10;
          if (v12 != 13)
          {
            *v9++ = v12;
          }

          ++v10;
        }

        while (v10 != v7);
        v4 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
      }

      if ((v4 & 0x80) != 0)
      {
        v14 = v2->__r_.__value_.__r.__words[0];
        v13 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
      }

      else
      {
        v13 = v2 + v4;
        v14 = v2;
      }

      v15 = std::string::erase(v2, v9 - v14, v13 - v9);
      ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v15);
      v17 = v2;
      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = v2->__r_.__value_.__r.__words[0];
      }

      printf("[%5.1f][NMEA  ] %s\n", ProcessUptimeSec, v17);
      v18 = GpsdLogObjectGeneral;
      v19 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v20 = gpsd::util::getProcessUptimeSec(v19);
        v21 = v2;
        if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v2->__r_.__value_.__r.__words[0];
        }

        *buf = 134218242;
        v24 = v20;
        v25 = 2080;
        v26 = v21;
        _os_log_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEFAULT, "[%5.1f][NMEA  ] %s", buf, 0x16u);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_2,std::allocator<GpsFactoryTest::runInternal(void)::$_2>,void ()(std::vector<std::string> &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_3,std::allocator<GpsFactoryTest::runInternal(void)::$_3>,void ()(gnss::Result)>::operator()(gpsd::util *a1, int *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  if (v2 == 1)
  {
    printf("[%5.1f][EVENT ] Succeed to set NMEA handler\n", ProcessUptimeSec);
    v4 = GpsdLogObjectGeneral;
    v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *buf = 134217984;
      v13 = gpsd::util::getProcessUptimeSec(v5);
      v6 = "[%5.1f][EVENT ] Succeed to set NMEA handler";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    printf("[%5.1f][EVENT ] Failed to set NMEA handler %d\n", ProcessUptimeSec, v2);
    v9 = GpsdLogObjectGeneral;
    v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *buf = 134218240;
      v13 = gpsd::util::getProcessUptimeSec(v10);
      v14 = 1024;
      v15 = v2;
      v6 = "[%5.1f][EVENT ] Failed to set NMEA handler %d";
      v7 = v9;
      v8 = 18;
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_3,std::allocator<GpsFactoryTest::runInternal(void)::$_3>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_4,std::allocator<GpsFactoryTest::runInternal(void)::$_4>,void ()(std::unique_ptr<gnss::Fix>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285863FF0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_4,std::allocator<GpsFactoryTest::runInternal(void)::$_4>,void ()(std::unique_ptr<gnss::Fix>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = v2;
  GpsFactoryTest::fixCallback(v3, &v4);
  if (v2)
  {

    JUMPOUT(0x245D6AEE0);
  }
}

void sub_24557EBAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x245D6AEE0](v1, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_4,std::allocator<GpsFactoryTest::runInternal(void)::$_4>,void ()(std::unique_ptr<gnss::Fix>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_5,std::allocator<GpsFactoryTest::runInternal(void)::$_5>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864080;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_5,std::allocator<GpsFactoryTest::runInternal(void)::$_5>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  memset(__p, 0, sizeof(__p));
  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(__p, v3, v2, 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3));
  GpsFactoryTest::rfMeasurementCallback(v4, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v3)
  {

    operator delete(v3);
  }
}

void sub_24557EDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_5,std::allocator<GpsFactoryTest::runInternal(void)::$_5>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24557EEFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_6,std::allocator<GpsFactoryTest::runInternal(void)::$_6>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864110;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_6,std::allocator<GpsFactoryTest::runInternal(void)::$_6>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  memset(__p, 0, sizeof(__p));
  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(__p, v3, v2, 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3));
  GpsFactoryTest::rfMeasurementCallback(v4, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v3)
  {

    operator delete(v3);
  }
}

void sub_24557F0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_6,std::allocator<GpsFactoryTest::runInternal(void)::$_6>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_7,std::allocator<GpsFactoryTest::runInternal(void)::$_7>,void ()(gnssTest::CommLoopbackResult const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864190;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::runInternal(void)::$_7,std::allocator<GpsFactoryTest::runInternal(void)::$_7>,void ()(gnssTest::CommLoopbackResult const&)>::operator()(gpsd::util *a1, uint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = *(a1 + 1);
  ProcessUptimeSec = gpsd::util::getProcessUptimeSec(a1);
  v8 = v2 >> 10;
  v9 = v4 >> 10;
  printf("[%5.1f][EVENT ] loopback results: Tx %lld kB, Rx %lld kB, Tx %d KB/s, Rx %d KB/s\n", ProcessUptimeSec, v2 >> 10, v3 >> 10, v9, v5 >> 10);
  v10 = GpsdLogObjectGeneral;
  v11 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 134219008;
    v14 = gpsd::util::getProcessUptimeSec(v11);
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v3 >> 10;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v5 >> 10;
    _os_log_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEFAULT, "[%5.1f][EVENT ] loopback results: Tx %lld kB, Rx %lld kB, Tx %d KB/s, Rx %d KB/s", buf, 0x2Cu);
  }

  GpsFactoryTest::BasicTimer::heartbeat((v6 + 224));
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<GpsFactoryTest::runInternal(void)::$_7,std::allocator<GpsFactoryTest::runInternal(void)::$_7>,void ()(gnssTest::CommLoopbackResult const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(gnssTest::CommLoopbackResult const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864220;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = v2;
  GpsFactoryTest::fixCallback(v3, &v4);
  if (v2)
  {

    JUMPOUT(0x245D6AEE0);
  }
}

void sub_24557F4E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x245D6AEE0](v1, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_0>,void ()(std::unique_ptr<gnss::Fix>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858642A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1,std::allocator<GpsFactoryTest::testPeriodicFix(std::string *,int)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864320;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v3;
  v7 = v2;
  GpsFactoryTest::rfMeasurementCallback(v4, &v6);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_24557F75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858643A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1,std::allocator<GpsFactoryTest::testCw(std::string *,int,gnss::Band,gnssTest::Subband,double,int)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864420;
  a2[1] = v2;
  return result;
}

void std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v3;
  v7 = v2;
  GpsFactoryTest::rfMeasurementCallback(v4, &v6);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_24557F9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_0>,void ()(std::vector<gnssTest::RfMeasurement>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858644A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1,std::allocator<GpsFactoryTest::testModulated(std::string *,int,gnss::Band,gnssTest::Subband)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testApSignal(void)::$_0,std::allocator<GpsFactoryTest::testApSignal(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864520;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testApSignal(void)::$_0,std::allocator<GpsFactoryTest::testApSignal(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testTimeMark(void)::$_0,std::allocator<GpsFactoryTest::testTimeMark(void)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858645A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testTimeMark(void)::$_0,std::allocator<GpsFactoryTest::testTimeMark(void)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_0,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_0>,void ()(std::string const&,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_0,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_0>,void ()(std::string const&,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_1,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858646A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testCommPing(std::string *)::$_1,std::allocator<GpsFactoryTest::testCommPing(std::string *)::$_1>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0,std::allocator<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285864720;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0,std::allocator<GpsFactoryTest::testPowerMode(gnssTest::PowerMode)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void executeCommand(const char *a1@<X0>, void *a2@<X8>)
{
  v2 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  popen(a1, "r");
  operator new();
}

void sub_245580100(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    pclose(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_245580118(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_245580124(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x245580128);
  }

  __clang_call_terminate(a1);
}

void sub_245580134()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }

  JUMPOUT(0x24558015CLL);
}

void isProcessRunning()
{
  std::operator+<char>();
  v0 = std::string::append(&v3, "'");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v5 = v0->__r_.__value_.__r.__words[2];
  *__p = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  if (v5 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  executeCommand(v2, &v3);
}

void sub_2455802D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<__sFILE *,int (*)(__sFILE *),std::allocator<__sFILE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D6AEE0);
}

uint64_t std::__shared_ptr_pointer<__sFILE *,int (*)(__sFILE *),std::allocator<__sFILE>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}