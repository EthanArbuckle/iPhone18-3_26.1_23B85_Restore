uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = bswap64(*a2);
  v6 = v2;
  do
  {
    v7 = bswap64(*(v3 + 25));
    if (v7 == v5)
    {
      v7 = bswap64(*(v3 + 33));
      v8 = bswap64(a2[1]);
      if (v7 == v8)
      {
        v9 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = v5;
    }

    if (v7 < v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

LABEL_10:
    if (v9 >= 0)
    {
      v6 = v3;
    }

    v3 = *(v3 + ((v9 >> 28) & 8));
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v10 = bswap64(*a2);
  v11 = bswap64(*(v6 + 25));
  if (v10 != v11 || (v10 = bswap64(a2[1]), v11 = bswap64(*(v6 + 33)), v10 != v11))
  {
    v12 = v10 < v11 ? -1 : 1;
    if (v12 < 0)
    {
      return v2;
    }
  }

  return v6;
}

uint64_t CLMicroLocationErrorHandling::reportError(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationErrorHandling::reportError();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = *a1;
    }

    *buf = 136315138;
    v7 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "Microlocation error report: %s", buf, 0xCu);
  }

  result = ULSettings::get<ULSettings::AnalyticsSendEventEnabled>();
  if (result)
  {
    result = AnalyticsSendEventLazy();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id ___ZN28CLMicroLocationErrorHandling11reportErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"errorType";
  v1 = *(a1 + 32);
  if (*(v1 + 23) < 0)
  {
    v1 = *v1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void CLMicroLocationErrorHandling::reportError(CLMicroLocationErrorHandling *this, NSString *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = this;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationErrorHandling::reportError();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "Microlocation error report: %@", buf, 0xCu);
  }

  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    v5 = v2;
    AnalyticsSendEventLazy();
  }

  v4 = *MEMORY[0x277D85DE8];
}

id ___ZN28CLMicroLocationErrorHandling11reportErrorEP8NSString_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"errorType";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_122()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void CLMicroLocationFingerprintConfiguration::getCustomLoiRecordingConfigurationFromSettings(uint64_t *a1@<X8>)
{
  CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(a1);
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumTotalNumberOfMeasurementsForFingerprintInCustomLoi"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 unsignedLongValue];
  }

  else
  {
    v7 = [&unk_286A72540 unsignedLongValue];
  }

  v8 = v7;

  *a1 = v8;
}

uint64_t *CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings@<X0>(uint64_t a1@<X8>)
{
  *a1 = ULSettings::get<ULSettings::MinimumTotalNumberOfMeasurementsForFingerprint>();
  *(a1 + 8) = ULSettings::get<ULSettings::ProcessOffChannelRssiAP>();
  v3 = ULSettings::get<ULSettings::ProcessInvalidRssiAP>();
  *(a1 + 16) = 0u;
  v4 = a1 + 16;
  *(v4 - 7) = v3;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1065353216;
  v5 = ULSettings::get<ULSettings::MeasurementProcessingWifiRssiEnable>();
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiDurationForFingerprintRecording"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 doubleValue];
  }

  else
  {
    [&unk_286A72F40 doubleValue];
  }

  v11 = v10;

  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiNumberOfMeasurementsForFingerprintRecording"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 unsignedLongValue];
  }

  else
  {
    v16 = [&unk_286A72540 unsignedLongValue];
  }

  v51 = v16;

  v17 = ULSettings::get<ULSettings::MaximumNumberOfWifiRssiMeasurementsForFingerprint>();
  v50 = ULSettings::get<ULSettings::MeasurementProcessingBleLeechEnable>();
  v18 = +[ULDefaultsSingleton shared];
  v19 = [v18 defaultsDictionary];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleDurationForFingerprintRecording"];
  v21 = [v19 objectForKey:v20];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v21 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v23 = v22;

  v24 = +[ULDefaultsSingleton shared];
  v25 = [v24 defaultsDictionary];

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleNumberOfMeasurementsForFingerprintRecording"];
  v27 = [v25 objectForKey:v26];
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28 = [v27 unsignedLongValue];
  }

  else
  {
    v28 = [&unk_286A72588 unsignedLongValue];
  }

  v29 = v28;

  v30 = ULSettings::get<ULSettings::MaximumNumberOfBleRssiMeasurementsForFingerprint>();
  v31 = v5;
  v32 = ULSettings::get<ULSettings::MeasurementProcessingUwbRangeEnable>();
  if (v32)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v32);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v34 = +[ULDefaultsSingleton shared];
  v35 = [v34 defaultsDictionary];

  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbRangeDurationForFingerprintRecording"];
  v37 = [v35 objectForKey:v36];
  if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v37 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v39 = v38;

  v40 = +[ULDefaultsSingleton shared];
  v41 = [v40 defaultsDictionary];

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbNumberOfMeasurementsForFingerprintRecording"];
  v43 = [v41 objectForKey:v42];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = [v43 unsignedLongValue];
  }

  else
  {
    v44 = [&unk_286A72588 unsignedLongValue];
  }

  v45 = v44;

  v46 = ULSettings::get<ULSettings::MaximumNumberOfUwbRangeMeasurementsForFingerprint>();
  v52 = 1;
  v56 = &v52;
  v47 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52);
  *(v47 + 24) = v31;
  *(v47 + 25) = *v55;
  *(v47 + 7) = *&v55[3];
  v47[4] = v11;
  v47[5] = v51;
  v47[6] = v17;
  v52 = 5;
  v56 = &v52;
  v48 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52);
  *(v48 + 24) = v50;
  *(v48 + 25) = *v54;
  *(v48 + 7) = *&v54[3];
  v48[4] = v23;
  v48[5] = v29;
  v48[6] = v30;
  v52 = 6;
  v56 = &v52;
  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52);
  *(result + 24) = isUwbRangingSupportedOnDevice;
  *(result + 25) = *v53;
  *(result + 7) = *&v53[3];
  result[4] = v39;
  result[5] = v45;
  result[6] = v46;
  return result;
}

uint64_t ULSettings::get<ULSettings::MinimumTotalNumberOfMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumTotalNumberOfMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72558 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::ProcessOffChannelRssiAP>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULProcessOffChannelRssiAP"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::ProcessInvalidRssiAP>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULProcessInvalidRssiAP"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementProcessingWifiRssiEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MaximumNumberOfWifiRssiMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfWifiRssiMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72570 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementProcessingBleLeechEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MaximumNumberOfBleRssiMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfBleRssiMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72570 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MeasurementProcessingUwbRangeEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::MaximumNumberOfUwbRangeMeasurementsForFingerprint>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfUwbRangeMeasurementsForFingerprint"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72570 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t *CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings@<X0>(uint64_t a1@<X8>)
{
  *a1 = ULSettings::get<ULSettings::MinimumTotalNumberOfMeasurementsForFingerprint>();
  *(a1 + 8) = ULSettings::get<ULSettings::ProcessOffChannelRssiAP>();
  v3 = ULSettings::get<ULSettings::ProcessInvalidRssiAP>();
  *(a1 + 16) = 0u;
  v4 = a1 + 16;
  *(v4 - 7) = v3;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1065353216;
  v5 = ULSettings::get<ULSettings::MeasurementProcessingWifiRssiEnable>();
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiDurationForFingerprintLocalizing"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 doubleValue];
  }

  else
  {
    [&unk_286A72F40 doubleValue];
  }

  v11 = v10;

  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumWiFiNumberOfMeasurementsForFingerprintLocalizing"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 unsignedLongValue];
  }

  else
  {
    v16 = [&unk_286A72540 unsignedLongValue];
  }

  v51 = v16;

  v17 = ULSettings::get<ULSettings::MaximumNumberOfWifiRssiMeasurementsForFingerprint>();
  v50 = ULSettings::get<ULSettings::MeasurementProcessingBleLeechEnable>();
  v18 = +[ULDefaultsSingleton shared];
  v19 = [v18 defaultsDictionary];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleDurationForFingerprintLocalizing"];
  v21 = [v19 objectForKey:v20];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v21 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v23 = v22;

  v24 = +[ULDefaultsSingleton shared];
  v25 = [v24 defaultsDictionary];

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumBleNumberOfMeasurementsForFingerprintLocalizing"];
  v27 = [v25 objectForKey:v26];
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28 = [v27 unsignedLongValue];
  }

  else
  {
    v28 = [&unk_286A72588 unsignedLongValue];
  }

  v29 = v28;

  v30 = ULSettings::get<ULSettings::MaximumNumberOfBleRssiMeasurementsForFingerprint>();
  v31 = v5;
  v32 = ULSettings::get<ULSettings::MeasurementProcessingUwbRangeEnable>();
  if (v32)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v32);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v34 = +[ULDefaultsSingleton shared];
  v35 = [v34 defaultsDictionary];

  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbRangeDurationForFingerprintLocalizing"];
  v37 = [v35 objectForKey:v36];
  if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v37 doubleValue];
  }

  else
  {
    [&unk_286A72588 doubleValue];
  }

  v39 = v38;

  v40 = +[ULDefaultsSingleton shared];
  v41 = [v40 defaultsDictionary];

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumUwbNumberOfMeasurementsForFingerprintLocalizing"];
  v43 = [v41 objectForKey:v42];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = [v43 unsignedLongValue];
  }

  else
  {
    v44 = [&unk_286A72588 unsignedLongValue];
  }

  v45 = v44;

  v46 = ULSettings::get<ULSettings::MaximumNumberOfUwbRangeMeasurementsForFingerprint>();
  v52 = 1;
  v56 = &v52;
  v47 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52);
  *(v47 + 24) = v31;
  *(v47 + 25) = *v55;
  *(v47 + 7) = *&v55[3];
  v47[4] = v11;
  v47[5] = v51;
  v47[6] = v17;
  v52 = 5;
  v56 = &v52;
  v48 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52);
  *(v48 + 24) = v50;
  *(v48 + 25) = *v54;
  *(v48 + 7) = *&v54[3];
  v48[4] = v23;
  v48[5] = v29;
  v48[6] = v30;
  v52 = 6;
  v56 = &v52;
  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(v4, &v52);
  *(result + 24) = isUwbRangingSupportedOnDevice;
  *(result + 25) = *v53;
  *(result + 7) = *&v53[3];
  result[4] = v39;
  result[5] = v45;
  result[6] = v46;
  return result;
}

uint64_t CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = &v5;
  v2 = *(a2 + 40);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v4;
  (off_286A5C960[v2])(&v6, a2 + 16);
  return v5;
}

uint64_t CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 40);
  v6 = *(a3 + 40);
  result = v6 == v5;
  if (v5 != -1 && v6 == v5)
  {
    v10[1] = v3;
    v10[2] = v4;
    v10[0] = &v9;
    return (off_286A5C978[v5])(v10, a2 + 16, a3 + 16);
  }

  return result;
}

uint64_t CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v18[4] = *MEMORY[0x277D85DE8];
  CLMicroLocationProto::FingerprintMeasurement::FingerprintMeasurement(a2, a3);
  v6 = *(this + 2);
  if (!CLMicroLocationProto::DataType_IsValid(v6))
  {
    __assert_rtn("set_datatype", "microlocation.pb.h", 12367, "::CLMicroLocationProto::DataType_IsValid(value)");
  }

  v7 = *(a2 + 36);
  *(a2 + 16) = v6;
  *(a2 + 8) = *this;
  *(a2 + 20) = *(this + 3);
  *(a2 + 36) = v7 | 0xF;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  v15[0] = &unk_286A5C9D8;
  v15[1] = v8;
  v15[3] = v15;
  v14[0] = &unk_286A5CA68;
  v14[1] = v8;
  v14[3] = v14;
  v13[0] = &unk_286A5CAF8;
  v13[1] = v8;
  v13[3] = v13;
  CLMicroLocationUtils::DeviceIdVisitor<void>::DeviceIdVisitor(v16, v15, v14, v13);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](v15);
  v9 = *(this + 10);
  if (v9 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v12 = v16;
  (off_286A5C990[v9])(&v12, this + 16);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](&v17);
  result = std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](v16);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259177E6C(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F90](v2, 0x10A1C4000609EC7);
  CLMicroLocationProto::FingerprintMeasurement::~FingerprintMeasurement(v1);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromProtobuf@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, const CLMicroLocationProto::Measurement *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(this + 16);
  v6 = *(this + 1);
  MeasurementValue = CLMicroLocationProtobufHelper::getMeasurementValue(this, a2);
  v24.__r_.__value_.__r.__words[0] = 0;
  v25 = 0;
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4:
        v9 = *(this + 5);
        if (!v9)
        {
          v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 40);
        }

        goto LABEL_30;
      case 5:
        v15 = *(this + 6);
        if (!v15)
        {
          v7 = CLMicroLocationProto::Measurement::default_instance(v7);
          v15 = *(v7 + 6);
        }

        if ((*(v15 + 64) & 0x80) == 0)
        {
          v16 = *(this + 6);
          if (!v16)
          {
            v7 = CLMicroLocationProto::Measurement::default_instance(v7);
            v16 = *(v7 + 6);
          }

          if ((*(v16 + 64) & 8) != 0)
          {
            v9 = *(this + 6);
            if (!v9)
            {
              v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 48);
            }

            goto LABEL_30;
          }

          goto LABEL_40;
        }

        v17 = *(this + 6);
        if (!v17)
        {
          v17 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 48);
        }

        v18 = CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v17 + 48), &v26);
        if (v27 != 1)
        {
          v19 = *(this + 6);
          if (!v19)
          {
            v19 = *(CLMicroLocationProto::Measurement::default_instance(v18) + 48);
          }

          std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v24, &v24, *(v19 + 48));
          goto LABEL_40;
        }

        break;
      case 6:
        v10 = *(this + 7);
        if (!v10)
        {
          v10 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 56);
        }

        v11 = CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v10 + 32), &v26);
        if (v27 != 1)
        {
          v12 = *(this + 7);
          if (!v12)
          {
            v12 = *(CLMicroLocationProto::Measurement::default_instance(v11) + 56);
          }

          std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v24, &v24, *(v12 + 32));
          goto LABEL_40;
        }

        break;
      default:
        goto LABEL_40;
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24);
    *&v24.__r_.__value_.__l.__data_ = v26;
    v25 = 1;
    goto LABEL_40;
  }

  switch(v5)
  {
    case 1:
      v13 = *(this + 2);
      if (v13)
      {
        v14 = *(v13 + 24);
      }

      else
      {
        v14 = *(*(CLMicroLocationProto::Measurement::default_instance(v7) + 16) + 24);
      }

      v24.__r_.__value_.__r.__words[0] = v14;
      break;
    case 2:
      v9 = *(this + 3);
      if (!v9)
      {
        v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 24);
      }

      goto LABEL_30;
    case 3:
      v9 = *(this + 4);
      if (!v9)
      {
        v9 = *(CLMicroLocationProto::Measurement::default_instance(v7) + 32);
      }

LABEL_30:
      std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v24, &v24, *(v9 + 24));
      break;
  }

LABEL_40:
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v23, &v24);
  v20 = MeasurementValue;
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 12) = v20;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3 + 16, v23);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v23);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259178154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromWifiMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 2);
  v8[0] = CLMacAddress::toUint64(this + 2);
  v9 = 0;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v7, v8);
  *a2 = v4;
  *(a2 + 8) = 1;
  *(a2 + 12) = v5;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void sub_2591781F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromBLEMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 2);
  v8 = *(this + 12);
  v9 = 1;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v7, &v8);
  *a2 = v4;
  *(a2 + 8) = 5;
  *(a2 + 12) = v5;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v8);
}

void sub_259178290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromUWBMeasurement@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 2);
  v8 = *(this + 12);
  v9 = 1;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v7, &v8);
  *a2 = v4;
  *(a2 + 8) = 6;
  *(a2 + 12) = v5;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v8);
}

void sub_259178324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::Measurement::fromProtobuf@<X0>(CLMicroLocationFingerprint::Measurement *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(this + 4);
  v6 = *(this + 1);
  v7 = *(this + 5);
  v17.__r_.__value_.__r.__words[0] = 0;
  v18 = 0;
  v8 = *(this + 3);
  if (!v8)
  {
    this = CLMicroLocationProto::FingerprintMeasurement::default_instance(this);
    v8 = *(this + 3);
  }

  v9 = *(v3 + 3);
  if (*(v8 + 28))
  {
    if (!v9)
    {
      v9 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance(this) + 24);
    }

    v17.__r_.__value_.__r.__words[0] = *(v9 + 8);
  }

  else
  {
    if (!v9)
    {
      this = CLMicroLocationProto::FingerprintMeasurement::default_instance(this);
      v9 = *(this + 3);
    }

    if ((*(v9 + 28) & 2) != 0)
    {
      v13 = *(v3 + 3);
      if (!v13)
      {
        v13 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance(this) + 24);
      }

      v14 = CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v13 + 16), buf);
      if (v20 == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v17);
        *&v17.__r_.__value_.__l.__data_ = *buf;
        v18 = 1;
      }

      else
      {
        v15 = *(v3 + 3);
        if (!v15)
        {
          v15 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance(v14) + 24);
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(&v17, &v17, *(v15 + 16));
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationFingerprint::Measurement::fromProtobuf();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "Unknown device id", buf, 2u);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,char const(&)[8]>(&v17, &v17, "Unknown");
    }
  }

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v16, &v17);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 12) = v7;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 16, v16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v17);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLMicroLocationFingerprint::CLMicroLocationFingerprint(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  v4 = (a1 + 200);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13[0] = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(v13);
  *(a1 + 40) = boost::uuids::random_generator_pure::operator()(v13);
  *(a1 + 48) = v5;
  boost::uuids::detail::random_provider_base::destroy(v13);
  *(a1 + 144) = xmmword_2592211C0;
  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    do
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        do
        {
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(a1, (v10 + 2));
          v10 = *v10;
        }

        while (v10);
        v8 = *(a1 + 144);
        v9 = *(a1 + 152);
      }

      if (*(v7 + 144) < v8)
      {
        v8 = *(v7 + 144);
      }

      *(a1 + 144) = v8;
      if (v9 < *(v7 + 152))
      {
        v9 = *(v7 + 152);
      }

      *(a1 + 152) = v9;
      v7 += 224;
    }

    while (v7 != v6);
  }

  for (i = (a1 + 16); ; CLMicroLocationFingerprint::updatePerMeasurementFields(a1, (i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*>(v4, 0, 0, 0);
  return a1;
}

void sub_2591786FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 176) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v2 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t *CLMicroLocationFingerprint::updatePerMeasurementFields(CLMicroLocationFingerprint *this, const CLMicroLocationFingerprint::Measurement *a2)
{
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&>(this + 8, a2 + 2);
  if (std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(this + 13, a2 + 2))
  {
    result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(this + 13, a2 + 2);
    *&v5.f64[1] = result[4];
    v5.f64[0] = *a2;
    *&v6.f64[0] = result[3];
    v6.f64[1] = *a2;
    *(result + 3) = vbslq_s8(vcgtq_f64(v6, v5), vdupq_lane_s64(*a2, 0), *(result + 3));
  }

  else
  {
    v7 = *a2;
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&,CLMicroLocationFingerprint::StartAndEndTimestamps>(this + 13, a2 + 2);
  }

  return result;
}

void CLMicroLocationFingerprint::CLMicroLocationFingerprint(CLMicroLocationFingerprint *this, const CLMicroLocationProto::Fingerprint *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 56) = 0u;
  v4 = (this + 56);
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  *(this + 18) = 0;
  v5 = (this + 144);
  *(this + 21) = 0;
  *(this + 25) = 0;
  v6 = (this + 200);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 192) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v7 = *(a2 + 7);
  v8 = *(v7 + 23);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8 != 16)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(this + 40) = *v7;
    goto LABEL_11;
  }

  if (v7[1] == 16)
  {
    v7 = *v7;
    goto LABEL_6;
  }

LABEL_7:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprint::Measurement::fromProtobuf();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0].var0.var0) = 0;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf fingerprint does not have a valid recording uuid", __p, 2u);
  }

LABEL_11:
  *v5 = *(a2 + 40);
  v10 = *(a2 + 4);
  if (v10 < 1)
  {
    v13 = *(a2 + 20);
    if (v13)
    {
      v14 = *(a2 + 9);
      v15 = 8 * v13;
      do
      {
        CLMicroLocationFingerprint::Measurement::fromProtobuf(*v14, __p);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement>(this, __p);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[0].var0.var2);
        ++v14;
        v15 -= 8;
      }

      while (v15);
    }
  }

  else
  {
    v11 = *(a2 + 1);
    v12 = 8 * v10;
    do
    {
      CLMicroLocationFingerprint::Measurement::fromProtobuf(*v11, a2, __p);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement>(this, __p);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[0].var0.var2);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  for (i = (this + 16); ; CLMicroLocationFingerprint::updatePerMeasurementFields(this, (i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  if (*(a2 + 120))
  {
    *v4 |= 0x20uLL;
  }

  if (*(a2 + 121) == 1)
  {
    *v4 |= 0x40uLL;
  }

  v17 = *(a2 + 26);
  if (v17)
  {
    v18 = *(a2 + 12);
    v19 = 8 * v17;
    do
    {
      ULPhotoFeaturesDO::ULPhotoFeaturesDO(__p, *v18);
      std::vector<ULPhotoFeaturesDO>::push_back[abi:ne200100](v6, __p);
      if (__p[0].var0.var0)
      {
        __p[0].var0.var1 = __p[0].var0.var0;
        operator delete(__p[0].var0.var0);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
  }
}

void sub_259178A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&a16);
  v20 = *v18;
  if (*v18)
  {
    *(v16 + 176) = v20;
    operator delete(v20);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v16 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v16);
  _Unwind_Resume(a1);
}

void CLMicroLocationFingerprint::removeExceedingMeasurements(void *a1, unint64_t a2, unsigned int a3)
{
  v3 = a1[2];
  if (v3)
  {
    v7 = 0;
    do
    {
      if (*(v3 + 6) == a3)
      {
        ++v7;
      }

      v3 = *v3;
    }

    while (v3);
    if (v7 > a2)
    {
      memset(&v21, 0, sizeof(v21));
      std::vector<int>::reserve(&v21, v7);
      for (i = a1[2]; i; i = *i)
      {
        if (*(i + 6) == a3)
        {
          end = v21.__end_;
          if (v21.__end_ >= v21.__end_cap_.__value_)
          {
            begin = v21.__begin_;
            v13 = v21.__end_ - v21.__begin_;
            v14 = v21.__end_ - v21.__begin_;
            v15 = v14 + 1;
            if ((v14 + 1) >> 62)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v16 = v21.__end_cap_.__value_ - v21.__begin_;
            if ((v21.__end_cap_.__value_ - v21.__begin_) >> 1 > v15)
            {
              v15 = v16 >> 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v17 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&v21, v17);
            }

            *(4 * v14) = *(i + 7);
            v11 = (4 * v14 + 4);
            memcpy(0, begin, v13);
            v18 = v21.__begin_;
            v21.__begin_ = 0;
            v21.__end_ = v11;
            v21.__end_cap_.__value_ = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            LODWORD(v8) = *(i + 7);
            *v21.__end_ = LODWORD(v8);
            v11 = end + 1;
          }

          v21.__end_ = v11;
        }
      }

      if (a3 <= 7 && ((1 << a3) & 0xC4) != 0)
      {
        CLMicroLocationFingerprint::removeExceedingRangeMeasurements(a1, &v21, a2, a3);
      }

      else
      {
        CLMicroLocationFingerprint::removeExceedingRssiMeasurements(a1, &v21, a2, a3, v8);
      }

      v19 = a1[2];
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = 0;
      do
      {
        if (*(v19 + 6) == a3)
        {
          ++v20;
        }

        v19 = *v19;
      }

      while (v19);
      if (v20 > a2)
      {
        CLMicroLocationFingerprint::removeExceedingMeasurements(&v22);

        abort_report_np();
        __break(1u);
      }

      else
      {
LABEL_33:
        if (v21.__begin_)
        {
          v21.__end_ = v21.__begin_;
          operator delete(v21.__begin_);
        }
      }
    }
  }
}

void sub_259178CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationFingerprint::removeExceedingRssiMeasurements(void *a1, float **a2, uint64_t a3, int a4, double a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v10, v17, v12, 1, a5);
  v14 = a1[2];
  if (v14)
  {
    v15 = (*a2)[a3];
    do
    {
      while (*(v14 + 6) != a4 || *(v14 + 7) > v15)
      {
        v14 = *v14;
        if (!v14)
        {
          return result;
        }
      }

      v16 = *v14;
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, v14, v17);
      result = std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](v17);
      v14 = v16;
    }

    while (v16);
  }

  return result;
}

uint64_t CLMicroLocationFingerprint::removeExceedingRangeMeasurements(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v8 = *a2;
  v9 = a2[1];
  result = std::__sort<std::__less<float,float> &,float *>();
  v11 = a1[2];
  if (v11)
  {
    v12 = *(*a2 + 4 * a3);
    do
    {
      while (*(v11 + 6) != a4 || *(v11 + 7) < v12)
      {
        v11 = *v11;
        if (!v11)
        {
          return result;
        }
      }

      v13 = *v11;
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, v11, v14);
      result = std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](v14);
      v11 = v13;
    }

    while (v13);
  }

  return result;
}

void CLMicroLocationFingerprint::UpdateFingerprintWithMeasurementsAndConfiguration(uint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v9 = a2[2];
  if (v9)
  {
    v11 = 2.22507386e-308;
    v12 = 1.79769313e308;
    do
    {
      v13 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__equal_range_multi<CLMicroLocationFingerprint::Measurement>(a2, v9 + 16);
      v15 = v14;
      LODWORD(v32) = *(v9 + 24);
      v16 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((a3 + 16), &v32);
      v17 = v16 + 3;
      if (!v16)
      {
        v17 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
      }

      if (*v17 == 1 && v13 != v15)
      {
        v19 = 0.0;
        v20 = 0.0;
        do
        {
          v21 = *(v13 + 16);
          if (v21 < v12)
          {
            v12 = *(v13 + 16);
          }

          if (v21 > v11)
          {
            v11 = *(v13 + 16);
          }

          CLMicroLocationFingerprint::updatePerMeasurementFields(a1, (v13 + 16));
          v20 = v20 + 1.0;
          v19 = v19 + *(v13 + 28);
          v13 = *v13;
        }

        while (v13 != v15);
        if (v20 > 0.0)
        {
          v32 = *(v9 + 16);
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v33, v9 + 32);
          v22 = v19 / v20;
          *(&v32 + 3) = v22;
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(a1, &v32);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v33);
        }
      }

      v9 = v15;
    }

    while (v15);
  }

  else
  {
    v12 = 1.79769313e308;
    v11 = 2.22507386e-308;
  }

  *(a1 + 144) = v12;
  *(a1 + 152) = v11;
  v23 = *(a1 + 200);
  v24 = *(a1 + 208);
  while (v23 != v24)
  {
    if (*(v23 + 24) < v12)
    {
      v12 = *(v23 + 24);
    }

    *(a1 + 144) = v12;
    if (v11 < *(v23 + 24))
    {
      v11 = *(v23 + 24);
    }

    *(a1 + 152) = v11;
    v23 += 32;
  }

  for (i = *(a1 + 80); i; i = *i)
  {
    LODWORD(v32) = *(i + 4);
    v26 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((a3 + 16), &v32);
    v27 = v26 + 3;
    if (!v26)
    {
      v27 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
    }

    CLMicroLocationFingerprint::removeExceedingMeasurements(a1, v27[3], *(i + 4));
  }

  if (a5)
  {
    v28 = *(a1 + 16);
    if (!v28)
    {
      goto LABEL_38;
    }

    v29 = 0;
    do
    {
      if (*(v28 + 6) == 5)
      {
        ++v29;
      }

      v28 = *v28;
    }

    while (v28);
    if (!v29)
    {
LABEL_38:
      *(a1 + 56) |= 0x20uLL;
    }
  }

  if (a4)
  {
    v30 = *(a1 + 16);
    if (!v30)
    {
      goto LABEL_46;
    }

    v31 = 0;
    do
    {
      if (*(v30 + 6) == 6)
      {
        ++v31;
      }

      v30 = *v30;
    }

    while (v30);
    if (!v31)
    {
LABEL_46:
      *(a1 + 56) |= 0x40uLL;
    }
  }
}

uint64_t CLMicroLocationFingerprint::isFingerprintValid(void *a1, unint64_t *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  *buf = 1;
  v4 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a2 + 2, buf);
  v5 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
  if (v4)
  {
    v6 = (v4 + 3);
  }

  else
  {
    v6 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
  }

  *buf = 5;
  v7 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a2 + 2, buf);
  if (v7)
  {
    v8 = (v7 + 3);
  }

  else
  {
    v8 = &CLMicroLocationFingerprintConfiguration::getConfigurationForType(CLMicroLocationProto::DataType)const::sourceDisabledConfiguration;
  }

  *buf = 6;
  v9 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a2 + 2, buf);
  if (v9)
  {
    v5 = (v9 + 3);
  }

  *buf = 1;
  v10 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a1 + 13, buf);
  if (v10)
  {
    v11 = *(v10 + 4) - *(v10 + 3);
  }

  else
  {
    v11 = 0.0;
  }

  *buf = 5;
  v12 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a1 + 13, buf);
  if (v12)
  {
    v13 = *(v12 + 4) - *(v12 + 3);
  }

  else
  {
    v13 = 0.0;
  }

  *buf = 6;
  v14 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(a1 + 13, buf);
  if (v14)
  {
    v15 = *(v14 + 4) - *(v14 + 3);
  }

  else
  {
    v15 = 0.0;
  }

  v16 = *v6;
  v17 = v16 != 1 || v11 >= v6[1];
  v18 = *v8;
  v19 = v18 != 1 || v13 >= v8[1];
  v20 = *v5;
  if (v20 == 1)
  {
    v21 = v15 >= v5[1];
    if (!v17)
    {
LABEL_26:
      v40 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 1;
    if (!v17)
    {
      goto LABEL_26;
    }
  }

  v40 = v19 && v21;
LABEL_29:
  v22 = a1[2];
  if (v22)
  {
    v23 = 0;
    v24 = a1[2];
    do
    {
      if (*(v24 + 6) == 1)
      {
        ++v23;
      }

      v24 = *v24;
    }

    while (v24);
    v25 = 0;
    v26 = a1[2];
    do
    {
      if (*(v26 + 6) == 5)
      {
        ++v25;
      }

      v26 = *v26;
    }

    while (v26);
    v27 = 0;
    do
    {
      if (*(v22 + 6) == 6)
      {
        ++v27;
      }

      v22 = *v22;
    }

    while (v22);
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v27 = 0;
  }

  v28 = v16 ^ 1;
  if (v23 >= *(v6 + 2))
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  if (v29 == 1)
  {
    v30 = v18 ^ 1;
    if (v25 >= *(v8 + 2))
    {
      v30 = 1;
    }

    v31 = v30 & (v20 ^ 1 | (v27 >= *(v5 + 2)));
  }

  else
  {
    v31 = 0;
  }

  v32 = a1[3];
  v33 = *a2;
  if (*a2 > v32)
  {
    v31 = 0;
  }

  if (v40)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  if (a1[26] == a1[25])
  {
    v35 = v34;
  }

  else
  {
    v35 = 1;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprint::isFingerprintValid();
  }

  v36 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v37 = (a1[26] - a1[25]) >> 5;
    *buf = 68292354;
    v43 = 2082;
    v42 = 0;
    v44 = "";
    v45 = 2050;
    v46 = v23;
    v47 = 2050;
    v48 = v25;
    v49 = 2050;
    v50 = v27;
    v51 = 2050;
    v52 = v37;
    v53 = 2050;
    v54 = v32;
    v55 = 2050;
    v56 = v11;
    v57 = 1026;
    v58 = v29;
    v59 = 1026;
    v60 = v33 <= v32;
    v61 = 1026;
    v62 = v40;
    v63 = 1026;
    v64 = v34;
    v65 = 1026;
    v66 = v35;
    v67 = 2050;
    v68 = v13;
    v69 = 2050;
    v70 = v15;
    _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Fingerprint creation, NumWiFiMeasurements:%{public}lu, NumBLEMeasurements:%{public}lu, NumUWBMeasurements:%{public}lu, NumPhotoFeature Vectors:%{public}lu, number of total measurements:%{public}lu, WiFi RSSI duration_s:%{public}.09f, enough WiFi measurements:%{public}hhd, enough total measurements:%{public}hhd, isDurationValid:%{public}hhd, is RF valid:%{public}hhd, is Fingerprint Valid:%{public}hhd, BLE Duration_s:%{public}.09f, UWB Duration_s:%{public}.09f}", buf, 0x80u);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v35;
}

CLMicroLocationFingerprint *std::optional<CLMicroLocationFingerprint>::operator=[abi:ne200100]<CLMicroLocationFingerprint&,void>(CLMicroLocationFingerprint *a1, const CLMicroLocationFingerprint *a2)
{
  if (*(a1 + 224) == 1)
  {
    CLMicroLocationFingerprint::operator=(a1, a2);
  }

  else
  {
    CLMicroLocationFingerprint::CLMicroLocationFingerprint(a1, a2);
    *(a1 + 224) = 1;
  }

  return a1;
}

void CLMicroLocationFingerprint::toProtobuf(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CLMicroLocationProto::Fingerprint::Fingerprint(a3);
  for (i = *(a1 + 16); i; i = *i)
  {
    CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement((i + 2), __p, v6);
    v8 = *(a3 + 84);
    v9 = *(a3 + 80);
    if (v9 >= v8)
    {
      if (v8 == *(a3 + 88))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
        v8 = *(a3 + 84);
      }

      *(a3 + 84) = v8 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::FingerprintMeasurement>::New();
    }

    v10 = *(a3 + 72);
    *(a3 + 80) = v9 + 1;
    CLMicroLocationProto::FingerprintMeasurement::CopyFrom(*(v10 + 8 * v9), __p);
    CLMicroLocationProto::FingerprintMeasurement::~FingerprintMeasurement(__p);
  }

  v11 = MEMORY[0x277D82C30];
  if (*(a2 + 16))
  {
    *(&__p[0].__r_.__value_.__s + 23) = 16;
    *&__p[0].__r_.__value_.__l.__data_ = *a2;
    __p[0].__r_.__value_.__s.__data_[16] = 0;
    *(a3 + 128) |= 0x20u;
    v12 = *(a3 + 64);
    if (v12 == v11)
    {
      operator new();
    }

    std::string::operator=(v12, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  v13 = *(a3 + 128);
  *(a3 + 40) = *(a1 + 144);
  *(&__p[0].__r_.__value_.__s + 23) = 16;
  *&__p[0].__r_.__value_.__l.__data_ = *(a1 + 40);
  __p[0].__r_.__value_.__s.__data_[16] = 0;
  *(a3 + 128) = v13 | 0x1C;
  v14 = *(a3 + 56);
  if (v14 == v11)
  {
    operator new();
  }

  std::string::operator=(v14, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v15 = *(a1 + 56);
  v16 = *(a3 + 128);
  *(a3 + 120) = (v15 & 0x20) != 0;
  *(a3 + 128) = v16 | 0x180;
  *(a3 + 121) = (v15 & 0x40) != 0;
  v18 = *(a1 + 200);
  v17 = *(a1 + 208);
  while (v18 != v17)
  {
    ULPhotoFeaturesDO::toProtobuf(v18, __p);
    v19 = *(a3 + 108);
    v20 = *(a3 + 104);
    if (v20 >= v19)
    {
      if (v19 == *(a3 + 112))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 96));
        v19 = *(a3 + 108);
      }

      *(a3 + 108) = v19 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::PhotoFeatures>::New();
    }

    v21 = *(a3 + 96);
    *(a3 + 104) = v20 + 1;
    CLMicroLocationProto::PhotoFeatures::CopyFrom(*(v21 + 8 * v20), __p);
    CLMicroLocationProto::PhotoFeatures::~PhotoFeatures(__p);
    v18 = (v18 + 32);
  }
}

void sub_259179754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  CLMicroLocationProto::Fingerprint::~Fingerprint(v14);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationFingerprint::removeMeasurementsFromSourcesOtherThan(uint64_t result, int a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    do
    {
      while (1)
      {
        if (*(v3 + 6) == a2)
        {
          result = std::__find[abi:ne200100]<std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__identity>(*a3, a3[1], (v3 + 4));
          if (result == a3[1])
          {
            break;
          }
        }

        v3 = *v3;
        if (!v3)
        {
          return result;
        }
      }

      v7 = *v3;
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(v6, v3, v8);
      result = std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](v8);
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

ULScanningEventDO *CLMicroLocationFingerprint::create@<X0>(ULScanningEventDO *this@<X0>, const ULScanningEventDO *a2@<X1>, CLMicroLocationFingerprint *a3@<X8>)
{
  v5 = this;
  v17[3] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 224) = 0;
  if (*&this[2].var0.data[8] == this[2].var1.var0.var1.var0 && this[3].var1.var0.var1.var0 == this[3].var1.var0.var1.var1)
  {
    v9 = *this[5].var0.data;
    v10 = *&this[5].var0.data[8];
    v7 = v9 == v10;
    if (*(&this[2].var1.var0.var1 + 2) == *this[3].var0.data && v9 == v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *this[5].var0.data == *&this[5].var0.data[8];
  }

  CLMicroLocationFingerprint::CLMicroLocationFingerprint(v12, this, a2);
  if (!v7 && (v5[1].var1.var0.var0.var0[4] & 1) != 0 || CLMicroLocationFingerprint::isFingerprintValid(v12, a2->var0.data))
  {
    std::optional<CLMicroLocationFingerprint>::operator=[abi:ne200100]<CLMicroLocationFingerprint&,void>(a3, v12);
  }

  v11 = v17;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v14);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v13);
  this = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v12);
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void CLMicroLocationFingerprint::CLMicroLocationFingerprint(CLMicroLocationFingerprint *this, ULScanningEventDO *a2, const CLMicroLocationFingerprintConfiguration *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 21) = 0;
  *(this + 34) = 1065353216;
  *(this + 25) = 0;
  v19 = (this + 200);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 192) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  v6 = *&a2[2].var0.data[8];
  var0 = a2[2].var1.var0.var1.var0;
  if (v6 != var0)
  {
    v8 = v6 + 16;
    do
    {
      v9 = ULMeasurementFilters::isInvalidRssiFlag(*(v8 + 3)) ^ 1 | *(a3 + 9);
      v10 = ULMeasurementFilters::isRssiOffChannel(*(v8 + 3)) ^ 1 | *(a3 + 8);
      if (v9 & v10)
      {
        CLMicroLocationFingerprint::Measurement::fromWifiMeasurement((v8 - 16), buf);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement>();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationFingerprint::isFingerprintValid();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        CLMacAddress::toPrettyStr(v8, &__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289794;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = p_p;
        v30 = 1026;
        v31 = v9 & 1;
        v32 = 1026;
        v33 = v10 & 1;
        _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:shouldProcess, ignore a measurement, macAddress:%{public, location:escape_only}s, shouldProcessPerInvalidRssiFlag:%{public}hhd, shouldProcessPerOffChannelRssiFlag:%{public}hhd}", buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v13 = v8 + 16;
      v8 += 32;
    }

    while (v13 != var0);
  }

  v14 = *(&a2[2].var1.var0.var1 + 2);
  if (v14 != *a2[3].var0.data)
  {
    CLMicroLocationFingerprint::Measurement::fromBLEMeasurement(v14, buf);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement>();
  }

  v15 = a2[3].var1.var0.var1.var0;
  if (v15 != a2[3].var1.var0.var1.var1)
  {
    CLMicroLocationFingerprint::Measurement::fromUWBMeasurement(v15, buf);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement>();
  }

  if (!*(&v21 + 1) && *a2[5].var0.data == *&a2[5].var0.data[8])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationFingerprint::isFingerprintValid();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      CLMicroLocationProtobufHelper::convertToHumanReadableString(a2, v17);
    }
  }

  *(this + 40) = a2->var0;
  *(this + 192) = HIWORD(a2[1].var1.var0.var1.var0) == 2;
  if (this != a2)
  {
    std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(v19, *a2[5].var0.data, *&a2[5].var0.data[8], (*&a2[5].var0.data[8] - *a2[5].var0.data) >> 5);
  }

  CLMicroLocationFingerprint::UpdateFingerprintWithMeasurementsAndConfiguration(this, &v20, a3, a2[1].var1.var0.var0.var0[2], a2[1].var1.var0.var0.var0[3]);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v20);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_259179D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&a15);
  a23 = a12;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&a23);
  v26 = *a10;
  if (*a10)
  {
    *(v23 + 176) = v26;
    operator delete(v26);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v23 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v23);
  _Unwind_Resume(a1);
}

void ***std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(CLMicroLocationFingerprint::Measurement const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> const&>(void ***result, uint64_t a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  ***result = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v2) ^ ((0xC6A4A7935BD1E995 * v2) >> 47))) ^ ***result) + 3864292196u;
  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(CLMicroLocationFingerprint::Measurement const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> const&>(uint64_t ***a1, char *a2)
{
  v2 = **a1;
  v3 = *v2;
  result = boost::hash<std::string>::operator()(&v5, a2);
  *v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * result) ^ ((0xC6A4A7935BD1E995 * result) >> 47))) ^ v3) + 3864292196u;
  return result;
}

unint64_t boost::hash<std::string>::operator()(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  result = 0;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  for (; v2; --v2)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationUtils::DeviceIdVisitor<void> &>::operator()[abi:ne200100]<std::__variant_detail::__alt<0ul,unsigned long long> const&>(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationUtils::DeviceIdVisitor<void> &>::operator()[abi:ne200100]<std::__variant_detail::__alt<1ul,boost::uuids::uuid> const&>(uint64_t a1)
{
  v2 = *(*a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__variant_detail::__visitation::__variant::__value_visitor<CLMicroLocationUtils::DeviceIdVisitor<void> &>::operator()[abi:ne200100]<std::__variant_detail::__alt<2ul,std::string> const&>(uint64_t a1)
{
  v2 = *(*a1 + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t CLMicroLocationUtils::DeviceIdVisitor<void>::~DeviceIdVisitor(uint64_t a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 64);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](a1 + 32);

  return std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_123()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,char const(&)[8]>(uint64_t a1, std::string *this, char *__s)
{
  if (*(a1 + 24) == 2)
  {

    std::string::__assign_external(this, __s);
  }

  else
  {
    v9 = v3;
    v10 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v7, __s);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *&v7;
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = 2;
  }

  return result;
}

void std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*>(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<ULPhotoFeaturesDO>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ULPhotoFeaturesDO>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(&v20, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v15 - 24) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(&v19, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO const*,ULPhotoFeaturesDO*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      v4[3] = v6[3];
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement>(void *a1, uint64_t a2)
{
  v4 = CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(a1, a2);
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

  v4 = CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(v4, (v11 + 2), a2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25917A648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v57 = v10[1];
          v58 = *(a2 - 1);
          if (v57 > v58)
          {
            v59 = *(v10 + 1);
          }

          else
          {
            v59 = *(a2 - 1);
          }

          if (v57 > v58)
          {
            v57 = *(a2 - 1);
          }

          *(a2 - 1) = v57;
          *(v10 + 1) = v59;
          v60 = *(a2 - 1);
          if (v60 > *v10)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = *v10;
          }

          if (v60 > *v10)
          {
            v60 = *v10;
          }

          *(a2 - 1) = v60;
          v63 = *v10;
          v62 = v10[1];
          if (v61 <= v62)
          {
            v63 = v10[1];
            v62 = v61;
          }

          *v10 = v63;
          v10[1] = v62;
          return result;
        case 4:
          v87 = v10[1];
          v86 = v10[2];
          if (*v10 > v86)
          {
            v88 = *v10;
          }

          else
          {
            v88 = v10[2];
          }

          if (*v10 <= v86)
          {
            v86 = *v10;
          }

          v10[2] = v86;
          *v10 = v88;
          v89 = *(a2 - 1);
          if (v87 > v89)
          {
            v90 = v87;
          }

          else
          {
            v90 = *(a2 - 1);
          }

          if (v87 <= v89)
          {
            v89 = v87;
          }

          *(a2 - 1) = v89;
          v91 = *v10;
          if (*v10 > v90)
          {
            v92 = *v10;
          }

          else
          {
            v92 = v90;
          }

          if (*v10 > v90)
          {
            v91 = v90;
          }

          *v10 = v92;
          v10[1] = v91;
          v93 = v10[2];
          v94 = *(a2 - 1);
          if (v93 > v94)
          {
            v95 = v10[2];
          }

          else
          {
            v95 = *(a2 - 1);
          }

          if (v93 > v94)
          {
            v93 = *(a2 - 1);
          }

          *(a2 - 1) = v93;
          v96 = v10[1];
          if (v96 > v95)
          {
            v97 = v10[1];
          }

          else
          {
            v97 = v95;
          }

          if (v96 > v95)
          {
            v96 = v95;
          }

          v10[1] = v97;
          v10[2] = v96;
          return result;
        case 5:
          v64 = *v10;
          v65 = v10[1];
          if (*v10 > v65)
          {
            v66 = *v10;
          }

          else
          {
            v66 = v10[1];
          }

          if (*v10 > v65)
          {
            v64 = v10[1];
          }

          *v10 = v66;
          v10[1] = v64;
          v67 = v10[3];
          v68 = *(a2 - 1);
          if (v67 > v68)
          {
            v69 = *(v10 + 3);
          }

          else
          {
            v69 = *(a2 - 1);
          }

          if (v67 > v68)
          {
            v67 = *(a2 - 1);
          }

          *(a2 - 1) = v67;
          *(v10 + 3) = v69;
          v70 = *(a2 - 1);
          v71 = v10[2];
          if (v70 > v71)
          {
            v72 = *(a2 - 1);
          }

          else
          {
            v72 = v10[2];
          }

          if (v70 > v71)
          {
            v70 = v10[2];
          }

          *(a2 - 1) = v70;
          v74 = *(v10 + 2);
          v73 = v10[3];
          v75 = v10[1];
          if (v72 <= v73)
          {
            v74 = *(v10 + 3);
            v73 = v72;
          }

          *(v10 + 2) = v74;
          v10[3] = v73;
          v76 = *(a2 - 1);
          if (v75 > v76)
          {
            v77 = v75;
          }

          else
          {
            v77 = *(a2 - 1);
          }

          if (v75 <= v76)
          {
            v76 = v75;
          }

          *(a2 - 1) = v76;
          v78 = *v10;
          v80 = v10[2];
          v79 = v10[3];
          if (v79 > *v10)
          {
            v81 = v10[3];
          }

          else
          {
            v81 = *v10;
          }

          if (v79 > *v10)
          {
            v79 = *v10;
          }

          if (v81 <= v80)
          {
            v78 = v10[2];
            v80 = v81;
          }

          if (v79 > v77)
          {
            v82 = v79;
          }

          else
          {
            v82 = v77;
          }

          if (v79 > v77)
          {
            v79 = v77;
          }

          if (v82 <= v80)
          {
            v77 = v80;
          }

          *v10 = v78;
          v10[1] = v77;
          if (v82 > v80)
          {
            v83 = v80;
          }

          else
          {
            v83 = v82;
          }

          v10[2] = v83;
          v10[3] = v79;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v10;
        if (v84 > *v10)
        {
          *v10 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v10[v14];
      v53 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v53)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v54 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2, a6);
    if ((v55 & 1) == 0)
    {
      goto LABEL_93;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v10, v54);
    v10 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v54 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v54, a3, -v12, a5 & 1);
      v10 = v54 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v98 = v10 + 1;
  v100 = v10 == a2 || v98 == a2;
  if (a5)
  {
    if (!v100)
    {
      v101 = 0;
      v102 = v10;
      do
      {
        v104 = *v102;
        v103 = v102[1];
        v102 = v98;
        if (v103 > v104)
        {
          v105 = v101;
          while (1)
          {
            *(v10 + v105 + 4) = v104;
            if (!v105)
            {
              break;
            }

            v104 = *(v10 + v105 - 4);
            v105 -= 4;
            if (v103 <= v104)
            {
              v106 = (v10 + v105 + 4);
              goto LABEL_194;
            }
          }

          v106 = v10;
LABEL_194:
          *v106 = v103;
        }

        v98 = v102 + 1;
        v101 += 4;
      }

      while (v102 + 1 != a2);
    }
  }

  else if (!v100)
  {
    do
    {
      v108 = *v9;
      v107 = v9[1];
      v9 = v98;
      if (v107 > v108)
      {
        v109 = v98;
        do
        {
          *v109 = v108;
          v108 = *(v109 - 2);
          --v109;
        }

        while (v107 > v108);
        *v109 = v107;
      }

      ++v98;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_25921A970;
      v18 = xmmword_25921A960;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_25921A970;
    v27 = xmmword_25921A960;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, v11--);
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
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
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
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__find[abi:ne200100]<std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string> *,std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = a1; i != a2; i += 32)
  {
    v6 = *(i + 24);
    v7 = *(a3 + 24);
    if (v6 != -1 && v7 == v6)
    {
      v11 = &v10;
      if ((off_286A5C978[v6])(&v11, i, a3))
      {
        return i;
      }
    }

    else if (v7 == v6)
    {
      return i;
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType&&>,std::tuple<>>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0>,void ()(unsigned long long const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C9D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0>,void ()(unsigned long long const&)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v2 + 28) |= 1u;
  *(v2 + 8) = v3;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_0>,void ()(unsigned long long const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1>,void ()(boost::uuids::uuid const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CA68;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1>,void ()(boost::uuids::uuid const&)>::operator()(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 8);
  *(v2 + 28) |= 2u;
  v3 = *(v2 + 16);
  if (v3 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  if (*(v3 + 23) < 0)
  {
    v3[1] = 16;
    v3 = *v3;
  }

  else
  {
    *(v3 + 23) = 16;
  }

  result = *a2;
  *v3 = *a2;
  *(v3 + 16) = 0;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_1>,void ()(boost::uuids::uuid const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CAF8;
  a2[1] = v2;
  return result;
}

std::string *std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2>,void ()(std::string const&)>::operator()(uint64_t a1, std::string *__str)
{
  v2 = *(a1 + 8);
  *(v2 + 28) |= 2u;
  v3 = *(v2 + 16);
  if (v3 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  return std::string::operator=(v3, __str);
}

uint64_t std::__function::__func<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2,std::allocator<CLMicroLocationFingerprint::Measurement::toProtobufFingerprintMeasurement(CLMicroLocationFingerprint::Measurement const&)::$_2>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t CLMicroLocationUtils::DeviceIdVisitor<void>::DeviceIdVisitor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__function::__value_func<void ()(unsigned long long const&)>::__value_func[abi:ne200100](a1, a2);
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::__value_func[abi:ne200100](v7 + 32, a3);
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a1 + 64, a4);
  return a1;
}

void sub_25917BEBC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(boost::uuids::uuid const&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(unsigned long long const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(boost::uuids::uuid const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&,CLMicroLocationFingerprint::StartAndEndTimestamps>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_25917C33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__equal_range_multi<CLMicroLocationFingerprint::Measurement>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v3 = CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(v3, (v5 + 2), a2);
    }

    while ((v3 & 1) != 0);
  }

  return v4;
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(void *a1, uint64_t a2)
{
  v4 = CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        v4 = CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(v4, (v11 + 2), a2);
        if (v4)
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void CLMicroLocationFingerprintDataSources::IInterruptibleDataSource::CancelledException::~CancelledException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x259CA1F90);
}

float CLMicroLocationFingerprintDistanceFunction::euclideanLike(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = &unk_286A5CBC8;
  v15 = xmmword_259221610;
  __asm { FMOV            V0.4S, #1.0 }

  v13 = _Q0;
  v12 = &unk_286A5CC18;
  LODWORD(v9) = CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(a1, a2, a3, &v14, &v12, a4);
  if (v10)
  {
    return sqrtf(v9 / v10);
  }

  else
  {
    return INFINITY;
  }
}

float CLMicroLocationFingerprintDistanceFunction::jaccardLike(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a3;
  if (v9 == 1)
  {
    v10 = (~*(a1 + 56) & ~*(a2 + 56) & v8);
  }

  v20 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v11 + 2));
      if (v13)
      {
        v12 += CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v20, a4, (v11 + 2), v13[2]);
      }

      v11 = *v11;
    }

    while (v11);
    v8 = *a3;
    if (a3[1])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
LABEL_9:
      v14 = *(a2 + 56);
      v15 = ~*(a1 + 56) & ~v14;
      v8 = (~*(a1 + 56) & ~v14 & v8);
    }
  }

  v20 = v8;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 0;
    do
    {
      v17 += CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v20, a4, (v16 + 2), *(a2 + 144));
      v16 = *v16;
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  for (i = *(a2 + 16); i; i = *i)
  {
    v17 += CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v20, a4, (i + 2), *(a1 + 144));
  }

  if (v17 == v12)
  {
    return INFINITY;
  }

  else
  {
    return (v17 - v12 - v12) / (v17 - v12);
  }
}

void CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17)
{
  v23 = *&a10;
  CLMicroLocationFingerprintDistanceFunction::photoFeaturesDistance(a1, a2, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  if (v26 == INFINITY)
  {
    if (*(a1 + 24) | *(a2 + 24))
    {
      v27 = CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(a1, a2, a8, a3, a4, a17);
      if (v29)
      {
        v30 = HIDWORD(v27);
        v31 = *a8;
        if (*(a8 + 8) == 1)
        {
          v32 = *(a2 + 56);
          v33 = ~*(a1 + 56) & ~v32;
          v31 = (~*(a1 + 56) & ~v32 & v31);
        }

        v53 = v31;
        v34 = *(a1 + 16);
        if (v34)
        {
          v35 = 0.0;
          v36 = 0.0;
          do
          {
            if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v53, a17, (v34 + 2), *(a2 + 144)))
            {
              v37 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v34 + 2));
              v38 = *(v34 + 6);
              if (v37)
              {
                v36 = v36 + (*(*a5 + 16))(a5, v38);
              }

              else
              {
                v35 = v35 + (*(*a6 + 16))(a6, v38);
              }
            }

            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          v36 = 0.0;
          v35 = 0.0;
        }

        for (i = *(a2 + 16); i; i = *i)
        {
          if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v53, a17, (i + 2), *(a1 + 144)) && !std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a1, (i + 2)) && ((*(*a7 + 16))(a7, *(i + 6)) & 1) == 0)
          {
            v35 = v35 + (*(*a6 + 16))(a6, *(i + 6));
          }
        }

        if (*&v30 == 0.0 || (v36 + v35) == 0.0)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance();
          }

          v40 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            *v52 = 0;
            _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_ERROR, "euclidean denominator or jaccardDenominator are 0, this can only happen if weights are 0, check configuration!", v52, 2u);
          }
        }

        else if (v23 <= 0.0 || v23 > 1.0)
        {
          v28.n128_f32[0] = v36 + v35;
          v41 = CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance(v28);
          CLMicroLocationFingerprintDistanceFunction::photoFeaturesDistance(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        }
      }
    }
  }
}

void CLMicroLocationFingerprintDistanceFunction::photoFeaturesDistance(void *a1, void *a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *a3;
  if (*(a3 + 8) == 1)
  {
    v13 &= (a1[7] ^ 0xFFLL) & ~a2[7];
  }

  if ((v13 & 0x80) != 0)
  {
    v14 = a1[25];
    v15 = a1[26] - v14;
    if (v15)
    {
      if (v15 == a2[26] - a2[25])
      {
        v16 = 0;
        v17 = 0;
        v18 = 0.0;
        do
        {
          LODWORD(a5) = 1.0;
          CLMicroLocationFingerprintDistanceFunction::computeWeightedSumSquaredDifference((v14 + v16), a2[25] + v16, 0.5, a5, a6, a7, a8, a9, a10, a11, v20, v21);
          v18 = v18 + v19;
          ++v17;
          v14 = a1[25];
          v16 += 32;
        }

        while (v17 < (a1[26] - v14) >> 5);
      }
    }
  }
}

id CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a3;
  if (*(a3 + 8) == 1)
  {
    v11 = *(a2 + 56);
    v12 = ~*(a1 + 56) & ~v11;
    v10 = (~*(a1 + 56) & ~v11 & v10);
  }

  v24 = v10;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0.0;
  v16 = 0.0;
  while (1)
  {
    v17 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v13 + 2));
    if (!v17)
    {
      goto LABEL_9;
    }

    v18 = v17;
    if (!CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v24, a6, (v13 + 2), v17[2]))
    {
      goto LABEL_9;
    }

    v19 = (*(*a5 + 16))(a5, *(v13 + 6));
    v20 = (*(*a4 + 16))(a4, *(v13 + 6));
    if (*(v13 + 6) != *(v18 + 6))
    {
      break;
    }

    v22 = *(v13 + 7) - *(v18 + 7);
    v16 = v16 + (((v21 * v22) * (v21 * v22)) * v19);
    ++v14;
    v15 = v15 + v19;
LABEL_9:
    v13 = *v13;
    if (!v13)
    {
      return (LODWORD(v16) | (LODWORD(v15) << 32));
    }
  }

  CLMicroLocationFingerprintDistanceFunction::computeWeightedEuclideanComponentsAndNumItersect(v20);
  return _CLLogObjectForCategory_MicroLocation_Default();
}

float CLMicroLocationFingerprintDistanceFunction::removeNonIndicativeAPsDistance(void *a1, void *a2, unint64_t a3, float a4, float a5, float a6, float a7)
{
  v14 = a1[2];
  if (v14)
  {
    while ((*(v14 + 6) | 4) == 5 || !std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v14 + 2)))
    {
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (a1[26] == a1[25] || a2[26] == a2[25])
    {
      v15 = a1[2];
      if (v15)
      {
        v16 = 0;
        v17 = -INFINITY;
        do
        {
          if ((*(v15 + 6) | 4) == 5)
          {
            v18 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (v15 + 4));
            if (v18)
            {
              ++v16;
              v19 = v18[7];
              if (v19 >= v15[7])
              {
                v19 = v15[7];
              }

              if (v19 > v17)
              {
                v17 = v19;
              }
            }
          }

          v15 = *v15;
        }

        while (v15);
        v20 = v16;
      }

      else
      {
        v20 = 0;
        v17 = -INFINITY;
      }

      if (v17 > a4 && v20 >= a3 && (a5 * a7) < a6)
      {
        return a5 * a7;
      }

      else
      {
        return INFINITY;
      }
    }
  }

  return a7;
}

void CLMicroLocationFingerprintDistanceFunction::computeWeightedSumSquaredDifference(float **a1, uint64_t a2, float a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = *a2;
  if (v11 - *a1 == *(a2 + 8) - *a2)
  {
    if (v12 != v11)
    {
      v14 = 0.0;
      do
      {
        v15 = *v12++;
        v16 = v15;
        v17 = *v13++;
        v14 = v14 + (((v16 - v17) * a3) * ((v16 - v17) * a3));
      }

      while (v12 != v11);
    }
  }

  else
  {
    v18 = CLMicroLocationFingerprintDistanceFunction::computeWeightedSumSquaredDifference();
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D(v18, v19, v20, v21, v22, v23, v24, v25, a11, a12);
  }
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if ((a9 - a1) * (a5 - a2) - (a4 - a1) * (a10 - a2) == 0.0)
  {
    SlopeAndInterceptFromCoordinates3D = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D();
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(SlopeAndInterceptFromCoordinates3D);
  }
}

uint64_t CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if (a5 - a3 == 0.0)
  {
    SlopeAndInterceptFromCoordinates2D = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(result, a2);
    return CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(SlopeAndInterceptFromCoordinates2D);
  }

  return result;
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v59 = v5;
  switch(a2)
  {
    case 1:
      v6 = @"wifi";
LABEL_7:
      v60 = [v5 objectForKeyedSubscript:@"distribution_params"];
      v61 = [v60 objectForKeyedSubscript:@"probability_density_working_points"];
      v7 = [v61 objectForKey:v6];
      v62 = v7;
      v8 = [v7 objectForKeyedSubscript:@"seen_in_both"];
      v9 = v8;
      v10 = 2.5;
      v11 = -32.5;
      v65 = -92.5;
      v12 = 62.5;
      if (a2 != 1 && a2 != 5)
      {
        v10 = 0.5;
        v12 = 12.5;
        v65 = 12.5;
        v11 = 0.5;
      }

      v64 = [v8 objectForKeyedSubscript:{@"(max_meas_intensity_bin, min_abs_diff_bin)_sigma"}];
      v63 = [v9 objectForKeyedSubscript:{@"(max_meas_intensity_bin, min_abs_diff_bin)_mu"}];
      v13 = [v9 objectForKeyedSubscript:{@"(min_meas_intensity_bin, min_abs_diff_bin)_sigma"}];
      v14 = [v9 objectForKeyedSubscript:{@"(max_meas_intensity_bin, max_abs_diff_bin)_sigma"}];
      v15 = [v9 objectForKeyedSubscript:{@"(max_meas_intensity_bin, max_abs_diff_bin)_mu"}];
      [v64 doubleValue];
      v17 = v16;
      [v13 doubleValue];
      v19 = v18;
      [v14 doubleValue];
      [v63 doubleValue];
      v21 = v20;
      [v15 doubleValue];
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates3D(v11, v10, v17, v65, v10, v19, v22, v23, v11, v12);
      v57 = v25;
      v58 = v24;
      v56 = v26;
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(v27, v28, v10, v21, v12);
      v30 = v29;
      v32 = v31;
      v33 = [v7 objectForKeyedSubscript:@"seen_in_one"];
      v34 = [v33 objectForKeyedSubscript:@"(min_meas)_mu"];
      v35 = [v33 objectForKeyedSubscript:@"(min_meas)_sigma"];
      v36 = [v33 objectForKeyedSubscript:@"(max_meas)_mu"];
      v37 = [v33 objectForKeyedSubscript:@"(max_meas)_sigma"];
      [v35 doubleValue];
      v39 = v38;
      [v37 doubleValue];
      [v34 doubleValue];
      v41 = v40;
      v42 = [v36 doubleValue];
      SlopeAndInterceptFromCoordinates2D = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(v42, v43, v65, v39, v11);
      v46 = v45;
      v48 = v47;
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getSlopeAndInterceptFromCoordinates2D(SlopeAndInterceptFromCoordinates2D, v49, v65, v41, v11);
      *a3 = v58;
      a3[1] = v57;
      a3[2] = v56;
      a3[3] = v30;
      a3[4] = v32;
      a3[5] = v46;
      a3[6] = v48;
      a3[7] = v50;
      a3[8] = v51;

      v52 = *MEMORY[0x277D85DE8];

      return;
    case 6:
      v6 = @"uwb";
      goto LABEL_7;
    case 5:
      v6 = @"ble";
      goto LABEL_7;
  }

  v53 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v67 = 2082;
    v68 = "";
    v69 = 1026;
    v70 = a2;
    v71 = 2082;
    v72 = "assert";
    v73 = 2081;
    v74 = "false";
    _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported tech type, techType:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v54 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v54))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v67 = 2082;
    v68 = "";
    v69 = 1026;
    v70 = a2;
    v71 = 2082;
    v72 = "assert";
    v73 = 2081;
    v74 = "false";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported tech type", "{msg%{public}.0s:Unsupported tech type, techType:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v55 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v67 = 2082;
    v68 = "";
    v69 = 1026;
    v70 = a2;
    v71 = 2082;
    v72 = "assert";
    v73 = 2081;
    v74 = "false";
    _os_log_impl(&dword_258FE9000, v55, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported tech type, techType:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  abort_report_np();
  __break(1u);
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParametricModelFromConfiguration(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *this@<X0>, uint64_t a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = this;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(v10, 1, &v21);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(v10, 5, &v16);
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParamsForTechType(v10, 6, &v11);
  v4 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v4;
  v5 = v22;
  *a2 = v21;
  *(a2 + 16) = v5;
  v6 = v16;
  *(a2 + 88) = v17;
  v7 = v19;
  *(a2 + 104) = v18;
  *(a2 + 64) = v25;
  *(a2 + 120) = v7;
  *(a2 + 136) = v20;
  *(a2 + 72) = v6;
  *(a2 + 208) = v15;
  v8 = v14;
  *(a2 + 176) = v13;
  *(a2 + 192) = v8;
  v9 = v12;
  *(a2 + 144) = v11;
  *(a2 + 160) = v9;
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionFunctionSettings(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *this@<X0>, uint64_t a2@<X8>)
{
  v121 = *MEMORY[0x277D85DE8];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
  v75 = this;
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionParametricModelFromConfiguration(v75, &v91);
  v74 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"distribution_params.xAxis.min_value"];
  v4 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"distribution_params.xAxis.max_value"];
  v5 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"distribution_params.xAxis.n_bins"];
  v6 = v5;
  if (!v74)
  {
    v48 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMinValue";
      _os_log_impl(&dword_258FE9000, v48, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v49))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMinValue";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMinValue";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMinValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_33;
  }

  if (!v4)
  {
    v51 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMaxValue";
      _os_log_impl(&dword_258FE9000, v51, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v52 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v52))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMaxValue";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v52, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisMaxValue";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisMaxValue in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_33;
  }

  if (!v5)
  {
    v53 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisNBins";
      _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v54 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v54))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisNBins";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v50 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "xAxisNBins";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for xAxisNBins in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_33:

    abort_report_np();
    goto LABEL_77;
  }

  [v74 doubleValue];
  v8 = v7;
  [v4 doubleValue];
  v10 = v9;
  [v6 doubleValue];
  v12 = v11;
  v13 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 objectForKeyedSubscript:@"binning_params"];
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v14 = [v13 objectForKeyedSubscript:@"wifi"];
  CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(v14, &v86);

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v15 = [v13 objectForKeyedSubscript:@"ble"];
  CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(v15, &v81);

  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = [v13 objectForKeyedSubscript:@"uwb"];
  CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(v16, &v76);

  *&buf[32] = v88;
  v114 = v89;
  *buf = v86;
  *&buf[16] = v87;
  *&v115[24] = v82;
  *&v115[40] = v83;
  *&v115[56] = v84;
  *v115 = v90;
  *&v115[72] = v85;
  *&v115[8] = v81;
  v120 = v80;
  v118 = v78;
  v119 = v79;
  v116 = v76;
  v117 = v77;
  v17 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"inference_params.fusion_weights.wifi.seen_in_both"];
  v18 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"inference_params.fusion_weights.wifi.seen_in_one"];
  v19 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"inference_params.fusion_weights.ble.seen_in_both"];
  v20 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"inference_params.fusion_weights.ble.seen_in_one"];
  v21 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"inference_params.fusion_weights.uwb.seen_in_both"];
  v22 = [(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils *)v75 valueForKeyPath:@"inference_params.fusion_weights.uwb.seen_in_one"];
  v23 = v22;
  if (!v17)
  {
    v55 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "wifiSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v56 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v56))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "wifiSeenInBothWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v57 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "wifiSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v57, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v58 = v57;
    goto LABEL_76;
  }

  if (!v18)
  {
    v59 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "wifiSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v59, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v60 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v60))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "wifiSeenInOneWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v60, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v61 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "wifiSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v61, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for wifiSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v58 = v61;
    goto LABEL_76;
  }

  if (!v19)
  {
    v62 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "bleSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v62, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v63 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v63))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "bleSeenInBothWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v64 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "bleSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v64, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v58 = v64;
    goto LABEL_76;
  }

  if (!v20)
  {
    v65 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "bleSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v65, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v66 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v66))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "bleSeenInOneWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v67 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "bleSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v67, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for bleSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v58 = v67;
    goto LABEL_76;
  }

  if (!v21)
  {
    v68 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "uwbSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v68, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v69 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v69))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "uwbSeenInBothWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v69, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v70 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "uwbSeenInBothWeight";
      _os_log_impl(&dword_258FE9000, v70, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInBothWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v58 = v70;
    goto LABEL_76;
  }

  if (!v22)
  {
    v71 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "uwbSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v71, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v72 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v72))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "uwbSeenInOneWeight";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v72, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v73 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *v105 = 68289539;
      v106 = 0;
      v107 = 2082;
      v108 = "";
      v109 = 2082;
      v110 = "assert";
      v111 = 2081;
      v112 = "uwbSeenInOneWeight";
      _os_log_impl(&dword_258FE9000, v73, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for uwbSeenInOneWeight in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v105, 0x26u);
    }

    v58 = v73;
LABEL_76:

    abort_report_np();
LABEL_77:
    __break(1u);
  }

  [v17 doubleValue];
  v25 = v24;
  [v18 doubleValue];
  v27 = v26;
  [v19 doubleValue];
  v29 = v28;
  [v20 doubleValue];
  v31 = v30;
  [v21 doubleValue];
  v33 = v32;
  [v23 doubleValue];
  v34 = v102;
  *(a2 + 160) = v101;
  *(a2 + 176) = v34;
  *(a2 + 192) = v103;
  *(a2 + 208) = v104;
  v35 = v98;
  *(a2 + 96) = v97;
  *(a2 + 112) = v35;
  v36 = v100;
  *(a2 + 128) = v99;
  *(a2 + 144) = v36;
  v37 = v94;
  *(a2 + 32) = v93;
  *(a2 + 48) = v37;
  v38 = v96;
  *(a2 + 64) = v95;
  *(a2 + 80) = v38;
  v39 = v92;
  *a2 = v91;
  *(a2 + 16) = v39;
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  v40 = v118;
  *(a2 + 400) = v117;
  *(a2 + 416) = v40;
  *(a2 + 432) = v119;
  *(a2 + 448) = v120;
  v41 = *&v115[48];
  *(a2 + 336) = *&v115[32];
  *(a2 + 352) = v41;
  v42 = v116;
  *(a2 + 368) = *&v115[64];
  *(a2 + 384) = v42;
  v43 = v114;
  *(a2 + 272) = *&buf[32];
  *(a2 + 288) = v43;
  v44 = *&v115[16];
  *(a2 + 304) = *v115;
  *(a2 + 320) = v44;
  v45 = *&buf[16];
  *(a2 + 240) = *buf;
  *(a2 + 256) = v45;
  *(a2 + 456) = v25;
  *(a2 + 464) = v27;
  *(a2 + 472) = v29;
  *(a2 + 480) = v31;
  *(a2 + 488) = v33;
  *(a2 + 496) = v46;

  v47 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationFingerprintDistanceFunction::parseBinningParamsForTechType(CLMicroLocationFingerprintDistanceFunction *this@<X0>, void *a2@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v68 = this;
  v4 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_both"];
  v5 = [v4 objectForKeyedSubscript:@"meas_intensity_dim"];
  v66 = [v5 objectForKeyedSubscript:@"min"];

  v6 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_both"];
  v7 = [v6 objectForKeyedSubscript:@"meas_intensity_dim"];
  v67 = [v7 objectForKeyedSubscript:@"max"];

  v8 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_both"];
  v9 = [v8 objectForKeyedSubscript:@"meas_intensity_dim"];
  v10 = [v9 objectForKeyedSubscript:@"bin_width"];

  v11 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_both"];
  v12 = [v11 objectForKeyedSubscript:@"abs_diff_dim"];
  v13 = [v12 objectForKeyedSubscript:@"min"];

  v14 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_both"];
  v15 = [v14 objectForKeyedSubscript:@"abs_diff_dim"];
  v16 = [v15 objectForKeyedSubscript:@"max"];

  v17 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_both"];
  v18 = [v17 objectForKeyedSubscript:@"abs_diff_dim"];
  v19 = [v18 objectForKeyedSubscript:@"bin_width"];

  v20 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_one"];
  v21 = [v20 objectForKeyedSubscript:@"meas_dim"];
  v22 = [v21 objectForKeyedSubscript:@"min"];

  v23 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_one"];
  v24 = [v23 objectForKeyedSubscript:@"meas_dim"];
  v25 = [v24 objectForKeyedSubscript:@"max"];

  v26 = [(CLMicroLocationFingerprintDistanceFunction *)v68 objectForKeyedSubscript:@"seen_in_one"];
  v27 = [v26 objectForKeyedSubscript:@"meas_dim"];
  v28 = [v27 objectForKeyedSubscript:@"bin_width"];

  if (!v66)
  {
    v47 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningMin";
      _os_log_impl(&dword_258FE9000, v47, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v48 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v48))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningMin";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningMin";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_75:

    abort_report_np();
    __break(1u);
  }

  if (!v67)
  {
    v50 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningMax";
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v51 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v51))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningMax";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v51, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningMax";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v10)
  {
    v52 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v53 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v53))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningBinWidth";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measIntensityBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measIntensityBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v13)
  {
    v54 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningMin";
      _os_log_impl(&dword_258FE9000, v54, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v55 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v55))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningMin";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningMin";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v16)
  {
    v56 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningMax";
      _os_log_impl(&dword_258FE9000, v56, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v57 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v57))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningMax";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningMax";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v19)
  {
    v58 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v58, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v59 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v59))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningBinWidth";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "absDiffBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for absDiffBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v22)
  {
    v60 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningMin";
      _os_log_impl(&dword_258FE9000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v61 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v61))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningMin";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningMin";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMin in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v25)
  {
    v62 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningMax";
      _os_log_impl(&dword_258FE9000, v62, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v63 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v63))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningMax";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningMax";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningMax in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  if (!v28)
  {
    v64 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v64, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v65 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v65))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningBinWidth";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v65, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary", "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v49 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v70 = 0;
      v71 = 2082;
      v72 = "";
      v73 = 2082;
      v74 = "assert";
      v75 = 2081;
      v76 = "measBinningBinWidth";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[MaxLikelihoodDistanceFunction Dictionary Parsing] Missing value for measBinningBinWidth in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_75;
  }

  [v22 doubleValue];
  v30 = v29;
  [v25 doubleValue];
  v32 = v31;
  [v28 doubleValue];
  v34 = v33;
  [v66 doubleValue];
  v36 = v35;
  [v67 doubleValue];
  v38 = v37;
  [v10 doubleValue];
  v40 = v39;
  [v13 doubleValue];
  v42 = v41;
  [v16 doubleValue];
  v44 = v43;
  [v19 doubleValue];
  *a2 = v36;
  a2[1] = v38;
  a2[2] = v40;
  a2[3] = v42;
  a2[4] = v44;
  a2[5] = v45;
  a2[6] = v30;
  a2[7] = v32;
  a2[8] = v34;

  v46 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeGaussianLogProbabilityOnGrid(double **a1@<X0>, const void **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(&v25, a3, a4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = v26;
      v27 = v26;
      v9 = *&v26 <= -1 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
      if (v9 && (*&v26 - 1) >= 0xFFFFFFFFFFFFFLL)
      {
        boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Scale parameter is %1%, but must be > 0 !", &v27);
      }

      v27 = v25;
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Location parameter is %1%, but must be finite!", &v27);
      }

      v22 = *v6;
      v23 = 0.0;
      if (fabs(*v6) != INFINITY)
      {
        v27 = *v6;
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Random variate x is %1%, but must be finite!", &v27);
        }

        v23 = exp(-((v22 - v25) * (v22 - v25)) / (v26 * (v26 + v26))) / (v8 * 2.50662827);
      }

      if (v23 >= 0.00000001)
      {
        v11 = v23;
      }

      else
      {
        v11 = 0.00000001;
      }

      v12 = log(v11);
      v14 = a2[1];
      v13 = a2[2];
      if (v14 >= v13)
      {
        v16 = *a2;
        v17 = v14 - *a2;
        v18 = v17 >> 3;
        v19 = (v17 >> 3) + 1;
        if (v19 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v20 = v13 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v9 = v20 >= 0x7FFFFFFFFFFFFFF8;
        v21 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v9)
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v21);
        }

        *(8 * v18) = v12;
        v15 = 8 * v18 + 8;
        memcpy(0, v16, v17);
        v24 = *a2;
        *a2 = 0;
        a2[1] = v15;
        a2[2] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v14 = v12;
        v15 = (v14 + 1);
      }

      a2[1] = v15;
      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_259180324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeDistanceDistributionForFpPair(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a4;
  v11 = 0;
  v124 = *MEMORY[0x277D85DE8];
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v12 = a3[29];
  if (v12 > 0.0)
  {
    v13 = 0;
    v14 = a3[27];
    v15 = (a3[28] - v14) / v12;
    v16 = 0.0;
    v17 = 1;
    do
    {
      v18 = v14 + v15 * v16;
      if (v13 >= v119)
      {
        v19 = v117;
        v20 = v13 - v117;
        v21 = v13 - v117;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v23 = v119 - v117;
        if ((v119 - v117) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v117, v24);
        }

        v25 = v13 - v117;
        v26 = (8 * v21);
        v27 = (8 * v21 - 8 * v25);
        *v26 = v18;
        v13 = v26 + 1;
        memcpy(v27, v19, v20);
        v28 = v117;
        v117 = v27;
        v118 = v13;
        v119 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v13++ = v18;
      }

      v118 = v13;
      v16 = v17++;
    }

    while (v12 > v16);
    v11 = v13 - v117;
    v7 = a4;
  }

  *v120 = 1.0 / v11;
  std::vector<double>::vector[abi:ne200100](&v115, v11);
  *v120 = 0.0;
  std::vector<double>::vector[abi:ne200100](&__p, v118 - v117);
  v29 = *v7;
  if (*(v7 + 8) == 1)
  {
    v30 = *(a2 + 56);
    v31 = ~*(a1 + 56) & ~v30;
    v29 = (~*(a1 + 56) & ~v30 & v29);
  }

  v112 = v29;
  for (i = *(a1 + 16); i; i = *i)
  {
    v33 = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a2, (i + 2));
    if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v112, a5, (i + 2), *(a2 + 144)))
    {
      if (v33)
      {
        v34 = *(i + 7);
        v35 = v33[7];
        v36 = *(i + 6);
        if (v36 == 6)
        {
          v37 = v35 < v34;
          v39 = a3 + 49;
          v38 = a3 + 48;
          v41 = a3 + 51;
          v40 = a3 + 50;
          v43 = a3 + 53;
          v42 = a3 + 52;
        }

        else if (v36 == 5)
        {
          v37 = v34 < v35;
          v39 = a3 + 40;
          v38 = a3 + 39;
          v41 = a3 + 42;
          v40 = a3 + 41;
          v43 = a3 + 44;
          v42 = a3 + 43;
        }

        else
        {
          if (v36 != 1)
          {
            v87 = _CLLogObjectForCategory_MicroLocation_Default();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
            {
              *v120 = 68289539;
              *v121 = 2082;
              *&v121[2] = "";
              *&v121[10] = 2082;
              *&v121[12] = "assert";
              v122 = 2081;
              v123 = "false";
              _os_log_impl(&dword_258FE9000, v87, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got unsupported tech type while running binMeasurementsSeenInBoth, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v120, 0x26u);
            }

            v88 = _CLLogObjectForCategory_MicroLocation_Default();
            if (os_signpost_enabled(v88))
            {
              *v120 = 68289539;
              *v121 = 2082;
              *&v121[2] = "";
              *&v121[10] = 2082;
              *&v121[12] = "assert";
              v122 = 2081;
              v123 = "false";
              _os_signpost_emit_with_name_impl(&dword_258FE9000, v88, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got unsupported tech type while running binMeasurementsSeenInBoth", "{msg%{public}.0s:Got unsupported tech type while running binMeasurementsSeenInBoth, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v120, 0x26u);
            }

            v89 = _CLLogObjectForCategory_MicroLocation_Default();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
            {
              *v120 = 68289539;
              *v121 = 2082;
              *&v121[2] = "";
              *&v121[10] = 2082;
              *&v121[12] = "assert";
              v122 = 2081;
              v123 = "false";
              _os_log_impl(&dword_258FE9000, v89, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got unsupported tech type while running binMeasurementsSeenInBoth, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v120, 0x26u);
            }

            abort_report_np();
            __break(1u);
          }

          v37 = v34 < v35;
          v39 = a3 + 31;
          v38 = a3 + 30;
          v41 = a3 + 33;
          v40 = a3 + 32;
          v42 = a3 + 34;
          v43 = a3 + 35;
        }

        v46 = v34;
        v47 = v35;
        v48 = *v42;
        v49 = *v41;
        v50 = *v40;
        v51 = *v39;
        v52 = *v38;
        v53 = vabdd_f64(v46, v47);
        if (v37)
        {
          v46 = v47;
        }

        v54 = v48 + -0.00001;
        if (v48 + -0.00001 >= v53)
        {
          v54 = v53;
        }

        if (v54 < v49 + 0.00001)
        {
          v54 = v49 + 0.00001;
        }

        if (v51 + -0.00001 < v46)
        {
          v46 = v51 + -0.00001;
        }

        if (v46 < v52 + 0.00001)
        {
          v46 = v52 + 0.00001;
        }

        if (v36 == 1)
        {
          v55 = 1;
          v56 = 2;
          v57 = 3;
          v58 = 4;
          v59 = 57;
          v60 = a3;
        }

        else if (v36 == 6)
        {
          v55 = 19;
          v56 = 20;
          v57 = 21;
          v58 = 22;
          v59 = 61;
          v60 = a3 + 18;
        }

        else
        {
          v55 = 10;
          v56 = 11;
          v57 = 12;
          v58 = 13;
          v59 = 59;
          v60 = a3 + 9;
        }

        v61 = *v43 * 0.5 + v49 + floor((v54 - v49 + -0.000005) / *v43) * *v43;
        v62 = a3[v59];
        CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeGaussianLogProbabilityOnGrid(&v117, buf, a3[v58] + a3[v57] * v61, a3[v56] + v61 * a3[v55] + *v60 * (v50 * 0.5 + v52 + floor((v46 - v52 + -0.000005) / v50) * v50));
        v63 = *buf;
        v64 = v111;
        while (v63 != v64)
        {
          *v63 = v62 * *v63;
          ++v63;
        }

        if (__p)
        {
          *&v114 = __p;
          operator delete(__p);
        }

        v44 = *buf;
        __p = *buf;
        v45 = v111;
      }

      else
      {
        CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(*(i + 6), a3, &v117, v120, *(i + 7));
        if (__p)
        {
          *&v114 = __p;
          operator delete(__p);
        }

        v44 = *v120;
        __p = *v120;
        v45 = *v121;
      }

      v114 = v45;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v107, v44, v45, (v45 - v44) >> 3);
      v65 = v115;
      v66 = v116;
      v67 = v107;
      if (v115 != v116)
      {
        v68 = v107;
        do
        {
          v69 = *v68++;
          *v65 = *v65 + v69;
          ++v65;
        }

        while (v65 != v66);
      }

      if (v67)
      {
        v108 = v67;
        operator delete(v67);
      }
    }
  }

  for (j = *(a2 + 16); j; j = *j)
  {
    if (CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(&v112, a5, (j + 2), *(a1 + 144)) && !std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::find<CLMicroLocationFingerprint::Measurement>(a1, (j + 2)))
    {
      CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(*(j + 6), a3, &v117, v120, *(j + 7));
      if (__p)
      {
        *&v114 = __p;
        operator delete(__p);
      }

      __p = *v120;
      v114 = *v121;
      v105 = 0;
      v106 = 0;
      v104 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v104, *v120, *v121, (*v121 - *v120) >> 3);
      v71 = v115;
      v72 = v116;
      v73 = v104;
      if (v115 != v116)
      {
        v74 = v104;
        do
        {
          v75 = *v74++;
          *v71 = *v71 + v75;
          ++v71;
        }

        while (v71 != v72);
      }

      if (v73)
      {
        v105 = v73;
        operator delete(v73);
      }
    }
  }

  v76 = v115;
  v77 = v116;
  if (v115 == v116)
  {
    goto LABEL_75;
  }

  v78 = v115;
  do
  {
    *v78 = exp(*v78);
    ++v78;
  }

  while (v78 != v77);
  v79 = 0.0;
  v80 = v76;
  do
  {
    v81 = *v80++;
    v79 = v79 + v81;
  }

  while (v80 != v77);
  if (v79 == 0.0)
  {
LABEL_75:
    *buf = 1.0 / (v118 - v117);
    std::vector<double>::vector[abi:ne200100](v120, v118 - v117);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeDistanceDistributionForFpPair();
    }

    v82 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v82, OS_LOG_TYPE_ERROR, "Got runningWeightedLogProbability vector norm = 0, Something went wrong, returning uniform distribution", buf, 2u);
    }

    v101 = 0;
    v102 = 0;
    v103 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v101, *v120, *v121, (*v121 - *v120) >> 3);
    v98 = 0;
    v99 = 0;
    v100 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v98, v117, v118, v118 - v117);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::FiniteDiscreteProbabilityDensity(a6, &v101, &v98);
    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    v83 = *v120;
    if (*v120 != 0.0)
    {
      *v121 = *v120;
LABEL_91:
      operator delete(v83);
    }
  }

  else
  {
    v84 = v76;
    v85 = 1.0 / v79;
    do
    {
      *v84 = v85 * *v84;
      ++v84;
    }

    while (v84 != v77);
    v95 = 0;
    v96 = 0;
    v97 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v95, v76, v77, (v77 - v76) >> 3);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v92, v117, v118, v118 - v117);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::FiniteDiscreteProbabilityDensity(a6, &v95, &v92);
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    v83 = v95;
    if (v95)
    {
      v96 = v95;
      goto LABEL_91;
    }
  }

  if (__p)
  {
    *&v114 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_259180ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a54)
  {
    operator delete(a54);
  }

  v57 = *(v55 - 240);
  if (v57)
  {
    *(v55 - 232) = v57;
    operator delete(v57);
  }

  v58 = *(v55 - 216);
  if (v58)
  {
    *(v55 - 208) = v58;
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

BOOL CLMicroLocationFingerprintDistanceFunction::shouldAccountMeasurements(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a4;
  v4 = *(a3 + 8);
  if (v4 >= 8)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  return ((*a1 >> v4) & 1) != 0 && (*(a2 + 56) != 1 || (CLMicroLocationAnchorAppearanceMap::isAnchorValid(a2, a3, &v6) & 1) != 0);
}

void CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(int a1@<W0>, uint64_t a2@<X1>, double **a3@<X2>, __int128 *a4@<X8>, double a5@<D0>)
{
  switch(a1)
  {
    case 1:
      v6 = 304;
      v7 = 296;
      v8 = 288;
      break;
    case 6:
      v6 = 448;
      v7 = 440;
      v8 = 432;
      break;
    case 5:
      v6 = 376;
      v7 = 368;
      v8 = 360;
      break;
    default:
      v25 = CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas();
      v26 = CLMicroLocationFingerprintDistanceFunction::computeGaussianLogProbabilityOnGridForSingleMeas(v25);
      CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX(v26, v27);
      return;
  }

  v9 = *(a2 + v6);
  v10 = *(a2 + v8);
  if (*(a2 + v7) + -0.00001 < a5)
  {
    a5 = *(a2 + v7) + -0.00001;
  }

  if (a5 < v10 + 0.00001)
  {
    a5 = v10 + 0.00001;
  }

  if (a1 == 1)
  {
    v11 = 464;
    v12 = 64;
    v13 = 56;
    v14 = 48;
    v15 = 40;
  }

  else if (a1 == 6)
  {
    v11 = 496;
    v12 = 208;
    v13 = 200;
    v14 = 192;
    v15 = 184;
  }

  else
  {
    v11 = 480;
    v12 = 136;
    v13 = 128;
    v14 = 120;
    v15 = 112;
  }

  v16 = v9 * 0.5 + v10 + floor((a5 - v10 + -0.000005) / v9) * v9;
  v17 = *(a2 + v11);
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeGaussianLogProbabilityOnGrid(a3, a4, *(a2 + v12) + *(a2 + v13) * v16, *(a2 + v14) + *(a2 + v15) * v16);
  v18 = *a4;
  v19 = *(a4 + 1);
  v20 = *a4;
  if (v19 != *a4)
  {
    v21 = 0;
    v22 = (v19 - *a4) >> 3;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    v23 = *v20;
    do
    {
      v24 = v20[v21];
      if (v23 > v24)
      {
        v20[v21] = v23;
        v24 = v23;
      }

      ++v21;
      v23 = v24;
    }

    while (v22 != v21);
    do
    {
      *v20 = v17 * *v20;
      ++v20;
    }

    while (v20 != v19);
  }
}

__int128 *CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX(__int128 *this, const CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *this;
  if (v3 != *this)
  {
    v5 = v4 + 1;
    if (v4 + 1 != v3)
    {
      v6 = *v4;
      v7 = *this;
      v8 = v4 + 1;
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v6 < v9)
        {
          v6 = v10;
          v7 = v5;
        }

        v5 = v8;
      }

      while (v8 != v3);
      goto LABEL_10;
    }

LABEL_9:
    v7 = *this;
LABEL_10:
    v11 = *(*(this + 3) + v7 - v4);
    return this;
  }

  if (*(this + 4) != *(this + 3))
  {
    goto LABEL_9;
  }

  DistanceArgMAX = CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX();
  return CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::isCloseToUniformDistribution(DistanceArgMAX);
}

BOOL CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::isCloseToUniformDistribution(double **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0;
  }

  v3 = v1 + 1;
  if (v1 + 1 == v2)
  {
    v7 = *a1;
  }

  else
  {
    v4 = *v1;
    v5 = *v1;
    v6 = v1 + 1;
    v7 = *a1;
    v8 = v1 + 1;
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v5 < v9)
      {
        v5 = v10;
        v7 = v6;
      }

      v6 = v8;
    }

    while (v8 != v2);
    v11 = v1 + 1;
    do
    {
      v12 = *v11++;
      v13 = v12;
      if (v12 < v4)
      {
        v4 = v13;
        v1 = v3;
      }

      v3 = v11;
    }

    while (v11 != v2);
  }

  return *v7 - *v1 < 0.0001;
}

double CLMicroLocationFingerprintDistanceFunction::maxLikelihoodDistanceFunction(uint64_t a1, uint64_t a2, double *a3, uint64_t *a4, uint64_t a5, void *a6, char a7)
{
  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::computeDistanceDistributionForFpPair(a1, a2, a3, a4, a5, v13);
  if (CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::isCloseToUniformDistribution(v13))
  {
    v10 = *(v15 - 1);
    if ((a7 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::getDistanceArgMAX(v13, v9);
  v10 = v12;
  if (a7)
  {
LABEL_3:
    *a6 = 0x3FE0000000000000;
  }

LABEL_4:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return v10;
}

float CLMicroLocationUtils::PerSourceWeights<float>::operator[](float *a1, int a2)
{
  if (a2 > 5)
  {
    if (a2 == 6)
    {
      return a1[4];
    }

    if (a2 == 7)
    {
      return a1[5];
    }
  }

  else
  {
    if (a2 == 1)
    {
      return a1[2];
    }

    if (a2 == 5)
    {
      return a1[3];
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance();
  }

  v3 = logObject_MicroLocation_Default;
  v2 = 0.0;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "Datatype not supported", v5, 2u);
  }

  return v2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_124()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::FiniteDiscreteProbabilityDensity(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_259181550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity::~FiniteDiscreteProbabilityDensity(CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::FiniteDiscreteProbabilityDensity *this)
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

double *boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  v5 = a3;
  if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(double,double)::function, "Scale parameter is %1%, but must be > 0 !", &v5);
  }

  v5 = a2;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::normal_distribution(double,double)::function, "Location parameter is %1%, but must be finite!", &v5);
  }

  return result;
}

void boost::math::policies::detail::raise_error<std::domain_error,double>(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, v4);
  std::string::basic_string[abi:ne200100]<0>(&v25, v5);
  std::string::basic_string[abi:ne200100]<0>(&v24, "Error in function ");
  v6 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  size = v26.__r_.__value_.__l.__size_;
  v7 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v26.__r_.__value_.__l.__size_;
  }

  if (v10 >= 3)
  {
    v11 = v9 + v10;
    v12 = v9;
    while (1)
    {
      v13 = memchr(v12, 37, v10 - 2);
      if (!v13)
      {
        goto LABEL_25;
      }

      if (*v13 == 12581 && v13[2] == 37)
      {
        break;
      }

      v12 = (v13 + 1);
      v10 = v11 - v12;
      if (v11 - v12 < 3)
      {
        goto LABEL_25;
      }
    }

    if (v13 != v11)
    {
      v15 = v13 - v9;
      if (v15 != -1)
      {
        do
        {
          std::string::replace(&v26, v15, 3uLL, "double", 6uLL);
          v15 = std::string::find[abi:ne200100](&v26, "%1%", v15 + 6);
        }

        while (v15 != -1);
        v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        size = v26.__r_.__value_.__l.__size_;
        v7 = v26.__r_.__value_.__r.__words[0];
      }
    }
  }

LABEL_25:
  if ((v6 & 0x80u) == 0)
  {
    v16 = &v26;
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = size;
  }

  std::string::append(&v24, v16, v17);
  std::string::append(&v24, ": ", 2uLL);
  boost::math::policies::detail::prec_format<double>(a3, v22);
  if (v23 >= 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = v22[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v25, "%1%", v18);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v25;
  }

  else
  {
    v19 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v25.__r_.__value_.__l.__size_;
  }

  std::string::append(&v24, v19, v20);
  std::logic_error::logic_error(&v21, &v24);
  v21.__vftable = (MEMORY[0x277D828D8] + 16);
  boost::throw_exception<std::domain_error>(&v21);
}

unint64_t boost::math::policies::detail::replace_all_in_string(std::string *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  v7 = strlen(a3);
  result = std::string::find[abi:ne200100](a1, __s, 0);
  if (result != -1)
  {
    v9 = result;
    do
    {
      v10 = strlen(a3);
      std::string::replace(a1, v9, v6, a3, v10);
      result = std::string::find[abi:ne200100](a1, __s, v9 + v7);
      v9 = result;
    }

    while (result != -1);
  }

  return result;
}

uint64_t boost::math::policies::detail::prec_format<double>@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  *(&v12[0].__locale_ + *(v10 - 24)) = 17;
  MEMORY[0x259CA1D90](&v10, *a1);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, locale, v4);
  }

LABEL_14:
  a2[v4] = 0;
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v7;
  v11 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x259CA1EE0](&v18);
}

void sub_259181BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x259CA1EE0](v2 + 128);
  _Unwind_Resume(a1);
}

void boost::throw_exception<std::domain_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_286A547F0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_286A5CCC0;
  *(a1 + 8) = &unk_286A5CCF0;
  *(a1 + 24) = &unk_286A5CD18;
  return a1;
}

uint64_t boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x259CA1C20](a1 + 8);
  return a1;
}

void sub_259181FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::domain_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x259CA1C20](a1 + 8);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x259CA1C20);
}

{
  *(a1 + 16) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x259CA1C20](a1);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x259CA1C20);
}

{
  *a1 = &unk_286A54820;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x259CA1C20](v1);

  JUMPOUT(0x259CA1F90);
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A547F0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x277D828D8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_286A54820;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_286A5CCC0;
  *(a1 + 8) = &unk_286A5CCF0;
  *(a1 + 24) = &unk_286A5CD18;
  return a1;
}

std::__shared_weak_count *CLMicroLocationFingerprintPool::add@<X0>(CLMicroLocationFingerprintPool *this@<X0>, uuid *a2@<X1>, void *a3@<X8>)
{
  v5 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(this, a2);
  *a3 = 0;
  a3[1] = 0;
  v6 = v5[5];
  if (!v6 || (result = std::__shared_weak_count::lock(v6), (a3[1] = result) == 0) || (v8 = v5[4], (*a3 = v8) == 0))
  {
    std::allocate_shared[abi:ne200100]<CLMicroLocationFingerprint,std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint const&,0>();
  }

  return result;
}

void sub_2591824F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationFingerprintPool::removeInactiveEntries(CLMicroLocationFingerprintPool *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v2[5];
      if (!v4 || *(v4 + 8) == -1)
      {
        v2 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::erase(this, v2);
        ++v3;
      }

      else
      {
        v2 = *v2;
      }
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationFingerprintPool::removeInactiveEntries();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 3);
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v3;
    v13 = 2050;
    v14 = v6;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationFingerprintPool::removeInactiveEntries(), Num Removed Entries:%{public}d, Num Remaining Entries:%{public}lu}", v8, 0x22u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_125()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__shared_ptr_emplace<CLMicroLocationFingerprint>::__shared_ptr_emplace[abi:ne200100]<CLMicroLocationFingerprint const&,std::allocator<CLMicroLocationFingerprint>,0>(void *a1, const CLMicroLocationFingerprint *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5CD58;
  CLMicroLocationFingerprint::CLMicroLocationFingerprint((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<CLMicroLocationFingerprint>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5CD58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__shared_ptr_emplace<CLMicroLocationFingerprint>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 224);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 128);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 88);
  return std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a1 + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t CLMicroLocationLearner::CLMicroLocationLearner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v9[0] = &unk_286A5CDE8;
  v9[1] = a1;
  v9[3] = v9;
  v10[0] = &unk_286A5CE68;
  v10[1] = a1;
  v10[3] = v10;
  v11[0] = &unk_286A5CEE8;
  v11[1] = a1;
  v11[3] = v11;
  v12[0] = &unk_286A5CF68;
  v12[1] = a1;
  v12[3] = v12;
  v13[0] = &unk_286A5CFE8;
  v13[1] = a1;
  v13[3] = v13;
  v14[0] = &unk_286A5D068;
  v14[1] = a1;
  v14[3] = v14;
  v15[0] = &unk_286A5D0E8;
  v15[1] = a1;
  v15[3] = v15;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = a1 + 48;
  *(v5 + 16) = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(v5, v9, &v16, 7uLL);
  for (i = 24; i != -4; i -= 4)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v9[i]);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_259182D10(_Unwind_Exception *a1)
{
  for (i = 192; i != -32; i -= 32)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v2 + i);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::getAnchorAppearanceMapForLoi(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(a3);
  if (ULSettings::get<ULSettings::AdaptiveAnchorsEnable>())
  {
    v6 = (*(**(a1 + 32) + 168))(*(a1 + 32));
    v7 = v6;
    if (v6)
    {
      [v6 fetchMostRecentAnchorAppearanceMapAtLoiGroupId:a2];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
    }

    if (BYTE8(v18) == 1)
    {
      v9 = v17;
      if (!v17)
      {
        v9 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance(v8) + 8);
      }

      CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(v11, v9);
      if (v11 != a3)
      {
        *(a3 + 32) = v13;
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>(a3, v12, 0);
      }

      *(a3 + 40) = v14;
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v11);
      if (BYTE8(v18))
      {
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((&v16 + 8));
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_259182E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a10);
  if (a24 == 1)
  {
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&a20);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v24);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(CLMicroLocationLearner *this@<X0>, uint64_t a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = (*(**(this + 4) + 64))(*(this + 4));
  v5 = v4;
  if (v4)
  {
    [v4 fetchAllDistinctLoiGroups];
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 - *a2;
  if (v7 == *a2)
  {
LABEL_8:
    v6 = v7;
  }

  else
  {
    while ((ULLoiTypes::rtLoiStringToLocationType((v6 + 40)) & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v9 = (*(**(this + 4) + 144))(*(this + 4));
      v10 = [v9 countScanningEventsForLoiGroupId:v6 + 24];

      if (!v10)
      {
        break;
      }

      v6 += 64;
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    if (v6 != v7 && v6 + 64 != v7)
    {
      v11 = (v6 + 127);
      do
      {
        if ((ULLoiTypes::rtLoiStringToLocationType((v11 - 23)) & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v12 = (*(**(this + 4) + 144))(*(this + 4));
          v13 = [v12 countScanningEventsForLoiGroupId:v11 - 39];

          if (v13)
          {
            v14 = *(v11 - 63);
            v15 = *(v11 - 47);
            *(v6 + 32) = *(v11 - 31);
            *v6 = v14;
            *(v6 + 16) = v15;
            if (*(v6 + 63) < 0)
            {
              operator delete(*(v6 + 40));
            }

            v16 = *(v11 - 23);
            *(v6 + 56) = *(v11 - 7);
            *(v6 + 40) = v16;
            *v11 = 0;
            *(v11 - 23) = 0;
            v6 += 64;
          }
        }

        v17 = v11 + 1;
        v11 += 64;
      }

      while (v17 != v7);
    }
  }

  std::vector<ULLoiDO>::erase(a2, v6, *(a2 + 8));
  v18 = *(a2 + 8);
  v19 = 126 - 2 * __clz((v18 - *a2) >> 6);
  if (v18 == *a2)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,false>(*a2, v18, v20, 1);
  v21 = +[ULDefaultsSingleton shared];
  v22 = [v21 defaultsDictionary];

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxDistinctLOIGroupUUIDsForLearning"];
  v24 = [v22 objectForKey:v23];
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = [v24 unsignedIntValue];
  }

  else
  {
    v25 = [&unk_286A72600 unsignedIntValue];
  }

  v26 = v25;

  v27 = *(a2 + 8);
  if (v26 < ((v27 - *a2) >> 6))
  {
    std::vector<ULLoiDO>::erase(a2, *a2 + (v26 << 6), v27);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v28 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v29 = (*(a2 + 8) - *a2) >> 6;
    v31[0] = 68289538;
    v31[1] = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2050;
    v35 = v8 >> 6;
    v36 = 2050;
    v37 = v29;
    _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Filtered Unique LOI Groups, Count before filter:%{public}lu, Count after filter:%{public}lu}", v31, 0x26u);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationLearner::persistSingleModel(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (*(a4 + 320) != 1)
  {
    goto LABEL_16;
  }

  ++*a1;
  v11 = *(a4 + 296);
  if (v11 == 1)
  {
    v12 = *(a4 + 280);
    *(v40 + 7) = *(a4 + 288);
    v40[0] = *(a4 + 281);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(**(a1 + 32) + 80))(*(a1 + 32));
  if ((*(a4 + 320) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  ULModelDO::ULModelDO(buf, a4);
  v22 = 0;
  v23 = 0uLL;
  std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(&v22, buf, &v39, 1uLL);
  LOBYTE(v26) = 0;
  v27 = 0;
  if (v11)
  {
    LOBYTE(v26) = v12;
    *(&v26 + 1) = v40[0];
    *(&v26 + 1) = *(v40 + 7);
    v27 = 1;
  }

  if ((*(a4 + 320) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v24 = *(a4 + 297);
  v25 = 1;
  v14 = [v13 insertDataObjects:&v22 forServiceUUID:&v26 atLoiUUID:&v24];
  *&v26 = &v22;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (v38 == 1 && v37 < 0)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v33[12]);

  if (v14)
  {
    if ((*(a4 + 320) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (*(a4 + 296) == 1)
    {
      operator new();
    }

    v22 = 0;
    v23 = 0uLL;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 320))
      {
        operator new();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }
  }

  else
  {
LABEL_16:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v29 = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Model was not generated properly. Inserted: %{public,BOOL}d", buf, 8u);
    }
  }

  if (*(a5 + 24) == 1)
  {
    v17 = (*(**(a1 + 32) + 152))(*(a1 + 32));
    v18 = v17;
    if ((*(a5 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v17 insertMapLabelsWithRelatedLabelsObjectIDs:a5];
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v29 = 0;
    v30 = 2082;
    v31 = "";
    v32 = 1026;
    *v33 = a3;
    *&v33[4] = 2050;
    *&v33[6] = a2;
    v34 = 2050;
    v35 = v10 != 0;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending CoreAnalytics com.apple.MicroLocation.ModelLearning, sending enabled:%{public}hhd, model type:%{public}lu, has_value:%{public}lu}", buf, 0x2Cu);
  }

  if (v10 && a3)
  {
    [ULSendEvent sendEvent:v10 withEventName:@"com.apple.MicroLocation.ModelLearning"];
  }

  (*(**(a1 + 24) + 24))(*(a1 + 24), a2, a4, v10);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_259183930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ULModelDO a19)
{
  operator delete(v23);

  if (v21)
  {
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnUnspervisedModelForLOI(CLMicroLocationLearner *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v59 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = (*(**(a1 + 4) + 104))(*(a1 + 4));
  v13 = v12;
  if (v12)
  {
    [v12 fetchAllServicesForServiceType:1 onlyServicesWithLabels:0];
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v14 = v41;
  v15 = v42;
  while (v14 != v15)
  {
    v17 = *v14;
    v16 = (v14 + 4);
    ULService::modelClientIdentifierStringForServiceTypeAndClientId(v17, v16, &__p);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v39, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = (v16 + 56);
  }

  v18 = *(a2 + 24);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v18 + 48))(v18) & 1) == 0)
  {
    memset(v37, 0, sizeof(v37));
    v38 = 1065353216;
    if (ULLoiTypes::rtLoiStringToLocationType((a3 + 40)))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v19 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }
    }

    else
    {
      v20 = (*(**(a1 + 4) + 144))(*(a1 + 4));
      v21 = v20;
      *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
      __p.__r_.__value_.__s.__data_[16] = 1;
      if (v20)
      {
        [v20 getScanningEventUUIDsAtLoiGroupId:&__p withScanType:0x10000 startDate:0 endDate:v11 onlyScansWithLabels:0 Limit:a5];
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
      }

      CLMicroLocationLearner::getAnchorAppearanceMapForLoi(a1, a3 + 24, v33);
      v22 = v39;
      if (v39 != v40)
      {
        do
        {
          v23 = *(a2 + 24);
          if (!v23)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          if ((*(*v23 + 48))(v23))
          {
            break;
          }

          __p.__r_.__value_.__s.__data_[0] = 0;
          v53 = 0;
          v24 = CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(a6, 0, &__p);
          if (v53 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationLearner::persistSingleModel();
          }

          v25 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v22 + 55) < 0)
            {
              v26 = v22[4];
            }

            operator new();
          }

          CLMicroLocationLearner::getMostRecentMagicalMomentsModelAtLoi(a1, *(a3 + 24), &__p);
          CLMicroLocationLearner::learnMagicalMomentsModel(a1, v24, &v34, a2, v37, (v22 + 4), (a3 + 24), v45, &__p);
          if (v51 == 1)
          {
            v50 = *(a3 + 24);
          }

          v31[0] = 0;
          v32 = 0;
          CLMicroLocationLearner::persistSingleModel(a1, 0, a6, v45, v31, v24);
          if (v32 == 1)
          {
            v44 = v31;
            std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v44);
          }

          if (v51 == 1)
          {
            if (v49 == 1 && v48 < 0)
            {
              operator delete(v47);
            }

            std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v46);
          }

          if (v58 == 1)
          {
            if (v57 == 1 && v56 < 0)
            {
              operator delete(v55);
            }

            std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v54);
          }

          v27 = v22[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v22[2];
              v29 = *v28 == v22;
              v22 = v28;
            }

            while (!v29);
          }

          v22 = v28;
        }

        while (v28 != v40);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v33);
      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v37);
  }

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&v39, v40[0]);
  __p.__r_.__value_.__r.__words[0] = &v41;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&__p);

  v30 = *MEMORY[0x277D85DE8];
}

void sub_259184024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(&a33);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a39, a40);
  STACK[0x270] = &a42;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::getMostRecentMagicalMomentsModelAtLoi(CLMicroLocationLearner *this@<X0>, uuid a2@<0:X1, 8:X2>, uint64_t a3@<X8>)
{
  v3 = *&a2.data[8];
  v4 = *a2.data;
  v6 = (*(**(this + 4) + 80))(*(this + 4));
  v7 = v6;
  if (v6)
  {
    [v6 fetchMostRecentMagicalMomentsModelAtLoiGroupId:{v4, v3}];
  }

  else
  {
    *(a3 + 320) = 0;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

void CLMicroLocationLearner::learnMagicalMomentsModel(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationProto::Model *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>, uint64_t a9)
{
  v85 = *MEMORY[0x277D85DE8];
  v16 = a2;
  *a8 = 0;
  a8[320] = 0;
  v17 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationLearner::learnMagicalMomentsModelInternal(a1, v16, a3, a4, a5, a7, a9, v33, v17, 0);
  if (v52 == 1 && CLMicroLocationModel::isValid(v33))
  {
    if (onceToken_MicroLocationQE_Default != -1)
    {
      CLMicroLocationLearner::learnMagicalMomentsModel();
    }

    v18 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = CLMicroLocationModel::numRecordingsBeforePruning(v33);
      v20 = v46[1];
      v21 = v46[0];
      v22 = CLMicroLocationModel::numClusters(v33);
      *buf = 68292098;
      *&buf[4] = 0;
      v56 = 2082;
      v57 = "";
      v58 = 2050;
      v59 = v19;
      v60 = 2050;
      v61 = (v20 - v21) >> 5;
      v62 = 2050;
      v63 = v22;
      v64 = 1026;
      v65 = v34;
      v66 = 2050;
      v67 = v35[3];
      v68 = 1026;
      v69 = v39;
      v70 = 1026;
      v71 = v40;
      v72 = 1026;
      v73 = v42;
      v74 = 1026;
      v75 = v41;
      v76 = 1026;
      v77 = v43;
      v78 = 1026;
      v79 = v44;
      v80 = 1026;
      v81 = v45;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Microlocation model learned, numFingerprints before pruning:%{public}lu, numFingerprints after pruning:%{public}lu, numClusters:%{public}lu, type:%{public}d, numAnchors:%{public}lu, Number of Recording triggers at current LOI:%{public}u, Number of Input Valid Fingerprints:%{public}u, Number of Input Valid Fingerprints Labeled:%{public}u, Number of Input Valid Fingerprints Unlabeled:%{public}u, Number of WiFi Access Points:%{public}u, Number of Ble Sources:%{public}u, Number of Uwb Sources:%{public}u}", buf, 0x6Au);
    }

    CLMicroLocationModel::toProtobuf(v33, v32);
    v31 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v31);
    v23 = boost::uuids::random_generator_pure::operator()(&v31);
    v25 = v24;
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v30, v32);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v54, v30);
    v54[52] = 0;
    if (*(a6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *a6, *(a6 + 8));
    }

    else
    {
      v28 = *a6;
    }

    v29 = 1;
    v53[0] = 0;
    v53[16] = 0;
    ULModelDO::ULModelDO(buf, v23, v25, v54, &v28, v53, *a7, a7[1], v17);
    std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(a8, buf);
    if (v84 == 1 && v83 < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&v61 + 2));
    if (v29 == 1 && SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v54);
    CLMicroLocationProto::Model::~Model(v30);
    boost::uuids::detail::random_provider_base::destroy(&v31);
    CLMicroLocationProto::Model::~Model(v32);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v26 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "No models were generated for model type %{public}d", buf, 8u);
    }
  }

  if (v52 == 1)
  {
    if (v51 < 0)
    {
      operator delete(v50);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v47);
    *buf = v46;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v38 == 1 && v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v35);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_259184664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42, __int16 a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x328]);
  CLMicroLocationProto::Model::~Model(&a15);
  boost::uuids::detail::random_provider_base::destroy(&a42);
  CLMicroLocationProto::Model::~Model(&a44);
  std::optional<CLMicroLocationModel>::~optional(&a70);
  std::optional<ULModelDO>::~optional(v71);

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnLSLModelForLOI(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, int a6, double a7)
{
  v119 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = (*(**(a1 + 32) + 104))(*(a1 + 32));
  v14 = v13;
  if (v13)
  {
    [v13 fetchAllServicesForServiceType:4 onlyServicesWithLabels:0];
  }

  else
  {
    v82 = 0;
    v81 = 0;
    v83 = 0;
  }

  if (v81 == v82)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      __p.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skipping Location Similarity List model learning, no such services}", &__p, 0x12u);
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v92 = 0;
    v15 = CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(a6, 2, &__p);
    if (v92 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = *(a2 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v16 + 48))(v16) & 1) == 0)
    {
      memset(v79, 0, sizeof(v79));
      v80 = 1065353216;
      v17 = ULLoiTypes::rtLoiStringToLocationType((a3 + 40));
      if (v17 == 3)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v18 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      else
      {
        v50 = v17;
        v51 = v15;
        v20 = (*(**(a1 + 32) + 144))(*(a1 + 32));
        v21 = v20;
        *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
        __p.__r_.__value_.__s.__data_[16] = 1;
        if (v20)
        {
          [v20 getScanningEventUUIDsAtLoiGroupId:&__p withScanType:0x10000 startDate:0 endDate:v12 onlyScansWithLabels:0 Limit:a5];
        }

        else
        {
          v77 = 0;
          v76 = 0;
          v78 = 0;
        }

        CLMicroLocationLearner::getAnchorAppearanceMapForLoi(a1, a3 + 24, v75);
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v22 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        v97[0] = 0;
        CLMicroLocationLearner::learnMagicalMomentsModelInternal(a1, v15, &v76, a2, v79, a3 + 24, &__p, v63, a7, 2);
        if (v97[0] == 1)
        {
          if (v96 == 1 && v95 < 0)
          {
            operator delete(v94);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v93);
        }

        v23 = *(a2 + 24);
        if (!v23)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if (((*(*v23 + 48))(v23) & 1) == 0 && v74 == 1 && CLMicroLocationModel::isValid(v63))
        {
          if ((v74 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v24 = v82;
          if (v81 != v82)
          {
            v25 = v81 + 4;
            do
            {
              v26 = *(a2 + 24);
              if (!v26)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              if ((*(*v26 + 48))(v26))
              {
                break;
              }

              v27 = ULService::uint64ToLocationTypesBitset(v25[3]);
              if (v50 >= 0x20)
              {
                std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
              }

              if ((v27 & (1 << v50)) != 0)
              {
                if (onceToken_MicroLocation_Default != -1)
                {
                  CLMicroLocationLearner::persistSingleModel();
                }

                v28 = logObject_MicroLocation_Default;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v25 + 23) < 0)
                  {
                    v29 = *v25;
                  }

                  operator new();
                }

                if (v15)
                {
                  v30 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v51];
                  v31 = v25;
                  if (*(v25 + 23) < 0)
                  {
                    v31 = *v25;
                  }

                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
                  [v30 setObject:v32 forKeyedSubscript:@"clientIdentifier"];
                }

                else
                {
                  v30 = 0;
                }

                v33 = (*(**(a1 + 32) + 80))(*(a1 + 32));
                v34 = v33;
                v101 = *(v25 - 3);
                v102 = 1;
                v99 = *(a3 + 24);
                v100 = 1;
                if (v33)
                {
                  [v33 fetchMostRecentModelOfModelType:2 ForService:&v101 atLoiGroupId:&v99];
                }

                else
                {
                  v118 = 0;
                  v117 = 0u;
                  v116 = 0u;
                  v115 = 0u;
                  v114 = 0u;
                  *v113 = 0u;
                  v112 = 0u;
                  v111 = 0u;
                  v110 = 0u;
                  v109 = 0u;
                  v108 = 0u;
                  v107 = 0u;
                  v106 = 0u;
                  memset(v105, 0, sizeof(v105));
                  v104 = 0u;
                  *v103 = 0u;
                }

                LOBYTE(v61[0]) = 0;
                v62 = 0;
                if (v118 == 1)
                {
                  if (LODWORD(v113[0]))
                  {
                    std::__throw_bad_variant_access[abi:ne200100]();
                  }

                  v35 = 0x100000000;
                  if (!BYTE8(v106))
                  {
                    v35 = 0;
                  }

                  v61[0] = v35 | HIDWORD(v106);
                  v61[1] = v104;
                  v62 = 1;
                }

                std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](v103);
                v36 = (*(**(a1 + 32) + 144))(*(a1 + 32));
                v37 = v36;
                *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
                __p.__r_.__value_.__s.__data_[16] = 1;
                if (v36)
                {
                  v49 = v49 & 0xFFFFFFFF00000000 | 0x10000;
                  [v36 getScanningEventUUIDsAtLoiGroupId:&__p withScanType:? startDate:? endDate:? onlyScansWithLabels:? Limit:?];
                }

                else
                {
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                }

                v38 = (*(**(a1 + 32) + 144))(*(a1 + 32));
                v39 = v38;
                *&__p.__r_.__value_.__l.__data_ = *(a3 + 24);
                __p.__r_.__value_.__s.__data_[16] = 1;
                if (v38)
                {
                  v48 = v48 & 0xFFFFFFFF00000000 | 0x10001;
                  [v38 getScanningEventUUIDsAtLoiGroupId:&__p withScanType:? startDate:? endDate:? onlyScansWithLabels:? Limit:?];
                }

                else
                {
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                }

                CLMicroLocationLearner::learnLocationSimilarityListModel(a1, v30, a2, (v25 - 4), v63, (a3 + 24), &v58, &v55, &__p, a7, v61);
                v40 = *(a2 + 24);
                if (!v40)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                v41 = (*(*v40 + 48))(v40);
                if ((v41 & 1) == 0)
                {
                  LOBYTE(v85[0]) = 0;
                  v90 = 0;
                  v53[0] = 0;
                  v54 = 0;
                  if (v98 == 1)
                  {
                    std::optional<std::vector<ULMapLabelDOAndLabelObjectID>>::operator=[abi:ne200100]<std::vector<ULMapLabelDOAndLabelObjectID>,void>(v53, v97);
                    v42 = _CLLogObjectForCategory_MicroLocation_Default();
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(v25 + 23) < 0)
                      {
                        v44 = *v25;
                      }

                      boost::uuids::to_string((v25 - 3), v43);
                    }

                    if ((v98 & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    std::optional<ULModelDO>::operator=[abi:ne200100]<ULModelDO,void>(v85, &__p);
                  }

                  CLMicroLocationLearner::persistSingleModel(a1, 2, a6, v85, v53, v30);
                  std::__optional_destruct_base<ULModelDO,false>::reset[abi:ne200100](v85);
                  if (v54 == 1)
                  {
                    *buf = v53;
                    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
                  }

                  if (v90 == 1)
                  {
                    if (v89 == 1 && v88 < 0)
                    {
                      operator delete(v87);
                    }

                    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v86);
                  }
                }

                if (v98 == 1)
                {
                  v85[0] = v97;
                  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](v85);
                  if (v96 == 1 && v95 < 0)
                  {
                    operator delete(v94);
                  }

                  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v93);
                }

                if (v55)
                {
                  v56 = v55;
                  operator delete(v55);
                }

                if (v58)
                {
                  v59 = v58;
                  operator delete(v58);
                }

                if (v118 == 1)
                {
                  if (v115 == 1 && SHIBYTE(v114) < 0)
                  {
                    operator delete(v113[1]);
                  }

                  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v105);
                }

                v15 = v51;
                if (v41)
                {
                  break;
                }
              }

              v45 = v25 + 7;
              v25 += 11;
            }

            while (v45 != v24);
          }
        }

        else
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationLearner::persistSingleModel();
          }

          v46 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            __p.__r_.__value_.__r.__words[0] = 68289026;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = "";
            _os_log_impl(&dword_258FE9000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Similarity List Model Learning, unsupervised model not created or is invalid so learning is skipped}", &__p, 0x12u);
          }
        }

        if (v74 == 1)
        {
          if (v73 < 0)
          {
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v69);
          __p.__r_.__value_.__r.__words[0] = &v68;
          std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (v67 == 1 && v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v64);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v75);
        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }
      }

      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v79);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v81;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&__p);

  v47 = *MEMORY[0x277D85DE8];
}