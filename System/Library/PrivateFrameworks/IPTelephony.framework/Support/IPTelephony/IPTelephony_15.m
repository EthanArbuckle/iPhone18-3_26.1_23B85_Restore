uint64_t IMSCallManager::handleMediaStackSwitchComplete(uint64_t a1, void **a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "call");
  v8[0] = 0;
  v11 = 0;
  v5 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleMediaStackSwitchComplete for stack ", 41);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  LODWORD(v12[0]) = a3 != 1;
  v6 = IMSClientManager::delegateForStack(a2);
  return (*(*(v6 + 16) + 72))();
}

void sub_1E4D33C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleUpdatePendingCall(void *a1, const void **a2, int a3)
{
  if (a3)
  {
    IMSCallManager::failPendingCalls(a1, a2);
  }

  else
  {
    IMSCallManager::continuePendingCalls(a1, a2);
  }
}

void IMSCallManager::handleInputFrequencyLevelEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 384);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        if (*(v3 + 376))
        {
          v9 = *a2;
          v10 = *(a1 + 160);
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          if (v9 == v10)
          {
            v11 = *a2;
            v12 = *(*a2 + 384);
            if (v12)
            {
              v13 = std::__shared_weak_count::lock(v12);
              if (v13)
              {
                v14 = *(v11 + 376);
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              v13 = 0;
            }

            if (*(v14 + 4455) < 0)
            {
              std::string::__init_copy_ctor_external(&v18, *(v14 + 4432), *(v14 + 4440));
            }

            else
            {
              v18 = *(v14 + 4432);
            }

            v15 = ImsUuid::ImsUuid(v16, &ims::kEmptyString);
            IMSCallManager::sendInputFrequencyLevelUpdateNotification(v15, &v18.__r_.__value_.__l.__data_, v16, a3);
            v16[0] = &unk_1F5EBEE78;
            if (v17 < 0)
            {
              operator delete(v16[1]);
            }

            if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v18.__r_.__value_.__l.__data_);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }
        }

        else
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }
    }
  }
}

void sub_1E4D33DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::handleOutputFrequencyLevelEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 384);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        if (*(v3 + 376))
        {
          v9 = *a2;
          v10 = *(a1 + 160);
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          if (v9 == v10)
          {
            v11 = *a2;
            v12 = *(*a2 + 384);
            if (v12)
            {
              v13 = std::__shared_weak_count::lock(v12);
              if (v13)
              {
                v14 = *(v11 + 376);
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              v13 = 0;
            }

            if (*(v14 + 4455) < 0)
            {
              std::string::__init_copy_ctor_external(&v18, *(v14 + 4432), *(v14 + 4440));
            }

            else
            {
              v18 = *(v14 + 4432);
            }

            v15 = ImsUuid::ImsUuid(v16, &ims::kEmptyString);
            IMSCallManager::sendOutputFrequencyLevelUpdateNotification(v15, &v18.__r_.__value_.__l.__data_, v16, a3);
            v16[0] = &unk_1F5EBEE78;
            if (v17 < 0)
            {
              operator delete(v16[1]);
            }

            if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v18.__r_.__value_.__l.__data_);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }
        }

        else
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }
    }
  }
}

void sub_1E4D33FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallManager::sendCallStatusToIRatManager(uint64_t a1, uint64_t *a2, char a3)
{
  v11 = 0;
  v6 = 255;
  v7 = a3;
  v3 = *a2;
  v9 = *(*a2 + 484) > 2;
  v8 = (*(v3 + 480) & 0xFFFFFFFE) == 2;
  LOBYTE(v11) = *(a1 + 72) - *(a1 + 64) > 0x10uLL;
  v10 = v11;
  IPTelephonyManager::instance(&v4);
  IMSiRatClient::reportCallStatus((v4 + 408), &v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4D340B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallManager::conferenceCall@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 168);
  *a2 = *(this + 160);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void BambiEmergencyCallOptions::BambiEmergencyCallOptions(std::string *this, const BambiEmergencyCallOptions *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  this[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
  SipRegistrationConfig::SipRegistrationConfig(&this[3].__r_.__value_.__r.__words[1], (a2 + 80));
  SipStackConfig::SipStackConfig(&this[73], (a2 + 1752));
}

void sub_1E4D342A0(_Unwind_Exception *a1)
{
  SipUri::~SipUri((v1 + v2));
  SipStackConfig::~SipStackConfig((v1 + 1752));
  SipRegistrationConfig::~SipRegistrationConfig((v1 + 80));
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void SipRegistrationConfig::SipRegistrationConfig(SipRegistrationConfig *this, const SipRegistrationConfig *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<SipUri>::__init_with_size[abi:ne200100]<SipUri*,SipUri*>(this, *a2, *(a2 + 1), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 1) - *a2) >> 3));
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(this + 53) = *(a2 + 53);
  *(this + 40) = v5;
  *(this + 24) = v4;
  SipUri::SipUri((this + 72), (a2 + 72));
  SipUri::SipUri((this + 480), (a2 + 480));
  if (*(a2 + 911) < 0)
  {
    std::string::__init_copy_ctor_external(this + 37, *(a2 + 111), *(a2 + 112));
  }

  else
  {
    v6 = *(a2 + 888);
    *(this + 113) = *(a2 + 113);
    *(this + 888) = v6;
  }

  if (*(a2 + 935) < 0)
  {
    std::string::__init_copy_ctor_external(this + 38, *(a2 + 114), *(a2 + 115));
  }

  else
  {
    v7 = *(a2 + 57);
    *(this + 116) = *(a2 + 116);
    *(this + 57) = v7;
  }

  if (*(a2 + 959) < 0)
  {
    std::string::__init_copy_ctor_external(this + 39, *(a2 + 117), *(a2 + 118));
  }

  else
  {
    v8 = *(a2 + 936);
    *(this + 119) = *(a2 + 119);
    *(this + 936) = v8;
  }

  *(this + 122) = 0;
  *(this + 60) = 0u;
  std::vector<SipRetryInfo>::__init_with_size[abi:ne200100]<SipRetryInfo*,SipRetryInfo*>(this + 960, *(a2 + 120), *(a2 + 121), (*(a2 + 121) - *(a2 + 120)) >> 4);
  v9 = *(a2 + 984);
  *(this + 125) = *(a2 + 125);
  *(this + 984) = v9;
  if (*(a2 + 1031) < 0)
  {
    std::string::__init_copy_ctor_external(this + 42, *(a2 + 126), *(a2 + 127));
  }

  else
  {
    v10 = *(a2 + 63);
    *(this + 128) = *(a2 + 128);
    *(this + 63) = v10;
  }

  v11 = (this + 1032);
  if (*(a2 + 1055) < 0)
  {
    std::string::__init_copy_ctor_external(v11, *(a2 + 129), *(a2 + 130));
  }

  else
  {
    v12 = *(a2 + 1032);
    *(this + 131) = *(a2 + 131);
    *&v11->__r_.__value_.__l.__data_ = v12;
  }

  v13 = *(a2 + 66);
  *(this + 1072) = *(a2 + 1072);
  *(this + 66) = v13;
  if (*(a2 + 1103) < 0)
  {
    std::string::__init_copy_ctor_external(this + 45, *(a2 + 135), *(a2 + 136));
  }

  else
  {
    v14 = *(a2 + 1080);
    *(this + 137) = *(a2 + 137);
    *(this + 1080) = v14;
  }

  v15 = (this + 1104);
  if (*(a2 + 1127) < 0)
  {
    std::string::__init_copy_ctor_external(v15, *(a2 + 138), *(a2 + 139));
  }

  else
  {
    v16 = *(a2 + 69);
    *(this + 140) = *(a2 + 140);
    *&v15->__r_.__value_.__l.__data_ = v16;
  }

  v17 = *(a2 + 1128);
  *(this + 1144) = *(a2 + 1144);
  *(this + 1128) = v17;
  if (*(a2 + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(this + 48, *(a2 + 144), *(a2 + 145));
  }

  else
  {
    v18 = *(a2 + 72);
    *(this + 146) = *(a2 + 146);
    *(this + 72) = v18;
  }

  v19 = (this + 1176);
  if (*(a2 + 1199) < 0)
  {
    std::string::__init_copy_ctor_external(v19, *(a2 + 147), *(a2 + 148));
  }

  else
  {
    v20 = *(a2 + 1176);
    *(this + 149) = *(a2 + 149);
    *&v19->__r_.__value_.__l.__data_ = v20;
  }

  v21 = *(a2 + 75);
  *(this + 1216) = *(a2 + 1216);
  *(this + 75) = v21;
  v22 = *(a2 + 612);
  *(this + 1226) = *(a2 + 1226);
  *(this + 612) = v22;
  std::set<unsigned int>::set[abi:ne200100](this + 154, a2 + 1232);
  std::set<unsigned int>::set[abi:ne200100](this + 157, a2 + 1256);
  if (*(a2 + 1303) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1280), *(a2 + 160), *(a2 + 161));
  }

  else
  {
    v23 = *(a2 + 80);
    *(this + 162) = *(a2 + 162);
    *(this + 80) = v23;
  }

  *(this + 163) = *(a2 + 163);
  if (*(a2 + 1335) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1312), *(a2 + 164), *(a2 + 165));
  }

  else
  {
    v24 = *(a2 + 82);
    *(this + 166) = *(a2 + 166);
    *(this + 82) = v24;
  }

  v25 = *(a2 + 1336);
  v26 = *(a2 + 1352);
  *(this + 1363) = *(a2 + 1363);
  *(this + 1336) = v25;
  *(this + 1352) = v26;
  *(this + 173) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 174, a2 + 1392);
  *(this + 177) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 178, a2 + 1424);
  *(this + 181) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 182, a2 + 1456);
  *(this + 185) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 186, a2 + 1488);
  *(this + 189) = &unk_1F5EE5038;
  std::set<unsigned int>::set[abi:ne200100](this + 190, a2 + 1520);
  *(this + 1544) = *(a2 + 1544);
  if (*(a2 + 1575) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1552), *(a2 + 194), *(a2 + 195));
  }

  else
  {
    v27 = *(a2 + 97);
    *(this + 196) = *(a2 + 196);
    *(this + 97) = v27;
  }

  if (*(a2 + 1599) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1576), *(a2 + 197), *(a2 + 198));
  }

  else
  {
    v28 = *(a2 + 1576);
    *(this + 199) = *(a2 + 199);
    *(this + 1576) = v28;
  }

  v29 = (this + 1600);
  if (*(a2 + 1623) < 0)
  {
    std::string::__init_copy_ctor_external(v29, *(a2 + 200), *(a2 + 201));
  }

  else
  {
    v30 = *(a2 + 100);
    *(this + 202) = *(a2 + 202);
    *&v29->__r_.__value_.__l.__data_ = v30;
  }

  *(this + 1624) = *(a2 + 1624);
  *(this + 204) = 0;
  *(this + 206) = 0;
  *(this + 205) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 1632, *(a2 + 204), *(a2 + 205), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 205) - *(a2 + 204)) >> 3));
  v31 = *(a2 + 207);
  *(this + 832) = *(a2 + 832);
  *(this + 207) = v31;
}

void sub_1E4D348AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, uint64_t a16)
{
  if (*(v16 + 1599) < 0)
  {
    operator delete(*v22);
  }

  if (*(v16 + 1575) < 0)
  {
    operator delete(*v21);
  }

  *(v16 + 1512) = v19;
  std::__tree<unsigned int>::destroy(v16 + 1520, *(v16 + 1528));
  *(v16 + 1480) = v18;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v16 + 1488, *(v16 + 1496));
  *(v16 + 1448) = v17;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v16 + 1456, *(v16 + 1464));
  *(v16 + 1416) = v20;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v16 + 1424, *(v16 + 1432));
  *(v16 + 1384) = v24;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v16 + 1392, *(v16 + 1400));
  if (*(v16 + 1335) < 0)
  {
    operator delete(*v23);
  }

  if (*(v16 + 1303) < 0)
  {
    operator delete(*a10);
  }

  std::__tree<unsigned int>::destroy(v16 + 1256, *(v16 + 1264));
  std::__tree<unsigned int>::destroy(v16 + 1232, *(v16 + 1240));
  ims::AccessNetworks::~AccessNetworks(a14);
  v26 = *a15;
  if (*a15)
  {
    *(v16 + 968) = v26;
    operator delete(v26);
  }

  if (*(v16 + 959) < 0)
  {
    operator delete(*a11);
  }

  if (*(v16 + 935) < 0)
  {
    operator delete(*a12);
  }

  if (*(v16 + 911) < 0)
  {
    operator delete(*a13);
  }

  SipUri::~SipUri((v16 + 480));
  SipUri::~SipUri((v16 + 72));
  a16 = v16;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SipUri>::__init_with_size[abi:ne200100]<SipUri*,SipUri*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SipUri>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4D34B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SipRetryInfo>::__init_with_size[abi:ne200100]<SipRetryInfo*,SipRetryInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SipRetryInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4D34BC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SipStackConfig::SipStackConfig(SipStackConfig *this, const SipStackConfig *a2)
{
  SipUserAgentConfig::SipUserAgentConfig(this, a2);
  SipTransportLayerConfig::SipTransportLayerConfig((v4 + 1400), (a2 + 1400));
  v5 = *(a2 + 255);
  *(this + 512) = *(a2 + 512);
  *(this + 255) = v5;
  BambiCallTerminationReasonsBase::BambiCallTerminationReasonsBase((this + 2056), (a2 + 2056));
  *(this + 257) = &unk_1F5EEAC18;
  BambiCallIncomingTerminationReasons::BambiCallIncomingTerminationReasons((this + 2224), (a2 + 2224));
}

void sub_1E4D34D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 2519) < 0)
  {
    operator delete(*v5);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 2456, *(v2 + 2464));
  if (*(v2 + 2439) < 0)
  {
    operator delete(*v4);
  }

  BambiCallIncomingTerminationReasons::~BambiCallIncomingTerminationReasons((v2 + 2224));
  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(v3);
  SipTransportLayerConfig::~SipTransportLayerConfig((v2 + 1400));
  SipUserAgentConfig::~SipUserAgentConfig(v2);
  _Unwind_Resume(a1);
}

void SipUserAgentConfig::SipUserAgentConfig(SipUserAgentConfig *this, const SipUserAgentConfig *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  *(this + 26) = *(a2 + 26);
  *this = v4;
  *(this + 1) = v5;
  SipUri::SipUri((this + 48), (a2 + 48));
  *(this + 456) = *(a2 + 456);
  if (*(a2 + 487) < 0)
  {
    std::string::__init_copy_ctor_external((this + 464), *(a2 + 58), *(a2 + 59));
  }

  else
  {
    v6 = *(a2 + 29);
    *(this + 60) = *(a2 + 60);
    *(this + 29) = v6;
  }

  if (*(a2 + 511) < 0)
  {
    std::string::__init_copy_ctor_external((this + 488), *(a2 + 61), *(a2 + 62));
  }

  else
  {
    v7 = *(a2 + 488);
    *(this + 63) = *(a2 + 63);
    *(this + 488) = v7;
  }

  *(this + 64) = &unk_1F5ED7890;
  std::map<std::string,unsigned int>::map[abi:ne200100](this + 65, a2 + 520);
  v8 = *(a2 + 136);
  *(this + 548) = *(a2 + 548);
  *(this + 136) = v8;
  *(this + 69) = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(this + 70, *(a2 + 70), a2 + 71);
  *(this + 585) = 1;
  *(this + 584) = *(a2 + 584);
  v9 = *(a2 + 37);
  v10 = *(a2 + 38);
  *(this + 620) = *(a2 + 620);
  *(this + 37) = v9;
  *(this + 38) = v10;
  if (*(a2 + 663) < 0)
  {
    std::string::__init_copy_ctor_external((this + 640), *(a2 + 80), *(a2 + 81));
  }

  else
  {
    v11 = *(a2 + 40);
    *(this + 82) = *(a2 + 82);
    *(this + 40) = v11;
  }

  if (*(a2 + 687) < 0)
  {
    std::string::__init_copy_ctor_external((this + 664), *(a2 + 83), *(a2 + 84));
  }

  else
  {
    v12 = *(a2 + 664);
    *(this + 85) = *(a2 + 85);
    *(this + 664) = v12;
  }

  *(this + 344) = *(a2 + 344);
  *(this + 87) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 88, a2 + 704);
  *(this + 91) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 92, a2 + 736);
  *(this + 95) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 96, a2 + 768);
  v13 = *(a2 + 808);
  *(this + 792) = *(a2 + 792);
  *(this + 808) = v13;
  *(this + 103) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 104, a2 + 832);
  *(this + 107) = *(a2 + 107);
  if (*(a2 + 887) < 0)
  {
    std::string::__init_copy_ctor_external(this + 36, *(a2 + 108), *(a2 + 109));
  }

  else
  {
    v14 = *(a2 + 54);
    *(this + 110) = *(a2 + 110);
    *(this + 54) = v14;
  }

  if (*(a2 + 911) < 0)
  {
    std::string::__init_copy_ctor_external(this + 37, *(a2 + 111), *(a2 + 112));
  }

  else
  {
    v15 = *(a2 + 888);
    *(this + 113) = *(a2 + 113);
    *(this + 888) = v15;
  }

  v16 = *(a2 + 114);
  *(this + 919) = *(a2 + 919);
  *(this + 114) = v16;
  if (*(a2 + 951) < 0)
  {
    std::string::__init_copy_ctor_external((this + 928), *(a2 + 116), *(a2 + 117));
  }

  else
  {
    v17 = *(a2 + 58);
    *(this + 118) = *(a2 + 118);
    *(this + 58) = v17;
  }

  v18 = *(a2 + 238);
  *(this + 478) = *(a2 + 478);
  *(this + 238) = v18;
  if (*(a2 + 983) < 0)
  {
    std::string::__init_copy_ctor_external(this + 40, *(a2 + 120), *(a2 + 121));
  }

  else
  {
    v19 = *(a2 + 60);
    *(this + 122) = *(a2 + 122);
    *(this + 60) = v19;
  }

  *(this + 246) = *(a2 + 246);
  *(this + 124) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 125, a2 + 1000);
  *(this + 128) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 129, a2 + 1032);
  *(this + 132) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 133, a2 + 1064);
  *(this + 136) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 137, a2 + 1096);
  *(this + 140) = *(a2 + 140);
  std::set<std::string>::set[abi:ne200100](this + 141, a2 + 1128);
  v20 = *(a2 + 288);
  *(this + 1156) = *(a2 + 1156);
  *(this + 288) = v20;
  std::map<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>::map[abi:ne200100](this + 145, a2 + 1160);
  *(this + 148) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 149, a2 + 1192);
  *(this + 1216) = *(a2 + 1216);
  std::set<unsigned int>::set[abi:ne200100](this + 153, a2 + 1224);
  std::map<std::string,ims::SpamCategory>::map[abi:ne200100](this + 156, a2 + 1248);
  v21 = *(a2 + 1272);
  v22 = *(a2 + 1288);
  *(this + 1304) = *(a2 + 1304);
  *(this + 1272) = v21;
  *(this + 1288) = v22;
  *(this + 164) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 165, a2 + 1320);
  if (*(a2 + 1367) < 0)
  {
    std::string::__init_copy_ctor_external(this + 56, *(a2 + 168), *(a2 + 169));
  }

  else
  {
    v23 = *(a2 + 84);
    *(this + 170) = *(a2 + 170);
    *(this + 84) = v23;
  }

  *(this + 173) = 0;
  *(this + 1368) = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 1368, *(a2 + 171), *(a2 + 172), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 172) - *(a2 + 171)) >> 3));
  *(this + 348) = *(a2 + 348);
}

void sub_1E4D353F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, void **a13, void **a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 + 1312) = v22;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 1320, *(v21 + 1328));
  std::__tree<std::string>::destroy(v21 + 1248, *(v21 + 1256));
  std::__tree<unsigned int>::destroy(v21 + 1224, *(v21 + 1232));
  *(v21 + 1184) = v23;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 1192, *(v21 + 1200));
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(v21 + 1160, *(v21 + 1168));
  std::__tree<std::string>::destroy(v21 + 1128, *(v21 + 1136));
  *(v21 + 1088) = v25;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 1096, *(v21 + 1104));
  *(v21 + 1056) = v28;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 1064, *(v21 + 1072));
  *(v21 + 1024) = v24;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 1032, *(v21 + 1040));
  *(v21 + 992) = a12;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 1000, *(v21 + 1008));
  if (*(v21 + 983) < 0)
  {
    operator delete(*v27);
  }

  if (*(v21 + 951) < 0)
  {
    operator delete(*v26);
  }

  if (*(v21 + 911) < 0)
  {
    operator delete(*a10);
  }

  if (*(v21 + 887) < 0)
  {
    operator delete(*a11);
  }

  *(v21 + 824) = a15;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 832, *(v21 + 840));
  *(v21 + 760) = a16;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 768, *(v21 + 776));
  *(v21 + 728) = a18;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 736, *(v21 + 744));
  *(v21 + 696) = a19;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v21 + 704, *(v21 + 712));
  if (*(v21 + 687) < 0)
  {
    operator delete(*a13);
  }

  if (*(v21 + 663) < 0)
  {
    operator delete(*a14);
  }

  *(v21 + 552) = a20;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v21 + 560, *(v21 + 568));
  *(v21 + 512) = a21;
  std::__tree<std::string>::destroy(v21 + 520, *(v21 + 528));
  if (*(v21 + 511) < 0)
  {
    operator delete(*a17);
  }

  if (*(v21 + 487) < 0)
  {
    operator delete(*(v21 + 464));
  }

  SipUri::~SipUri((v21 + 48));
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__construct_node<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>> const&>();
  }

  return v3;
}

void SipTransportLayerConfig::SipTransportLayerConfig(std::string *this, const SipTransportLayerConfig *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  SipUri::SipUri(&this[1], (a2 + 24));
  v5 = *(a2 + 27);
  v6 = *(a2 + 28);
  LODWORD(this[19].__r_.__value_.__r.__words[1]) = *(a2 + 116);
  *&this[18].__r_.__value_.__l.__data_ = v5;
  *&this[18].__r_.__value_.__r.__words[2] = v6;
  if (*(a2 + 495) < 0)
  {
    std::string::__init_copy_ctor_external((this + 472), *(a2 + 59), *(a2 + 60));
  }

  else
  {
    v7 = *(a2 + 472);
    this[20].__r_.__value_.__l.__size_ = *(a2 + 61);
    *&this[19].__r_.__value_.__r.__words[2] = v7;
  }

  v8 = *(a2 + 62);
  LODWORD(this[21].__r_.__value_.__l.__data_) = *(a2 + 126);
  this[20].__r_.__value_.__r.__words[2] = v8;
  this[21].__r_.__value_.__l.__size_ = 0;
  this[22].__r_.__value_.__r.__words[0] = 0;
  this[21].__r_.__value_.__r.__words[2] = 0;
  std::vector<SipSecurityAgreementConfig>::__init_with_size[abi:ne200100]<SipSecurityAgreementConfig*,SipSecurityAgreementConfig*>(&this[21].__r_.__value_.__l.__size_, *(a2 + 64), *(a2 + 65), 0x8E38E38E38E38E39 * ((*(a2 + 65) - *(a2 + 64)) >> 3));
  this[22].__r_.__value_.__l.__size_ = *(a2 + 67);
  this[22].__r_.__value_.__r.__words[2] = &unk_1F5EE5038;
  std::set<unsigned int>::set[abi:ne200100](this[23].__r_.__value_.__r.__words, a2 + 552);
  v9 = *(a2 + 36);
  *(&this[24].__r_.__value_.__r.__words[1] + 7) = *(a2 + 591);
  *&this[24].__r_.__value_.__l.__data_ = v9;
  this[25].__r_.__value_.__r.__words[0] = *(a2 + 75);
  this[25].__r_.__value_.__l.__size_ = *(a2 + 76);
  this[25].__r_.__value_.__r.__words[2] = *(a2 + 77);
  this[26].__r_.__value_.__r.__words[0] = *(a2 + 78);
  LODWORD(this[26].__r_.__value_.__r.__words[1]) = *(a2 + 158);
}

void sub_1E4D35970(_Unwind_Exception *a1)
{
  SipUri::~SipUri((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SipSecurityAgreementConfig>::__init_with_size[abi:ne200100]<SipSecurityAgreementConfig*,SipSecurityAgreementConfig*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SipSecurityAgreementConfig>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4D35A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<SipSecurityAgreementConfig>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void BambiCallIncomingTerminationReasons::~BambiCallIncomingTerminationReasons(BambiCallIncomingTerminationReasons *this)
{
  *this = &unk_1F5EEAC58;
  std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(this + 168, *(this + 22));

  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(this);
}

{
  *this = &unk_1F5EEAC58;
  std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(this + 168, *(this + 22));

  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(this);
}

{
  *this = &unk_1F5EEAC58;
  std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(this + 168, *(this + 22));
  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(this);

  JUMPOUT(0x1E69235B0);
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void BambiCallOptions::BambiCallOptions(BambiCallOptions *this, const BambiCallOptions *a2)
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

  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  *(this + 77) = *(a2 + 77);
  *(this + 3) = v6;
  *(this + 4) = v7;
  *(this + 2) = v5;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v8;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v9 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 7) = v9;
  }

  *(this + 136) = *(a2 + 136);
  ims::LocationInfo::LocationInfo((this + 144), (a2 + 144));
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v10 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v10;
  }

  *(this + 312) = *(a2 + 312);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 320), a2 + 20);
}

void sub_1E4D35D00(_Unwind_Exception *a1)
{
  ims::LocationInfo::~LocationInfo((v2 + 144));
  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_1E4D35DA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void BambiCallOptions::~BambiCallOptions(void **this)
{
  if (*(this + 344) == 1 && *(this + 343) < 0)
  {
    operator delete(this[40]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

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

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *ImsUuid::ImsUuid(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5EBEE78;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  ImsUuid::assign(a1, a2);
  return a1;
}

void sub_1E4D35F48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void LazuliSessionOptions::~LazuliSessionOptions(LazuliSessionOptions *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
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

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *std::__optional_copy_base<LazuliSendParams,false>::__optional_copy_base[abi:ne200100](std::string *this, const LazuliSendParams *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[16].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 392) == 1)
  {
    LazuliSendParams::LazuliSendParams(this, a2);
    this[16].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_1E4D36060(_Unwind_Exception *exception_object)
{
  if (*(v1 + 392) == 1)
  {
    LazuliSendParams::~LazuliSendParams(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,LazuliInfo>::pair[abi:ne200100]<std::string const&,LazuliInfo,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a3;
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
  *&this[1].__r_.__value_.__l.__data_ = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *&this[2].__r_.__value_.__l.__data_ = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  std::__optional_move_base<LazuliSendParams,false>::__optional_move_base[abi:ne200100]((this + 64), a3 + 40);
  return this;
}

void sub_1E4D36104(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
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

std::string *std::__optional_move_base<LazuliSendParams,false>::__optional_move_base[abi:ne200100](std::string *this, uint64_t a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[16].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 392) == 1)
  {
    LazuliSendParams::LazuliSendParams(this, a2);
    this[16].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_1E4D36184(_Unwind_Exception *exception_object)
{
  if (*(v1 + 392) == 1)
  {
    LazuliSendParams::~LazuliSendParams(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

ims::NetworkConfig *ims::NetworkConfig::NetworkConfig(ims::NetworkConfig *this)
{
  *(this + 7) = 0;
  *(this + 64) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 48) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  *(this + 25) = 0;
  *(this + 208) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 192) = 0;
  *(this + 300) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  *(this + 76) = 1;
  *(this + 154) = 257;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  std::string::basic_string[abi:ne200100]<0>(this + 504, "ims");
  *(this + 266) = 0;
  *(this + 534) = 1;
  *(this + 292) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  return this;
}

void sub_1E4D36328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 480);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 456);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 455) < 0)
  {
    operator delete(*(v10 + 432));
  }

  if (*(v10 + 431) < 0)
  {
    operator delete(*(v10 + 408));
  }

  if (*(v10 + 407) < 0)
  {
    operator delete(*(v10 + 384));
  }

  if (*(v10 + 383) < 0)
  {
    operator delete(*(v10 + 360));
  }

  if (*(v10 + 359) < 0)
  {
    operator delete(*(v10 + 336));
  }

  if (*(v10 + 335) < 0)
  {
    operator delete(*v11);
  }

  ims::NetworkServices::~NetworkServices(v10);
  _Unwind_Resume(a1);
}

void ims::NetworkServices::~NetworkServices(void **this)
{
  v2 = this + 34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
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

void ims::PrefsContainer::release(ims::PrefsContainer *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {

    CFRelease(v3);
  }
}

void ims::StackConfig::~StackConfig(void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 711) < 0)
  {
    operator delete(this[86]);
  }

  if (*(this + 687) < 0)
  {
    operator delete(this[83]);
  }

  if (*(this + 663) < 0)
  {
    operator delete(this[80]);
  }

  if (*(this + 639) < 0)
  {
    operator delete(this[77]);
  }

  ims::NetworkConfig::~NetworkConfig(this + 3);
  ims::PrefsContainer::release((this + 1));
}

void ims::NetworkConfig::~NetworkConfig(void **this)
{
  if (*(this + 583) < 0)
  {
    operator delete(this[70]);
  }

  if (*(this + 559) < 0)
  {
    operator delete(this[67]);
  }

  if (*(this + 527) < 0)
  {
    operator delete(this[63]);
  }

  v2 = this + 60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 455) < 0)
  {
    operator delete(this[54]);
  }

  if (*(this + 431) < 0)
  {
    operator delete(this[51]);
  }

  if (*(this + 407) < 0)
  {
    operator delete(this[48]);
  }

  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  v2 = this + 34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
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

void **std::__split_buffer<std::shared_ptr<BambiCall>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<BambiCall>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<BambiCall>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void ims::CallIncomingInfo::~CallIncomingInfo(void **this)
{
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

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

int *std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned short>>>(uint64_t a1, int *a2, int *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = *v5;
      v9 = a4[2];
      if (v7 >= v9)
      {
        v10 = *a4;
        v11 = v7 - *a4;
        v12 = v11 >> 1;
        if (v11 >> 1 <= -2)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v10;
        if (v13 <= v12 + 1)
        {
          v14 = v12 + 1;
        }

        else
        {
          v14 = v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4, v15);
        }

        *(2 * v12) = v8;
        v7 = (2 * v12 + 2);
        memcpy(0, v10, v11);
        v16 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7 = v8;
        v7 += 2;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *ctu::SharedLoggable<IMSCallManager,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, NSObject **a2, char *a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, *a4);
  return a1;
}

uint64_t ims::SharedLoggable<IMSCallManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<IMSCallManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,LazuliInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,LazuliInfo>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,LazuliInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,LazuliInfo>,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 456) == 1)
  {
    LazuliSendParams::~LazuliSendParams((a2 + 64));
  }

  v3 = *(a2 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<IMSCallInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC70E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D36CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string,LazuliInfo>>(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2);
    if ((result & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return result;
}

void sub_1E4D36E4C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__erase_unique<std::string>(uint64_t **a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != result)
  {

    return std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::erase(a1, result);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,LazuliInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,LazuliInfo>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t std::__tree<std::__value_type<std::string,LazuliInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,LazuliInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,LazuliInfo>>>::__count_unique<std::string>(void **a1, void **a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

void ims::join<std::__wrap_iter<unsigned short const*>>()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4D3706C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::join<std::__wrap_iter<unsigned short const*>>(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v7 = result;
    v8 = 1;
    do
    {
      if ((v8 & 1) == 0)
      {
        (*(*a3 + 32))(a3, a4);
      }

      v9 = *v7++;
      result = MEMORY[0x1E6923390](*(a3 + 8), v9);
      v8 = 0;
      *(a3 + 17) = 0;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

void *DefaultRegistrationPolicy::DefaultRegistrationPolicy(void *a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationPolicy::SipRegistrationPolicy(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_1F5EC7130;
  a1[17] = &unk_1F5EC7388;
  a1[18] = &unk_1F5EC73B8;
  a1[19] = &unk_1F5EC73D0;
  a1[297] = 0;
  a1[299] = 0;
  a1[298] = 0;
  return a1;
}

void sub_1E4D3727C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void DefaultRegistrationPolicy::~DefaultRegistrationPolicy(DefaultRegistrationPolicy *this)
{
  *this = &unk_1F5EC7130;
  *(this + 17) = &unk_1F5EC7388;
  *(this + 18) = &unk_1F5EC73B8;
  *(this + 19) = &unk_1F5EC73D0;
  v2 = *(this + 297);
  if (v2)
  {
    *(this + 298) = v2;
    operator delete(v2);
  }

  SipRegistrationPolicy::~SipRegistrationPolicy(this);
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toDefaultRegistrationPolicy::~DefaultRegistrationPolicy(DefaultRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));

  JUMPOUT(0x1E69235B0);
}

uint64_t DefaultRegistrationPolicy::generalErrorRetryInterval(DefaultRegistrationPolicy *this)
{
  v1 = *(this + 50);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 - 1);
  v3 = *(this + 298);
  v4 = *(this + 297);
  v5 = v3 - v4;
  v6 = (v4 + 16 * v2);
  v7 = (v3 - 16);
  if (v2 >= v5 >> 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = *v8;
  if (*(v8 + 2))
  {
    v9 += random() % *(v8 + 2);
  }

  return v9;
}

uint64_t DefaultRegistrationPolicy::fatalErrorRetryInterval(DefaultRegistrationPolicy *this)
{
  v1 = *(this + 297);
  v2 = *v1;
  if (*(v1 + 2))
  {
    v2 += random() % *(v1 + 2);
  }

  return v2;
}

uint64_t DefaultRegistrationPolicy::forbiddenErrorRetryInterval(DefaultRegistrationPolicy *this)
{
  v1 = *(this + 297);
  v2 = *v1;
  if (*(v1 + 2))
  {
    v2 += random() % *(v1 + 2);
  }

  return v2;
}

void DefaultRegistrationPolicy::updateConfig(DefaultRegistrationPolicy *this, char **a2)
{
  v4 = this + 2376;
  if ((this + 2376) != a2 + 120)
  {
    std::vector<SipRetryInfo>::__assign_with_size[abi:ne200100]<SipRetryInfo*,SipRetryInfo*>(this + 297, a2[120], a2[121], (a2[121] - a2[120]) >> 4);
  }

  v5 = *(this + 297);
  v6 = *(this + 298);
  if (v5 == v6)
  {
    v7 = *(this + 299);
    if (v5 >= v7)
    {
      v8 = v7 - v5;
      v9 = (v7 - v5) >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<SipRetryInfo>>(v4, v10);
    }

    *v6 = 30;
    *(v6 + 8) = 0;
    *(this + 298) = v6 + 16;
  }

  SipRegistrationPolicy::updateConfig(this, a2);
}

void SipRecorder::recordBlob(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v69[19] = *MEMORY[0x1E69E9840];
  v4 = byte_1ECFD48CF;
  if (byte_1ECFD48CF < 0)
  {
    v4 = qword_1ECFD48C0;
  }

  if (v4)
  {
    memset(&__p, 0, sizeof(__p));
    v6 = *a1;
    if (*a1)
    {
      v10 = *v6;
      v11 = **v6;
      if (v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = (*(*v12 + 120))(v12);
        std::string::operator=(&__p, v14);
LABEL_9:
        v15 = byte_1ECFD48CF;
        if (byte_1ECFD48CF < 0)
        {
          v15 = qword_1ECFD48C0;
        }

        if (v15)
        {
          v60 = 0;
          v58 = 0u;
          memset(v59, 0, sizeof(v59));
          *v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          memset(v55, 0, sizeof(v55));
          std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
          if (byte_1ECFD48CF >= 0)
          {
            v16 = &SipRecorder::_recordingPath;
          }

          else
          {
            v16 = SipRecorder::_recordingPath;
          }

          if (byte_1ECFD48CF >= 0)
          {
            v17 = byte_1ECFD48CF;
          }

          else
          {
            v17 = qword_1ECFD48C0;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, v16, v17);
          if (a4)
          {
            ++dword_1EE2BC28C;
            v18 = MEMORY[0x1E6923350](&v54);
            LOBYTE(v61[0]) = 45;
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v61, 1);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, p_p, size);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".", 1);
            v24 = *(a3 + 23);
            if (v24 >= 0)
            {
              v25 = a3;
            }

            else
            {
              v25 = *a3;
            }

            if (v24 >= 0)
            {
              v26 = *(a3 + 23);
            }

            else
            {
              v26 = *(a3 + 8);
            }

            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
            v28 = ".out";
            v29 = 4;
          }

          else
          {
            ++_MergedGlobals_5;
            v33 = MEMORY[0x1E6923350](&v54);
            LOBYTE(v61[0]) = 45;
            v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v61, 1);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &__p;
            }

            else
            {
              v35 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = __p.__r_.__value_.__l.__size_;
            }

            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ".", 1);
            v39 = *(a3 + 23);
            if (v39 >= 0)
            {
              v40 = a3;
            }

            else
            {
              v40 = *a3;
            }

            if (v39 >= 0)
            {
              v41 = *(a3 + 23);
            }

            else
            {
              v41 = *(a3 + 8);
            }

            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
            v28 = ".in";
            v29 = 3;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
          std::string::basic_string[abi:ne200100]<0>(v61, "sip.record");
          v50[0] = 0;
          v53 = 0;
          v42 = ims::debug(v61, v50);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "Writing message to ", 19);
          *(v42 + 17) = 0;
          std::ostringstream::str[abi:ne200100](&v54, v48);
          (*(*v42 + 32))(v42, v48);
          (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v42 + 17) = 0;
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }

          if (v53 == 1 && v52 < 0)
          {
            operator delete(v51);
          }

          if (SBYTE7(v62) < 0)
          {
            operator delete(v61[0]);
          }

          bzero(v61, 0x238uLL);
          std::ostringstream::str[abi:ne200100](&v54, v48);
          std::ofstream::basic_ofstream(v61);
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }

          if ((*(v63 + *(v61[0] - 3)) & 5) == 0)
          {
            v43 = *(a2 + 23);
            v44 = v43 >= 0 ? a2 : *a2;
            v45 = v43 >= 0 ? *(a2 + 23) : *(a2 + 8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v44, v45);
            if (!std::filebuf::close())
            {
              std::ios_base::clear((v61 + *(v61[0] - 3)), *(v63 + *(v61[0] - 3)) | 4);
            }
          }

          v61[0] = *MEMORY[0x1E69E54D0];
          *(v61 + *(v61[0] - 3)) = *(MEMORY[0x1E69E54D0] + 24);
          MEMORY[0x1E6923250](&v61[1]);
          std::ostream::~ostream();
          MEMORY[0x1E6923510](v69);
          *&v54 = *MEMORY[0x1E69E54E8];
          *(&v55[-1] + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
          *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56[1]);
          }

          *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v55);
          std::ostream::~ostream();
          MEMORY[0x1E6923510](v59);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        goto LABEL_77;
      }

      v30 = *v10;
      if (v31)
      {
        v32 = v31;
        v13 = *(a1 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v68 = 0;
        v66 = 0u;
        memset(v67, 0, sizeof(v67));
        *v64 = 0u;
        v65 = 0u;
        memset(v63, 0, sizeof(v63));
        *v61 = 0u;
        v62 = 0u;
        std::ostringstream::basic_ostringstream[abi:ne200100](v61);
        MEMORY[0x1E6923350](v61, v32[32]);
        std::ostringstream::str[abi:ne200100](v61, &v54);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = v54;
        __p.__r_.__value_.__r.__words[2] = *&v55[0];
        v61[0] = *MEMORY[0x1E69E54E8];
        *(v61 + *(v61[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
        v61[1] = (MEMORY[0x1E69E5548] + 16);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(v64[1]);
        }

        v61[1] = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(&v62);
        std::ostream::~ostream();
        MEMORY[0x1E6923510](v67);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          v13 = 0;
        }

        goto LABEL_9;
      }
    }

LABEL_77:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

void sub_1E4D37E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  std::ostringstream::~ostringstream(&a60);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1E6923240](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1E4D3808C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v1);
  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = std::string::basic_string[abi:ne200100](a3, v8 + 1);
  if (*(result + 23) >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    result = memmove(v10, v11, v8);
  }

  v12 = &v10[v8];
  *v12 = a2;
  v12[1] = 0;
  return result;
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x1E69E54D0];
  v2 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E6923250](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t AnalyticsLogger::start(AnalyticsLogger *this)
{
  *(this + 84) = 0;
  *(this + 68) = time(0);
  *(this + 69) = time(0);
  *(this + 72) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0;
  v2 = *(this + 86);
  *(this + 680) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = xpc_null_create();
  v4 = xpc_null_create();
  v5 = *(this + 87);
  *(this + 87) = v3;
  xpc_release(v5);
  xpc_release(v4);
  *(this + 167) = 0;
  *(this + 26) = *(this + 25);
  *(this + 177) = 0;
  return 1;
}

{
  return (*(*this + 80))();
}

uint64_t non-virtual thunk toAnalyticsLogger::start(AnalyticsLogger *this)
{
  AnalyticsLogger::start((this - 136));
  return 1;
}

{
  return (*(*(this - 17) + 80))();
}

uint64_t AnalyticsLogger::logSipRequest(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "AnalyticsLogger::logSipRequest", 30);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

uint64_t AnalyticsLogger::logSipResponse(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "AnalyticsLogger::logSipResponse", 31);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

uint64_t AnalyticsLogger::logSipRequestFromNonProxyDropped(_DWORD *a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "AnalyticsLogger::logSipRequestFromNonProxyDropped. Incrementing counter", 71);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  ++a1[177];
  return result;
}

uint64_t AnalyticsLogger::logRTPError(AnalyticsLogger *this, uint64_t a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logRTPError ", 29);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923350](*(v4 + 8), a2);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  *(this + 77) = a2;
  return result;
}

void AnalyticsLogger::logRegistrationRequest(void *a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logRegistrationRequest", 39);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[69];
  ims::analytics::RegistrationAttemptEvent::createRegistrationAttempt();
}

void sub_1E4D387D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logWiFiHandover(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "AnalyticsLogger::logWiFiHandover - isValidHandover: ", 52);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), a4);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (a4)
  {
    v8 = time(0) - *(a1 + 672);
    v10 = *(a1 + 208);
    v9 = *(a1 + 216);
    if (v10 >= v9)
    {
      v13 = *(a1 + 200);
      v14 = (v10 - v13) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      v15 = v9 - v13;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<AnalyticsLogger::HandoverData>>(v17);
      }

      v18 = (8 * v14);
      v19 = 0x100000000;
      if (!a3)
      {
        v19 = 0;
      }

      *v18 = v19 & 0xFFFFFFFF00000000 | v8;
      v12 = v18 + 1;
      v20 = *(a1 + 200);
      v21 = *(a1 + 208) - v20;
      v22 = v18 - v21;
      memcpy(v18 - v21, v20, v21);
      v23 = *(a1 + 200);
      *(a1 + 200) = v22;
      *(a1 + 208) = v12;
      *(a1 + 216) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      v11 = 0x100000000;
      if (!a3)
      {
        v11 = 0;
      }

      *v10 = v11 & 0xFFFFFFFF00000000 | v8;
      v12 = v10 + 1;
    }

    *(a1 + 208) = v12;
    *(a1 + 192) = a3;
    if ((a3 & 1) == 0)
    {
      ++*(a1 + 668);
    }
  }
}

void AnalyticsLogger::logRegistrationSuccess(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = time(0);
  a1[76] = v7 - a1[68];
  v8 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "AnalyticsLogger::logRegistrationSuccess", 39);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (*(a3 + 160))
  {
    a1[78] += v7 - a1[72];
    a1[75] += v7 - a1[69];
  }

  else
  {
    a1[72] = v7;
    a1[78] = 0;
    a1[77] += v7 - a1[69];
    v9 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Time passed ", 12);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923360](*(v9 + 8), v7 - a1[69]);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
  }

  v10 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "AWD logging registration attempt took ", 38);
  *(v10 + 17) = 0;
  v11 = *(a3 + 56);
  if (v11)
  {
    v12 = *(a3 + 64);
    if (v12 >= v11)
    {
      v13 = (v12 - v11);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E6923350](*(v10 + 8), v13);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " ms", 3);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " exires in ", 11);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923350](*(v10 + 8), *(v6 + 456));
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v14 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "ipTelephony up ", 15);
  *(v14 + 17) = 0;
  MEMORY[0x1E69233B0](*(v14 + 8), a1[76]);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " totalRegTime ", 14);
  *(v14 + 17) = 0;
  MEMORY[0x1E69233B0](*(v14 + 8), a1[75]);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " Current reg ", 13);
  *(v14 + 17) = 0;
  MEMORY[0x1E69233B0](*(v14 + 8), a1[78]);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " un reg time is ", 16);
  *(v14 + 17) = 0;
  MEMORY[0x1E69233B0](*(v14 + 8), a1[77]);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (*(v6 + 456))
  {
    a1[69] = v7;
  }

  v15 = a2[1];
  v16 = *a2;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  ims::analytics::RegistrationResultEvent::createRegistrationSuccess();
}

void sub_1E4D38EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logRegistrationTerminated(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logRegistrationTerminated", 42);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = time(0);
  *(a1 + 624) = v5 - *(a1 + 576);
  *(a1 + 600) += v5 - *(a1 + 552);
  *(a1 + 608) = v5 - *(a1 + 544);
  *(a1 + 552) = v5;
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "ipTelephony up ", 15);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 608));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " totalRegTime ", 14);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 600));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " Current reg ", 13);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 624));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " un reg time is ", 16);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 616));
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = a2[1];
  v9 = *a2;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 708);
  ims::analytics::RegistrationResultEvent::createRegistrationTerminated();
}

{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logRegistrationTerminated", 42);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  *(a1 + 552) = time(0);
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 708);
  ims::analytics::RegistrationResultEvent::createRegistrationTerminated();
}

void sub_1E4D391A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toAnalyticsLogger::logRegistrationTerminated(uint64_t a1, uint64_t *a2)
{
  AnalyticsLogger::logRegistrationTerminated(a1 - 168, a2);
}

{
  AnalyticsLogger::logRegistrationTerminated(a1 - 168, a2);
}

void sub_1E4D39330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logRegistrationError(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "AnalyticsLogger::logRegistrationError", 37);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (*(a3 + 72) == &SipResultDomain::_domain)
  {
    v7 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "registration failed with SIP response ", 38);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923340](*(v7 + 8), *(a3 + 80));
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }

  v8 = a2[1];
  v9 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  ims::analytics::RegistrationResultEvent::createRegistrationError();
}

void sub_1E4D3957C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logDeRegistration(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logDeRegistration", 34);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = a2[1];
  v6 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  ims::analytics::RegistrationAttemptEvent::createDeregistrationAttempt();
}

void sub_1E4D396F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logSessionRequestedEvent(_BYTE *a1, std::string **a2, char a3, uint64_t a4)
{
  v32[0] = 0;
  v32[1] = 0;
  IPTelephonyManager::getBambiClient(v32);
  memset(&__str, 0, sizeof(__str));
  v8 = *a2;
  if (SHIBYTE((*a2)[22].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v8[22].__r_.__value_.__l.__data_, v8[22].__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v8[22];
  }

  v9 = time(0);
  a1[664] = a3;
  v10 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "AnalyticsLogger::logSessionRequestedEvent MO/MT=", 48);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923320](*(v10 + 8), a4);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " hashed call Id is ", 19);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, &__str);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v11 = v32[0];
  v12 = *a2;
  data = (*a2)[16].__r_.__value_.__l.__data_;
  if (data)
  {
    v14 = std::__shared_weak_count::lock(data);
    if (v14)
    {
      v15 = v12[15].__r_.__value_.__r.__words[2];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
LABEL_9:
  if (*(v15 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v15 + 4432), *(v15 + 4440));
  }

  else
  {
    __p = *(v15 + 4432);
  }

  v16 = *(v11 + 216);
  v18 = v16 && (v17 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v16 + 280, &__p.__r_.__value_.__l.__data_), v16 + 288 != v17) && *(v17 + 56) == 1;
  a1[192] = v18;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  if (BambiClient::callCountExcludingCall(v11, &__p) > 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0;
    *(a1 + 80) = 0;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    a1[540] = 0;
    *(a1 + 94) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 25) = 0u;
    *(a1 + 26) = 0u;
    *(a1 + 108) = 0;
    *(a1 + 122) = 0;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 31) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 66) = 0;
    *(a1 + 38) = 0x1000000000000;
    *(a1 + 39) = 0;
    *(a1 + 14) = 0u;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 17) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 70) = v9;
    *(a1 + 71) = v9;
    *(a1 + 73) = v9;
    *(a1 + 74) = v9;
    *(a1 + 26) = *(a1 + 25);
    *(a1 + 167) = 0;
  }

  a1[632] = v19;
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  if (BambiClient::callCountExcludingCall(v11, &__p) < 2 || (a4 & 1) != 0)
  {
    std::string::operator=((a1 + 640), &__str);
  }

  else
  {
    v20 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "call waiting  active call is ", 29);
    *(v20 + 17) = 0;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v21 = BambiClient::callCountExcludingCall(v11, &__p);
    MEMORY[0x1E6923370](*(v20 + 8), v21);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
  }

  *(a1 + 84) = v9;
  v23 = *a2;
  v24 = (*a2)[16].__r_.__value_.__l.__data_;
  if (v24)
  {
    if (std::__shared_weak_count::lock(v24))
    {
      v25 = v23[15].__r_.__value_.__r.__words[2];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v25 + 3527);
  if (v26 < 0)
  {
    v26 = *(v25 + 3512);
  }

  v27 = (v25 + 3432);
  if (v26)
  {
    v28 = *(v25 + 3551);
    if (v28 < 0)
    {
      v28 = *(v25 + 3536);
    }

    v29 = 72;
    if (!v28)
    {
      v29 = 0;
    }

    v27 = (v27 + v29);
  }

  ims::analytics::ActiveRatField::create(v27, v22);
}

void sub_1E4D39C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AnalyticsLogger::logSessionProgressEvent(_BYTE *a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "logSessionProgressEvent", 23);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v6 = *(*a2 + 1264);
  if (*(*a2 + 1279) >= 0)
  {
    v6 = *(*a2 + 1279);
  }

  a1[540] = v6 != 0;
  return result;
}

uint64_t AnalyticsLogger::logRingingEvent(_BYTE *a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "logRingingEvent", 15);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v6 = *(*a2 + 1264);
  if (*(*a2 + 1279) >= 0)
  {
    v6 = *(*a2 + 1279);
  }

  a1[540] = v6 != 0;
  return result;
}

time_t AnalyticsLogger::logSessionConfirmedEvent(void *a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "logSessionConfirmedEvent", 24);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  result = time(0);
  a1[73] = result;
  a1[74] = result;
  return result;
}

uint64_t AnalyticsLogger::logCallStatusChange(AnalyticsLogger *this, BambiCallEvent *a2, const __CFString *a3)
{
  v4 = (*(*this + 64))(this, a2, a3);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logCallStatusChange", 36);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  return result;
}

uint64_t AnalyticsLogger::logParticipantLeftConference(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "AnalyticsLogger::logParticipantLeftConference", 45);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

void AnalyticsLogger::logLazuliRefer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "AnalyticsLogger::logLazuliRefer", 31);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  v17 = 0;
  v18 = 0;
  v12 = a2[1];
  v15 = *a2;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a3, *(a3 + 8));
  }

  else
  {
    v14 = *a3;
  }

  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a7, *(a7 + 8));
  }

  else
  {
    __p = *a7;
  }

  ims::analytics::LazuliReferEvent::create();
}

void sub_1E4D3A384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliMessageSessionSetup(AnalyticsLogger *this, const ims::analytics::RCSSessionSetupInfo *a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logLazuliMessageSessionSetup", 45);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  ims::analytics::MessageSessionSetupEvent::create(a2, v5);
}

void sub_1E4D3A504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliMessageSessionEnd(AnalyticsLogger *this, const ims::analytics::RCSSessionEndInfo *a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logLazuliMessageSessionEnd", 43);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  ims::analytics::MessageSessionEndEvent::create(a2, v5);
}

void sub_1E4D3A644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliMessageSessionSendReceive(AnalyticsLogger *this, const ims::analytics::RCSSessionSendReceiveInfo *a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logLazuliMessageSessionSendReceive", 51);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  ims::analytics::MessageSessionSendReceiveEvent::create(a2, v5);
}

void sub_1E4D3A784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliMessageSendReceive(AnalyticsLogger *this, const ims::analytics::RCSSendReceiveInfo *a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logLazuliMessageSendReceive", 44);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  ims::analytics::MessageSendReceiveEvent::create(a2, v5);
}

void sub_1E4D3A8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliMessageSipOptions(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "AnalyticsLogger::logLazuliMessageSipOptions", 43);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  ims::analytics::MessageSipOptionsEvent::create();
}

void sub_1E4D3AA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliServerTermination(uint64_t a1)
{
  v2 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "AnalyticsLogger::logLazuliServerTermination", 43);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  ims::analytics::RCSServerTerminationEvent::create();
}

void sub_1E4D3AB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::logLazuliPATRequestResponse(uint64_t a1, unsigned int *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "AnalyticsLogger::logLazuliPATRequestResponse type=", 50);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923350](*(v4 + 8), *a2);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  ims::analytics::RCSPATRequestResponseEvent::create();
}

void sub_1E4D3AC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::fillCallEndMetricFromEvent(AnalyticsLogger *this, awd::metrics::ATM_CallEndEvent *a2, const BambiCallSessionTerminationBaseEvent *a3, uint64_t a4)
{
  v8 = *(a3 + 3);
  if (!v8)
  {
    v10 = 0;
LABEL_6:
    v11 = (*(*this + 64))(this);
    (*(*this + 16))(this, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "AnalyticsLogger::fillCallEndMetricFromEvent - no call", 53);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v9 = 0;
    *(v11 + 17) = 0;
    goto LABEL_7;
  }

  v9 = *(a3 + 2);
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = std::__shared_weak_count::lock(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!v10 || !v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v12 = *(this + 26);
  if (v12 == *(this + 25))
  {
    v17 = 0;
  }

  else
  {
    v13 = *(v9 + 456);
    v14 = *(v12 - 8);
    v15 = *(v9 + 384);
    if (v15)
    {
      v15 = std::__shared_weak_count::lock(v15);
      v16 = v15;
      if (v15)
      {
        v15 = *(v9 + 376);
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = SipStack::prefs(v15);
    v17 = a4 - (v13 + v14) < ImsPrefs::InactivityTimerRTPSeconds(v18);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    *(this + 26) = *(this + 25);
  }

  v19 = std::__shared_weak_count::lock(*(v9 + 384));
  v20 = *(v9 + 376);
  v21 = *(v20 + 248);
  v22 = *(v20 + 256);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = *(SipUserAgent::config(v21) + 456);
    *(a2 + 172) |= 0x10u;
    *(a2 + 646) = v23;
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  else
  {
    v24 = *(SipUserAgent::config(v21) + 456);
    *(a2 + 172) |= 0x10u;
    *(a2 + 646) = v24;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  switch(*(a3 + 8))
  {
    case 0:
      v44 = *(a2 + 169);
      *(a2 + 45) = 7;
      *(a2 + 169) = v44 | 0x30;
      v34 = 1007;
      goto LABEL_86;
    case 1:
      v45 = *(a2 + 169);
      *(a2 + 45) = 8;
      *(a2 + 169) = v45 | 0x30;
      v34 = 1008;
      goto LABEL_86;
    case 2:
      v42 = *(a2 + 169);
      *(a2 + 45) = 15;
      *(a2 + 169) = v42 | 0x30;
      v34 = 1015;
      goto LABEL_86;
    case 3:
      v47 = *(a2 + 169);
      *(a2 + 45) = 16;
      *(a2 + 169) = v47 | 0x30;
      v34 = 1016;
      goto LABEL_86;
    case 4:
      v41 = *(a2 + 169);
      *(a2 + 45) = 10;
      *(a2 + 169) = v41 | 0x30;
      v34 = 1010;
      goto LABEL_86;
    case 5:
      v39 = *(a2 + 169);
      *(a2 + 45) = 11;
      *(a2 + 169) = v39 | 0x30;
      v34 = 1011;
      goto LABEL_86;
    case 6:
      *(a2 + 169) |= 0x10u;
      v31 = 33;
      goto LABEL_100;
    case 7:
      *(a2 + 169) |= 0x10u;
      v31 = 34;
      goto LABEL_100;
    case 8:
      v38 = *(a2 + 169);
      *(a2 + 45) = 14;
      *(a2 + 236) = 1;
      *(a2 + 169) = v38 | 0x70;
      v34 = 1014;
      goto LABEL_86;
    case 9:
      v33 = *(a2 + 169);
      *(a2 + 45) = 32;
      *(a2 + 169) = v33 | 0x30;
      v34 = 1000;
      goto LABEL_86;
    case 0xA:
    case 0x26:
      v28 = *(a2 + 169);
      *(a2 + 45) = 13;
      *(a2 + 169) = v28 | 0x30;
      *(a2 + 48) = 1013;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0xB:
    case 0x1D:
    case 0x24:
      v27 = *(a2 + 169);
      *(a2 + 45) = 9;
      *(a2 + 169) = v27 | 0x30;
      *(a2 + 48) = 1009;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0xC:
      v40 = *(a2 + 169);
      *(a2 + 45) = 17;
      *(a2 + 169) = v40 | 0x30;
      v34 = 1017;
      goto LABEL_86;
    case 0xD:
      v46 = *(a2 + 169);
      *(a2 + 45) = 12;
      *(a2 + 169) = v46 | 0x30;
      *(a2 + 48) = 1012;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0xE:
      v43 = *(a2 + 169);
      *(a2 + 45) = 19;
      *(a2 + 169) = v43 | 0x30;
      *(a2 + 48) = 1019;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0xF:
      v49 = *(a2 + 169);
      *(a2 + 45) = 21;
      *(a2 + 169) = v49 | 0x30;
      v34 = 1021;
LABEL_86:
      *(a2 + 48) = v34;
      goto LABEL_87;
    case 0x10:
      v37 = *(a2 + 169);
      *(a2 + 45) = 22;
      *(a2 + 169) = v37 | 0x30;
      *(a2 + 48) = 1022;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x11:
      v48 = *(a2 + 169);
      *(a2 + 45) = 23;
      *(a2 + 169) = v48 | 0x30;
      *(a2 + 48) = 1023;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x12:
    case 0x20:
    case 0x21:
    case 0x23:
      v25 = *(a2 + 169);
      *(a2 + 45) = 24;
      *(a2 + 169) = v25 | 0x30;
      *(a2 + 48) = 1024;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x13:
      if (v17)
      {
        awd::metrics::ATM_CallEndEvent::set_status_code(a2, 0x405);
        v29 = (*(*this + 64))(this);
        (*(*this + 16))(this, v29);
        v30 = ImsOutStream::operator<<(v29, "media timeout after handover ");
        (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v30[17] = 0;
      }

      else
      {
        awd::metrics::ATM_CallEndEvent::set_status_code(a2, 0x401);
      }

      *(a2 + 169) |= 0x10u;
      *(a2 + 45) = 25;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x14:
      if (v17)
      {
        awd::metrics::ATM_CallEndEvent::set_status_code(a2, 0x405);
        v51 = (*(*this + 64))(this);
        (*(*this + 16))(this, v51);
        v52 = ImsOutStream::operator<<(v51, "media timeout after handover ");
        (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v52[17] = 0;
      }

      else
      {
        awd::metrics::ATM_CallEndEvent::set_status_code(a2, 0x402);
      }

      v53 = *(this + 74);
      if (v53 >= 1 && (*(a3 + 56) & 1) == 0)
      {
        *(a2 + 171) |= 0x1000u;
        *(a2 + 138) = a4 - v53;
      }

      *(a2 + 169) |= 0x10u;
      *(a2 + 45) = 26;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x15:
      v50 = *(a2 + 169);
      *(a2 + 45) = 27;
      *(a2 + 169) = v50 | 0x30;
      *(a2 + 48) = 1027;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x16:
      v32 = *(a2 + 169);
      *(a2 + 45) = 28;
      *(a2 + 169) = v32 | 0x30;
      *(a2 + 48) = 1028;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x17:
      v35 = *(a2 + 169);
      *(a2 + 45) = 30;
      *(a2 + 169) = v35 | 0x230;
      *(a2 + 24) = 0x100000406;
      if (!v10)
      {
        return;
      }

      goto LABEL_119;
    case 0x18:
      *(a2 + 169) |= 0x10u;
      *(a2 + 45) = 35;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x19:
      v36 = *(a2 + 169);
      *(a2 + 45) = 31;
      *(a2 + 169) = v36 | 0x30;
      *(a2 + 48) = 1031;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x1A:
      *(a2 + 169) |= 0x10u;
      v31 = 36;
      goto LABEL_100;
    case 0x1B:
      *(a2 + 169) |= 0x10u;
      v31 = 37;
      goto LABEL_100;
    case 0x1C:
      *(a2 + 169) |= 0x10u;
      *(a2 + 45) = 38;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x1E:
      *(a2 + 169) |= 0x10u;
      *(a2 + 45) = 39;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    case 0x1F:
      *(a2 + 169) |= 0x10u;
      *(a2 + 45) = 40;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v9 + 464);
      if (v26 < 1)
      {
        goto LABEL_116;
      }

LABEL_114:
      if (time(0) - v26 <= 10)
      {
LABEL_116:
        v54 = 1;
      }

      else
      {
        v54 = 2;
      }

      *(a2 + 169) |= 0x200u;
      *(a2 + 49) = v54;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_119:

        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      return;
    case 0x22:
      *(a2 + 169) |= 0x10u;
      v31 = 41;
LABEL_100:
      *(a2 + 45) = v31;
      if (!v10)
      {
        return;
      }

      goto LABEL_119;
    default:
LABEL_87:
      if (!v10)
      {
        return;
      }

      goto LABEL_119;
  }
}

void sub_1E4D3B6C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AnalyticsLogger::logSessionTerminationEvent(AnalyticsLogger *this, const BambiCallSessionTerminationBaseEvent *a2, const uint64_t *a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v9 = (*(*this + 64))(this);
  (*(*this + 16))(this, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "AnalyticsLogger::logSessionTerminationEvent", 43);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (a2)
  {
    v47 = time(0);
    v30 = 0u;
    object = 0;
    v29 = 0u;
    v10 = xpc_null_create();
    *object_8 = 0uLL;
    v33 = 0u;
    v34 = 0u;
    memset(v35, 0, sizeof(v35));
    v36 = 0u;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v39 = 0u;
    v40 = 0u;
    memset(v41, 0, sizeof(v41));
    v42 = 0u;
    v43 = 0u;
    *__p = 0u;
    v45 = 0u;
    v46 = 0u;
    HIDWORD(v11) = *(this + 134);
    LODWORD(v11) = HIDWORD(v11);
    v12 = *(this + 77);
    LODWORD(v29) = v11 >> 16;
    DWORD1(v29) = v12;
    BYTE8(v29) = *(this + 192);
    v30 = vextq_s8(*(this + 35), *(this + 35), 8uLL);
    v13 = *(this + 87);
    if (v13)
    {
      xpc_retain(*(this + 87));
    }

    else
    {
      v13 = xpc_null_create();
    }

    object = v13;
    xpc_release(v10);
    if (&__p[1] != (this + 200))
    {
      v16 = *(this + 25);
      v15 = *(this + 26);
      v17 = v15 - v16;
      if (v15 != v16)
      {
        if (!((v17 >> 3) >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<AnalyticsLogger::HandoverData>>(v17 >> 3);
        }

        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      *&v45 = v15 - v16;
    }

    v18 = *(this + 24);
    *object_8 = *(this + 23);
    v33 = v18;
    v34 = *(this + 25);
    v35[0] = *(this + 52);
    v19 = *(this + 31);
    *&v35[1] = *(this + 30);
    v36 = v19;
    v37 = *(this + 32);
    v20 = *(this + 312);
    v21 = *(this + 328);
    v22 = *(this + 344);
    v23 = *(this + 45);
    *v38 = *(this + 66);
    v41[0] = v23;
    v40 = v22;
    v39 = v21;
    *&v38[8] = v20;
    __p[0] = *(this + 59);
    v24 = *(this + 456);
    v42 = *(this + 440);
    v43 = v24;
    *&v41[1] = *(this + 424);
    v25 = *(this + 85);
    v26 = *(this + 86);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *(&v46 + 1);
    *&v46 = v25;
    *(&v46 + 1) = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    ims::analytics::CallEndEvent::create(a2, &v47, a3, a5, *(this + 632), &v29, v14);
  }

  return 1013;
}

void sub_1E4D3BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AnalyticsLogger::AnalyticsData::~AnalyticsData(va);
  _Unwind_Resume(a1);
}

uint64_t AnalyticsLogger::logSessionTerminationEventAwd(AnalyticsLogger *this, const BambiCallSessionTerminationBaseEvent *a2, uint64_t *a3, int a4, int a5)
{
  v6 = *(a2 + 3);
  if (!v6)
  {
    v11 = 0;
LABEL_8:
    v15 = (*(*this + 64))(this);
    (*(*this + 16))(this, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "AnalyticsLogger::logSessionTerminationEventAwd - no call", 56);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    v16 = 13;
    goto LABEL_9;
  }

  v10 = *(a2 + 2);
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = std::__shared_weak_count::lock(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (!v11 || !v10)
  {
    goto LABEL_8;
  }

  v294 = 0;
  v293 = 0;
  IPTelephonyManager::getBambiClient(&v293);
  v12 = *(v10 + 384);
  if (v12 && (v13 = std::__shared_weak_count::lock(v12)) != 0)
  {
    v14 = *(v10 + 376) + 328;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v14 = 328;
  }

  memset(&__str, 0, sizeof(__str));
  if (*(v10 + 551) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(v10 + 528), *(v10 + 536));
  }

  else
  {
    __str = *(v10 + 528);
  }

  v18 = (*(*this + 64))(this);
  (*(*this + 16))(this, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Current call count is ", 22);
  *(v18 + 17) = 0;
  v199 = 0;
  v200 = 0;
  v19 = BambiClient::callCountExcludingCall(v293, &v199);
  MEMORY[0x1E6923370](*(v18 + 8), v19);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " SIP callID=", 12);
  *(v18 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v199, (v10 + 504));
  (*(*v18 + 56))(v18, &v199);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " handover ", 10);
  *(v18 + 17) = 0;
  MEMORY[0x1E6923370](*(v18 + 8), (*(this + 26) - *(this + 25)) >> 3);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v204 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v201) < 0)
  {
    operator delete(v199);
  }

  v21 = *(a2 + 5);
  v20 = *(a2 + 6);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v194 = v20;
  v195 = v21;
  v22 = (*(*this + 64))(this);
  (*(*this + 16))(this, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "AnalyticsLogger::logSessionTerminationEvent", 43);
  *(v22 + 17) = 0;
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  bzero(&v200, 0x2B0uLL);
  v199 = &unk_1F5EC5F20;
  v229 = 0u;
  v230 = 0;
  v258 = 0u;
  v259 = 0;
  v261 = 0u;
  v262 = 0;
  v263 = 0u;
  v265 = 0u;
  v266 = 0;
  awd::metrics::ATM_CallEndEvent::SharedCtor(&v199);
  v288 |= 2u;
  if (v201 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v201, &__str);
  if (a5)
  {
    v23 = DWORD2(v263);
    if (DWORD2(v263) == HIDWORD(v263))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(&v263, DWORD2(v263) + 1);
      v23 = DWORD2(v263);
    }

    DWORD2(v263) = v23 + 1;
    *(v263 + v23) = 1;
  }

  if (MEMORY[0x1E6924740](*(this + 87)) == MEMORY[0x1E69E9E80])
  {
    v24 = (this + 696);
    v295.__r_.__value_.__r.__words[0] = this + 696;
    v295.__r_.__value_.__l.__size_ = "has_redialed";
    if (xpc_dictionary_get_value(*(this + 87), "has_redialed"))
    {
      DWORD2(v263) = 0;
      xpc::dict::object_proxy::operator xpc::object(&v295, &v300);
      v25 = xpc::dyn_cast_or_default(&v300, 0);
      v26 = DWORD2(v263);
      if (DWORD2(v263) == HIDWORD(v263))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(&v263, DWORD2(v263) + 1);
        v26 = DWORD2(v263);
      }

      DWORD2(v263) = v26 + 1;
      *(v263 + v26) = v25;
      xpc_release(v300.__r_.__value_.__l.__data_);
    }

    v295.__r_.__value_.__r.__words[0] = this + 696;
    v295.__r_.__value_.__l.__size_ = "is_branded_call";
    if (xpc_dictionary_get_value(*v24, "is_branded_call"))
    {
      xpc::dict::object_proxy::operator xpc::object(&v295, &v300);
      v27 = xpc::dyn_cast_or_default(&v300, 0);
      v289.i32[0] |= 0x800000u;
      v225 = v27;
      xpc_release(v300.__r_.__value_.__l.__data_);
    }

    v295.__r_.__value_.__r.__words[0] = this + 696;
    v295.__r_.__value_.__l.__size_ = "is_image_displayed";
    if (xpc_dictionary_get_value(*v24, "is_image_displayed"))
    {
      xpc::dict::object_proxy::operator xpc::object(&v295, &v300);
      v28 = xpc::dyn_cast_or_default(&v300, 0);
      v289.i32[0] |= 0x1000000u;
      v226 = v28;
      xpc_release(v300.__r_.__value_.__l.__data_);
    }
  }

  v29 = *(v14 + 1838);
  v30 = v288 | 0x10;
  v288 |= 0x10u;
  BYTE5(__p) = v29;
  v31 = *(v10 + 408);
  if (v31)
  {
    v32 = SipPreconditions::preconditionsSatisfiedInAnyFork(*(v31 + 1536));
    v30 = v288;
  }

  else
  {
    v32 = 0;
  }

  v288 = v30 | 0x20;
  BYTE6(__p) = v32;
  if (*(v10 + 1559) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, *(v10 + 1536), *(v10 + 1544));
  }

  else
  {
    v295 = *(v10 + 1536);
  }

  if (*(v10 + 1583) < 0)
  {
    std::string::__init_copy_ctor_external(&v296, *(v10 + 1560), *(v10 + 1568));
  }

  else
  {
    v296 = *(v10 + 1560);
  }

  v297 = *(v10 + 1584);
  v298 = *(v10 + 1600);
  v288 |= 0x20000u;
  if (v206 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v206, &v295);
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v33 = *(v10 + 384);
  if (v33)
  {
    v34 = std::__shared_weak_count::lock(v33);
    if (v34)
    {
      v35 = *(v10 + 376);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
    v34 = 0;
  }

  v36 = *(v35 + 3527);
  if (v36 < 0)
  {
    v36 = *(v35 + 3512);
  }

  v37 = (v35 + 3432);
  if (v36)
  {
    v38 = *(v35 + 3551);
    if (v38 < 0)
    {
      v38 = *(v35 + 3536);
    }

    v39 = 72;
    if (!v38)
    {
      v39 = 0;
    }

    v37 = (v37 + v39);
  }

  v288 |= 0x10000u;
  if (v205 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v205, v37);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v40 = *(v14 + 1839);
  v288 |= 0x80u;
  v207 = v40;
  *&v295.__r_.__value_.__l.__data_ = 0uLL;
  v41 = BambiClient::callCountExcludingCall(v293, &v295);
  v289.i32[0] |= 0x400u;
  v218 = v41;
  v42 = *(v10 + 384);
  if (v42 && (v43 = std::__shared_weak_count::lock(v42)) != 0 && (v44 = *(v10 + 376), std::__shared_weak_count::__release_shared[abi:ne200100](v43), v44))
  {
    v45 = *(v10 + 384);
    if (v45 && (v46 = std::__shared_weak_count::lock(v45)) != 0)
    {
      v47 = *(*(v10 + 376) + 4372);
      v291 |= 0x20u;
      v286 = v47;
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    else
    {
      v291 |= 0x20u;
      v286 = MEMORY[0x1114];
    }

    v105 = *(v10 + 384);
    if (v105)
    {
      v105 = std::__shared_weak_count::lock(v105);
      v106 = v105;
      if (v105)
      {
        v105 = *(v10 + 376);
      }
    }

    else
    {
      v106 = 0;
    }

    isMultisimEnabled = SipStack::isMultisimEnabled(v105);
    v291 |= 0x40u;
    v283 = isMultisimEnabled;
    if (v106)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v106);
    }
  }

  else
  {
    v286 = 0;
    v291 |= 0x60u;
    v283 = 0;
  }

  if (*(v10 + 784) & 1) != 0 || (*(v10 + 785))
  {
    v48 = 3;
  }

  else if (*(v10 + 552) || (*(*v10 + 104))(v10))
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  v288 |= 0x108u;
  LODWORD(__p) = v48;
  v203 = 1;
  if (a4 == 255)
  {
    v49 = (*(*this + 64))(this);
    (*(*this + 16))(this, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " Conference terminated ", 23);
    *(v49 + 17) = 0;
    (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v49 + 17) = 0;
    v288 |= 0x100u;
    v203 = 2;
  }

  v50 = *(v10 + 384);
  if (v50)
  {
    v51 = std::__shared_weak_count::lock(v50);
    if (v51)
    {
      v52 = *(v10 + 376);
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  LODWORD(v302[0]) = 0;
  LODWORD(v301.__r_.__value_.__l.__data_) = 0;
  v299 = 0;
  memset(&v300, 0, sizeof(v300));
  LODWORD(v302[0]) = ims::strToUint32(v52 + 501, 0);
  LODWORD(v301.__r_.__value_.__l.__data_) = ims::strToUint32(v52 + 498, 0);
  ims::AccessNetworks::cellular((v52 + 429), &v295);
  ims::AccessNetwork::extractCellularInfo(&v295, &v301, v302, &v299, &v300);
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v288 |= 0xC00000u;
  data = v301.__r_.__value_.__l.__data_;
  v211 = v302[0];
  v53 = v291;
  v291 |= 4u;
  v285 = v299;
  isIwlanOverCellular = ims::AccessNetworks::isIwlanOverCellular((v52 + 429));
  v291 = v53 | 0x84;
  v287 = isIwlanOverCellular;
  size = HIBYTE(v300.__r_.__value_.__r.__words[2]);
  if ((v300.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v300.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v291 = v53 | 0x8C;
    if (v284 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v284, &v300);
    if ((*(&v300.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_99;
    }
  }

  else if ((*(&v300.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_99:
    operator delete(v300.__r_.__value_.__l.__data_);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (*(v10 + 1529) == 1)
  {
    if (*(v10 + 1728))
    {
      v56 = (*(*this + 64))(this);
      (*(*this + 16))(this, v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Call setup delay is ", 20);
      *(v56 + 17) = 0;
      MEMORY[0x1E69233B0](*(v56 + 8), *(v10 + 1728) - *(v10 + 1744));
      *(v56 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), " ms", 3);
      *(v56 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), " reason is ", 11);
      *(v56 + 17) = 0;
      MEMORY[0x1E6923340](*(v56 + 8), *(a2 + 8));
      *(v56 + 17) = 0;
      (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v56 + 17) = 0;
      v57 = *(v10 + 1728) - *(v10 + 1744);
      v289.i32[0] |= 0x2000u;
      v220 = v57;
    }

    else
    {
      v58 = *(v10 + 464);
      if (v58 >= 1)
      {
        v59 = v58 - *(v10 + 456);
        v289.i32[0] |= 0x2000u;
        v220 = v59;
        v60 = (*(*this + 64))(this);
        (*(*this + 16))(this, v60);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "Call setup delay was ", 21);
        *(v60 + 17) = 0;
        MEMORY[0x1E6923360](*(v60 + 8), *(v10 + 464) - *(v10 + 456));
        *(v60 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), " ms", 3);
        *(v60 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), " reason is ", 11);
        *(v60 + 17) = 0;
        MEMORY[0x1E6923340](*(v60 + 8), *(a2 + 8));
        *(v60 + 17) = 0;
        (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v60 + 17) = 0;
      }
    }
  }

  v61 = *(this + 269);
  v62 = *(this + 268);
  v288 |= 0x82000000;
  v213 = v61;
  v212 = v62;
  if (v62 >= 6)
  {
    __assert_rtn("set_codec", "CATM.pb.h", 15455, "::awd::metrics::enum_codec_type_IsValid(value)");
  }

  v289.i32[1] |= 0x2000000u;
  v257 = v62;
  v63 = *(v10 + 384);
  if (v63)
  {
    v63 = std::__shared_weak_count::lock(v63);
    v64 = v63;
    if (v63)
    {
      v63 = *(v10 + 376);
    }
  }

  else
  {
    v64 = 0;
  }

  v65 = SipStack::prefs(v63);
  ImsPrefs::PacketAlignmentAMRNB(v65, &v198);
  v66 = SDPSession::getAMRPacketAlignmentFromString(&v198) == 0;
  v289.i32[0] |= 1u;
  v209 = v66;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v67 = *(v10 + 384);
  if (v67)
  {
    v67 = std::__shared_weak_count::lock(v67);
    v68 = v67;
    if (v67)
    {
      v67 = *(v10 + 376);
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = SipStack::prefs(v67);
  ImsPrefs::PacketAlignmentAMRNB(v69, &v197);
  v70 = SDPSession::getAMRPacketAlignmentFromString(&v197) == 0;
  v289.i32[1] |= 0x1000000u;
  v256 = v70;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v71 = *(v10 + 1529);
  v72 = v288;
  v288 |= 4u;
  BYTE4(__p) = v71;
  v73 = *(this + 632);
  v74 = v290;
  v290 |= 0x40u;
  v254 = v73;
  if (*(this + 192) == 1)
  {
    if (!*(this + 121))
    {
LABEL_128:
      v75 = 0;
      goto LABEL_131;
    }
  }

  else if (!*(this + 107))
  {
    goto LABEL_128;
  }

  v75 = 1;
LABEL_131:
  v76 = *(v10 + 464);
  if (v76 >= 1)
  {
    v77 = *a3;
    v219 = *a3 - v76;
    v288 = v72 | 0x1000004;
    v208 = 1;
    v260 = 1;
    v289 = vorr_s8(v289, 0x1000000000001100);
    v224 = 1;
    v271 = v77 - *(this + 148);
    v78 = v77 - *(this + 140);
    v290 = v74 | 0xC0040;
    v270 = v78;
    v79 = (*(*this + 64))(this);
    (*(*this + 16))(this, v79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), "Call end times: duration is ", 28);
    *(v79 + 17) = 0;
    MEMORY[0x1E6923360](*(v79 + 8), *a3 - *(v10 + 464));
    *(v79 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), " time since of last recv ", 25);
    *(v79 + 17) = 0;
    MEMORY[0x1E6923360](*(v79 + 8), *a3 - *(this + 70));
    *(v79 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), " time sicne last send ", 22);
    *(v79 + 17) = 0;
    MEMORY[0x1E6923360](*(v79 + 8), *a3 - *(this + 71));
    *(v79 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), " seconds", 8);
    *(v79 + 17) = 0;
    if (v75)
    {
      v80 = " has ";
    }

    else
    {
      v80 = " no ";
    }

    if (v75)
    {
      v81 = 5;
    }

    else
    {
      v81 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), v80, v81);
    *(v79 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), " Remote RTCP in ", 16);
    *(v79 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), "local hold is ", 14);
    *(v79 + 17) = 0;
    v82 = *(v10 + 480);
    if (v82 == 3)
    {
      v83 = " yes ";
    }

    else
    {
      v83 = " no ";
    }

    if (v82 == 3)
    {
      v84 = 5;
    }

    else
    {
      v84 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), v83, v84);
    *(v79 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), "remote hold is ", 15);
    *(v79 + 17) = 0;
    v85 = *(v10 + 484);
    if (v85 <= 2)
    {
      v86 = " no ";
    }

    else
    {
      v86 = " yes ";
    }

    if (v85 <= 2)
    {
      v87 = 4;
    }

    else
    {
      v87 = 5;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v79 + 8), v86, v87);
    *(v79 + 17) = 0;
    (*(*v79 + 64))(v79, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v79 + 17) = 0;
    v88 = *a3;
    v89 = *(this + 70);
    if (*a3 - v89 > 9 || (v90 = *(v10 + 464), v90 == v89))
    {
      v91 = *(this + 71);
      v92 = 2;
      if (v88 - v91 <= 9)
      {
        if (*(v10 + 464) == v91)
        {
          v92 = 2;
        }

        else
        {
          v92 = 3;
        }
      }
    }

    else if (!v75 || (v104 = *(this + 71), v92 = 4, v104 != v90) && v88 - v104 < 10)
    {
LABEL_157:
      v93 = *(this + 107);
      if (v93)
      {
        v94 = (this + 428);
        v272 = v88 - *(this + 146);
        v95 = v88 - *(this + 142);
        v290 |= 0x120000u;
        v269 = v95;
LABEL_165:
        v97 = *(this + 41);
        if (v97)
        {
          v98 = *(this + 115) / v97;
          v289.i32[0] |= 0x40000u;
          v227 = v98;
          v99 = (*(*this + 64))(this);
          (*(*this + 16))(this, v99);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v99 + 8), " volteRtcpRemote.packetLost ", 28);
          *(v99 + 17) = 0;
          MEMORY[0x1E6923350](*(v99 + 8), *(this + 115));
          *(v99 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v99 + 8), " volteRtcpLocal.senderCount = ", 30);
          *(v99 + 17) = 0;
          MEMORY[0x1E69233B0](*(v99 + 8), *(this + 41));
          *(v99 + 17) = 0;
          (*(*v99 + 64))(v99, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v99 + 17) = 0;
          v93 = *v94;
        }

        else
        {
          v288 |= 0x1000000u;
          v208 = 0;
        }

        v228 = *(this + 112) / v93;
        v102 = v289.i32[0] | 0x180000;
        v103 = *(this + 106) / v93;
        goto LABEL_190;
      }

      goto LABEL_167;
    }

    v289.i32[1] |= 0x10000000u;
    v260 = v92;
    goto LABEL_157;
  }

  v96 = (*(*this + 64))(this);
  (*(*this + 16))(this, v96);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v96 + 8), " Call ", 6);
  *(v96 + 17) = 0;
  ObfuscatedString::ObfuscatedString(&v295, (v10 + 504));
  (*(*v96 + 56))(v96, &v295);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v96 + 8), " was not set up", 15);
  *(v96 + 17) = 0;
  (*(*v96 + 64))(v96, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v96 + 17) = 0;
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v289.i32[0] |= 0x100u;
  v224 = 0;
  v93 = *(this + 107);
  if (v93)
  {
    v94 = (this + 428);
    goto LABEL_165;
  }

LABEL_167:
  v100 = *(this + 79);
  if (!v100)
  {
    goto LABEL_191;
  }

  if (!*(this + 45))
  {
    v101 = 3;
    goto LABEL_186;
  }

  if (*(this + 108) && !*(this + 59))
  {
    v101 = 4;
LABEL_186:
    v288 |= 0x1000000u;
    v208 = 0;
    if (!*(this + 41))
    {
      v101 = 2;
    }

    v289.i32[1] |= 0x10000000u;
    v260 = v101;
  }

  v102 = v289.i32[0] | 0x100000;
  v103 = *(this + 78) / v100;
LABEL_190:
  v289.i32[0] = v102;
  v231 = v103;
LABEL_191:
  v108 = *(this + 121);
  if (v108)
  {
    v109 = *(this + 48);
    if (v109)
    {
      v110 = *(this + 129) / v109;
      v290 |= 0x800000u;
      v275 = v110;
      v111 = (*(*this + 64))(this);
      (*(*this + 16))(this, v111);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v111 + 8), " volteRtcpRemote.packetLost ", 28);
      *(v111 + 17) = 0;
      MEMORY[0x1E6923350](*(v111 + 8), *(this + 129));
      *(v111 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v111 + 8), " volteRtcpLocal.senderCount = ", 30);
      *(v111 + 17) = 0;
      MEMORY[0x1E69233B0](*(v111 + 8), *(this + 48));
      *(v111 + 17) = 0;
      (*(*v111 + 64))(v111, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v111 + 17) = 0;
      v108 = *(this + 121);
    }

    else
    {
      v288 |= 0x1000000u;
      v208 = 0;
    }

    v280 = *(this + 126) / v108;
    v114 = v290 | 0x3000000;
    v115 = *(this + 120) / v108;
    goto LABEL_206;
  }

  v112 = *(this + 93);
  if (!v112)
  {
    goto LABEL_207;
  }

  v273 = *(this + 101) / v112;
  v274 = *(this + 98) / v112;
  if (!*(this + 52))
  {
    v113 = 3;
    goto LABEL_202;
  }

  if (*(this + 122) && !*(this + 66))
  {
    v113 = 4;
LABEL_202:
    v288 |= 0x1000000u;
    v208 = 0;
    if (!*(this + 48))
    {
      v113 = 2;
    }

    v289.i32[1] |= 0x10000000u;
    v260 = v113;
  }

  v114 = v290 | 0x2600000;
  v115 = *(this + 92) / v112;
LABEL_206:
  v290 = v114;
  v281 = v115;
LABEL_207:
  v216 = 0;
  v253 = *(this + 540);
  v289.i32[0] |= 0x2000240u;
  v223 = 0;
  v291 |= 2u;
  v282 = 2;
  v116 = *(v10 + 1848);
  if (v116)
  {
    v282 = v116 != 2;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v295 = *(a2 + 5);
  }

  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    v117 = v295.__r_.__value_.__l.__size_;
    operator delete(v295.__r_.__value_.__l.__data_);
    if (!v117)
    {
      goto LABEL_251;
    }
  }

  else if (!*(&v295.__r_.__value_.__s + 23))
  {
    goto LABEL_251;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v295 = *(a2 + 5);
  }

  v289.i32[0] |= 0x80u;
  if (v217 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v217, &v295);
  v193 = v11;
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v118 = v75;
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v295 = *(a2 + 5);
  }

  v119 = SHIBYTE(v295.__r_.__value_.__r.__words[2]);
  v120 = v295.__r_.__value_.__r.__words[0];
  if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = &v295;
  }

  else
  {
    v121 = v295.__r_.__value_.__r.__words[0];
  }

  if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v122 = SHIBYTE(v295.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v122 = v295.__r_.__value_.__l.__size_;
  }

  if (v122 >= 16)
  {
    v123 = v121 + v122;
    v124 = v121;
    do
    {
      v125 = memchr(v124, 82, v122 - 15);
      if (!v125)
      {
        break;
      }

      if (*v125 == 0x504354522D505452 && *(v125 + 1) == 0x74756F656D695420)
      {
        if (v125 == v123 || v125 - v121 == -1 || *(this + 74) < 1)
        {
          break;
        }

        v127 = *(a2 + 56);
        if (v119 < 0)
        {
          operator delete(v120);
        }

        LOBYTE(v75) = v118;
        v11 = v193;
        if ((v127 & 1) == 0)
        {
          v128 = *a3 - *(this + 148);
          v290 |= 0x1000u;
          v264 = v128;
        }

        goto LABEL_251;
      }

      v124 = (v125 + 1);
      v122 = v123 - v124;
    }

    while (v123 - v124 >= 16);
  }

  if (v119 < 0)
  {
    operator delete(v120);
  }

  LOBYTE(v75) = v118;
  v11 = v193;
LABEL_251:
  v129 = *(v10 + 1768);
  if (v129)
  {
    LODWORD(v129) = *(v10 + 1776) - v129;
    v289.i32[0] |= 0x8000u;
    v222 = v129;
    LOBYTE(v129) = 1;
  }

  v290 |= 0x200u;
  v276 = v129;
  if (!v195)
  {
    v132 = *(v10 + 464);
    if (v132 >= 1)
    {
      v133 = v132 - *(v10 + 456);
      v289.i32[0] |= 0x4000u;
      v221 = v133;
    }

    v134 = *(this + 56);
    if (v134)
    {
      v289.i32[0] |= 0x4000000u;
      v232 = v134;
    }

    v135 = *(this + 57);
    if (v135)
    {
      v289.i32[0] |= 0x8000000u;
      v233 = v135;
    }

    v136 = *(this + 58);
    if (v136)
    {
      v289.i32[0] |= 0x10000000u;
      v234 = v136;
    }

    v137 = *(this + 59);
    if (v137)
    {
      v289.i32[0] |= 0x20000000u;
      v235 = v137;
    }

    v138 = *(this + 60);
    if (v138)
    {
      v289.i32[0] |= 0x40000000u;
      v236 = v138;
    }

    v139 = *(this + 61);
    if (v139)
    {
      v289.i32[0] |= 0x80000000;
      v237 = v139;
    }

    v140 = *(this + 62);
    if (v140)
    {
      v289.i32[1] |= 1u;
      v238 = v140;
    }

    v141 = *(this + 63);
    if (v141)
    {
      v289.i32[1] |= 2u;
      v239 = v141;
    }

    v142 = *(this + 64);
    if (v142)
    {
      v289.i32[1] |= 4u;
      v240 = v142;
    }

    v143 = *(this + 65);
    if (v143)
    {
      v289.i32[1] |= 8u;
      v241 = v143;
    }

    v144 = *(this + 66);
    if (v144)
    {
      v289.i32[1] |= 0x10u;
      v242 = v144;
    }

    v145 = *(this + 67);
    if (v145)
    {
      v289.i32[1] |= 0x20u;
      v243 = v145;
    }

    v146 = *(this + 68);
    if (v146)
    {
      v289.i32[1] |= 0x40u;
      v244 = v146;
    }

    v147 = *(this + 69);
    if (v147)
    {
      v289.i32[1] |= 0x80u;
      v245 = v147;
    }

    v148 = *(this + 70);
    if (v148)
    {
      v289.i32[1] |= 0x100u;
      v246 = v148;
    }

    v149 = *(this + 71);
    if (v149)
    {
      v289.i32[1] |= 0x200u;
      v247 = v149;
    }

    v150 = *(this + 72);
    if (v150)
    {
      v289.i32[1] |= 0x400u;
      v248 = v150;
    }

    v151 = *(this + 73);
    if (v151)
    {
      v289.i32[1] |= 0x800u;
      v249 = v151;
    }

    v152 = *(this + 74);
    if (v152)
    {
      v289.i32[1] |= 0x1000u;
      v250 = v152;
    }

    v153 = *(this + 75);
    if (v153)
    {
      v289.i32[1] |= 0x2000u;
      v251 = v153;
    }

    v154 = *(this + 76);
    if (v154)
    {
      v289.i32[1] |= 0x4000u;
      v252 = v154;
    }

    v155 = (*(*this + 64))(this);
    (*(*this + 16))(this, v155);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v155 + 8), " callend reason is  ", 20);
    *(v155 + 17) = 0;
    MEMORY[0x1E6923340](*(v155 + 8), *(a2 + 8));
    *(v155 + 17) = 0;
    (*(*v155 + 64))(v155, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v155 + 17) = 0;
    if (*(a2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v295, *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v295 = *(a2 + 64);
    }

    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      v160 = v295.__r_.__value_.__l.__size_;
      operator delete(v295.__r_.__value_.__l.__data_);
      if (!v160)
      {
        goto LABEL_329;
      }
    }

    else if (!*(&v295.__r_.__value_.__s + 23))
    {
      goto LABEL_329;
    }

    if (*(a2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v295, *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v295 = *(a2 + 64);
    }

    v289.i32[0] |= 0x80u;
    if (v217 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v217, &v295);
    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v295.__r_.__value_.__l.__data_);
    }

LABEL_329:
    if (*(a2 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v295, *(a2 + 11), *(a2 + 12));
    }

    else
    {
      v295 = *(a2 + 88);
    }

    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      v161 = v295.__r_.__value_.__l.__size_;
      operator delete(v295.__r_.__value_.__l.__data_);
      if (!v161)
      {
        goto LABEL_362;
      }
    }

    else if (!*(&v295.__r_.__value_.__s + 23))
    {
      goto LABEL_362;
    }

    v162 = SDWORD2(v261);
    v163 = HIDWORD(v261);
    if (SDWORD2(v261) >= SHIDWORD(v261))
    {
      if (HIDWORD(v261) == v262)
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v261);
        v163 = HIDWORD(v261);
      }

      HIDWORD(v261) = v163 + 1;
      operator new();
    }

    ++DWORD2(v261);
    v164 = *(v261 + 8 * v162);
    if (*(a2 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v295, *(a2 + 11), *(a2 + 12));
    }

    else
    {
      v295 = *(a2 + 88);
    }

    *(v164 + 48) |= 1u;
    v165 = *(v164 + 8);
    if (v165 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v165, &v295);
    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v295.__r_.__value_.__l.__data_);
    }

    v166 = *(a2 + 28);
    *(v164 + 48) |= 2u;
    *(v164 + 40) = v166;
    if (*(a2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v295, *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v295 = *(a2 + 64);
    }

    if ((SHIBYTE(v295.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&v295.__r_.__value_.__s + 23))
      {
        goto LABEL_362;
      }

LABEL_355:
      if (*(a2 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v295, *(a2 + 8), *(a2 + 9));
      }

      else
      {
        v295 = *(a2 + 64);
      }

      *(v164 + 48) |= 4u;
      v168 = *(v164 + 16);
      if (v168 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v168, &v295);
      if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v295.__r_.__value_.__l.__data_);
      }

      goto LABEL_362;
    }

    v167 = v295.__r_.__value_.__l.__size_;
    operator delete(v295.__r_.__value_.__l.__data_);
    if (v167)
    {
      goto LABEL_355;
    }

LABEL_362:
    v170 = *(this + 25);
    v169 = *(this + 26);
    v171 = *(this + 167);
    v290 |= 0x14000u;
    v268 = v171;
    v267 = (v169 - v170) >> 3;
    if (v169 > v170)
    {
      do
      {
        v172 = SDWORD2(v265);
        v173 = HIDWORD(v265);
        if (SDWORD2(v265) >= SHIDWORD(v265))
        {
          if (HIDWORD(v265) == v266)
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v265);
            v173 = HIDWORD(v265);
          }

          HIDWORD(v265) = v173 + 1;
          operator new();
        }

        ++DWORD2(v265);
        v174 = *(v265 + 8 * v172);
        v175 = *(v174 + 20) | 3;
        *(v174 + 8) = *v170;
        v176 = *(v170 + 4);
        *(v174 + 20) = v175;
        *(v174 + 12) = v176;
        v177 = (*(*this + 64))(this);
        (*(*this + 16))(this, v177);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v177 + 8), "Submitting handover to AWD ", 27);
        *(v177 + 17) = 0;
        MEMORY[0x1E6923350](*(v177 + 8), *v170);
        *(v177 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v177 + 8), " toWiFi: ", 9);
        *(v177 + 17) = 0;
        MEMORY[0x1E6923320](*(v177 + 8), *(v170 + 4));
        *(v177 + 17) = 0;
        (*(*v177 + 64))(v177, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v177 + 17) = 0;
        v170 += 2;
        v169 = *(this + 26);
      }

      while (v170 < v169);
      v170 = *(this + 25);
    }

    if (v169 != v170)
    {
      *(this + 26) = v170;
    }

    AnalyticsLogger::fillCallEndMetricFromEvent(this, &v199, a2, *a3);
    v178 = *(this + 77);
    if (!(v178 >> 16))
    {
      v179 = v289.i32[0];
      v289.i32[0] |= 0x10u;
      v214 = 6;
      if (awd::metrics::RESPONSE_Code_IsValid(v178))
      {
        v289.i32[0] = v179 | 0x30;
        v215 = v178;
      }

      v180 = (*(*this + 64))(this);
      (*(*this + 16))(this, v180);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v180 + 8), " reason rtp error code ", 23);
      *(v180 + 17) = 0;
      MEMORY[0x1E6923350](*(v180 + 8), *(this + 77));
      *(v180 + 17) = 0;
      (*(*v180 + 64))(v180, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v180 + 17) = 0;
    }

    goto LABEL_376;
  }

  if (*(v195 + 128))
  {
    v130 = (*(*this + 64))(this);
    (*(*this + 16))(this, v130);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v130 + 8), " Call ", 6);
    *(v130 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v295, (v10 + 504));
    (*(*v130 + 56))(v130, &v295);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v130 + 8), " IMS code ", 10);
    *(v130 + 17) = 0;
    MEMORY[0x1E6923350](*(v130 + 8), *(v195 + 128));
    *(v130 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v130 + 8), " event reason ", 14);
    *(v130 + 17) = 0;
    MEMORY[0x1E6923340](*(v130 + 8), *(a2 + 8));
    *(v130 + 17) = 0;
    (*(*v130 + 64))(v130, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v130 + 17) = 0;
    if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v296.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v295.__r_.__value_.__l.__data_);
    }

    v131 = *(v195 + 128);
    if (awd::metrics::RESPONSE_Code_IsValid(v131))
    {
      v289.i32[0] |= 0x20u;
      v215 = v131;
    }

    else
    {
      v289.i32[1] |= 0x400000u;
      v255 = v131;
    }
  }

  v156 = *(this + 77);
  if (v156 >> 16)
  {
    AnalyticsLogger::fillCallEndMetricFromEvent(this, &v199, a2, *a3);
  }

  else
  {
    v157 = v289.i32[0];
    v289.i32[0] |= 0x10u;
    v214 = 6;
    if (awd::metrics::RESPONSE_Code_IsValid(v156))
    {
      v289.i32[0] = v157 | 0x30;
      v215 = v156;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v158 = *(v10 + 464);
    if (v158 < 1 || time(0) - v158 <= 10)
    {
      v159 = 1;
    }

    else
    {
      v159 = 2;
    }

    v289.i32[0] |= 0x200u;
    v216 = v159;
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_376:
  v181 = *(v10 + 384);
  if (v181)
  {
    v181 = std::__shared_weak_count::lock(v181);
    v182 = v181;
    if (v181)
    {
      v181 = *(v10 + 376);
    }
  }

  else
  {
    v182 = 0;
  }

  v183 = SipStack::prefs(v181);
  v184 = ImsPrefs::RTCPIntervalSeconds(v183);
  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }

  v185 = *(v10 + 384);
  if (v185)
  {
    v185 = std::__shared_weak_count::lock(v185);
    v186 = v185;
    if (v185)
    {
      v185 = *(v10 + 376);
    }
  }

  else
  {
    v186 = 0;
  }

  v187 = SipStack::prefs(v185);
  v188 = ImsPrefs::EnableRTCPExtendedReports(v187);
  if (v186)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v186);
  }

  if (*(this + 79) + *(this + 107) + *(this + 121) + *(this + 93))
  {
    v189 = v184 <= 0;
  }

  else
  {
    v189 = 1;
  }

  v190 = !v189;
  v277 = v190;
  v278 = v188;
  v290 |= 0x38000000u;
  v279 = v75;
  *(this + 84) = 0;
  if (v215)
  {
    v16 = v215;
  }

  else
  {
    v16 = v255;
  }

  memset(&v301, 0, sizeof(v301));
  memset(&v295, 0, sizeof(v295));
  (*(v199 + 2))(&v295, &v199);
  memset(&v300, 0, sizeof(v300));
  std::string::basic_string[abi:ne200100]<0>(v302, ".");
  ims::tokenize(&v295, &v300, v302);
  if (v303 < 0)
  {
    operator delete(v302[0]);
  }

  if (v300.__r_.__value_.__l.__size_ - v300.__r_.__value_.__r.__words[0] == 72)
  {
    if (*(v300.__r_.__value_.__r.__words[0] + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v301, *(v300.__r_.__value_.__r.__words[0] + 48), *(v300.__r_.__value_.__r.__words[0] + 56));
    }

    else
    {
      v301 = *(v300.__r_.__value_.__r.__words[0] + 48);
    }
  }

  else
  {
    v301 = v295;
    memset(&v295, 0, sizeof(v295));
  }

  v302[0] = &v300;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v302);
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  WISPostMetric();
  v191 = std::string::basic_string[abi:ne200100]<0>(&v300, "sendDiagnosticData");
  v295.__r_.__value_.__s.__data_[0] = 0;
  LOBYTE(v297) = 0;
  v192 = ims::debug(v191, &v295);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v192 + 8), " Submitted ", 11);
  *(v192 + 17) = 0;
  (*(*v192 + 32))(v192, &v301);
  (*(*v192 + 64))(v192, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v192 + 17) = 0;
  if (v297 == 1 && v296.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v295.__r_.__value_.__r.__words[2]);
  }

  if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v300.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v301.__r_.__value_.__l.__data_);
  }

  *(this + 77) = 0x10000;
  awd::metrics::ATM_CallEndEvent::~ATM_CallEndEvent(&v199);
  if (v194)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v194);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v294)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v294);
  }

LABEL_9:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v16;
}

void sub_1E4D3E318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  awd::metrics::ATM_CallEndEvent::~ATM_CallEndEvent(va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (STACK[0x338])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x338]);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

void AnalyticsLogger::AnalyticsData::~AnalyticsData(AnalyticsLogger::AnalyticsData *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  xpc_release(*(this + 4));
  *(this + 4) = 0;
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t AnalyticsLogger::logRemoteRTCPRRPacket(AnalyticsLogger *this, const RTCPRRPacket *a2, int a3)
{
  *(this + 73) = time(0);
  if (*(this + 192) == 1)
  {
    v6 = this + 480;
  }

  else
  {
    v6 = this + 424;
  }

  v7 = AnalyticsLogger::processRTCPRRPacket(this, a2, a3, v6);
  if (!v7)
  {
    v7 = *(this + 71);
  }

  *(this + 71) = v7;
  v8 = (*(*this + 64))(this);
  (*(*this + 16))(this, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " rtcp remote RR in ", 19);
  *(v8 + 17) = 0;
  result = (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  return result;
}

time_t AnalyticsLogger::processRTCPRRPacket(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  ++*(a4 + 4);
  v6 = *(a2 + 32);
  if (-1227133513 * ((*(a2 + 40) - v6) >> 2))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (!v10 && *(a4 + 4) == 1)
      {
        *(a4 + 40) = *(v6 + v9 + 12);
      }

      *(a4 + 36) += *(v6 + v9 + 8);
      v12 = *(v6 + v9 + 16);
      if (*(a4 + 28) < v12)
      {
        *(a4 + 28) = v12;
      }

      if (*(a4 + 32) > v12)
      {
        *(a4 + 32) = v12;
      }

      *(a4 + 24) += v12;
      *a4 += a3;
      v13 = *(v6 + v9 + 12);
      v14 = *(a4 + 40);
      v15 = v13 > v14;
      v16 = v13 - v14;
      if (v15 && *(a4 + 48) < v16)
      {
        *(a4 + 48) = v16;
        v11 = time(0);
        v17 = a1[85];
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      ++v10;
      v6 = *(a2 + 32);
      v9 += 28;
    }

    while (v10 < -1227133513 * ((*(a2 + 40) - v6) >> 2));
  }

  else
  {
    v11 = 0;
  }

  v18 = (*(*a1 + 72))(a1);
  (*(*a1 + 16))(a1, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " rtcp RR Count ", 15);
  *(v18 + 17) = 0;
  MEMORY[0x1E6923350](*(v18 + 8), *(a4 + 4));
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " packets ", 9);
  *(v18 + 17) = 0;
  MEMORY[0x1E69233B0](*(v18 + 8), *(a4 + 48));
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  return v11;
}

time_t AnalyticsLogger::logLocalRTCPRRPacket(AnalyticsLogger *this, const RTCPRRPacket *a2, int a3)
{
  *(this + 74) = time(0);
  if (*(this + 192) == 1)
  {
    v6 = this + 368;
  }

  else
  {
    v6 = this + 312;
  }

  result = AnalyticsLogger::processRTCPRRPacket(this, a2, a3, v6);
  if (!result)
  {
    result = *(this + 70);
  }

  *(this + 70) = result;
  return result;
}

uint64_t AnalyticsLogger::processRTCPSRPacket(void *a1, uint64_t a2, uint64_t a3)
{
  ++*(a3 + 8);
  v6 = a1[85];
  if (v6 && *(a3 + 16) < *(a2 + 40))
  {
    (*(*v6 + 8))(v6);
  }

  *(a3 + 16) = *(a2 + 40);
  v7 = (*(*a1 + 72))(a1);
  (*(*a1 + 16))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " rtcp SR, packets Count ", 24);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), *(a3 + 16));
  *(v7 + 17) = 0;
  result = (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v9 = *(a2 + 48);
  if (-1227133513 * ((*(a2 + 56) - v9) >> 2))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v9 + v10;
      *(a3 + 36) += *(v9 + v10 + 8);
      v13 = *(v9 + v10 + 16);
      if (*(a3 + 28) < v13)
      {
        *(a3 + 28) = v13;
      }

      if (*(a3 + 32) > v13)
      {
        *(a3 + 32) = v13;
      }

      *(a3 + 24) += v13;
      v14 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v14);
      MEMORY[0x1E6923350](*(v14 + 8), *(v12 + 16));
      *(v14 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " SR localJitter ", 16);
      *(v14 + 17) = 0;
      MEMORY[0x1E6923350](*(v14 + 8), *(a3 + 24));
      *(v14 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " qosRtcp.SrCount ", 17);
      *(v14 + 17) = 0;
      MEMORY[0x1E6923350](*(v14 + 8), *(a3 + 8));
      *(v14 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "sender count", 12);
      *(v14 + 17) = 0;
      MEMORY[0x1E69233B0](*(v14 + 8), *(a3 + 16));
      *(v14 + 17) = 0;
      result = (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      ++v11;
      v9 = *(a2 + 48);
      v10 += 28;
    }

    while (v11 < -1227133513 * ((*(a2 + 56) - v9) >> 2));
  }

  return result;
}

uint64_t AnalyticsLogger::logRemoteRTCPSRPacket(AnalyticsLogger *this, const RTCPSRPacket *a2)
{
  *(this + 73) = time(0);
  v4 = 312;
  if (*(this + 192))
  {
    v4 = 368;
  }

  AnalyticsLogger::processRTCPSRPacket(this, a2, this + v4);
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " rtcp remote SR in ", 19);
  *(v5 + 17) = 0;
  result = (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  return result;
}

void AnalyticsLogger::logSignalingReduction(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  ims::analytics::SignallingDeferralEvent::create();
}

void sub_1E4D3EFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::addCallEndInfo(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E6924740](*a2);
  v5 = MEMORY[0x1E69E9E80];
  if (v4 != MEMORY[0x1E69E9E80])
  {
    v6 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v6);
    v7 = *(v6 + 8);
    v8 = "Ignoring null dictionary";
    v9 = 24;
LABEL_3:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    return;
  }

  if (*a2 == *(a1 + 696))
  {
    v6 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v6);
    v7 = *(v6 + 8);
    v8 = "Skipping update to same dictionary";
    v9 = 34;
    goto LABEL_3;
  }

  if ((*(a1 + 704) & 1) == 0)
  {
    v6 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v6);
    v7 = *(v6 + 8);
    v8 = "Ignoring call end info from CT.  No call being tracked in logger";
    v9 = 64;
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E6924740]();
  v11 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v11);
  v12 = *(v11 + 8);
  if (v10 == v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Updating dict from CT", 21);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    v14 = *a2;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___ZN15AnalyticsLogger14addCallEndInfoEN3xpc4dictE_block_invoke;
    applier[3] = &__block_descriptor_tmp_2;
    applier[4] = a1;
    xpc_dictionary_apply(v14, applier);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Assigning dict ref from CT", 26);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    v13 = *a2;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v13 = xpc_null_create();
    }

    v15 = *(a1 + 696);
    *(a1 + 696) = v13;
    xpc_release(v15);
  }
}

uint64_t ___ZN15AnalyticsLogger14addCallEndInfoEN3xpc4dictE_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v4 = *(a1 + 32);
  v7 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6[0] = v4 + 696;
  v6[1] = a2;
  xpc::dict::object_proxy::operator=(v6, &v7, &objecta);
  xpc_release(objecta);
  objecta = 0;
  xpc_release(v7);
  return 1;
}

void AnalyticsLogger::setCallActive(AnalyticsLogger *this, int a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Set call active ", 16);
  *(v4 + 17) = 0;
  std::to_string(&v9, a2);
  (*(*v4 + 32))(v4, &v9);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else if (!a2)
  {
    goto LABEL_7;
  }

  if ((*(this + 704) & 1) == 0)
  {
    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Resetting addendum", 18);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v6 = xpc_null_create();
    v7 = xpc_null_create();
    v8 = *(this + 87);
    *(this + 87) = v6;
    xpc_release(v8);
    xpc_release(v7);
  }

LABEL_7:
  *(this + 704) = a2;
}

void sub_1E4D3F648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AnalyticsLogger::~AnalyticsLogger(AnalyticsLogger *this)
{
  AnalyticsLogger::~AnalyticsLogger(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EC7410;
  *(this + 17) = &unk_1F5EC75A8;
  *(this + 21) = &unk_1F5EC75D8;
  *(this + 22) = &unk_1F5EC76F8;
  xpc_release(*(this + 87));
  *(this + 87) = 0;
  v2 = *(this + 86);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 663) < 0)
  {
    operator delete(*(this + 80));
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  MEMORY[0x1E69225A0](this + 184);
  *(this + 17) = &unk_1F5EC4A00;
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *AnalyticsLogger::logPrefix(AnalyticsLogger *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "ims_awd: ", 9);
  *(a2 + 17) = 0;
  return result;
}

void non-virtual thunk toAnalyticsLogger::~AnalyticsLogger(AnalyticsLogger *this)
{
  AnalyticsLogger::~AnalyticsLogger((this - 176));
}

{
  AnalyticsLogger::~AnalyticsLogger((this - 176));

  JUMPOUT(0x1E69235B0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AnalyticsLogger::HandoverData>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ImsSSLContextBase::readAppData(uint64_t a1, std::string *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  __n = 1024;
  v4 = -9806;
  do
  {
    v5 = *(a1 + 176);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 168);
        if (v8)
        {
          v4 = (*(*v8 + 16))(v8, __s, &__n);
          if (__n)
          {
            std::string::append(a2, __s, __n);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    v9 = v4;
    if (v4)
    {
      break;
    }

    v4 = 0;
  }

  while (__n == 1024);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v9 == -9803)
  {
    result = 0;
  }

  else
  {
    result = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ImsSSLContextBase::writeAppData(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v3 < 0)
  {
    a2 = *a2;
  }

  v5 = v2;
  return (*(*a1 + 144))(a1, a2, &v5);
}

uint64_t ImsSSLContextBase::writeAppData(ImsSSLContextBase *this, const void *a2, unint64_t *a3)
{
  v4 = *(this + 22);
  if (!v4)
  {
    return 4294957490;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 4294957490;
  }

  v8 = v7;
  v9 = *(this + 21);
  if (v9)
  {
    v10 = (*(*v9 + 24))(v9, a2, a3);
  }

  else
  {
    v10 = 4294957490;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  return v10;
}

uint64_t ImsSSLContext::initialize(SSLContextRef *a1, int a2, uint64_t a3, char *a4)
{
  v8 = SSLCreateContext(*MEMORY[0x1E695E480], kSSLClientSide, kSSLStreamType);
  a1[26] = v8;
  if (!v8)
  {
    v11 = (*(*a1 + 7))(a1);
    (*(*a1 + 2))(a1, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Unable to create SSL tunnel", 27);
    goto LABEL_5;
  }

  v9 = SSLSetIOFuncs(v8, ImsSSLContext::_handleSSLReadCallback, ImsSSLContext::_handleSSLWriteCallback);
  if (v9)
  {
    v10 = v9;
    v11 = (*(*a1 + 7))(a1);
    (*(*a1 + 2))(a1, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "SSLSetIOFuncs failed. Error:", 28);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923340](*(v11 + 8), v10);
LABEL_5:
    v12 = 4294957496;
    goto LABEL_9;
  }

  v13 = SSLSetConnection(a1[26], a1);
  if (v13)
  {
    v12 = v13;
    v11 = (*(*a1 + 7))(a1);
    (*(*a1 + 2))(a1, v11);
    v14 = *(v11 + 8);
    v15 = "SSLSetConnection failed. Error:";
    v16 = 31;
  }

  else if (a2 && (v18 = SSLSetCertificate(a1[26], *(a3 + 8)), v18))
  {
    v12 = v18;
    v11 = (*(*a1 + 7))(a1);
    (*(*a1 + 2))(a1, v11);
    v14 = *(v11 + 8);
    v15 = "SSLSetCertificate failed. Error:";
    v16 = 32;
  }

  else
  {
    v19 = a4[23];
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(a4 + 1);
    }

    if (!v19)
    {
      goto LABEL_20;
    }

    v20 = (*(*a1 + 8))(a1);
    (*(*a1 + 2))(a1, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "SSLSetPeerDomainName attempt with domain ", 41);
    *(v20 + 17) = 0;
    (*(*v20 + 32))(v20, a4);
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    v21 = strlen(a4);
    v22 = SSLSetPeerDomainName(a1[26], a4, v21);
    if (!v22)
    {
LABEL_20:
      v11 = (*(*a1 + 8))(a1);
      (*(*a1 + 2))(a1, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Initialized SSL tunnel", 22);
      v12 = 0;
      goto LABEL_9;
    }

    v12 = v22;
    v11 = (*(*a1 + 7))(a1);
    (*(*a1 + 2))(a1, v11);
    v14 = *(v11 + 8);
    v15 = "SSLSetPeerDomainName failed. Error:";
    v16 = 35;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923340](*(v11 + 8), v12);
LABEL_9:
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  return v12;
}

uint64_t ImsSSLContext::_handleSSLReadCallback(ImsSSLContext *this, const void *a2, void *a3, unint64_t *a4)
{
  v7 = std::string::basic_string[abi:ne200100]<0>(v31, "net");
  v27[0] = 0;
  v30 = 0;
  v8 = ims::spam(v7, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "ImsSSLContext : _handleSSLReadCallback static called", 52);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
    if (this)
    {
LABEL_6:
      v9 = std::string::basic_string[abi:ne200100]<0>(v31, "net");
      v23[0] = 0;
      v26 = 0;
      v10 = ims::spam(v9, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ImsSSLContext : _handleSSLReadCallback static exit", 50);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v11 = *(this + 22);
      if (!v11)
      {
        return 4294957490;
      }

      v12 = std::__shared_weak_count::lock(v11);
      if (!v12)
      {
        return 4294957490;
      }

      v13 = v12;
      v14 = *(this + 21);
      if (v14)
      {
        v15 = (*(*v14 + 16))(v14, a2, a3);
      }

      else
      {
        v15 = 4294957490;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      return v15;
    }
  }

  else if (this)
  {
    goto LABEL_6;
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(v31, "ImsSSL");
  v19[0] = 0;
  v22 = 0;
  v17 = ims::error(v16, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "_handleSSLReadCallback failed. NULL context:", 44);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  return 4294957496;
}

uint64_t ImsSSLContext::_handleSSLWriteCallback(ImsSSLContext *this, const void *a2, const void *a3, unint64_t *a4)
{
  if (this)
  {
    v5 = *(this + 22);
    if (v5 && (v8 = std::__shared_weak_count::lock(v5)) != 0)
    {
      v9 = v8;
      v10 = *(this + 21);
      if (v10)
      {
        v11 = (*(*v10 + 24))(v10, a2, a3);
      }

      else
      {
        v11 = 4294957490;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      return 4294957490;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "ImsSSL");
    v14[0] = 0;
    v17 = 0;
    v12 = ims::error(v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "_handleSSLWriteCallback failed. NULL context:", 45);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    return 4294957496;
  }

  return v11;
}

void sub_1E4D404F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v25 = v24;
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

uint64_t ImsSSLContext::deinitialize(SSLContextRef *this)
{
  SSLClose(this[26]);
  CFRelease(this[26]);
  this[26] = 0;
  v2 = (*(*this + 8))(this);
  (*(*this + 2))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Deinitialized SSL tunnel", 24);
  *(v2 + 17) = 0;
  result = (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return result;
}

BOOL ImsSSLContext::idle(SSLContextRef *this)
{
  state = kSSLIdle;
  SSLGetSessionState(this[26], &state);
  return state == kSSLIdle;
}

BOOL ImsSSLContext::connected(SSLContextRef *this)
{
  state = kSSLIdle;
  SSLGetSessionState(this[26], &state);
  return state == kSSLConnected;
}

uint64_t ImsSSLContext::handshake(SSLContextRef *this)
{
  v2 = SSLHandshake(this[26]);
  v3 = (*(*this + 8))(this);
  (*(*this + 2))(this, v3);
  v4 = *(v3 + 8);
  if (v2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "SSLHandshake not yet completed. Errorcode:", 42);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923340](*(v3 + 8), v2);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "SSLHandshake succeeded", 22);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    v6 = this[22];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = this[21];
        if (v9)
        {
          (*(*v9 + 32))(v9);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  return v2;
}

uint64_t ImsSSLContext::readAppData(SSLContextRef *a1, std::string *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(data, "net");
  v20[0] = 0;
  v23 = 0;
  v3 = ims::spam(data, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "ImsSSLContext: readAppData called", 33);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(data[0]);
  }

  bzero(data, 0x400uLL);
  bufferSize = 1024;
  processed = 0;
  v4 = 1024;
  do
  {
    if (v4 >= 0x400)
    {
      v5 = 1024;
    }

    else
    {
      v5 = v4;
    }

    v6 = SSLRead(a1[26], data, v5, &processed);
    if (processed)
    {
      std::string::append(a2, data, processed);
    }

    v7 = (*(*a1 + 8))(a1);
    (*(*a1 + 2))(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Reading App data from SSL tunnel. Max Buf = ", 44);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923370](*(v7 + 8), v5);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", Processed = ", 14);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923370](*(v7 + 8), processed);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    SSLGetBufferedReadSize(a1[26], &bufferSize);
    v4 = bufferSize;
  }

  while (bufferSize);
  std::string::basic_string[abi:ne200100]<0>(v16, "net");
  v12[0] = 0;
  v15 = 0;
  v8 = ims::spam(v16, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "ImsSSLContext : readAppData exit", 32);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1E4D40B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsSSLContext::writeAppData(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (v3 < 0)
  {
    a2 = *a2;
  }

  v5 = v2;
  return (*(*a1 + 144))(a1, a2, &v5);
}

uint64_t ImsSSLContext::writeAppData(SSLContextRef *this, char *data, unint64_t *a3)
{
  processed = 0;
  v5 = *a3;
  do
  {
    result = SSLWrite(this[26], data, v5, &processed);
    data += processed;
    v5 -= processed;
  }

  while (result == -9803);
  return result;
}

uint64_t ImsSSLContext::fetchNegotiatedCipher(SSLContextRef *this)
{
  cipherSuite = 0;
  v2 = SSLGetNegotiatedCipher(this[26], &cipherSuite);
  if (!v2)
  {
    return cipherSuite;
  }

  v3 = v2;
  v4 = (*(*this + 7))(this);
  (*(*this + 2))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Failed to fetch TLS Cipher Suite - Failed to get negotiated cipher. Error code:", 79);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923340](*(v4 + 8), v3);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  result = 0;
  *(v4 + 17) = 0;
  return result;
}

void ImsSSLContextBase::~ImsSSLContextBase(ImsSSLContextBase *this)
{
  ImsSSLContextBase::~ImsSSLContextBase(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EC77B0;
  *(this + 17) = &unk_1F5EC7858;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *ImsSSLContextBase::logPrefix(ImsSSLContextBase *this, ImsOutStream *a2)
{
  (*(*a2 + 32))(a2, this + 184);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " :", 2);
  *(a2 + 17) = 0;
  return result;
}

void non-virtual thunk toImsSSLContextBase::~ImsSSLContextBase(ImsSSLContextBase *this)
{
  ImsSSLContextBase::~ImsSSLContextBase((this - 136));
}

{
  ImsSSLContextBase::~ImsSSLContextBase((this - 136));

  JUMPOUT(0x1E69235B0);
}

void ImsSSLContext::~ImsSSLContext(ImsSSLContext *this)
{
  ImsSSLContextBase::~ImsSSLContextBase(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toImsSSLContext::~ImsSSLContext(ImsSSLContext *this)
{
  ImsSSLContextBase::~ImsSSLContextBase((this - 136));
}

{
  ImsSSLContextBase::~ImsSSLContextBase((this - 136));

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPAudioSettingsBuilder::RemoteEVSOfferMatchHandler(SDPAudioSettingsBuilder *this, SDPMediaAudioSettings *a2, SDPMediaFormatInfo *a3, SDPMediaFormatInfo *a4, ImsPrefs *a5, const ImsPrefs *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if (this && *(this + 14) == 255)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v30, a3 + 96);
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v11 = &v28;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v28, a2 + 96);
    v12 = DWORD2(v33);
    v13 = *&v29[104];
    if (*&v29[104] != 2)
    {
      v11 = 0;
    }

    if (DWORD2(v33) == 2)
    {
      v14 = 0;
      if (DWORD1(v31) == 7)
      {
        goto LABEL_42;
      }

      if (v32 > 1u)
      {
        goto LABEL_42;
      }

      v14 = 0;
      if (BYTE1(v32) > 1u || *(a3 + 45) > 1u)
      {
        goto LABEL_42;
      }
    }

    else if (*(a3 + 45) > 1u)
    {
      v14 = 0;
LABEL_42:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v28);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
      goto LABEL_43;
    }

    *v26 = 0u;
    memset(v27, 0, 88);
    v25 = 0u;
    SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v25, *(a3 + 4));
    if (v13 == 2)
    {
      BYTE8(v25) = BYTE8(v28);
      std::string::operator=(v26, v29);
      *(&v27[1] + 10) = *&v29[42];
      *(&v27[2] + 10) = *&v29[58];
      *(&v27[3] + 10) = *&v29[74];
      *(&v27[4] + 4) = *&v29[84];
      *(v27 + 10) = *&v29[26];
      WORD4(v27[0]) = *(a3 + 4);
    }

    ImsPrefs::EVSHardBrLimit(a5, &__p);
    SDPParser::parseEVSBr(&v25, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ImsPrefs::EVSHardBwLimit(a5, &v23);
    SDPParser::parseEVSBw(&v25, &v23.__r_.__value_.__l.__data_);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (isOpenOffer(a3))
    {
      if (v12 == 2)
      {
        v16 = v30;
      }

      else
      {
        v16 = &v25;
      }

      if (v13 == 2)
      {
        v17 = &v28;
      }

      else
      {
        v17 = &v25;
      }

      SDPAudioSettingsBuilder::copyEVSMediaFormatInfo(this, *(a3 + 4), v17, v16, a4, a5, v15);
    }

    else
    {
      v18 = v30;
      if (v12 == 2)
      {
        v19 = v30;
      }

      else
      {
        v19 = v11;
      }

      v20 = *(v19 + 21);
      if (v20 > SDWORD1(v27[3]) && v20 <= 5 && ((1 << v20) & 0x2A) != 0)
      {
        goto LABEL_39;
      }

      if (v12 != 2)
      {
        v18 = v11;
      }

      if ((*(&v27[1] + 1) & *(v18 + 7)) == 0)
      {
LABEL_39:
        v14 = 0;
LABEL_40:
        *&v25 = &unk_1F5EF5FB8;
        if (SBYTE7(v27[0]) < 0)
        {
          operator delete(v26[0]);
        }

        goto LABEL_42;
      }

      SDPAudioSettingsBuilder::copyEVSMediaFormatInfo(this, *(a3 + 4), &v25, v19, a4, a5, v15);
    }

    v14 = 1;
    goto LABEL_40;
  }

  v14 = 0;
LABEL_43:
  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1E4D41328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned int a40)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a40);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v40 - 224));
  _Unwind_Resume(a1);
}

uint64_t SDPAudioSettingsBuilder::RemoteDTMFOfferMatchHandler(_WORD *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a1[152] == 255)
  {
    v3 = *(a3 + 8);
    a1[152] = v3;
    a1[153] = v3;
    v4 = *(a2 + 88);
    if (!v4)
    {
      v4 = 8000;
    }

    a1[155] = v4;
  }

  return 0;
}

uint64_t SDPAudioSettingsBuilder::RemoteEVSAnswerMatchHandler(SDPAudioSettingsBuilder *this, SDPMediaAudioSettings *a2, SDPMediaFormatInfo *a3, SDPMediaFormatInfo *a4, const ImsPrefs *a5, const ImsPrefs *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!this || *(this + 14) != 255)
  {
    goto LABEL_14;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v24, a3 + 96);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v11 = v18;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v18, a2 + 96);
  v12 = DWORD2(v23);
  if (DWORD2(v23) != 2)
  {
    v11 = 0;
  }

  if (DWORD2(v30) == 2)
  {
    v13 = 0;
    if (v29 > 1u || BYTE1(v29) > 1u)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      if (*(a3 + 45) <= 1u)
      {
        if ((isOpenOffer(a2) & 1) != 0 || (isOpenOffer(a3) & 1) != 0 || v12 == 2 && (*(&v26 + 1) & ~*(&v19 + 1)) == 0 && SDWORD1(v21) >= SDWORD1(v28))
        {
          SDPAudioSettingsBuilder::copyEVSMediaFormatInfo(this, LOWORD(v25[1]), v11, v24, a4, a5, v15);
          v14 = 0;
          v13 = 1;
        }

        else
        {
          v14 = 1;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = *(a3 + 45) < 2u;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v18);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v24);
  if (v14)
  {
LABEL_14:
    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void sub_1E4D415F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t SDPAudioSettingsBuilder::RemoteDTMFAnswerMatchHandler(_WORD *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a1[152] == 255)
  {
    a1[152] = *(a2 + 8);
    a1[153] = *(a3 + 8);
    v3 = *(a2 + 88);
    if (!v3)
    {
      v3 = 8000;
    }

    a1[155] = v3;
  }

  return 0;
}

void SDPAudioSettingsBuilder::SDPAudioSettingsBuilder(void *a1, uint64_t a2, SDPAudioSettingsBuilder *this)
{
  v4 = *(a2 + 8);
  v6[0] = *a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
  }

  v5 = ImsPrefs::UseRemoteMediaOrder(this);
  SDPSettingsBuilder::SDPSettingsBuilder(a1, v6, v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *a1 = &unk_1F5EC79F8;
}

void sub_1E4D416FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SDPAudioSettingsBuilder::createAudioSettingsForOffer(uint64_t a1@<X0>, uint64_t a2@<X1>, SDPMedia *a3@<X2>, unint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *(a1 + 8);
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 8);
  v6[0] = *a2;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  SDPAudioSettingsBuilder::createAudioSettings(a1, v7, v6, a3, &__block_literal_global_1, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4D417C0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SDPAudioSettingsBuilder::createAudioSettings(uint64_t a1@<X0>, uint64_t a2@<X1>, SDPModel **a3@<X2>, SDPMedia *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  for (i = *(*a3 + 56); i != *(*a3 + 57); i += 200)
  {
    if (*(i + 12) == 2)
    {
      goto LABEL_6;
    }
  }

  i = 0;
LABEL_6:
  for (j = *(*a2 + 448); j != *(*a2 + 456); j = (j + 200))
  {
    if (*(j + 3) == 2)
    {
      goto LABEL_11;
    }
  }

  j = 0;
LABEL_11:
  if (!i)
  {
    std::string::basic_string[abi:ne200100]<0>(&v41, "sdp.audiosettingbuilder");
    v58[0] = 0;
    v61 = 0;
    v26 = ims::error(&v41, v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "SDPAudioSettingsBuilder::createAudioSettings Remote media is null", 65);
    *(v26 + 17) = 0;
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v61 != 1 || (v60 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v27 = v59;
    goto LABEL_35;
  }

  if (!j)
  {
    std::string::basic_string[abi:ne200100]<0>(&v41, "sdp.audiosettingbuilder");
    v54[0] = 0;
    v57 = 0;
    v28 = ims::error(&v41, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "SDPAudioSettingsBuilder::createAudioSettings Local media is null", 64);
    *(v28 + 17) = 0;
    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v28 + 17) = 0;
    if (v57 != 1 || (v56 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v27 = __p;
LABEL_35:
    operator delete(v27);
LABEL_36:
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v41);
    }

    *a6 = 0;
    *(a6 + 432) = 0;
    return;
  }

  v13 = a3[1];
  v52 = *a3;
  v53 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isIPv6 = SDPSettingsBuilder::isIPv6(&v52, i);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 288) = 0u;
  *(a6 + 304) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 0u;
  *(a6 + 384) = 0u;
  *(a6 + 400) = 0u;
  *(a6 + 416) = 0u;
  *(a6 + 432) = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x4002000000;
  v44 = __Block_byref_object_copy_;
  v47[0] = 0;
  v47[1] = 0;
  v45 = __Block_byref_object_dispose_;
  v46 = v47;
  LOWORD(v62[0]) = 8000;
  v63 = v62;
  *(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(&v46, 0x1F40u) + 174) = 8000;
  LOWORD(v62[0]) = 16000;
  v63 = v62;
  *(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>((v42 + 5), 0x3E80u) + 174) = 16000;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 0x40000000;
  v39[2] = ___ZNK23SDPAudioSettingsBuilder19createAudioSettingsENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefsU13block_pointerFbNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP21SDPMediaAudioSettingsR18SDPMediaFormatInfoSG_bS6_E_block_invoke;
  v39[3] = &unk_1E8769D80;
  v39[4] = a5;
  v39[5] = &v41;
  v40 = isIPv6;
  v39[6] = &v48;
  v39[7] = a4;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = ___ZNK23SDPAudioSettingsBuilder19createAudioSettingsENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefsU13block_pointerFbNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP21SDPMediaAudioSettingsR18SDPMediaFormatInfoSG_bS6_E_block_invoke_2;
  v38[3] = &unk_1E8769DA8;
  v38[4] = &v41;
  v38[5] = &v48;
  SDPSettingsBuilder::findRTPMatches(a1, j + 40, i + 40, v39, v38);
  v16 = *(v49 + 12);
  if (!*(v49 + 12))
  {
    goto LABEL_45;
  }

  if (v16 == 16000)
  {
    v17 = 8000;
  }

  else
  {
    v17 = 16000;
  }

  LOWORD(v62[0]) = v17;
  v63 = (v49 + 3);
  if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v16) + 34) != 255)
  {
    v18 = *(v49 + 12);
    v63 = (v49 + 3);
    if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v18) + 172) != 255)
    {
      v31 = *(v49 + 12);
      v63 = (v49 + 3);
      v32 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v31);
LABEL_44:
      std::optional<SDPMediaAudioSettings>::operator=[abi:ne200100]<SDPMediaAudioSettings&,void>(a6, (v32 + 5));
      goto LABEL_45;
    }
  }

  v63 = v62;
  if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]) + 34) != 255)
  {
    v63 = v62;
    if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]) + 172) != 255)
    {
      v63 = v62;
      v32 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]);
      goto LABEL_44;
    }
  }

  v19 = *(v49 + 12);
  v63 = (v49 + 3);
  if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v19) + 34) == 255)
  {
    v63 = v62;
    if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]) + 34) == 255)
    {
      goto LABEL_45;
    }

    v63 = v62;
    v20 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]);
    std::optional<SDPMediaAudioSettings>::operator=[abi:ne200100]<SDPMediaAudioSettings&,void>(a6, (v20 + 5));
    v21 = *(v49 + 12);
    v63 = (v49 + 3);
    if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v21) + 172) == 255)
    {
      goto LABEL_45;
    }

    v22 = *(v49 + 12);
    v63 = (v49 + 3);
    *(a6 + 304) = *(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v22) + 172);
    v23 = *(v49 + 12);
    v63 = (v49 + 3);
    *(a6 + 306) = *(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v23) + 173);
    v24 = *(v49 + 12);
    v63 = (v49 + 3);
    v25 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v24);
    goto LABEL_41;
  }

  v29 = *(v49 + 12);
  v63 = (v49 + 3);
  v30 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v29);
  std::optional<SDPMediaAudioSettings>::operator=[abi:ne200100]<SDPMediaAudioSettings&,void>(a6, (v30 + 5));
  v63 = v62;
  if (*(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]) + 172) != 255)
  {
    v63 = v62;
    *(a6 + 304) = *(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]) + 172);
    v63 = v62;
    *(a6 + 306) = *(std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]) + 173);
    v63 = v62;
    v25 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v42 + 5), v62[0]);
LABEL_41:
    *(a6 + 310) = *(v25 + 175);
  }

LABEL_45:
  if (*(a6 + 432) == 1)
  {
    SDPSettingsBuilder::copyGeneralMediaSettings(a6, j, i, a4, v15);
    *(a6 + 312) = SDPMedia::packetizationTime(i);
    if (SDPMedia::maxPacketizationTime(i))
    {
      v33 = SDPMedia::maxPacketizationTime(i);
    }

    else
    {
      v33 = ImsPrefs::MaxPacketizationTime(a4);
    }

    *(a6 + 314) = v33;
    for (k = *(i + 144); ; k = *(k + 8))
    {
      if (k == i + 136)
      {
        v35 = 0;
        goto LABEL_55;
      }

      if (*(k + 136) == 5)
      {
        break;
      }
    }

    v35 = *(k + 56);
LABEL_55:
    *(a6 + 316) = v35 & 1;
    if ((*(a6 + 432) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v37 = *a3;
    v36 = a3[1];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v64 = v36;
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v64 = 0;
    }

    v63 = v37;
    SDPSettingsBuilder::copyRemoteMediaSettings(a6, &v63, i);
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    v62[0] = v37;
    v62[1] = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SDPSettingsBuilder::generateBandwidthSpecifierInfo(a6, v62, i);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }

  _Block_object_dispose(&v41, 8);
  std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::destroy(v47[0]);
  _Block_object_dispose(&v48, 8);
}

void sub_1E4D41F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Block_object_dispose(&a24, 8);
  std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::destroy(a33);
  if (*(v50 + 432) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v50);
  }

  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK23SDPAudioSettingsBuilder27createAudioSettingsForOfferENSt3__110shared_ptrI8SDPModelEERK8ImsPrefs_block_invoke(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = ims::getValueFromMap<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>(&_MergedGlobals_6, a2);
  if (result)
  {
    v14 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&_MergedGlobals_6, a2) + 56);

    return v14(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t ims::getValueFromMap<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>(uint64_t a1, void **a2)
{
  v3 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = a1 + 8;
    do
    {
      v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v4 + 32), a2);
      if ((v6 & 0x80u) == 0)
      {
        v5 = v4;
      }

      v4 = *(v4 + ((v6 >> 4) & 8));
    }

    while (v4);
    if (v5 != v3 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) == 0)
    {
      return *(v5 + 56);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "rtp.util");
  v9[0] = 0;
  v12 = 0;
  v8 = ims::debug(v13, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "getValueFromMap", 15);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " Object not found [key=", 23);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return 0;
}

void sub_1E4D422C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void SDPAudioSettingsBuilder::createAudioSettingsForOfferAnswer(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, SDPMedia *a4@<X3>, SDPMediaAudioSettings *a5@<X8>)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v9 = a2[1];
  v17[0] = *a2;
  v17[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 8);
  v16[0] = *a3;
  v16[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  SDPAudioSettingsBuilder::createAudioSettings(a1, v17, v16, a4, &__block_literal_global_8, v18);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v19)
  {
    *a5 = 0;
    *(a5 + 432) = 0;
    SDPMediaAudioSettings::SDPMediaAudioSettings(a5, v18);
    *(a5 + 432) = 1;
  }

  else
  {
    v11 = *(a1 + 16);
    v15[0] = *(a1 + 8);
    v15[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a3;
    v13 = *(a3 + 8);
    v14[0] = v12;
    v14[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    SDPAudioSettingsBuilder::createAudioSettings(a1, v15, v14, a4, &__block_literal_global_11, a5);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v19 == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v18);
  }
}

void sub_1E4D42494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (a71 == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(&a17);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZNK23SDPAudioSettingsBuilder33createAudioSettingsForOfferAnswerENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefs_block_invoke(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = ims::getValueFromMap<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>(&unk_1EE2BC2A8, a2);
  if (result)
  {
    v14 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&unk_1EE2BC2A8, a2) + 56);

    return v14(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t ___ZNK23SDPAudioSettingsBuilder33createAudioSettingsForOfferAnswerENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefs_block_invoke_2(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = ims::getValueFromMap<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>(&unk_1EE2BC2A8, a2);
  if (result)
  {
    v14 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&unk_1EE2BC2A8, a2) + 56);

    return v14(a3, a4, a5, a6, a7);
  }

  return result;
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void ___ZNK23SDPAudioSettingsBuilder19createAudioSettingsENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefsU13block_pointerFbNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP21SDPMediaAudioSettingsR18SDPMediaFormatInfoSG_bS6_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  SDPMediaRTPMap::SDPMediaRTPMap(v14, (a2 + 16));
  v6 = *(a1 + 32);
  if (SBYTE7(v16) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v15, *(&v15 + 1));
  }

  else
  {
    *&v13.__r_.__value_.__l.__data_ = v15;
    v13.__r_.__value_.__r.__words[2] = v16;
  }

  v7 = *(*(a1 + 40) + 8);
  if (WORD4(v16))
  {
    v8 = WORD4(v16);
  }

  else
  {
    v8 = 8000;
  }

  v12 = v8;
  v17 = &v12;
  v9 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v7 + 40, v8);
  if ((*(v6 + 16))(v6, &v13, v9 + 5, a2, a3, *(a1 + 64), *(a1 + 56)))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
      if (v10)
      {
        goto LABEL_17;
      }
    }

    else if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_17;
    }

    v11 = WORD4(v16);
    if (!WORD4(v16))
    {
      v11 = 8000;
    }

    *(*(*(a1 + 48) + 8) + 24) = v11;
  }

  else if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

LABEL_17:
  SDPMediaRTPMap::~SDPMediaRTPMap(v14);
}

void ___ZNK23SDPAudioSettingsBuilder19createAudioSettingsENSt3__110shared_ptrI8SDPModelEES3_RK8ImsPrefsU13block_pointerFbNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP21SDPMediaAudioSettingsR18SDPMediaFormatInfoSG_bS6_E_block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 8);
  v10 = 8000;
  __str.__r_.__value_.__r.__words[0] = &v10;
  v5 = std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v4 + 40, 0x1F40u);
  if (*(v5 + 34) == 255 && (a2 | 8) == 8)
  {
    v7 = v5;
    *(v5 + 34) = a2;
    *(v5 + 35) = a2;
    if (a2)
    {
      v8 = "PCMA";
    }

    else
    {
      v8 = "PCMU";
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, v8);
    std::string::operator=((v7 + 40), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v9 = *(*(a1 + 40) + 8);
    if (!*(v9 + 24))
    {
      *(v9 + 24) = 8000;
    }
  }
}

void sub_1E4D428F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<SDPMediaAudioSettings>::operator=[abi:ne200100]<SDPMediaAudioSettings&,void>(uint64_t a1, SDPMediaAudioSettings *a2)
{
  if (*(a1 + 432) == 1)
  {
    SDPMediaSettings::operator=(a1, a2);
    std::string::operator=((a1 + 280), (a2 + 280));
    v4 = *(a2 + 38);
    *(a1 + 309) = *(a2 + 309);
    *(a1 + 304) = v4;
    v5 = *(a2 + 344);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 344) = v5;
    *(a1 + 360) = *(a2 + 360);
    v7 = *(a2 + 392);
    v6 = *(a2 + 408);
    v8 = *(a2 + 376);
    *(a1 + 424) = *(a2 + 212);
    *(a1 + 392) = v7;
    *(a1 + 408) = v6;
    *(a1 + 376) = v8;
  }

  else
  {
    SDPMediaAudioSettings::SDPMediaAudioSettings(a1, a2);
    *(a1 + 432) = 1;
  }

  return a1;
}

uint64_t isOpenOffer(SDPMediaFormatInfo *a1)
{
  v1 = *(a1 + 54);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F5EC7AB0[v1])(&v4, a1 + 96);
}

__n128 SDPAudioSettingsBuilder::copyEVSMediaFormatInfo(SDPAudioSettingsBuilder *this, SDPMediaAudioSettings *a2, const SDPMediaFormatEVSParams *a3, const SDPMediaFormatEVSParams *a4, const SDPMediaFormatEVSParams *a5, const ImsPrefs *a6, const ImsPrefs *a7)
{
  if (a3 && a4)
  {
    v9 = a5;
    *(this + 14) = a2;
    *(this + 15) = *(a4 + 20);
    std::string::basic_string[abi:ne200100]<0>(&__p, "EVS");
    std::string::operator=((this + 280), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    SDPMediaEVSSettings::SDPMediaEVSSettings(v15, a3, a4, v9, a6);
    v12 = v15[3];
    *(this + 392) = v15[2];
    *(this + 408) = v12;
    *(this + 212) = v16;
    result = v15[1];
    *(this + 360) = v15[0];
    *(this + 376) = result;
  }

  return result;
}

void sub_1E4D42AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPAudioSettingsBuilder::genericRemoteAMROfferMatchHandler(SDPAudioSettingsBuilder *this, SDPMediaAudioSettings *a2, SDPMediaFormatInfo *a3, SDPMediaFormatInfo *a4, int a5, ImsPrefs *a6, const ImsPrefs *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  if (this && *(this + 14) == 255)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    memset(v37, 0, sizeof(v37));
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v37, a3 + 96);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v30, a2 + 96);
    v13 = DWORD2(v43);
    v14 = DWORD2(v36);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    *__p = 0u;
    SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v26, *(a3 + 4), a5);
    v15 = isOpenOffer(a3);
    v17 = BYTE11(v38);
    v18 = BYTE11(v28);
    if (v13 != 1)
    {
      v17 = BYTE11(v28);
    }

    if (v14 == 1)
    {
      v18 = BYTE11(v31);
    }

    v19 = v18 ^ v17;
    if (((v18 ^ v17) & 1) == 0)
    {
      if (v13 == 1)
      {
        v20 = v37;
      }

      else
      {
        v20 = &v26;
      }

      v21 = v30;
      if (!v15)
      {
        v21 = v20;
      }

      if (v14 == 1)
      {
        v22 = v21;
      }

      else
      {
        v22 = &v26;
      }

      SDPAudioSettingsBuilder::copyAMRMediaFormatInfo(this, *(a3 + 4), v22, v20, a4, a5, a6, v16);
    }

    v23 = v19 ^ 1;
    *&v26 = &unk_1F5EF5FB8;
    if (SBYTE7(v28) < 0)
    {
      operator delete(__p[0]);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v37);
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

void sub_1E4D42CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a36);
  _Unwind_Resume(a1);
}

double SDPAudioSettingsBuilder::copyAMRMediaFormatInfo(SDPAudioSettingsBuilder *this, SDPMediaAudioSettings *a2, const SDPMediaFormatAMRParams *a3, const SDPMediaFormatAMRParams *a4, const SDPMediaFormatAMRParams *a5, int a6, ImsPrefs *a7, const ImsPrefs *a8)
{
  v10 = a5;
  *(this + 14) = a2;
  *(this + 15) = *(a4 + 20);
  if (a6)
  {
    v14 = "AMR-WB";
  }

  else
  {
    v14 = "AMR";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v14);
  std::string::operator=((this + 280), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a6)
  {
    v15 = ImsPrefs::PreferredAMRWBMode(a7);
  }

  else
  {
    v15 = ImsPrefs::PreferredAMRNBMode(a7);
  }

  SDPMediaAMRSettings::SDPMediaAMRSettings(v19, a3, a4, a6, v10, v15);
  result = *&v20;
  v17 = v21;
  *(this + 328) = v20;
  *(this + 344) = v17;
  return result;
}

void sub_1E4D42DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPAudioSettingsBuilder::genericRemoteAMRAnswerMatchHandler(uint64_t this, SDPMediaAudioSettings *a2, SDPMediaFormatInfo *a3, SDPMediaFormatInfo *a4, int a5, ImsPrefs *a6, const ImsPrefs *a7)
{
  v53 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v7 = this;
    if (*(this + 28) != 255)
    {
      goto LABEL_37;
    }

    v52 = 0u;
    memset(v51, 0, sizeof(v51));
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v51, a2 + 96);
    v50 = 0u;
    memset(v49, 0, sizeof(v49));
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v49, a3 + 96);
    v13 = DWORD2(v50);
    v14 = DWORD2(v52);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v45, *(a3 + 4), a5);
    v15 = isOpenOffer(a2);
    v16 = isOpenOffer(a3);
    if (v13 == 1)
    {
      v17 = v16;
      v18 = v49;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v43, "sdp.audio");
      v39[0] = 0;
      v42 = 0;
      v19 = ims::debug(v43, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "We don't have remote AMR format params. Setting default", 55);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v42 == 1 && v41 < 0)
      {
        operator delete(__p);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      v18 = &v45;
      v17 = 1;
    }

    if (v14 == 1)
    {
      v20 = v51;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v43, "sdp.audio");
      v35[0] = 0;
      v38 = 0;
      v21 = ims::debug(v43, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "We don't have local AMR format params. Setting default", 54);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v38 == 1 && v37 < 0)
      {
        operator delete(v36);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      v15 = 1;
      v20 = &v45;
    }

    if (*(v20 + 43) == *(v18 + 43) && (((v17 | v15) & 1) != 0 || *(v20 + 23) == *(v18 + 23)))
    {
      std::string::basic_string[abi:ne200100]<0>(v43, "sdp.audio.settings");
      v31[0] = 0;
      v34 = 0;
      v22 = ims::debug(v43, v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Open offer/answer and params match.", 35);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      if (v34 == 1 && v33 < 0)
      {
        operator delete(v32);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      SDPAudioSettingsBuilder::copyAMRMediaFormatInfo(v7, *(a2 + 4), v20, v18, a4, a5, a6, v23);
      v24 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v43, "sdp.audio.settings");
      v27[0] = 0;
      v30 = 0;
      v25 = ims::debug(v43, v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Offer/Answer not open. Local/remote params don't match ::", 57);
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " local params - octet: ", 23);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923320](*(v25 + 8), *(v20 + 43));
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", isOpen: ", 10);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923320](*(v25 + 8), v15);
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", modeset: ", 11);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923390](*(v25 + 8), *(v20 + 23));
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " remote params - octet: ", 24);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923320](*(v25 + 8), *(v18 + 43));
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", isOpen: ", 10);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923320](*(v25 + 8), v17);
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", modeset: ", 11);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923390](*(v25 + 8), *(v18 + 23));
      *(v25 + 17) = 0;
      (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v25 + 17) = 0;
      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      v24 = 1;
    }

    *&v45 = &unk_1F5EF5FB8;
    if (SBYTE7(v47) < 0)
    {
      operator delete(v46);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v49);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v51);
    if ((v24 & 1) == 0)
    {
      this = 1;
    }

    else
    {
LABEL_37:
      this = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1E4D43374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, unsigned int a52)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a52);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v52 - 240));
  _Unwind_Resume(a1);
}

void SDPAudioSettingsBuilder::~SDPAudioSettingsBuilder(SDPAudioSettingsBuilder *this)
{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPMediaAudioSettings::SDPMediaAudioSettings(SDPMediaAudioSettings *this, const SDPMediaAudioSettings *a2)
{
  SDPMediaSettings::SDPMediaSettings(this, a2);
  *v4 = &unk_1F5EC0188;
  v5 = (v4 + 35);
  if (*(a2 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 35), *(a2 + 36));
  }

  else
  {
    v6 = *(a2 + 280);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 37);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(this + 38) = *(a2 + 38);
  *(this + 78) = *(a2 + 78);
  *(this + 316) = *(a2 + 316);
  *(this + 40) = &unk_1F5EBE678;
  v7 = *(a2 + 344);
  *(this + 328) = *(a2 + 328);
  *(this + 344) = v7;
  v9 = *(a2 + 392);
  v8 = *(a2 + 408);
  v10 = *(a2 + 376);
  *(this + 53) = *(a2 + 53);
  *(this + 392) = v9;
  *(this + 408) = v8;
  *(this + 376) = v10;
  *(this + 360) = *(a2 + 360);
}

void SDPMediaSettings::SDPMediaSettings(SDPMediaSettings *this, const SDPMediaSettings *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5EF04B0;
  *(this + 3) = *(a2 + 3);
  *(this + 16) = *(a2 + 16);
  *(this + 36) = *(a2 + 36);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v4 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v4;
  }

  *(this + 12) = *(a2 + 12);
  std::__optional_copy_base<SDPMediaCrypto,false>::__optional_copy_base[abi:ne200100]((this + 104), (a2 + 104));
  std::__optional_copy_base<SDPMediaCrypto,false>::__optional_copy_base[abi:ne200100]((this + 192), (a2 + 192));
  v5 = *(a2 + 1);
  if (v5)
  {
    (*(*v5 + 32))(&v8);
    v6 = v8;
    v8 = 0uLL;
    v7 = *(this + 2);
    *(this + 8) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }
  }
}

void sub_1E4D43744(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

SDPMediaCrypto *std::__optional_copy_base<SDPMediaCrypto,false>::__optional_copy_base[abi:ne200100](SDPMediaCrypto *this, const SDPMediaCrypto *a2)
{
  *this = 0;
  *(this + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    SDPMediaCrypto::SDPMediaCrypto(this, a2);
    *(this + 80) = 1;
  }

  return this;
}

void sub_1E4D437F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    SDPMediaCrypto::~SDPMediaCrypto(v1);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaCrypto::SDPMediaCrypto(SDPMediaCrypto *this, const SDPMediaCrypto *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5EEAF70;
  *(this + 20) = *(a2 + 20);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 48, *(a2 + 6), *(a2 + 7), *(a2 + 7) - *(a2 + 6));
  *(this + 18) = *(a2 + 18);
}

void sub_1E4D4391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaRTPMap::SDPMediaRTPMap(SDPMediaRTPMap *this, const SDPMediaRTPMap *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5EF7520;
  *(this + 20) = *(a2 + 20);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v4 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v4;
  }

  *(this + 18) = *(a2 + 18);
}

void sub_1E4D43A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v16;
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaSettings::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      (*(*v4 + 32))(&v8);
      v5 = v8;
      v8 = 0uLL;
      v6 = *(a1 + 16);
      *(a1 + 8) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (*(&v8 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
        }
      }
    }

    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    std::string::operator=((a1 + 72), (a2 + 72));
    *(a1 + 96) = *(a2 + 96);
    std::__optional_storage_base<SDPMediaCrypto,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<SDPMediaCrypto,false> const&>((a1 + 104), (a2 + 104));
    std::__optional_storage_base<SDPMediaCrypto,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<SDPMediaCrypto,false> const&>((a1 + 192), (a2 + 192));
  }

  return a1;
}

{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  std::string::operator=((a1 + 72), (a2 + 72));
  *(a1 + 96) = *(a2 + 96);
  std::__optional_storage_base<SDPMediaCrypto,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<SDPMediaCrypto,false> const&>((a1 + 104), (a2 + 104));
  std::__optional_storage_base<SDPMediaCrypto,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<SDPMediaCrypto,false> const&>((a1 + 192), (a2 + 192));
  return a1;
}

void std::__optional_storage_base<SDPMediaCrypto,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<SDPMediaCrypto,false> const&>(SDPMediaCrypto *a1, unsigned __int8 *a2)
{
  if (*(a1 + 80) == a2[80])
  {
    if (*(a1 + 80))
    {

      SDPMediaCrypto::operator=(a1, a2);
    }
  }

  else if (*(a1 + 80))
  {
    SDPMediaCrypto::~SDPMediaCrypto(a1);
    *(v2 + 80) = 0;
  }

  else
  {
    SDPMediaCrypto::SDPMediaCrypto(a1, a2);
    *(v3 + 80) = 1;
  }
}

uint64_t SDPMediaCrypto::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  *(a1 + 40) = *(a2 + 40);
  if (a1 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

unsigned int *std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](unsigned int *a1, uint64_t a2)
{
  *a1 = 0;
  a1[30] = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1> const&>(unsigned int *a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 120);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F5EC7A80[v5])(&v6, a2);
    a1[30] = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(SDPMediaFormatParams **a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(*a1, *(a2 + 40));
  *v3 = &unk_1F5EF24A0;
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 48) = *(a2 + 48);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(SDPMediaFormatParams **a1, uint64_t a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(*a1, *(a2 + 40));
  *v3 = &unk_1F5EF2518;
  *(v3 + 42) = *(a2 + 42);
}

void SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(SDPMediaFormatUnknownParams *this, const SDPMediaFormatUnknownParams *a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, *(a2 + 20));
  v3->__r_.__value_.__r.__words[0] = &unk_1F5EBF288;
  v4 = v3 + 2;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v5 = *(a2 + 3);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }
}

void sub_1E4D43E78(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EF5FB8;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::construct_at[abi:ne200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,std::in_place_index_t<3ul> const&,SDPMediaFormatDTMFParams const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = *(a3 + 8);
  *a1 = &unk_1F5EF5FB8;
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v5 = *(a3 + 16);
    *(a1 + 32) = *(a3 + 32);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = *(a3 + 40);
  *a1 = &unk_1F5EBF210;
  return a1;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

void *std::map<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>::map[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = &a2[4 * a3];
    while (1)
    {
      v13 = 0;
      if (*a1 == v4)
      {
        v9 = v4;
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v8 = v4;
        if (v6)
        {
          do
          {
            v9 = v6;
            v6 = v6[1];
          }

          while (v6);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (v10);
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, v5) & 0x80) == 0)
        {
          v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v13, v5);
          goto LABEL_12;
        }

        if (!*v4)
        {
LABEL_15:
          v13 = v4;
LABEL_16:
          operator new();
        }
      }

      v13 = v9;
      v11 = v9 + 1;
LABEL_12:
      if (!*v11)
      {
        goto LABEL_16;
      }

      v5 += 4;
      if (v5 == v7)
      {
        return a1;
      }

      v6 = *v4;
    }
  }

  return a1;
}

void sub_1E4D441F4(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::destroy(a1[1]);
    SDPMediaAudioSettings::~SDPMediaAudioSettings(a1 + 5);

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,SDPMediaAudioSettings>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SDPMediaAudioSettings>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      SDPMediaAudioSettings::~SDPMediaAudioSettings(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void SDPMediaAudioSettings::SDPMediaAudioSettings(SDPMediaAudioSettings *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0xFF00FF00000000;
  *(this + 16) = 0;
  *(this + 36) = 0x100000001;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 272) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *this = &unk_1F5EC0188;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0x1F401F4000FF00FFLL;
  *(this + 78) = 15728660;
  *(this + 316) = 0;
  *(this + 40) = &unk_1F5EBE678;
  *(this + 328) = 0;
  *(this + 330) = 0x2000000000000;
  *(this + 169) = 2;
  *(this + 340) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = xmmword_1E5168BF0;
  *(this + 200) = 0;
  *(this + 51) = 0;
  *(this + 52) = 131074;
  *(this + 212) = 0;
}

uint64_t *std::__tree<std::__value_type<unsigned short,SDPMediaAudioSettings>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SDPMediaAudioSettings>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SDPMediaAudioSettings>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t _GLOBAL__sub_I_SDPAudioSettingsBuilder_cpp()
{
  v12 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v4, "EVS");
  v5 = SDPAudioSettingsBuilder::RemoteEVSOfferMatchHandler;
  std::string::basic_string[abi:ne200100]<0>(v6, "AMR");
  v7 = SDPAudioSettingsBuilder::RemoteAMROfferMatchHandler;
  std::string::basic_string[abi:ne200100]<0>(v8, "AMR-WB");
  v9 = SDPAudioSettingsBuilder::RemoteAMRWBOfferMatchHandler;
  std::string::basic_string[abi:ne200100]<0>(v10, "telephone-event");
  v11 = SDPAudioSettingsBuilder::RemoteDTMFOfferMatchHandler;
  std::map<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>::map[abi:ne200100](_MergedGlobals_6, v4, 4);
  for (i = 0; i != -128; i -= 32)
  {
    if (v10[i + 23] < 0)
    {
      operator delete(*&v10[i]);
    }
  }

  __cxa_atexit(std::map<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>::~map[abi:ne200100], _MergedGlobals_6, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(v4, "EVS");
  v5 = SDPAudioSettingsBuilder::RemoteEVSAnswerMatchHandler;
  std::string::basic_string[abi:ne200100]<0>(v6, "AMR");
  v7 = SDPAudioSettingsBuilder::RemoteAMRAnswerMatchHandler;
  std::string::basic_string[abi:ne200100]<0>(v8, "AMR-WB");
  v9 = SDPAudioSettingsBuilder::RemoteAMRWBAnswerMatchHandler;
  std::string::basic_string[abi:ne200100]<0>(v10, "telephone-event");
  v11 = SDPAudioSettingsBuilder::RemoteDTMFAnswerMatchHandler;
  std::map<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>::map[abi:ne200100](qword_1EE2BC2A8, v4, 4);
  for (j = 0; j != -128; j -= 32)
  {
    if (v10[j + 23] < 0)
    {
      operator delete(*&v10[j]);
    }
  }

  result = __cxa_atexit(std::map<std::string,BOOL (*)(SDPMediaAudioSettings *,SDPMediaFormatInfo &,SDPMediaFormatInfo &,BOOL,ImsPrefs const&)>::~map[abi:ne200100], qword_1EE2BC2A8, &dword_1E4C3F000);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4D44918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 119);
  v13 = -128;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void XcapCallWaitingManager::fetchCallWaiting()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4D44AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1E69235B0](v7, 0x10B2C409DA9FE99);
  XcapNodeSelector::~XcapNodeSelector(va);
  _Unwind_Resume(a1);
}

void ___ZN22XcapCallWaitingManager16fetchCallWaitingEU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, uint64_t a2, bambi::XmlParser *a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  XcapDocumentCommWaiting::XcapDocumentCommWaiting(v10);
  if (((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    bambi::XmlParser::parseXml(a3, v10, v6, v7);
  }

  v8 = *(a1 + 32);
  ImsResult::ImsResult(v9, a2);
  (*(v8 + 16))(v8, v9, v10);
  ImsResult::~ImsResult(v9);
  bambi::XmlTreeItem::~XmlTreeItem(v10 + 1);
}

void sub_1E4D44BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  bambi::XmlTreeItem::~XmlTreeItem(va1);
  _Unwind_Resume(a1);
}

void XcapCallWaitingManager::setCallWaiting()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4D44DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1E69235B0](v26, 0x10B2C409DA9FE99);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  bambi::XmlTreeItem::~XmlTreeItem((v27 | 8));
  XcapNodeSelector::~XcapNodeSelector((v28 - 96));
  _Unwind_Resume(a1);
}

void ___ZN22XcapCallWaitingManager14setCallWaitingEbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, const ImsResult *a2)
{
  v2 = *(a1 + 32);
  ImsResult::ImsResult(v3, a2);
  (*(v2 + 16))(v2, v3, 0);
  ImsResult::~ImsResult(v3);
}

void sub_1E4D44E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void XcapCallWaitingManager::~XcapCallWaitingManager(void **this)
{
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);
}

{
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);

  JUMPOUT(0x1E69235B0);
}

void XcapDocumentManagerBase::~XcapDocumentManagerBase(void **this)
{
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);
}

{
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);

  JUMPOUT(0x1E69235B0);
}

void XcapConfig::~XcapConfig(void **this)
{
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  v2 = this + 37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t SipPCellularNetworkInfoHeader::setAccessNetworkInfo(SipPCellularNetworkInfoHeader *this, std::string *a2, uint64_t a3, char a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v8 = SipPAccessNetworkInfoHeader::setAccessNetworkInfo(this, a2, &__p, 0);
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v9)
    {
      return 0;
    }
  }

  else if (!v8)
  {
    return 0;
  }

  *(this + 17) = a2[2].__r_.__value_.__l.__size_;
  *(this + 36) = 0;
  *(this + 52) = 0;
  gmtime_r(this + 17, (this + 152));
  *(this + 27) = a3;
  *(this + 56) = 0;
  *(this + 72) = 0;
  gmtime_r(this + 27, (this + 232));
  if (!*(this + 17) && (a4 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "default");
    v14[0] = 0;
    v17 = 0;
    v10 = ims::debug(&__p, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Not setting P-CNI header with invalid timestamp", 47);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  ImsInternetDateTime::toString((this + 136), &__p);
  v19 = "cell-time";
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, "cell-time");
  std::string::operator=((v12 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ImsInternetDateTime::toString((this + 216), &__p);
  v19 = "reg-time";
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, "reg-time");
  std::string::operator=((v13 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E4D452FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}