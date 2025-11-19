uint64_t CLMicroLocationLogic::onRapportCompanionDeviceFound(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CLMicroLocationsMeasurementFilters::isAnchorModelValid(a3, (a1 + 104));
  if (result)
  {
    v5 = *(**(a1 + 64) + 16);

    return v5();
  }

  return result;
}

uint64_t CLMicroLocationLogic::onResetLocationData(CLMicroLocationLogic *this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Got request to reset Location data. Dropping microlocation tables", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = +[ULTransactionManager shared];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN20CLMicroLocationLogic19onResetLocationDataEv_block_invoke;
  v18[3] = &unk_2798D4650;
  v18[4] = buf;
  v18[5] = this;
  [v3 performUnderTransaction:@"com.apple.milod.deleteLocationData" block:v18];

  (*(**(this + 9) + 136))(*(this + 9));
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&v17);
  size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
    (*(*this + 88))(this, __p, 0, 0, 12);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *&v25 = (*(**(this + 11) + 16))(*(this + 11));
    *(&v25 + 1) = v5;
    v6 = (*(**(this + 6) + 64))(*(this + 6));
    v23 = v25;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&v12, &v23, &v24, 1uLL);
    [v6 updateLoiIds:&v12 withLoiGroupId:&v25 andLoiType:&v17];
    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v17;
    }

    v7 = (*(*this + 88))(this, &v11, v25, *(&v25 + 1), 12);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    CLMicroLocationLogic::fetchPlaceInferenceForReason(this, 12);
  }

  ULDiskUtils::removeAllTrackedTempFiles(v7);
  v8 = v20[24];
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(buf, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_259196C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN20CLMicroLocationLogic19onResetLocationDataEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = (*(**(v1 + 56) + 16))(*(v1 + 56));
  v2 = [[ULBackupAndRestore alloc] initWithDbStore:*(v1 + 48) andDbManagement:*(v1 + 56)];
  [(ULBackupAndRestore *)v2 deleteBackupFiles];
}

void CLMicroLocationLogic::fetchPlaceInferenceForReason(uint64_t a1, uint64_t a2)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v4 = v8;
  v5 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    (*(**(a1 + 88) + 56))(*(a1 + 88), a2);
  }

  if (v5 < 0)
  {
    v6 = __p[0];

    operator delete(v6);
  }
}

void sub_259196E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLogic::setDisplayState(uint64_t a1, int a2, double *a3)
{
  *(a1 + 40) = a2;
  v5 = +[ULHomeSlamAnalytics shared];
  v6 = *a3;
  v7 = v5;
  if (a2)
  {
    [v5 logEventScreenOnAtTimestamp:v6];
  }

  else
  {
    [v5 logEventScreenOffAtTimestamp:v6];
  }
}

void CLMicroLocationLogic::onCustomLoiRecordingSessionCompleted(CLMicroLocationLogic *this)
{
  v18[2] = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 192))(__p);
  if (v17 < 0)
  {
    if (__p[1] != 6)
    {
      goto LABEL_10;
    }

    v2 = __p[0];
  }

  else
  {
    if (v17 != 6)
    {
      goto LABEL_10;
    }

    v2 = __p;
  }

  v3 = *v2;
  v4 = *(v2 + 2);
  if (v3 == 1953723747 && v4 == 28015)
  {
    (*(**(this + 12) + 104))(*(this + 12), v18);
    goto LABEL_23;
  }

LABEL_10:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v7 = __p;
    if (v17 < 0)
    {
      v7 = __p[0];
    }

    v11 = 68289282;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onCustomLoiRecordingSessionCompleted while current LOI is not custom, current LOI type:%{public, location:escape_only}s}", &v11, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v9 = __p;
    if (v17 < 0)
    {
      v9 = __p[0];
    }

    v11 = 68289282;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = v9;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onCustomLoiRecordingSessionCompleted while current LOI is not custom", "{msg%{public}.0s:onCustomLoiRecordingSessionCompleted while current LOI is not custom, current LOI type:%{public, location:escape_only}s}", &v11, 0x1Cu);
  }

LABEL_23:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_259197118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLogic::onDisplayStateChange_OSX(CLMicroLocationLogic *this, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Off";
    if (a2)
    {
      v5 = @"On";
    }

    *v7 = 138412290;
    *&v7[4] = v5;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "onDisplayStateChange_OSX: screen: %@", v7, 0xCu);
  }

  *v7 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationLogic::setDisplayState(this, a2, v7);
  if (a2 && !CLMicroLocationLogic::isAtHomeLoi(this))
  {
    CLMicroLocationLogic::fetchPlaceInferenceForReason(this, 4);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL CLMicroLocationLogic::isAtHomeLoi(CLMicroLocationLogic *this)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 192))(v4);
  if (v5 < 0)
  {
    v1 = v4[1] == 4 && *v4[0] == 1701670760;
    operator delete(v4[0]);
  }

  else
  {
    v1 = v5 == 4 && LODWORD(v4[0]) == 1701670760;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void CLMicroLocationLogic::onModelGenerated(uint64_t a1, unsigned int a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v38 = 2082;
    *&v38[2] = "";
    *&v38[10] = 2050;
    *&v38[12] = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Models have been regenerated, model-type:%{public}lu}", buf, 0x1Cu);
  }

  (*(**(a1 + 72) + 192))(&v46);
  if (a2 != 3)
  {
    goto LABEL_58;
  }

  (*(**(a1 + 72) + 192))(buf);
  if ((v38[15] & 0x80000000) != 0)
  {
    v6 = *buf;
    if (*v38 != 6)
    {
LABEL_57:
      operator delete(v6);
      goto LABEL_58;
    }

    v8 = **buf != 1953723747 || *(*buf + 4) != 28015;
    operator delete(*buf);
    if (v8)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (v38[15] != 6)
    {
      goto LABEL_58;
    }

    if (*buf != 1953723747 || *&buf[4] != 28015)
    {
      goto LABEL_58;
    }
  }

  *v51.data = v49;
  *&v51.data[8] = *(a1 + 48);
  CLMicroLocationAnalytics::generateWiFiChannelHistogramForBlueAtlas(v48, v51, &v28);
  if (v30 != 1)
  {
    goto LABEL_58;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(&v25, v28, v29, (v29 - v28) >> 3);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v38 = 2082;
    *&v38[2] = "";
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:updating Blue Atlas wifi channel histogram}", buf, 0x12u);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v10 = v25;
  v11 = v26;
  if (v25 != v26)
  {
    do
    {
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38[8], "channel: ", 9);
      v13 = MEMORY[0x259CA1DC0](v12, *v10);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " count: ", 8);
      v15 = MEMORY[0x259CA1DC0](v14, v10[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
      v10 += 2;
    }

    while (v10 != v11);
  }

  if ((v44 & 0x10) != 0)
  {
    v17 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v17 = v40;
    }

    locale = v39[4].__locale_;
  }

  else
  {
    if ((v44 & 8) == 0)
    {
      v16 = 0;
      v24 = 0;
      goto LABEL_42;
    }

    locale = v39[1].__locale_;
    v17 = v39[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  v24 = v17 - locale;
  if (v16)
  {
    memmove(&__p, locale, v16);
  }

LABEL_42:
  *(&__p + v16) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    p_p = &__p;
    if (v24 < 0)
    {
      p_p = __p;
    }

    *v31 = 68289283;
    v32 = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2081;
    v36 = p_p;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wifi channel histogram:, Histogram:%{private, location:escape_only}s}", v31, 0x1Cu);
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  *buf = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v38[8] = v21;
  *&v38[16] = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  *&v38[16] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v45);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v30)
  {
    v6 = v28;
    if (v28)
    {
      v29 = v28;
      goto LABEL_57;
    }
  }

LABEL_58:
  if (v47 < 0)
  {
    operator delete(v46);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2591978E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 == 1 && a15)
  {
    operator delete(a15);
  }

  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLogic::refreshLocationOnInterval(CLMicroLocationLogic *this)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v2 = v6;
  v3 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    (*(**(this + 11) + 64))(*(this + 11));
  }

  if (v3 < 0)
  {
    v4 = __p[0];

    operator delete(v4);
  }
}

void sub_259197A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::onDatabaseBecameValid(CLMicroLocationLogic *this)
{
  CLMicroLocationLogic::fetchPlaceInferenceForReason(this, 6);
  CLMicroLocationLogic::initializeRegionMonitoringIfNecessary(this);
  (*(*(*(this + 9) + 8) + 48))();
  v2 = *(**(this + 9) + 176);

  return v2();
}

void CLMicroLocationLogic::initializeRegionMonitoringIfNecessary(CLMicroLocationLogic *this)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v2 = v6;
  v3 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (!v2)
  {
    (*(**(this + 11) + 32))(*(this + 11));
  }

  if (v3 < 0)
  {
    v4 = __p[0];

    operator delete(v4);
  }
}

void sub_259197B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::resetAndGetDevicesSinceLearnEventTimeForLoi@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  *&v9[5] = a3;
  (*(**(a1 + 64) + 40))(v9);
  (*(**(a1 + 64) + 24))(*(a1 + 64));
  (*(**(a1 + 64) + 32))(*(a1 + 64));
  v5 = v9[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = 0;
  if (v5)
  {
    v7 = v5;
    do
    {
      ++v6;
      v7 = *v7;
    }

    while (v7);
  }

  std::vector<CLMicroLocationRapportMonitorItem>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>>(a2, v5, 0, v6);
  return std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table(v9);
}

uint64_t CLMicroLocationLogic::enableMiLoAtCurrentLocation(CLMicroLocationLogic *this, const uuid *a2)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v4 = v8;
  v5 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    (*(**(this + 11) + 40))(*(this + 11), a2);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_259197D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::disableMiLoAtLocationWithIdentifier(CLMicroLocationLogic *this, const uuid *a2, const uuid *a3)
{
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(__p);
  v6 = v10;
  v7 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    (*(**(this + 11) + 48))(*(this + 11), *a2->data, *&a2->data[8], a3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_259197E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::requestRapportControl(CLMicroLocationLogic *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::~CLMicroLocationLogic();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rapport Enabled}", &v7, 0x12u);
    }

    result = (*(**(this + 12) + 80))(*(this + 12));
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLogic::~CLMicroLocationLogic();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rapport Disabled}", &v7, 0x12u);
    }

    (*(**(this + 12) + 88))(*(this + 12));
    (*(**(this + 8) + 24))(*(this + 8));
    result = (*(**(this + 8) + 32))(*(this + 8));
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLMicroLocationLogic::onSendPredictionResultsToClient(CLMicroLocationLogic *this, const ULService::ServiceDescriptor *a2, const uuid *a3, const ULLocalizationResult *a4, const uuid *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocationQE_Default != -1)
  {
    CLMicroLocationLogic::onSendPredictionResultsToClient();
  }

  v5 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v6 = a4;
  if (*(a4 + 24) == 1)
  {
    __p = 0;
    v18 = 0uLL;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&__p, *a4, *(a4 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 2));
    v8 = __p;
    v7 = v18;
    if (__p != v18)
    {
      do
      {
        if (onceToken_MicroLocationQE_Default != -1)
        {
          CLMicroLocationLogic::onSendPredictionResultsToClient();
        }

        v9 = logObject_MicroLocationQE_Default;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        v8 += 20;
      }

      while (v8 != v7);
      v8 = __p;
    }

    if (v8)
    {
      *&v18 = v8;
      operator delete(v8);
    }

    v6 = a4;
  }

  result = (*(**(this + 12) + 48))(*(this + 12), a2, a3, v6, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259198484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operator delete(v28);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::triggerLearning(CLMicroLocationLogic *this)
{
  v9[2] = *MEMORY[0x277D85DE8];
  (*(**(this + 9) + 192))(__p);
  if ((v8 & 0x80000000) == 0)
  {
    if (v8 == 6)
    {
      v2 = __p;
      goto LABEL_6;
    }

LABEL_10:
    (*(**(this + 12) + 96))(*(this + 12));
    goto LABEL_11;
  }

  if (__p[1] != 6)
  {
    goto LABEL_10;
  }

  v2 = __p[0];
LABEL_6:
  v3 = *v2;
  v4 = *(v2 + 2);
  if (v3 != 1953723747 || v4 != 28015)
  {
    goto LABEL_10;
  }

  (*(**(this + 12) + 104))(*(this + 12), v9);
LABEL_11:
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_259198680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLogic::createCustomLoiAtCurrentLocation(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v7 = (*(**(a1 + 72) + 96))(*(a1 + 72), a2);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_259198830(_Unwind_Exception *a1)
{
  operator delete(v3);

  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationLogic::removeCustomLoiWithIdentifier(CLMicroLocationLogic *this, const uuid *a2, uuid a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  result = (*(**(this + 9) + 120))(*(this + 9), a2, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259198A10(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::setCurrentLoi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  CLMicroLocationLogic::setCurrentRTLOI(a1, &__p, a3, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_259198B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_128()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<CLMicroLocationRapportMonitorItem>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationRapportMonitorItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259198EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<CLMicroLocationRapportMonitorItem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationRapportMonitorItem>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationRapportMonitorItem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationRapportMonitorItem>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,std::__hash_const_iterator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *> *>,CLMicroLocationRapportMonitorItem*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(a4 + v7) = *(v6 + 1);
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v8 + 16), v6[4], v6[5]);
      }

      else
      {
        v9 = *(v6 + 2);
        *(v8 + 32) = v6[6];
        *(v8 + 16) = v9;
      }

      v10 = a4 + v7;
      if (*(v6 + 79) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 40), v6[7], v6[8]);
      }

      else
      {
        v11 = *(v6 + 7);
        *(v10 + 56) = v6[9];
        *(v10 + 40) = v11;
      }

      *(a4 + v7 + 64) = *(v6 + 5);
      v6 = *v6;
      v7 += 80;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_259199080(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_7()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

uint64_t std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void CLMicroLocationLoiManager::CLMicroLocationLoiManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286A5D6B0;
  *(a1 + 8) = &unk_286A5D708;
  CLMicroLocationStateMachine::StateMachineBase::StateMachineBase((a1 + 16));
  *a1 = &unk_286A5D500;
  *(a1 + 8) = &unk_286A5D5A8;
  *(a1 + 16) = &unk_286A5D618;
  *(a1 + 72) = &unk_286A5D778;
  *(a1 + 80) = &unk_286A5D7F0;
  *(a1 + 88) = &unk_286A5D848;
  *(a1 + 96) = &unk_286A5D8A0;
  *(a1 + 104) = &unk_286A5D8F8;
  *(a1 + 112) = &unk_286A5D950;
  *(a1 + 120) = &unk_286A5D9A8;
  *(a1 + 128) = &unk_286A5DA00;
  *(a1 + 136) = &unk_286A5DA58;
  *(a1 + 144) = &unk_286A5DA98;
  *(a1 + 152) = &unk_286A5DAD8;
  *(a1 + 160) = &unk_286A5DB18;
  *(a1 + 168) = &unk_286A5DB70;
  *(a1 + 176) = &unk_286A5DBB0;
  *(a1 + 184) = &unk_286A5DBF0;
  *(a1 + 192) = &unk_286A5DC30;
  *(a1 + 200) = &unk_286A5DC80;
  *(a1 + 208) = &unk_286A5DCC0;
  *(a1 + 216) = &unk_286A5DD00;
  *(a1 + 224) = &unk_286A5DD58;
  *(a1 + 232) = &unk_286A5DDB0;
  *(a1 + 240) = &unk_286A5DE08;
  *(a1 + 248) = &unk_286A5DE60;
  *(a1 + 256) = &unk_286A5DEB8;
  *(a1 + 264) = &unk_286A5DEF8;
  *(a1 + 272) = &unk_286A5DF38;
  *(a1 + 280) = &unk_286A5DF78;
  *(a1 + 288) = &unk_286A5DFD0;
  *(a1 + 296) = &unk_286A5E028;
  *(a1 + 304) = &unk_286A5E080;
  *(a1 + 312) = &unk_286A5E0D8;
  *(a1 + 320) = &unk_286A5E130;
  *(a1 + 328) = a3;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 336) = a4;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a1);
}

void sub_259199794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ULHomeSlamModel *a10, ULHomeSlamModel *a11, ULHomeSlamModel *a12, ULHomeSlamModel *a13, ULHomeSlamModel *a14, ULHomeSlamModel *a15, ULHomeSlamModel *a16, ULHomeSlamModel *a17, ULHomeSlamModel *a18, ULHomeSlamModel *a19, ULHomeSlamModel *a20, ULHomeSlamModel *a21, ULHomeSlamModel *a22, ULHomeSlamModel *a23, ULHomeSlamModel *a24, ULHomeSlamModel *a25, ULHomeSlamModel *a26, ULHomeSlamModel *a27, ULHomeSlamModel *a28, ULHomeSlamModel *a29, ULHomeSlamModel *a30)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  v40 = *(v32 + 464);
  if (v40)
  {
    *(v32 + 472) = v40;
    operator delete(v40);
  }

  if (*(v32 + 415) < 0)
  {
    operator delete(*v31);
  }

  ULHomeSlamModel::getTrajectoryPointCloud(v37);
  ULHomeSlamModel::getTrajectoryPointCloud(v36);
  ULHomeSlamModel::getTrajectoryPointCloud(v35);
  ULHomeSlamModel::getTrajectoryPointCloud(v34);
  ULHomeSlamModel::getTrajectoryPointCloud(v33);
  ULHomeSlamModel::getTrajectoryPointCloud(a10);
  ULHomeSlamModel::getTrajectoryPointCloud(a11);
  ULHomeSlamModel::getTrajectoryPointCloud(a12);
  ULHomeSlamModel::getTrajectoryPointCloud(a13);
  ULHomeSlamModel::getTrajectoryPointCloud(a14);
  ULHomeSlamModel::getTrajectoryPointCloud(a15);
  ULHomeSlamModel::getTrajectoryPointCloud(a16);
  ULHomeSlamModel::getTrajectoryPointCloud(a17);
  ULHomeSlamModel::getTrajectoryPointCloud(a18);
  ULHomeSlamModel::getTrajectoryPointCloud(a19);
  ULHomeSlamModel::getTrajectoryPointCloud(a20);
  ULHomeSlamModel::getTrajectoryPointCloud(a21);
  ULHomeSlamModel::getTrajectoryPointCloud(a22);
  ULHomeSlamModel::getTrajectoryPointCloud(a23);
  ULHomeSlamModel::getTrajectoryPointCloud(a24);
  ULHomeSlamModel::getTrajectoryPointCloud(a25);
  ULHomeSlamModel::getTrajectoryPointCloud(a26);
  ULHomeSlamModel::getTrajectoryPointCloud(a27);
  ULHomeSlamModel::getTrajectoryPointCloud(a28);
  ULHomeSlamModel::getTrajectoryPointCloud(a29);
  ULHomeSlamModel::getTrajectoryPointCloud(a30);
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 160));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 152));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 144));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 136));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 128));
  ULHomeSlamModel::getTrajectoryPointCloud(*(v38 - 120));
  CLMicroLocationStateMachine::StateMachineBase::~StateMachineBase(v30);
  _Unwind_Resume(a1);
}

_BYTE *CLMicroLocationLoiManager::VisitEntry@<X0>(CLMicroLocationLoiManager *this@<X0>, id *a2@<X1>, std::string *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v22.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(v22.__r_.__value_.__r.__words[1]) = 2082;
    *(&v22.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager: handleVisitEntry}", &v22, 0x12u);
  }

  [a2[4] coordinate];
  v8 = v7;
  [a2[4] coordinate];
  if (CLMicroLocationLoiManager::refreshRoutineStateAtLocation(this, v8, v9))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "LOI Manager, requested LOI for current visit location", &v22, 2u);
    }

    v11 = *(this + 3);
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v12 = *(v11 + 8);
      v22.__r_.__value_.__r.__words[2] = *(v11 + 24);
      *&v22.__r_.__value_.__l.__data_ = v12;
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v22.__r_.__value_.__l.__size_ != 17)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        goto LABEL_46;
      }

      v20 = *v22.__r_.__value_.__l.__data_ != 0x20656D6F48206E49 || *(v22.__r_.__value_.__r.__words[0] + 8) != 0x7461745320494F4CLL || *(v22.__r_.__value_.__r.__words[0] + 16) != 101;
      operator delete(v22.__r_.__value_.__l.__data_);
      if (v20)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) != 17)
      {
        goto LABEL_46;
      }

      v16 = v22.__r_.__value_.__r.__words[0] == 0x20656D6F48206E49 && v22.__r_.__value_.__l.__size_ == 0x7461745320494F4CLL;
      if (!v16 || v22.__r_.__value_.__s.__data_[16] != 101)
      {
        goto LABEL_46;
      }
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 1);
LABEL_46:
    result = std::string::basic_string[abi:ne200100]<0>(&v22, "In the process of entering Home LOI");
    goto LABEL_47;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v22.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(v22.__r_.__value_.__r.__words[1]) = 2082;
    *(&v22.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Failed To request LOI for current visit location}", &v22, 0x12u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v22.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(v22.__r_.__value_.__r.__words[1]) = 2082;
    *(&v22.__r_.__value_.__r.__words[1] + 2) = "";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Failed To request LOI for current visit location", "{msg%{public}.0s:LOI Manager, Failed To request LOI for current visit location}", &v22, 0x12u);
  }

  CLMicroLocationLoiManager::resetLoiVariables(this);
  result = std::string::basic_string[abi:ne200100]<0>(&v22, "Not in Active Location State");
LABEL_47:
  *a3 = v22;
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitEntry@<D0>(CLMicroLocationLoiManager *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2 + 2;
  if (CLMicroLocationLoiManager::isValidGeofence(this, a2[2]))
  {
    CLMicroLocationLoiManager::handleCustomLoiVisitEntry(this, a2[2], buf);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v9))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc.isa);
    v11 = *(this + 3);
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v12 = *(v11 + 8);
      *&buf[16] = *(v11 + 24);
      *buf = v12;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::RefreshLocationOnInterval@<D0>(CLMicroLocationLoiManager *this@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(this + 496) == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v11.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v11.__r_.__value_.__r.__words[1]) = 2082;
      *(&v11.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, refreshing location on XPC trigger}", &v11, 0x12u);
    }

    *(this + 126) = 5;
    *(this + 508) = 1;
    CLMicroLocationLoiManager::refreshRoutineStateAtLocation(this, *(this + 45), *(this + 46));
    std::string::basic_string[abi:ne200100]<0>(&v11, "In the process of entering Home LOI");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v11.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(v11.__r_.__value_.__r.__words[1]) = 2082;
      *(&v11.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:refreshRoutineStateAtLastLocation, won't run, last location not set}", &v11, 0x12u);
    }

    v7 = *(this + 3);
    if (*(v7 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v11.__r_.__value_.__r.__words[2] = *(v7 + 24);
      *&v11.__r_.__value_.__l.__data_ = v8;
    }
  }

  result = *&v11.__r_.__value_.__l.__data_;
  *a2 = v11;
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::FetchPlaceInference@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFetchPlaceInferenceForReason *a2@<X1>, std::string *a3@<X8>)
{
  *(this + 126) = *(a2 + 8);
  *(this + 508) = 1;
  if (CLMicroLocationLoiManager::fetchPlaceInference(this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "In the process of entering Home LOI");
    result = *&v8.__r_.__value_.__l.__data_;
    *a3 = v8;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    if (*(this + 508) == 1)
    {
      *(this + 508) = 0;
    }

    v6 = *(this + 3);
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      v8.__r_.__value_.__r.__words[2] = *(v6 + 24);
      *&v8.__r_.__value_.__l.__data_ = v7;
    }

    result = *&v8.__r_.__value_.__l.__data_;
    *a3 = v8;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

double CLMicroLocationLoiManager::VisitExit@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerLoiVisitExitEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = p_p;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager:, Handling Event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  CLMicroLocationLoiManager::exitCurrentLoi(this, 2);
  std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi@<D0>(id *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "#LOI Manager, In Home LOI, exit it before creating custom LOI process", &v8, 2u);
  }

  CLMicroLocationLoiManager::exitCurrentLoi(this, 9);
  CLMicroLocationLoiManager::handleEnableCustomLoi(this, a2[2], &v8);
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi@<D0>(CLMicroLocationLoiManager *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2 + 2;
  if (CLMicroLocationLoiManager::isValidGeofence(this, a2[2]))
  {
    CLMicroLocationLoiManager::exitCurrentLoi(this, 10);
    CLMicroLocationLoiManager::handleCustomLoiVisitEntry(this, a2[2], buf);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v9))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v6, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc.isa);
    v11 = *(this + 3);
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v12 = *(v11 + 8);
      *&buf[16] = *(v11 + 24);
      *buf = v12;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFetchPlaceInferenceForReason *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(a2 + 8);
  if (v5 != 3)
  {
    if (v5 != 12)
    {
      goto LABEL_8;
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 12);
    v5 = *(a2 + 8);
  }

  *(this + 126) = v5;
  *(this + 508) = 1;
  if (CLMicroLocationLoiManager::fetchPlaceInference(this))
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "In the process of entering Home LOI");
    result = *&v10.__r_.__value_.__l.__data_;
    *a3 = v10;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    return result;
  }

  if (*(this + 508) == 1)
  {
    *(this + 508) = 0;
  }

LABEL_8:
  v8 = *(this + 3);
  if (*(v8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v8 + 8), *(v8 + 16));
  }

  else
  {
    v9 = *(v8 + 8);
    v10.__r_.__value_.__r.__words[2] = *(v8 + 24);
    *&v10.__r_.__value_.__l.__data_ = v9;
  }

  result = *&v10.__r_.__value_.__l.__data_;
  *a3 = v10;
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitExit@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerGeofenceExitEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 2);
  if ((CLMicroLocationLoiManager::isValidGeofence(this, v22) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v14;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc_0.isa);
    v10 = *(this + 3);
    if (*(v10 + 31) < 0)
    {
      goto LABEL_51;
    }

LABEL_41:
    v15 = *(v10 + 8);
    *&buf[16] = *(v10 + 24);
    *buf = v15;
    goto LABEL_52;
  }

  if (*(this + 52) != *v22.data || *(this + 53) != *&v22.data[8])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, got geofence exit for an LOI which is not the currently the active LOI, this may happen if we jumped from one geofence to another and the entry for the new geofence arrived first, regionID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v8))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, got geofence exit for an LOI which is not the currently the active LOI, this may happen if we jumped from one geofence to another and the entry for the new geofence arrived first", "{msg%{public}.0s:#LOI Manager, got geofence exit for an LOI which is not the currently the active LOI, this may happen if we jumped from one geofence to another and the entry for the new geofence arrived first, regionID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v10 = *(this + 3);
    if (*(v10 + 31) < 0)
    {
LABEL_51:
      std::string::__init_copy_ctor_external(buf, *(v10 + 8), *(v10 + 16));
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v16 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v17;
    _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence exit for active LOI, regionID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  CLMicroLocationLoiManager::exitCurrentLoi(this, 11);
  std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
LABEL_52:
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerGeofenceEntryEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 2);
  if ((CLMicroLocationLoiManager::isValidGeofence(this, v22) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v7))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v8;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring", "{msg%{public}.0s:#LOI Manager, received geofence entry for an invalid fence, this should never happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_GenericFailure.isa, &cfstr_InvalidGeofenc.isa);
  }

  if (*(this + 52) == *v22.data && *(this + 53) == *&v22.data[8])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v13;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, got geofence entry for the current active LOI which shouldn't happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, got geofence entry for the current active LOI which shouldn't happen... ignoring", "{msg%{public}.0s:#LOI Manager, got geofence entry for the current active LOI which shouldn't happen... ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(&v22, &__p);
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence entry for different valid LOI, entering it, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 11);
    CLMicroLocationLoiManager::enterCustomLoi(this, *v22.data, *&v22.data[8], 10);
  }

  v16 = *(this + 3);
  if (*(v16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(v16 + 8), *(v16 + 16));
  }

  else
  {
    v17 = *(v16 + 8);
    *&buf[16] = *(v16 + 24);
    *buf = v17;
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi@<D0>(uuid *this@<X0>, uuid *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  CLMicroLocationLoiManager::handleDisableCustomLoiForAllServices(this, this[26]);
  if (CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(this, this[26]))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 68289026;
      *&v9[8] = 2082;
      *&v9[10] = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, No more services interested in this active LOI, exiting}", v9, 0x12u);
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 9);
  }

  CLMicroLocationLoiManager::handleEnableCustomLoi(this, a2[2], v9);
  result = *v9;
  *a3 = *v9;
  *(a3 + 16) = *&v9[16];
  *(a3 + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi@<D0>(id *this@<X0>, uuid *a2@<X1>, std::string *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  CLMicroLocationLoiManager::handleDisableCustomLoi(this, a2[2], a2[3], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = this[52] == *a2[2].data && this[53] == *&a2[2].data[8];
  if (v6 && CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(this, a2[2]))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf.__r_.__value_.__r.__words[0] = 68289026;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, Since we are in the LOI exit LOI}", &buf, 0x12u);
    }

    CLMicroLocationLoiManager::exitCurrentLoi(this, 9);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Not in Active Location State");
  }

  else
  {
    v8 = this[3];
    if (v8[31] < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(v8 + 1), *(v8 + 2));
    }

    else
    {
      v9 = *(v8 + 8);
      buf.__r_.__value_.__r.__words[2] = *(v8 + 3);
      *&buf.__r_.__value_.__l.__data_ = v9;
    }
  }

  result = *&buf.__r_.__value_.__l.__data_;
  *a3 = buf;
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::LoiFetchFailure@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToFetchLoiForLocationEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 512))
  {
    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_HomeLoiEntryFa.isa, &cfstr_LoiFetchFailur.isa);
    CLMicroLocationLoiManager::resetLoiVariables(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 3);
      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v8 = *(v7 + 8);
        v25.__r_.__value_.__r.__words[2] = *(v7 + 24);
        *&v25.__r_.__value_.__l.__data_ = v8;
      }

      v9 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      v10 = v25.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v11 = &v25;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      v27 = 2081;
      v28 = p_p;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = *(this + 3);
      if (*(v14 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v14 + 8), *(v14 + 16));
      }

      else
      {
        v15 = *(v14 + 8);
        v25.__r_.__value_.__r.__words[2] = *(v14 + 24);
        *&v25.__r_.__value_.__l.__data_ = v15;
      }

      v16 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      v17 = v25.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v18 = &v25;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v18;
      v27 = 2081;
      v28 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    v20 = *(this + 3);
    if (*(v20 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v20 + 8), *(v20 + 16));
    }

    else
    {
      v21 = *(v20 + 8);
      *&buf[16] = *(v20 + 24);
      *buf = v21;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLoiManager::SuccessfullyFetchedPlaceInference(CLMicroLocationLoiManager *this@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  if ((*(this + 512) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(this + 3);
      if (*(v28 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v28 + 8), *(v28 + 16));
      }

      else
      {
        v29 = *(v28 + 8);
        __str.__r_.__value_.__r.__words[2] = *(v28 + 24);
        *&__str.__r_.__value_.__l.__data_ = v29;
      }

      v45 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      v46 = __str.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      p_str = &__str;
      if (v45 < 0)
      {
        p_str = v46;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_str;
      v63 = 2081;
      v64 = p_p;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v49 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v49))
    {
      v50 = *(this + 3);
      if (*(v50 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v50 + 8), *(v50 + 16));
      }

      else
      {
        v51 = *(v50 + 8);
        __str.__r_.__value_.__r.__words[2] = *(v50 + 24);
        *&__str.__r_.__value_.__l.__data_ = v51;
      }

      v52 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      v53 = __str.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v54 = &__str;
      if (v52 < 0)
      {
        v54 = v53;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v54;
      v63 = 2081;
      v64 = v55;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v56 = *(this + 3);
    if (*(v56 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v56 + 8), *(v56 + 16));
    }

    else
    {
      v57 = *(v56 + 8);
      *&buf[16] = *(v56 + 24);
      *buf = v57;
    }

    goto LABEL_94;
  }

  v6 = [a2[4] _loiIdentifier];

  if (!v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v30 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, received nil LOI Identifier from place inference, possibly because there is no active user on macOS, we will start leeching and wait for next location update}", buf, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v31 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, received nil LOI Identifier from place inference, possibly because there is no active user on macOS, we will start leeching and wait for next location update", "{msg%{public}.0s:LOI Manager, received nil LOI Identifier from place inference, possibly because there is no active user on macOS, we will start leeching and wait for next location update}", buf, 0x12u);
    }

    CLMicroLocationLoiManager::resetLoiVariables(this);
    [*(this + 43) startLeechingLocationUpdates];
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
LABEL_94:
    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
    goto LABEL_95;
  }

  v7 = [a2[4] referenceLocation];
  [v7 coordinate];
  v9 = v8;
  v10 = [a2[4] referenceLocation];
  [v10 coordinate];
  CLMicroLocationLoiManager::initializeStateAtLocation(this, v9, v11);

  CLMicroLocationLoiManager::convertPlaceInferenceUserPlaceTypeToString([a2[4] userType], buf);
  v12 = (this + 392);
  if (*(this + 415) < 0)
  {
    operator delete(*v12);
  }

  *v12 = *buf;
  *(this + 51) = *&buf[16];
  v13 = [a2[4] _loiIdentifier];
  v14 = [v13 UUIDString];
  v15 = v14;
  v16 = [v14 UTF8String];
  v17 = strlen(v16);
  *(this + 54) = boost::uuids::string_generator::operator()<char const*>(buf, v16, &v16[v17]);
  *(this + 55) = v18;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [a2[4] _loiIdentifier];
    v21 = [v20 UUIDString];
    v22 = v21;
    v23 = [v21 UTF8String];
    v24 = (this + 392);
    if (*(this + 415) < 0)
    {
      v24 = *v12;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v23;
    v63 = 2081;
    v64 = v24;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Retrieved place infernce, LOI ID:%{private, location:escape_only}s, LOI TYPE:%{private, location:escape_only}s}", buf, 0x26u);
  }

  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&__str);
  v25 = *(this + 415);
  if ((*(this + 415) & 0x80000000) == 0)
  {
    v26 = (this + 392);
    if (v25 != 4)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (*v26 == 1701670760)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (*(this + 50) == 4)
  {
    v26 = *v12;
    goto LABEL_30;
  }

LABEL_31:
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=((this + 392), &__str);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v33 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v34 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v34;
      _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, forcing LOI type, LOI Override:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v25 = *(this + 415);
  }

LABEL_41:
  if ((v25 & 0x80) != 0)
  {
    if (*(this + 50) != 4)
    {
LABEL_47:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v35 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v36 = "LOI Manager, Not a Home LOI";
      v37 = v35;
      v38 = OS_LOG_TYPE_INFO;
LABEL_51:
      _os_log_impl(&dword_258FE9000, v37, v38, v36, buf, 2u);
LABEL_52:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v39 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_INFO, "LOI Manager, Returning to Inactive Location State and starting leeching", buf, 2u);
      }

      CLMicroLocationLoiManager::resetLoiVariables(this);
      [*(this + 43) startLeechingLocationUpdates];
      std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
      goto LABEL_57;
    }

    v12 = *v12;
  }

  else if (v25 != 4)
  {
    goto LABEL_47;
  }

  if (*v12 != 1701670760)
  {
    goto LABEL_47;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v40 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_INFO, "LOI Manager, fetching related LOIs for LOI", buf, 2u);
  }

  v41 = [a2[4] _loiIdentifier];
  LoiIdsForLoi = CLMicroLocationLoiManager::fetchLoiIdsForLoi(this, v41);

  if (!LoiIdsForLoi)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v59 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v36 = "LOI Manager, Failed To request related LOIs";
    v37 = v59;
    v38 = OS_LOG_TYPE_ERROR;
    goto LABEL_51;
  }

  *(this + 256) = 256;
  v43 = *(this + 3);
  if (*(v43 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(buf, *(v43 + 8), *(v43 + 16));
  }

  else
  {
    v44 = *(v43 + 8);
    *&buf[16] = *(v43 + 24);
    *buf = v44;
  }

LABEL_57:
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_95:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_25919C038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLoiManager::FailedToFetchedPlaceInference(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToFetchPlaceInference *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "LOI Manager, Failed To fetch place inferences, starting leeching", buf, 2u);
  }

  if (*(this + 512))
  {
    ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(buf);
    v7 = buf[23];
    v8 = buf[23];
    if (buf[23] < 0)
    {
      v7 = *&buf[8];
    }

    if (v7)
    {
      std::string::operator=((this + 392), buf);
      *(this + 54) = (*(*this + 16))(this);
      *(this + 55) = v9;
      *(this + 512) = 0;
      memset(&v29, 0, sizeof(v29));
      CLMicroLocationLoiManager::tryToEnterHomeLoi(this, this + 392, this + 27, &v29, &__p);
      *a3 = *&__p.__r_.__value_.__l.__data_;
      v10 = v29.__r_.__value_.__r.__words[0];
      *(a3 + 16) = *(&__p.__r_.__value_.__l + 2);
      *(a3 + 24) = 1;
      if (v10)
      {
        v29.__r_.__value_.__l.__size_ = v10;
        operator delete(v10);
      }

      if ((buf[23] & 0x80) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_HomeLoiEntryFa.isa, &cfstr_PlaceInference.isa);
      CLMicroLocationLoiManager::resetLoiVariables(this);
      [*(this + 43) startLeechingLocationUpdates];
      std::string::basic_string[abi:ne200100]<0>(&v29, "Not in Active Location State");
      *a3 = v29;
      *(a3 + 24) = 1;
      if (v8 < 0)
      {
LABEL_19:
        operator delete(*buf);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(this + 3);
      if (*(v12 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *(v12 + 8), *(v12 + 16));
      }

      else
      {
        v13 = *(v12 + 8);
        v29.__r_.__value_.__r.__words[2] = *(v12 + 24);
        *&v29.__r_.__value_.__l.__data_ = v13;
      }

      v14 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      v15 = v29.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v16 = &v29;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v16;
      v31 = 2081;
      v32 = p_p;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v18))
    {
      v19 = *(this + 3);
      if (*(v19 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *(v19 + 8), *(v19 + 16));
      }

      else
      {
        v20 = *(v19 + 8);
        v29.__r_.__value_.__r.__words[2] = *(v19 + 24);
        *&v29.__r_.__value_.__l.__data_ = v20;
      }

      v21 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      v22 = v29.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v23 = &v29;
      if (v21 < 0)
      {
        v23 = v22;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &__p;
      }

      else
      {
        v24 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v23;
      v31 = 2081;
      v32 = v24;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    v25 = *(this + 3);
    if (*(v25 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v25 + 8), *(v25 + 16));
    }

    else
    {
      v26 = *(v25 + 8);
      *&buf[16] = *(v25 + 24);
      *buf = v26;
    }

    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
}

double CLMicroLocationLoiManager::RelatedLois@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerReceivedRelatedLoisEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 513))
  {
    CLMicroLocationLoiManager::tryToEnterHomeLoi(this, this + 392, this + 27, a2 + 4, buf);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 3);
      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v8 = *(v7 + 8);
        v25.__r_.__value_.__r.__words[2] = *(v7 + 24);
        *&v25.__r_.__value_.__l.__data_ = v8;
      }

      v9 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      v10 = v25.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v11 = &v25;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v11;
      v27 = 2081;
      v28 = p_p;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = *(this + 3);
      if (*(v14 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v14 + 8), *(v14 + 16));
      }

      else
      {
        v15 = *(v14 + 8);
        v25.__r_.__value_.__r.__words[2] = *(v14 + 24);
        *&v25.__r_.__value_.__l.__data_ = v15;
      }

      v16 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      v17 = v25.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v18 = &v25;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v18;
      v27 = 2081;
      v28 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    v20 = *(this + 3);
    if (*(v20 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v20 + 8), *(v20 + 16));
    }

    else
    {
      v21 = *(v20 + 8);
      *&buf[16] = *(v20 + 24);
      *buf = v21;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::EnableCustomLoiWhileEnabling@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerEnableCustomLoiEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(this + 58);
  v7 = *(this + 59);
  while (1)
  {
    if (v6 == v7)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        boost::lexical_cast<std::string,boost::uuids::uuid>(a2 + 32, &__p);
        v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v10;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Adding new service to list of servies that have requested to enable custom LOI, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::vector<boost::uuids::uuid>::push_back[abi:ne200100](this + 464, a2 + 2);
      v11 = *(this + 3);
      if ((*(v11 + 31) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_17:
      std::string::__init_copy_ctor_external(buf, *(v11 + 8), *(v11 + 16));
      goto LABEL_36;
    }

    v21 = *v6;
    if (v21 == *(a2 + 4) && *(&v21 + 1) == *(a2 + 5))
    {
      break;
    }

    ++v6;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(a2 + 32, &__p);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v13;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, got enable custom LOI request from the same service, ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(v14))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(a2 + 32, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = p_p;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, got enable custom LOI request from the same service, ignoring", "{msg%{public}.0s:#LOI Manager, got enable custom LOI request from the same service, ignoring, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(this + 3);
  if (*(v11 + 31) < 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  v16 = *(v11 + 8);
  *&buf[16] = *(v11 + 24);
  *buf = v16;
LABEL_36:
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::CustomLoiEntryWhileEnabling@<D0>(id *this@<X0>, const CLMiLoLoiManagerGeofenceEntryEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  *v25 = *(a2 + 2);
  if (v25[0] == this[54] && v25[1] == this[55])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(v25, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence entry for LOI, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CLMicroLocationLoiManager::sendCustomLoiCreationEvent(this);
    v13 = this[58];
    v14 = this[59];
    while (v13 != v14)
    {
      *buf = *v13;
      CLMicroLocationLoiManager::addLoiAndServiceMapping(this, *v25, buf);
      ++v13;
    }

    v15 = -1;
  }

  else
  {
    if (*(this + 432))
    {
LABEL_6:
      boost::lexical_cast<std::string,boost::uuids::uuid>((this + 54), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_p];
      v8 = [v7 uppercaseString];

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v10;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, Disabling geofence that we were trying to enable for custom LOI since we are failing the request, loiID:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      [this[43] removeGeofenceWithRegionId:v8];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = 0;
      while (v16 != 15)
      {
        v17 = v16;
        if (*(this + v16++ + 433))
        {
          if (v17 <= 0xE)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, Error: tried to enable custom LOI at an active custom LOI}", buf, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v20 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, Error: tried to enable custom LOI at an active custom LOI", "{msg%{public}.0s:#LOI Manager, Error: tried to enable custom LOI at an active custom LOI}", buf, 0x12u);
    }

    v15 = 34;
  }

  CLMicroLocationLoiManager::resetLoiVariables(this);
  CLMicroLocationLoiManager::enterCustomLoi(this, v25[0], v25[1], 10);
  (**this[44])(this[44], v15);
  std::string::basic_string[abi:ne200100]<0>(buf, "In Custom LOI State");
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLoiManager::LocationUpdate(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 514))
  {
    v6 = a2[4];
    [v6 coordinate];
    *(a1 + 360) = v7;
    [v6 coordinate];
    *(a1 + 368) = v8;
    [*(a1 + 344) removeGeofencesNearLocationWithLatitude:*(a1 + 360) andLongitude:?];
    [v6 horizontalAccuracy];
    *(a1 + 376) = v9;
    [v6 verticalAccuracy];
    *(a1 + 384) = v10;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 360);
      v13 = *(a1 + 368);
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2053;
      *&buf[20] = v12;
      v36 = 2053;
      v37 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got location update to enable custom geofence, latitude:%{sensitive}7f, longitude:%{sensitive}7f}", buf, 0x26u);
    }

    [*(a1 + 344) setGeofenceAtLocation:v6];
    *(a1 + 514) = 256;
    v14 = *(a1 + 24);
    if (*(v14 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v14 + 8), *(v14 + 16));
    }

    else
    {
      v15 = *(v14 + 8);
      *&buf[16] = *(v14 + 24);
      *buf = v15;
    }

    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 24);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v34.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v20 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v21 = &v34;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v21;
      v36 = 2081;
      v37 = p_p;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v23 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v23))
    {
      v24 = *(a1 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v34.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v34.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v27 = v34.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v28 = &v34;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v28;
      v36 = 2081;
      v37 = v29;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    v30 = *(a1 + 24);
    if (*(v30 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v30 + 8), *(v30 + 16));
    }

    else
    {
      v31 = *(v30 + 8);
      *&buf[16] = *(v30 + 24);
      *buf = v31;
    }

    *a3 = *buf;
    *(a3 + 16) = *&buf[16];
    *(a3 + 24) = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
}

double CLMicroLocationLoiManager::FailureToGetLocationUpdate@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToGetLocationUpdateEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo... aborting request}", buf, 0x12u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to get current location to enable MiLo... aborting request", "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo... aborting request}", buf, 0x12u);
  }

  if (*(this + 514))
  {
    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_CustomLoiEntry.isa, &cfstr_FailedToGetCur.isa);
    (***(this + 44))(*(this + 44), 34);
    CLMicroLocationLoiManager::resetLoiVariables(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 3);
      if (*(v9 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        v27.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&v27.__r_.__value_.__l.__data_ = v10;
      }

      v11 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      v12 = v27.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v13 = &v27;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v13;
      v29 = 2081;
      v30 = p_p;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = *(this + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v27.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v27.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      v19 = v27.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v20 = &v27;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v20;
      v29 = 2081;
      v30 = v21;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    v22 = *(this + 3);
    if (*(v22 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v22 + 8), *(v22 + 16));
    }

    else
    {
      v23 = *(v22 + 8);
      *&buf[16] = *(v22 + 24);
      *buf = v23;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::GeofenceActivationStarted@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerStartedActivatingGeofenceEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(this + 515) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(this + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v13 = __p.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &v26);
      p_p = &__p;
      if (v12 < 0)
      {
        p_p = v13;
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v26;
      }

      else
      {
        v15 = v26.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = p_p;
      v29 = 2081;
      v30 = v15;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v16))
    {
      v17 = *(this + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&__p.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v20 = __p.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &v26);
      v21 = &__p;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v26;
      }

      else
      {
        v22 = v26.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v21;
      v29 = 2081;
      v30 = v22;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v8 = *(this + 3);
    if (*(v8 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v8 + 8), *(v8 + 16));
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *(this + 27) = *(a2 + 2);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(this + 432, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, successfully set geofence, now waiting on fence entry update, geofenceId:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = *(this + 3);
  if ((*(v8 + 31) & 0x80000000) == 0)
  {
LABEL_43:
    v23 = *(v8 + 8);
    *&buf[16] = *(v8 + 24);
    *buf = v23;
    goto LABEL_44;
  }

  std::string::__init_copy_ctor_external(buf, *(v8 + 8), *(v8 + 16));
LABEL_44:
  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::FailureToActivateGeofenceAtCurrentLocation@<D0>(CLMicroLocationLoiManager *this@<X0>, const CLMiLoLoiManagerFailedToSetGeofenceEvent *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, failing custom loi request}", buf, 0x12u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to set geofence at current location to enable MiLo, failing custom loi request", "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, failing custom loi request}", buf, 0x12u);
  }

  if (*(this + 515))
  {
    CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_CustomLoiEntry.isa, &cfstr_FailedToSetGeo.isa);
    (***(this + 44))(*(this + 44), 34);
    CLMicroLocationLoiManager::resetLoiVariables(this);
    std::string::basic_string[abi:ne200100]<0>(buf, "Not in Active Location State");
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 3);
      if (*(v9 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        v27.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&v27.__r_.__value_.__l.__data_ = v10;
      }

      v11 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      v12 = v27.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v13 = &v27;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v13;
      v29 = 2081;
      v30 = p_p;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = *(this + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v27.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v27.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      v19 = v27.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(a2, &__p);
      v20 = &v27;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v20;
      v29 = 2081;
      v30 = v21;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Manager, Got event when not expecting it", "{msg%{public}.0s:LOI Manager, Got event when not expecting it, State:%{private, location:escape_only}s, Event:%{private, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    v22 = *(this + 3);
    if (*(v22 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v22 + 8), *(v22 + 16));
    }

    else
    {
      v23 = *(v22 + 8);
      *&buf[16] = *(v22 + 24);
      *buf = v23;
    }
  }

  result = *buf;
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *(a3 + 24) = 1;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

double CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler@<D0>(CLMicroLocationLoiManager *this@<X0>, uint64_t a2@<X8>)
{
  CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(this, &cfstr_CustomLoiEntry.isa, &cfstr_CustomLoiEntry_0.isa);
  (***(this + 44))();
  CLMicroLocationLoiManager::resetLoiVariables(this);
  std::string::basic_string[abi:ne200100]<0>(&v6, "Not in Active Location State");
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = 1;
  return result;
}

void sub_25919E61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919E994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919EC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919EF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25919F2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CLMicroLocationLoiManager::setupWhenNotInAnActiveLocationState(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLoiManager::~CLMicroLocationLoiManager(CLMicroLocationLoiManager *this)
{
  *this = &unk_286A5D500;
  *(this + 1) = &unk_286A5D5A8;
  v2 = (this + 16);
  *(this + 2) = &unk_286A5D618;

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  ULHomeSlamModel::getTrajectoryPointCloud((this + 320));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 312));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 304));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 296));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 288));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 280));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 272));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 264));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 256));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 248));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 240));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 232));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 224));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 216));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 208));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 200));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 192));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 184));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 176));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 168));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 160));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 152));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 144));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 136));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 128));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 120));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 112));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 104));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 96));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 88));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 80));
  ULHomeSlamModel::getTrajectoryPointCloud((this + 72));
  CLMicroLocationStateMachine::StateMachineBase::~StateMachineBase(v2);
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager(this);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toCLMicroLocationLoiManager::~CLMicroLocationLoiManager(CLMicroLocationLoiManager *this)
{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 8));
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 16));
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLoiManager::~CLMicroLocationLoiManager((this - 16));

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::setupWithLoiBridge(id *a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_FAULT, "FAULT: Tried to initialize LOI Manager with a nil LOI Bridge Object", v6, 2u);
    }
  }

  objc_storeStrong(a1 + 43, a2);
  [a1[43] setMicroLocationLoiDelegate:a1 + 1];
  CLMicroLocationLoiManager::setupStartTimer(a1);
}

void CLMicroLocationLoiManager::setupStartTimer(CLMicroLocationLoiManager *this)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULInitialDelayForFetchPlaceInference"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 unsignedIntValue];
  }

  else
  {
    v7 = [&unk_286A72750 unsignedIntValue];
  }

  v8 = v7;

  v9 = [v2 numberWithDouble:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN25CLMicroLocationLoiManager15setupStartTimerEv_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = this;
  v10 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v9 repeats:MEMORY[0x277CBEC28] block:v12];
  v11 = *(this + 65);
  *(this + 65) = v10;
}

uint64_t CLMicroLocationLoiManager::setupRegionMonitoring(CLMicroLocationLoiManager *this)
{
  v2 = *(this + 43);
  if (!v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_FAULT, "FAULT: Tried to setup Region Monitoring with a nil LOI Bridge Object", v5, 2u);
    }

    v2 = *(this + 43);
  }

  return [v2 setupRegionMonitoring];
}

void CLMicroLocationLoiManager::enableMicroLocationAtCurrentLocationForService(CLMicroLocationLoiManager *this, const uuid *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
  v6 = off_286A5E190;
  v9 = *a2;
  if (v8 < 0)
  {
    __p[1] = 17;
    v4 = __p[0];
  }

  else
  {
    v8 = 17;
  }

  strcpy(v4, "Enable Custom LOI");
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v6);
  v6 = &unk_286A5E1B0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_25919FAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerEnableCustomLoiEvent::~CLMiLoLoiManagerEnableCustomLoiEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::disableMicroLocationAtLocationForService(CLMicroLocationLoiManager *this, uuid a2, const uuid *a3)
{
  v4 = *&a2.data[8];
  v5 = *a2.data;
  v15 = *MEMORY[0x277D85DE8];
  v7 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
  v9 = off_286A5E1D0;
  v12 = v5;
  v13 = v4;
  v14 = *a3;
  if (v11 < 0)
  {
    __p[1] = 18;
    v7 = __p[0];
  }

  else
  {
    v11 = 18;
  }

  strcpy(v7, "Disable Custom LOI");
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v9);
  v9 = &unk_286A5E1B0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_25919FC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerDisableCustomLoiEvent::~CLMiLoLoiManagerDisableCustomLoiEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::fetchPlaceInferenceForReason(uint64_t a1, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
  v4 = &unk_286A5E1F0;
  v6 = a2;
  std::string::__assign_external(&__p, "Fetch Place Inference For Reason", 0x20uLL);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v4);
  v4 = &unk_286A5E1B0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25919FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerFetchPlaceInferenceForReason::~CLMiLoLoiManagerFetchPlaceInferenceForReason(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleRefreshLocationIntervalNotificaion(CLMicroLocationLoiManager *this)
{
  CLMiLoLoiManagerRefreshLocationOnEvent::CLMiLoLoiManagerRefreshLocationOnEvent(v2);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), v2);
  v2[0] = &unk_286A5E1B0;
  if (v3 < 0)
  {
    operator delete(v2[1]);
  }
}

void sub_25919FE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerRefreshLocationOnEvent::~CLMiLoLoiManagerRefreshLocationOnEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

_BYTE *CLMicroLocationLoiManager::handleCustomLoiVisitEntry@<X0>(CLMicroLocationLoiManager *this@<X0>, uuid a2@<0:X1, 8:X2>, _BYTE *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v16, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = p_p;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got geofence entry event for valid LOI, LOI ID:%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  CLMicroLocationLoiManager::enterCustomLoi(this, *v16.data, *&v16.data[8], 10);
  result = std::string::basic_string[abi:ne200100]<0>(a3, "In Custom LOI State");
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLoiManager::enterCustomLoi(CLMicroLocationLoiManager *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLMicroLocationLoiManager::sendCustomLoiVisitEvent(a1, &cfstr_CustomLoi.isa, &cfstr_Entry.isa);
  std::string::basic_string[abi:ne200100]<0>(&__p, "custom");
  CLMicroLocationLoiManager::enterLoi(a1, a2, a3, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *v9.data = a2;
  *&v9.data[8] = a3;
  CLMicroLocationLoiManager::updateDbCustomLoiWasLastSeenNow(a1, v9);
}

void sub_2591A00DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *CLMicroLocationLoiManager::handleEnableCustomLoi@<X0>(id *this@<X0>, uuid a2@<0:X1, 8:X2>, _BYTE *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#LOI Manager, kick off creating custom LOI process", v8, 2u);
  }

  [this[43] getCurrentLocation];
  std::vector<boost::uuids::uuid>::push_back[abi:ne200100]((this + 58), &v9);
  this[54] = 0;
  this[55] = 0;
  result = std::string::basic_string[abi:ne200100]<0>(a3, "In the process of entering Custom LOI");
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLoiManager::handleDisableCustomLoi(id *this@<X0>, uuid a2@<0:X1, 8:X2>, uuid a3@<0:X3, 8:X4>, std::string *a4@<X8>)
{
  CLMicroLocationLoiManager::disableCustomLoiForService(this, a2, a3);
  (*(*this[44] + 8))(this[44], -1);
  v6 = this[3];
  if (v6[31] < 0)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);

    std::string::__init_copy_ctor_external(a4, v8, v9);
  }

  else
  {
    v7 = *(v6 + 8);
    a4->__r_.__value_.__r.__words[2] = *(v6 + 3);
    *&a4->__r_.__value_.__l.__data_ = v7;
  }
}

void CLMicroLocationLoiManager::disableCustomLoiForService(id *this, uuid a2, uuid a3)
{
  v3 = *&a2.data[8];
  v4 = *a2.data;
  v25 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v23 = a3;
  CLMicroLocationLoiManager::removeLoiAndServiceMapping(this, a2, &v23);
  *v26.data = v4;
  *&v26.data[8] = v3;
  if (CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(this, v26))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v24, &v14);
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v23, &__p);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v14;
    }

    else
    {
      v6 = v14.__r_.__value_.__r.__words[0];
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v8 = [v7 uppercaseString];

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &v14;
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v14.__r_.__value_.__r.__words[0];
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2081;
      v20 = v10;
      v21 = 2081;
      v22 = p_p;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, No More services monitoring this LOI, disable geofence for LOI, loiID:%{private, location:escape_only}s, Service Id:%{private, location:escape_only}s}", buf, 0x26u);
    }

    [this[43] removeGeofenceWithRegionId:v8];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2591A042C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::removeLoiAndServiceMapping(CLMicroLocationLoiManager *this, uuid a2, const uuid *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = a2;
  boost::lexical_cast<std::string,boost::uuids::uuid>(a3, &v11);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v20, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v7 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = p_p;
    v18 = 2081;
    v19 = v7;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, Removing LOI to Service ID mapping, Location ID:%{private, location:escape_only}s, Service ID:%{private, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = (*(**(this + 41) + 112))(*(this + 41));
  [v8 removeServiceToCustomLoiMapping:a3 loiId:&v20];

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2591A0618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL CLMicroLocationLoiManager::noMoreServicesMonitoringThisLoi(CLMicroLocationLoiManager *this, uuid a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v2 = (*(**(this + 41) + 112))(*(this + 41));
  v3 = v2;
  if (v2)
  {
    [v2 getAllServicesEnabledAtCustomLoiId:&v8];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v6)
  {
    operator delete(v6);
  }

  result = v7 == v6;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLoiManager::handleDisableCustomLoiForAllServices(CLMicroLocationLoiManager *this, uuid a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v3 = (*(**(this + 41) + 112))(*(this + 41));
  v4 = v3;
  if (v3)
  {
    [v3 getAllServicesEnabledAtCustomLoiId:&v9];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v5 = v7;
  if (v7 != v8)
  {
    do
    {
      CLMicroLocationLoiManager::disableCustomLoiForService(this, v9, *v5++);
    }

    while (v5 != v8);
    v5 = v7;
  }

  if (v5)
  {
    operator delete(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

_BYTE *CLMicroLocationLoiManager::tryToEnterHomeLoi@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *(a1 + 416) = CLMicroLocationLoiManager::getLoiGroupId(a1, a2, a3, a4);
  *(a1 + 424) = v7;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(a1 + 416, &__p);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289283;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2081;
    v24 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Manager, Fetched LOI Group ID, LOI Group ID :%{private, location:escape_only}s}", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 416))
  {
LABEL_10:
    [*(a1 + 344) stopLeechingLocationUpdates];
    if (*(a1 + 508) == 1)
    {
      v10 = *(a1 + 504);
      *(a1 + 508) = 0;
    }

    else
    {
      v10 = 1;
    }

    v14 = *(a1 + 352);
    if (*(a1 + 415) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(a1 + 392), *(a1 + 400));
    }

    else
    {
      v17 = *(a1 + 392);
    }

    (*(*v14 + 16))(v14, &v17, *(a1 + 416), *(a1 + 424), v10);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v13 = "In Home LOI State";
  }

  else
  {
    v11 = 417;
    while (v11 != 432)
    {
      if (*(a1 + v11++))
      {
        if ((v11 - 418) < 0xF)
        {
          goto LABEL_10;
        }

        break;
      }
    }

    CLMicroLocationLoiManager::resetLoiVariables(a1);
    v13 = "Not in Active Location State";
  }

  result = std::string::basic_string[abi:ne200100]<0>(a5, v13);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLMicroLocationLoiManager::getLoiGroupId(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v36 = 0uLL;
  v8 = (*(**(a1 + 328) + 64))(*(a1 + 328));
  v9 = v8;
  if (v8)
  {
    [v8 getLoiGroupIdForLoi:a3];
  }

  else
  {
    v34 = 0uLL;
    v35 = 0;
  }

  if (v35 == 1)
  {
    if (v34 == 0)
    {
      v34 = *a3;
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEBUG, "#LOI Manager, Overwriting stored LOI group ID because nil uuid was retrieved", buf, 2u);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if ((v35 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      boost::lexical_cast<std::string,boost::uuids::uuid>(&v34, &v29);
      v12 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      v13 = v29.__r_.__value_.__r.__words[0];
      boost::lexical_cast<std::string,boost::uuids::uuid>(a3, &__p);
      v14 = &v29;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68289538;
      *&buf[4] = 0;
      *v31 = 2082;
      *&v31[2] = "";
      *&v31[10] = 2082;
      *&v31[12] = v14;
      v32 = 2082;
      v33 = p_p;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, got previously stored LOI Group ID for LOI ID, LOI Group Id:%{public, location:escape_only}s, LOI ID:%{public, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    if ((v35 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v36 = v34;
    goto LABEL_45;
  }

  v16 = (*(**(a1 + 328) + 64))(*(a1 + 328));
  v17 = v16;
  if (v16)
  {
    [v16 getLoiGroupIdsForLois:a4];
  }

  else
  {
    *buf = 0;
    *v31 = 0;
    *&v31[8] = 0;
  }

  if (*v31 != *buf)
  {
    if (*v31 - *buf >= 0x11uLL)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLoiManager::VisitEntry();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v29.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "#LOI Manager, received multiple Loi Group IDs for LOI -- this should never happen", &v29, 2u);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "#LOI Manager, got previously stored LOI Group ID for list of LOI IDs", &v29, 2u);
    }

    v20 = *buf;
    v36 = **buf;
LABEL_44:
    *v31 = v20;
    operator delete(v20);
    goto LABEL_45;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v21 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_INFO, "#LOI Manager, never before seen LOI, so starting with this LOI ID as the group ID", &v29, 2u);
  }

  v36 = *a3;
  v20 = *buf;
  if (*buf)
  {
    goto LABEL_44;
  }

LABEL_45:
  v22 = *a4;
  v23 = a4[1];
  v24 = (v23 - *a4) >> 4;
  *v31 = 0;
  *&v31[8] = 0;
  *buf = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<std::__wrap_iter<boost::uuids::uuid const*>,std::__wrap_iter<boost::uuids::uuid const*>>(buf, v22, v23, v24);
  std::vector<boost::uuids::uuid>::push_back[abi:ne200100](buf, a3);
  v25 = (*(**(a1 + 328) + 64))(*(a1 + 328));
  [v25 updateLoiIds:buf withLoiGroupId:&v36 andLoiType:a2];

  if (*buf)
  {
    *v31 = *buf;
    operator delete(*buf);
  }

  result = v36;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591A0F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::exitCurrentLoi(uint64_t a1, uint64_t a2)
{
  CLMicroLocationLoiManager::resetLoiVariables(a1);
  v4 = *(a1 + 352);
  if (*(a1 + 415) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 392), *(a1 + 400));
  }

  else
  {
    __p = *(a1 + 392);
  }

  (*(*v4 + 16))(v4, &__p, *(a1 + 416), *(a1 + 424), a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2591A1024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationLoiManager::isValidGeofence(CLMicroLocationLoiManager *this, uuid a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 41) + 112))(*(this + 41));
  v3 = v2;
  if (!v2)
  {

    goto LABEL_16;
  }

  [v2 getAllDistinctCustomLoiIds];

  if (v11 == v12)
  {
    LOBYTE(v3) = 0;
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_15:
    operator delete(v11);
    goto LABEL_16;
  }

  LOBYTE(v3) = 0;
  v4 = v11;
  do
  {
    v5 = *v4;
    v6 = v4[1];
    v4 += 2;
    v8 = *a2.data == v5 && *&a2.data[8] == v6;
    LOBYTE(v3) = v8 | v3;
  }

  while (v4 != v12);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

void CLMicroLocationLoiManager::sendLoiRelatedErrorEvent(CLMicroLocationLoiManager *this, NSString *a2, NSString *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v12[0] = @"loiRelatedFailureOccurred";
  v12[1] = @"failureType";
  v13[0] = &unk_286A72738;
  v13[1] = v5;
  v13[2] = v6;
  v12[2] = @"failureReason";
  v12[3] = @"fsmStateDuringFailure";
  v7 = *(this + 3);
  v8 = (v7 + 8);
  if (*(v7 + 31) < 0)
  {
    v8 = *v8;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  CLMicroLocationLoiManager::sendCoreAnalyticsEvent(v10, &cfstr_ComAppleMicrol_18.isa, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2591A126C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

BOOL CLMicroLocationLoiManager::fetchPlaceInference(CLMicroLocationLoiManager *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(this + 508) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    CLMicroLocationProtobufHelper::convertChangedLoiReasonToMessage(*(this + 126), __p);
    if (v11 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager, Attempting to fetch place inference, Reason::%{private, location:escape_only}s}", buf, 0x1Cu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = *(this + 43);
  if (v4)
  {
    [*(this + 43) stopLeechingLocationUpdates];
    if ((*(this + 508) & ((*(this + 126) & 0xFFFFFFFE) == 6)) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [*(this + 43) fetchPlaceInferenceAtCurrentLocationWithPolicy:v5];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning LOI Bridge not setup.}", buf, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning LOI Bridge not setup.", "{msg%{public}.0s:#Warning LOI Bridge not setup.}", buf, 0x12u);
    }
  }

  result = v4 != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CLMicroLocationLoiManager::fetchLoiIdsForLoi(CLMicroLocationLoiManager *this, NSUUID *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(this + 43);
  if (v4)
  {
    [v4 fetchRelatedLoisForLoi:v3];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 68289026;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning LOI Bridge not setup.}", v8, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

_BYTE *CLMicroLocationLoiManager::convertPlaceInferenceUserPlaceTypeToString@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = "other";
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v3 = "home";
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = "work";
        goto LABEL_12;
      case 3:
        v3 = "school";
        goto LABEL_12;
      case 4:
        v3 = "gym";
LABEL_12:

        return std::string::basic_string[abi:ne200100]<0>(a2, v3);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Please update this switch statement.", v6, 2u);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "none");
}

void CLMicroLocationLoiManager::startCustomLoiEntryTimer(id *this)
{
  v20 = *MEMORY[0x277D85DE8];
  [this[66] invalidate];
  v2 = this[66];
  this[66] = 0;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager, startCustomLoiEntryTimer}", buf, 0x12u);
  }

  v4 = MEMORY[0x277CCABB0];
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiEntryTimeout"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A72768 doubleValue];
  }

  v10 = v9;

  v11 = [v4 numberWithDouble:v10];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZN25CLMicroLocationLoiManager24startCustomLoiEntryTimerEv_block_invoke;
  v15[3] = &__block_descriptor_40_e5_v8__0l;
  v15[4] = this;
  v12 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v11 repeats:MEMORY[0x277CBEC28] block:v15];
  v13 = this[66];
  this[66] = v12;

  v14 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationLoiManager::sendCustomLoiCreationEvent(CLMicroLocationLoiManager *this)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_286A72738;
  v6[0] = @"createdCustomLoi";
  v6[1] = @"geofenceLocationHorizontalAccuracy";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 47)];
  v7[1] = v2;
  v6[2] = @"geofenceLocationVerticalAccuracy";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 48)];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  CLMicroLocationLoiManager::sendCoreAnalyticsEvent(v4, &cfstr_ComAppleMicrol_16.isa, v4);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2591A1AC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::addLoiAndServiceMapping(CLMicroLocationLoiManager *this, uuid a2, const uuid *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = a2;
  boost::lexical_cast<std::string,boost::uuids::uuid>(a3, &v11);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    boost::lexical_cast<std::string,boost::uuids::uuid>(&v20, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v7 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = p_p;
    v18 = 2081;
    v19 = v7;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, Adding LOI to Service ID mapping, Location ID:%{private, location:escape_only}s, Service ID:%{private, location:escape_only}s}", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = (*(**(this + 41) + 112))(*(this + 41));
  [v8 addServiceToCustomLoiMapping:a3 loiId:&v20];

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2591A1C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::enterLoi(uint64_t a1, uint64_t a2, uint64_t a3, std::string *__str, uint64_t a5)
{
  *(a1 + 416) = a2;
  *(a1 + 424) = a3;
  v7 = (a1 + 392);
  std::string::operator=((a1 + 392), __str);
  v8 = *(a1 + 352);
  if (*(a1 + 415) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 392), *(a1 + 400));
  }

  else
  {
    __p = *v7;
  }

  (*(*v8 + 16))(v8, &__p, *(a1 + 416), *(a1 + 424), a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2591A1DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLoiManager::sendCustomLoiVisitEvent(CLMicroLocationLoiManager *this, NSString *a2, NSString *a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v8[0] = @"customLoiVisitOccurred";
  v8[1] = @"loiType";
  v9[0] = &unk_286A72738;
  v9[1] = v4;
  v8[2] = @"visitEventType";
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  CLMicroLocationLoiManager::sendCoreAnalyticsEvent(v6, &cfstr_ComAppleMicrol_17.isa, v6);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2591A1EAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::updateDbCustomLoiWasLastSeenNow(CLMicroLocationLoiManager *this, uuid a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<boost::uuids::uuid>::push_back[abi:ne200100](&v7, &v10);
  v3 = (*(**(this + 41) + 64))(*(this + 41));
  std::string::basic_string[abi:ne200100]<0>(__p, "custom");
  [v3 updateLoiIds:&v7 withLoiGroupId:&v10 andLoiType:__p];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2591A1FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZN25CLMicroLocationLoiManager15setupStartTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 520) invalidate];
  v2 = *(v1 + 520);
  *(v1 + 520) = 0;

  if ((*(**(v1 + 336) + 56))(*(v1 + 336)))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "#LOI Manager -- Fetching Place inference on Start up", buf, 2u);
    }

    (*(*v1 + 56))(v1, 7);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#LOI Manager -- Skipping place inference on Start up - database not available", v5, 2u);
    }
  }
}

void CLMicroLocationLoiManager::sendCoreAnalyticsEvent(CLMicroLocationLoiManager *this, NSString *a2, NSDictionary *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v11 = v10;

  if (v11)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15[0] = 68289539;
      v15[1] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = [(NSString *)v4 UTF8String];
      v20 = 2113;
      v21 = v5;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Manager, sending core analytics, event:%{private, location:escape_only}s, eventFields:%{private, location:escape_only}@}", v15, 0x26u);
    }

    AnalyticsSendEvent();
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "#LOI Manager, CoreAnalytics Disabled", v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationLoiManager::handleVisitNotification(CLMicroLocationLoiManager *this, CLVisit *a2)
{
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "LOI Manager, handleVisitNotification", &v11, 2u);
  }

  if ([(CLVisit *)v3 hasDepartureDate])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "LOI Manager, Received visit exit", &v11, 2u);
    }

    v6 = v3;
    v11 = &unk_286A5E1B0;
    v7 = std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
    v11 = &unk_286A5E230;
    v15 = v6;
    if (v14 < 0)
    {
      v13 = 14;
      v7 = __p;
    }

    else
    {
      v14 = 14;
    }

    strcpy(v7, "LOI Visit Exit");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v11);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "LOI Manager, Received visit entry", &v11, 2u);
    }

    v9 = v3;
    v11 = &unk_286A5E1B0;
    v10 = std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
    v11 = &unk_286A5E250;
    v15 = v9;
    if (v14 < 0)
    {
      v13 = 15;
      v10 = __p;
    }

    else
    {
      v14 = 15;
    }

    strcpy(v10, "LOI Visit Entry");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((this + 16), &v11);
  }

  v11 = &unk_286A5E1B0;
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

void sub_2591A265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a9);

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::handleFetchedPlaceInferences(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289283;
      *__p = 2082;
      *&__p[2] = "";
      v16 = 1025;
      v17 = a3;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Bridge, Failed To fetch place inferences, Error code::%{private}d}", &v14, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v14 = 68289283;
      *__p = 2082;
      *&__p[2] = "";
      v16 = 1025;
      v17 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Bridge, Failed To fetch place inferences", "{msg%{public}.0s:LOI Bridge, Failed To fetch place inferences, Error code::%{private}d}", &v14, 0x18u);
    }
  }

  if ([v5 count])
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v8 _loiIdentifier];
    v10 = v9 == 0;

    if (!v10)
    {
      CLMiLoLoiManagerFetchedPlaceInference::CLMiLoLoiManagerFetchedPlaceInference(&v14, v8);
      CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v14);
      CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&v14);
      goto LABEL_24;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "LOI Bridge, received nil LOI Identifier, possibly because there is no active user on macOS, we will start leeching and wait for next location update", &v14, 2u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "LOI Bridge, received no place inferences, we will start leeching and wait for next location update", &v14, 2u);
    }

    v8 = 0;
  }

  CLMiLoLoiManagerFailedToFetchPlaceInference::CLMiLoLoiManagerFailedToFetchPlaceInference(&v14);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v14);
  v14 = &unk_286A5E1B0;
  if (v18 < 0)
  {
    operator delete(*__p);
  }

LABEL_24:

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2591A299C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a9);

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFailedToFetchPlaceInference::~CLMiLoLoiManagerFailedToFetchPlaceInference(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleFetchedLocationOfInterestAtLocation(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 67109120;
      HIDWORD(v13) = a4;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "#Warning LOI Manager, Error retrieving the current LOI. Error code: %d", &v13, 8u);
    }

    CLMiLoLoiManagerFailedToFetchLoiForLocationEvent::CLMiLoLoiManagerFailedToFetchLoiForLocationEvent(&v13);
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v13);
    v13 = &unk_286A5E1B0;
  }

  else
  {
    v10 = v7;
    v11 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
    v13 = &unk_286A5E2D0;
    v16 = v10;
    if (v15 < 0)
    {
      __p[1] = 13;
      v11 = __p[0];
    }

    else
    {
      v15 = 13;
    }

    strcpy(v11, "Got LOI Event");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v13);

    v13 = &unk_286A5E1B0;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2591A2C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a9);

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFailedToFetchLoiForLocationEvent::~CLMiLoLoiManagerFailedToFetchLoiForLocationEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleRelatedLoisForLoi(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      LOWORD(v38) = 2082;
      *(&v38 + 2) = "";
      WORD5(v38) = 1025;
      HIDWORD(v38) = a3;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning LOI Manager, Error retrieving related LOIs for Loi, error code:%{private}d}", buf, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      LOWORD(v38) = 2082;
      *(&v38 + 2) = "";
      WORD5(v38) = 1025;
      HIDWORD(v38) = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning LOI Manager, Error retrieving related LOIs for Loi", "{msg%{public}.0s:#Warning LOI Manager, Error retrieving related LOIs for Loi, error code:%{private}d}", buf, 0x18u);
    }
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v30 + 1) + 8 * i) UUIDString];
        v12 = v11;
        v13 = [v11 UTF8String];
        v14 = strlen(v13);
        v15 = boost::uuids::string_generator::operator()<char const*>(buf, v13, &v13[v14]);
        v17 = v16;
        v18 = v35;
        if (v35 >= v36)
        {
          v20 = (v35 - __p) >> 4;
          v21 = v20 + 1;
          if ((v20 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v22 = v36 - __p;
          if ((v36 - __p) >> 3 > v21)
          {
            v21 = v22 >> 3;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF0)
          {
            v23 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v23);
          }

          v24 = (16 * v20);
          *v24 = v15;
          v24[1] = v17;
          v19 = (16 * v20 + 16);
          v25 = v24 - (v35 - __p);
          memcpy(v25, __p, v35 - __p);
          v26 = __p;
          __p = v25;
          v35 = v19;
          v36 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v35 = v15;
          *(v18 + 1) = v16;
          v19 = v18 + 16;
        }

        v35 = v19;
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v8);
  }

  *buf = &unk_286A5E1B0;
  v27 = &v38;
  std::string::basic_string[abi:ne200100]<0>(&v38, "No Name Given");
  *buf = &unk_286A5E2F0;
  memset(v40, 0, 24);
  std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v40, __p, v35, (v35 - __p) >> 4);
  if (v39 < 0)
  {
    *(&v38 + 1) = 16;
    v27 = v38;
  }

  else
  {
    v39 = 16;
  }

  strcpy(v27, "Got Related LOIs");
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), buf);
  CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(buf);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2591A30EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLoiManager::handleLocationUpdate(_BYTE *a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *__p = 2082;
      *&__p[2] = "";
      v22 = 1025;
      v23 = a3;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *__p = 2082;
      *&__p[2] = "";
      v22 = 1025;
      v23 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to get current location to enable MiLo", "{msg%{public}.0s:#LOI Manager, failed to get current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    if (a1[514] == 1)
    {
      CLMiLoLoiManagerFailedToGetLocationUpdateEvent::CLMiLoLoiManagerFailedToGetLocationUpdateEvent(buf);
      CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), buf);
      *buf = &unk_286A5E1B0;
      if (v24 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else if (a1[514] == 1)
  {
    CLMiLoLoiManagerGotLocationUpdateEvent::CLMiLoLoiManagerGotLocationUpdateEvent(buf, v5);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(CLLocation *)v5 coordinate];
      v10 = v9;
      [(CLLocation *)v5 coordinate];
      v13[0] = 68289539;
      v13[1] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2053;
      v17 = v10;
      v18 = 2053;
      v19 = v11;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, got location update, latitude:%{sensitive}7f, longitude:%{sensitive}7f}", v13, 0x26u);
    }

    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), buf);
    CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(buf);
  }

  else
  {
    (*(*a1 + 112))(a1, v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2591A346C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(&a15);

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFailedToGetLocationUpdateEvent::~CLMiLoLoiManagerFailedToGetLocationUpdateEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::didCompleteSettingGeofenceAtLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = a5;
    CLMiLoLoiManagerFailedToSetGeofenceEvent::CLMiLoLoiManagerFailedToSetGeofenceEvent(&v12);
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v12);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1025;
      v21 = v6;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1025;
      v21 = v6;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, failed to set geofence at current location to enable MiLo", "{msg%{public}.0s:#LOI Manager, failed to set geofence at current location to enable MiLo, Error code:%{private}d}", buf, 0x18u);
    }

    v12 = &unk_286A5E1B0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "No Name Given");
    v12 = &unk_286A5E390;
    v14 = a3;
    v15 = a4;
    std::string::__assign_external(&__p, "Started Process of Activaing Geofence", 0x25uLL);
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v12);
    v12 = &unk_286A5E1B0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void CLMiLoLoiManagerFailedToSetGeofenceEvent::~CLMiLoLoiManagerFailedToSetGeofenceEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerStartedActivatingGeofenceEvent::~CLMiLoLoiManagerStartedActivatingGeofenceEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::handleGeofenceUpdate(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 UTF8String];
  v7 = strlen(v6);
  v8 = boost::uuids::string_generator::operator()<char const*>(&v17, v6, &v6[v7]);
  v10 = v9;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLoiManager::VisitEntry();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v5;
    v13 = [v5 UTF8String];
    v17 = 68289539;
    *__p = 2082;
    *&__p[2] = "";
    *&__p[10] = 2081;
    *&__p[12] = v13;
    v19 = 1025;
    *v20 = a3;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Manager, Got Geofence update, Geofence Id:%{private, location:escape_only}s, State:%{private}d}", &v17, 0x22u);
  }

  if (a3 == 1)
  {
    v17 = &unk_286A5E1B0;
    v14 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
    v17 = &unk_286A5E3B0;
    *&v20[2] = v8;
    v21 = v10;
    if ((v20[1] & 0x80000000) != 0)
    {
      *&__p[8] = 14;
      v14 = *__p;
    }

    else
    {
      v20[1] = 14;
    }

    strcpy(v14, "Geofence Entry");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v17);
  }

  else
  {
    v17 = &unk_286A5E1B0;
    v15 = std::string::basic_string[abi:ne200100]<0>(__p, "No Name Given");
    v17 = &unk_286A5E3D0;
    *&v20[2] = v8;
    v21 = v10;
    if ((v20[1] & 0x80000000) != 0)
    {
      *&__p[8] = 13;
      v15 = *__p;
    }

    else
    {
      v20[1] = 13;
    }

    strcpy(v15, "Geofence Exit");
    CLMicroLocationStateMachine::StateMachineBase::handleEvent((a1 + 16), &v17);
  }

  v17 = &unk_286A5E1B0;
  if ((v20[1] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2591A3B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerGeofenceEntryEvent::~CLMiLoLoiManagerGeofenceEntryEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerGeofenceExitEvent::~CLMiLoLoiManagerGeofenceExitEvent(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLoiManager::didRemoveGeofenceWithId(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = v4;
      v15 = 1025;
      v16 = a3;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Manager, Failed to RemoveGeofence, regionId:%{private, location:escape_only}@, error code:%{private}d}", &v9, 0x22u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v9 = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = v4;
      v15 = 1025;
      v16 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Manager, Failed to RemoveGeofence", "{msg%{public}.0s:#LOI Manager, Failed to RemoveGeofence, regionId:%{private, location:escape_only}@, error code:%{private}d}", &v9, 0x22u);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLoiManager::VisitEntry();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2113;
      v14 = v4;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Manager, didRemoveGeofenceWithId, regionId:%{private, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ___ZN25CLMicroLocationLoiManager24startCustomLoiEntryTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 528) invalidate];
  v2 = *(v1 + 528);
  *(v1 + 528) = 0;

  CLMiLoLoiManagerEnteringCustomLoiTimeout::CLMiLoLoiManagerEnteringCustomLoiTimeout(v3);
  CLMicroLocationStateMachine::StateMachineBase::handleEvent((v1 + 16), v3);
  v3[0] = &unk_286A5E1B0;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }
}

void sub_2591A3ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerEnteringCustomLoiTimeout::~CLMiLoLoiManagerEnteringCustomLoiTimeout(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

_BYTE *CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitEntryEvent,&CLMicroLocationLoiManager::VisitEntry>::stateFunction@<X0>(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    return CLMicroLocationLoiManager::VisitEntry(v5, v7, a3);
  }

  else
  {
    v31 = lpsrc;
    v10 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = *(v5 + 3);
      if (*(v11 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v12 = *(v11 + 8);
        v33.__r_.__value_.__r.__words[2] = *(v11 + 24);
        *&v33.__r_.__value_.__l.__data_ = v12;
      }

      v13 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      v14 = v33.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v15 = &v33;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2081;
      v39 = v15;
      v40 = 2081;
      v41 = p_p;
      v42 = 2082;
      v43 = "assert";
      v44 = 2081;
      v45 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v17))
    {
      v18 = *(v5 + 3);
      if (*(v18 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v18 + 8), *(v18 + 16));
      }

      else
      {
        v19 = *(v18 + 8);
        v33.__r_.__value_.__r.__words[2] = *(v18 + 24);
        *&v33.__r_.__value_.__l.__data_ = v19;
      }

      v20 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      v21 = v33.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v22 = &v33;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2081;
      v39 = v22;
      v40 = 2081;
      v41 = v23;
      v42 = 2082;
      v43 = "assert";
      v44 = 2081;
      v45 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(v5 + 3);
      if (*(v25 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v26 = *(v25 + 8);
        v33.__r_.__value_.__r.__words[2] = *(v25 + 24);
        *&v33.__r_.__value_.__l.__data_ = v26;
      }

      v27 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      v28 = v33.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v31, &__p);
      v29 = &v33;
      if (v27 < 0)
      {
        v29 = v28;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2081;
      v39 = v29;
      v40 = 2081;
      v41 = v30;
      v42 = 2082;
      v43 = "assert";
      v44 = 2081;
      v45 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitEntryEvent,&CLMicroLocationLoiManager::VisitEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoi>::stateFunction@<X0>(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    result = CLMicroLocationLoiManager::handleEnableCustomLoi(v5, v7[2], a3);
    a3[24] = 1;
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = *(v5 + 24);
      if (*(v11 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v12 = *(v11 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v11 + 24);
        *&v32.__r_.__value_.__l.__data_ = v12;
      }

      v13 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v14 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v15 = &v32;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v15;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v17))
    {
      v18 = *(v5 + 24);
      if (*(v18 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v18 + 8), *(v18 + 16));
      }

      else
      {
        v19 = *(v18 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v18 + 24);
        *&v32.__r_.__value_.__l.__data_ = v19;
      }

      v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v21 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v22 = &v32;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v22;
      v39 = 2081;
      v40 = v23;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(v5 + 24);
      if (*(v25 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v26 = *(v25 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v25 + 24);
        *&v32.__r_.__value_.__l.__data_ = v26;
      }

      v27 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v28 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v29 = &v32;
      if (v27 < 0)
      {
        v29 = v28;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v29;
      v39 = 2081;
      v40 = v30;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::DisableCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    CLMicroLocationLoiManager::handleDisableCustomLoi(v5, v7[2], v7[3], a3);
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 24);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v31.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v13 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v31;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v14;
      v38 = 2081;
      v39 = p_p;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 24);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v31.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v20 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v31;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v21;
      v38 = 2081;
      v39 = v22;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v31.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v31.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      v27 = v31.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v28 = &v31;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2081;
      v37 = v28;
      v38 = 2081;
      v39 = v29;
      v40 = 2082;
      v41 = "assert";
      v42 = 2081;
      v43 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::DisableCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntry>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::CustomLoiVisitEntry(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntry>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLeechedLocationEvent,&CLMicroLocationLoiManager::HandleLeechedLocation>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerRefreshLocationOnEvent,&CLMicroLocationLoiManager::RefreshLocationOnInterval>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v7 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::RefreshLocationOnInterval(v5, a3);
  }

  else
  {
    v8 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = *(v5 + 3);
      if (*(v9 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        v30.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&v30.__r_.__value_.__l.__data_ = v10;
      }

      v11 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v12 = v30.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v13 = &v30;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v13;
      v37 = 2081;
      v38 = p_p;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v15))
    {
      v16 = *(v5 + 3);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v30.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v30.__r_.__value_.__l.__data_ = v17;
      }

      v18 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v19 = v30.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v20 = &v30;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v20;
      v37 = 2081;
      v38 = v21;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    v22 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(v5 + 3);
      if (*(v23 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *(v23 + 8), *(v23 + 16));
      }

      else
      {
        v24 = *(v23 + 8);
        v30.__r_.__value_.__r.__words[2] = *(v23 + 24);
        *&v30.__r_.__value_.__l.__data_ = v24;
      }

      v25 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v26 = v30.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v27 = &v30;
      if (v25 < 0)
      {
        v27 = v26;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &__p;
      }

      else
      {
        v28 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2081;
      v36 = v27;
      v37 = 2081;
      v38 = v28;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerRefreshLocationOnEvent,&CLMicroLocationLoiManager::RefreshLocationOnInterval>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInference>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::FetchPlaceInference(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInference>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitExitEvent,&CLMicroLocationLoiManager::VisitExit>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::VisitExit(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerLoiVisitExitEvent,&CLMicroLocationLoiManager::VisitExit>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 24);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 24);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInHomeLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInHomeLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerFetchPlaceInferenceForReason,&CLMicroLocationLoiManager::FetchPlaceInferenceWhileInHomeLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceExitEvent,&CLMicroLocationLoiManager::CustomLoiVisitExit>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::CustomLoiVisitExit(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceExitEvent,&CLMicroLocationLoiManager::CustomLoiVisitExit>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 3);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 3);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 3);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerGeofenceEntryEvent,&CLMicroLocationLoiManager::CustomLoiVisitEntryWhileInCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 24);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 24);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnableCustomLoiEvent,&CLMicroLocationLoiManager::EnableCustomLoiWhileInCustomLoi>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerDisableCustomLoiEvent,&CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi>::stateFunction(CLMicroLocationStateMachine::EventBase *lpsrc@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  {
    v8 = *MEMORY[0x277D85DE8];

    CLMicroLocationLoiManager::CustomLoiDisableWhileInCustomLoi(v5, v7, a3);
  }

  else
  {
    v30 = lpsrc;
    v9 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(v5 + 24);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v32.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v13 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v14 = &v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v14;
      v39 = 2081;
      v40 = p_p;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v16))
    {
      v17 = *(v5 + 24);
      if (*(v17 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v17 + 8), *(v17 + 16));
      }

      else
      {
        v18 = *(v17 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v17 + 24);
        *&v32.__r_.__value_.__l.__data_ = v18;
      }

      v19 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v20 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(lpsrc, &__p);
      v21 = &v32;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v21;
      v39 = 2081;
      v40 = v22;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received unsupported event in state event handler", "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(v5 + 24);
      if (*(v24 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *(v24 + 8), *(v24 + 16));
      }

      else
      {
        v25 = *(v24 + 8);
        v32.__r_.__value_.__r.__words[2] = *(v24 + 24);
        *&v32.__r_.__value_.__l.__data_ = v25;
      }

      v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v27 = v32.__r_.__value_.__r.__words[0];
      CLMicroLocationStateMachine::EventBase::getEventName(v30, &__p);
      v28 = &v32;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 68290051;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2081;
      v38 = v28;
      v39 = 2081;
      v40 = v29;
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "derivedEventData != __null";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received unsupported event in state event handler, State:%{private, location:escape_only}s, Received Event:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    abort_report_np();
    __break(1u);
  }
}