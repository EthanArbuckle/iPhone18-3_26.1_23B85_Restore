void otbr::Ncp::NcpSpinel::HandleNotification(otbr::Ncp::NcpSpinel *this, otbr::Ncp::NcpSpinel *a2, unsigned __int8 *a3, const char *a4)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  v5 = otbr::Ncp::NcpSpinel::SpinelDataUnpack(a2, a3, "CiiD", a4, &v12, &v13, &v15 + 4, &v14, &v15);
  if (v5)
  {
    v6 = 4;
  }

  else if ((v12 & 0xF) != 0)
  {
    v6 = 4;
    v5 = -8;
  }

  else
  {
    if (v13 == 6)
    {
      otbr::Ncp::NcpSpinel::HandleValueIs(this, SHIDWORD(v15), v14, v15);
    }

    v5 = 0;
    v6 = 6;
  }

  otbrErrorString(v5);
  otbrLog(v6, "NcpSpinel", "HandleNotification: %s: %s", v7, v8, v9, v10, v11, "HandleNotification");
}

uint64_t otbr::Ncp::NcpSpinel::HandleResponse(otbr::Ncp::NcpSpinel *this, unsigned int a2, otbr::Ncp::NcpSpinel *a3, unsigned __int8 *a4)
{
  v16 = 0;
  v17[0] = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v19 = 0;
  result = otbr::Ncp::NcpSpinel::SpinelDataUnpack(a3, a4, "CiiD", a4, &v13, &v14, v17, &v15, &v16);
  if (!result)
  {
    if (v14 != 6)
    {
      goto LABEL_6;
    }

    if (a2 >= 0x10)
    {
      goto LABEL_14;
    }

    if (v17[0] == *(this + a2 + 3))
    {
      result = 0;
    }

    else
    {
LABEL_6:
      result = 4294967283;
    }
  }

  *(this + 4) &= ~(1 << a2);
  if (result == -8)
  {
    otbrLog(2u, "NcpSpinel", "Error parsing response with tid:%u", v7, v8, v9, v10, v11, a2);
    if (v19)
    {
      v17[1] = otbr::OtbrErrorToOtError(0xFFFFFFF8);
      std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](v18);
    }

    return std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](v18);
  }

  if (result != -13)
  {
    return std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](v18);
  }

  if (a2 <= 0xF)
  {
    v12 = *(this + a2 + 3);
    otbrLog(2u, "NcpSpinel", "Received unexpected response with cmd:%u, key:%u, waiting key:%u for tid:%u", v7, v8, v9, v10, v11, v14);
    return std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](v18);
  }

LABEL_14:
  __break(0x5512u);
  return result;
}

void otbr::Ncp::NcpSpinel::HandleValueIs(otbr::Ncp::NcpSpinel *this, int a2, otbr::Ncp::NcpSpinel *a3, unsigned __int8 *a4)
{
  if (a2 == 67)
  {
    v32 = 0;
    v4 = otbr::Ncp::NcpSpinel::SpinelDataUnpack(a3, a4, "C", a4, &v32);
    if (!v4)
    {
      v20 = otbr::Ncp::NcpSpinel::SpinelRoleToDeviceRole(v32, v12, v13, v14, v15, v16, v17, v18);
      (***(this + 28))(*(this + 28), v20);
      v21 = otThreadDeviceRoleToString(v20);
      otbrLog(6u, "NcpSpinel", "Device role changed to %s", v22, v23, v24, v25, v26, v21);
      goto LABEL_9;
    }
  }

  else
  {
    if (a2)
    {
LABEL_9:
      v4 = 0;
      v19 = 6;
      goto LABEL_10;
    }

    v33 = 0;
    v4 = otbr::Ncp::NcpSpinel::SpinelDataUnpack(a3, a4, "i", a4, &v33);
    if (!v4)
    {
      v5 = spinel_status_to_cstr(v33);
      otbrLog(6u, "NcpSpinel", "NCP last status: %s", v6, v7, v8, v9, v10, v5);
      goto LABEL_9;
    }
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v19 = 4;
LABEL_10:
  otbrErrorString(v4);
  otbrLog(v19, "NcpSpinel", "NcpSpinel: %s: %s", v27, v28, v29, v30, v31, "HandleValueIs");
}

uint64_t otbr::Ncp::NcpSpinel::SpinelRoleToDeviceRole(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 5)
  {
    return dword_10044B678[a1];
  }

  otbrLog(4u, "NcpSpinel", "Received invalid spinel net role!", a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t otbr::Ncp::NcpSpinel::GetNextTid(otbr::Ncp::NcpSpinel *this)
{
  v1 = *(this + 4);
  v2 = *(this + 10);
  while (((1 << v2) & v1) != 0)
  {
    if (v2 <= 0xE)
    {
      ++v2;
    }

    else
    {
      v2 = 1;
    }

    if (v2 == *(this + 10))
    {
      LOBYTE(v2) = 0;
      return v2;
    }
  }

  *(this + 4) = v1 | (1 << v2);
  if (v2 <= 0xE)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(this + 10) = v3;
  return v2;
}

uint64_t std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *otbr::Ncp::OtNetworkProperties::OtNetworkProperties(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  this[1] = 0;
  return this;
}

void *otbr::Ncp::OtNetworkProperties::OtNetworkProperties(void *this)
{
  *this = &off_1004CDB50;
  this[1] = 0;
  return this;
}

void otbr::Ncp::RcpHost::RcpHost(otbr::MainloopProcessor *a1)
{
  otbr::MainloopProcessor::MainloopProcessor(a1);
}

{
  *(a1 + 1) = &off_1004CDB10;
  otbr::MainloopProcessor::MainloopProcessor(a1);
}

void sub_1003CAA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::vector<std::function<void ()(unsigned long long)>>::__destroy_vector::operator()[abi:ne200100](&a12);
  otbr::TaskRunner::~TaskRunner((v13 + 4));
  a12 = v12 + 13;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<otbr::agent::ThreadHelper>::reset[abi:ne200100](v13, 0);
  otbr::MainloopProcessor::~MainloopProcessor(v12);
  _Unwind_Resume(a1);
}

void sub_1003CAC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::vector<std::function<void ()(unsigned long long)>>::__destroy_vector::operator()[abi:ne200100](&a12);
  otbr::TaskRunner::~TaskRunner((v12 + 16));
  a12 = v12 + 13;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::unique_ptr<otbr::agent::ThreadHelper>::reset[abi:ne200100](v13, 0);
  otbr::MainloopProcessor::~MainloopProcessor(v12);
  _Unwind_Resume(a1);
}

void otbr::Ncp::RcpHost::~RcpHost(otbr::Ncp::RcpHost *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = a2[5];
  *(this + *(v3 - 24)) = a2[6];
  *(this + 2) = a2[7];
  v4 = (this + 272);
  std::vector<std::function<void ()(unsigned long long)>>::__destroy_vector::operator()[abi:ne200100](&v4);
  otbr::TaskRunner::~TaskRunner((this + 128));
  v4 = (this + 104);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<otbr::agent::ThreadHelper>::reset[abi:ne200100](this + 12, 0);
  otbr::MainloopProcessor::~MainloopProcessor(this);
}

void otbr::Ncp::RcpHost::~RcpHost(otbr::Ncp::RcpHost *this)
{
}

{

  operator delete();
}

void virtual thunk tootbr::Ncp::RcpHost::~RcpHost(otbr::Ncp::RcpHost *this)
{
}

{

  operator delete();
}

void non-virtual thunk tootbr::Ncp::RcpHost::~RcpHost(otbr::Ncp::RcpHost *this)
{
}

{
}

{

  operator delete();
}

{

  operator delete();
}

uint64_t otbr::Ncp::RcpHost::ConvertToOtbrLogLevel(otbr::Ncp::RcpHost *this)
{
  if (this > 4)
  {
    return 7;
  }

  else
  {
    return dword_10044B6DC[this];
  }
}

uint64_t otbr::Ncp::RcpHost::SetOtbrAndOtLogLevel(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  otbrLogSetLevel(a2);
  v3 = otbr::Ncp::ThreadHost::ConvertToOtLogLevel(v2);

  return otLoggingSetLevel(v3);
}

void otbr::Ncp::RcpHost::Init(otbr::Ncp::RcpHost *this)
{
  Level = otbrLogGetLevel();
  v3 = otbr::Ncp::ThreadHost::ConvertToOtLogLevel(Level);
  if (!otLoggingSetLevel(v3))
  {
    v9 = *(this + 4);
    if (!v9)
    {
      v9 = otSysInit(this + 40);
      *(this + 4) = v9;
      if (!v9)
      {
        otbr::Ncp::RcpHost::Init();
      }
    }

    v10 = otSetStateChangedCallback(v9, otbr::Ncp::RcpHost::HandleStateChanged, this);
    otbr::agent::ThreadHelper::LogOpenThreadResult("Set state callback", v10);
    if (!v10)
    {
      MakeUnique<otbr::agent::ThreadHelper,otInstance *&,otbr::Ncp::RcpHost *>();
    }
  }

  otbrLog(0, "RCP_HOST", "FAILED %s:%d - %d: %s", v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/ncp/rcp_host.cpp");
  exit(-1);
}

uint64_t otbr::Ncp::RcpHost::Deinit(otbr::Ncp::RcpHost *this)
{
  if (!*(this + 4))
  {
    otbr::Ncp::RcpHost::Deinit();
  }

  otSysDeinit(this);
  *(this + 3) = 0;
  *(this + 4) = 0;
  v3 = *(this + 34);
    ;
  }

  *(this + 35) = v3;
  v5 = *(this + 13);
    ;
  }

  *(this + 14) = v5;
  return result;
}

void otbr::Ncp::RcpHost::HandleStateChanged(otbr::Ncp::RcpHost *this, int a2)
{
  v4 = *(this + 34);
  for (i = *(this + 35); v4 != i; v4 += 32)
  {
    std::__function::__value_func<void ()(unsigned long long)>::operator()[abi:ne200100](v4);
  }

  otbr::agent::ThreadHelper::StateChangedCallback(*(this + 12), a2);
}

BOOL otbr::Ncp::RcpHost::Update(uint64_t a1, uint64_t a2)
{
  if (otTaskletsArePending(*(a1 + 32)))
  {
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  v4 = *(a1 + 32);

  return otSysMainloopUpdate(v4, a2);
}

void otbr::Ncp::RcpHost::Process(uint64_t a1, const void *a2)
{
  otTaskletsProcess(*(a1 + 32));
  otSysMainloopProcess(*(a1 + 32), a2);
  if (*(a1 + 296) == 1 && !otbr::agent::ThreadHelper::TryResumeNetwork(*(a1 + 96)))
  {
    *(a1 + 296) = 0;
  }
}

uint64_t otbr::Ncp::RcpHost::PostTimerTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a3);
  otbr::TaskRunner::Post(a1 + 128, a2, v6);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
}

void sub_1003CB37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t otbr::Ncp::RcpHost::RegisterResetHandler(uint64_t *a1, uint64_t a2)
{
  v3 = a1[14];
  if (v3 >= a1[15])
  {
    result = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(a1 + 13, a2);
  }

  else
  {
    result = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v3, a2) + 32;
  }

  a1[14] = result;
  return result;
}

uint64_t otbr::Ncp::RcpHost::AddThreadStateChangedCallback(uint64_t *a1, uint64_t a2)
{
  v3 = a1[35];
  if (v3 >= a1[36])
  {
    result = std::vector<std::function<void ()(unsigned long long)>>::__emplace_back_slow_path<std::function<void ()(unsigned long long)>>(a1 + 34, a2);
  }

  else
  {
    result = std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v3, a2) + 32;
  }

  a1[35] = result;
  return result;
}

uint64_t otbr::Ncp::RcpHost::Reset(otbr::Ncp::RcpHost *this)
{
  gPlatResetReason = 2;
  otSysDeinit(this);
  *(this + 4) = 0;
  result = (*(*this + 32))(this);
  v3 = *(this + 13);
  v4 = *(this + 14);
  while (v3 != v4)
  {
    v5 = *(v3 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v5 + 48))(v5);
    v3 += 32;
  }

  *(this + 296) = 1;
  return result;
}

char *otbr::Ncp::RcpHost::GetThreadVersion(otbr::Ncp::RcpHost *this)
{
  v1 = otThreadGetVersion() - 2;
  if (v1 >= 4u)
  {
    Version = otThreadGetVersion();
    otbrLog(0, "RCP_HOST", "Unexpected thread version %hu", v4, v5, v6, v7, v8, Version);
    exit(-1);
  }

  return off_1004CDE10[v1];
}

void otPlatLog(unsigned int a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if (a1 > 4)
  {
    v3 = 7;
  }

  else
  {
    v3 = dword_10044B6DC[a1];
  }

  otbrLogvNoFilter(v3, a3, va);
}

void otPlatLogHandleLevelChanged(unsigned int a1)
{
  v1 = a1;
  if (a1 > 4)
  {
    v2 = 7;
  }

  else
  {
    v2 = dword_10044B6DC[a1];
  }

  otbrLogSetLevel(v2);
  otbrLog(6u, "RCP_HOST", "OpenThread log level changed to %d", v3, v4, v5, v6, v7, v1);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

std::random_device *std::unique_ptr<otbr::agent::ThreadHelper>::reset[abi:ne200100](std::random_device **a1, std::random_device *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    otbr::agent::ThreadHelper::~ThreadHelper(result);

    operator delete();
  }

  return result;
}

void otbr::agent::ThreadHelper::~ThreadHelper(std::random_device *this)
{
  std::random_device::~random_device(this + 142);
  std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](&this[70]);
  std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](&this[62]);
  std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](&this[54]);
  std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(&this[44], *&this[46].__padding_);
  v3 = this + 38;
  std::vector<std::function<void ()(otOperationalDatasetTlvs const&)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 32;
  std::vector<std::function<void ()(otDeviceRole)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *&this[26].__padding_;
  if (!v2)
  {
    goto LABEL_4;
  }

  *&this[28].__padding_ = v2;
  if ((*&this[30].__padding_ - v2) >= 0)
  {
    operator delete(v2);
LABEL_4:
    std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::~__value_func[abi:ne200100](&this[18]);
    v3 = this + 12;
    std::vector<otActiveScanResult>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::~__value_func[abi:ne200100](&this[4]);
    return;
  }

  __break(0x550Cu);
}

uint64_t std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::function<void ()(otOperationalDatasetTlvs const&)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

uint64_t std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::function<void ()(otDeviceRole)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(otDeviceRole)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

uint64_t std::__function::__value_func<void ()(otDeviceRole)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<otActiveScanResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    if (0xEEEEEEEEEEEEEEEFLL * ((v1[2] - v2) >> 2) >= 0x444444444444445)
    {
      __break(0x550Cu);
    }

    else
    {
      operator delete(v2);
    }
  }
}

uint64_t std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

void std::vector<std::function<void ()(unsigned long long)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long long)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v3 >> 59)
  {
    goto LABEL_12;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&v14);
  return v13;
}

void sub_1003CBF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

void *std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](i - 32);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t std::vector<std::function<void ()(unsigned long long)>>::__emplace_back_slow_path<std::function<void ()(unsigned long long)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v3 >> 59)
  {
    goto LABEL_12;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(unsigned long long)>>,std::function<void ()(unsigned long long)>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<void ()(unsigned long long)>>::~__split_buffer(&v14);
  return v13;
}

void sub_1003CC188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(unsigned long long)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(unsigned long long)>>,std::function<void ()(unsigned long long)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

void *std::__split_buffer<std::function<void ()(unsigned long long)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](i - 32);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void otbr::Ncp::ThreadHost::Create(uint64_t a1, uint64_t **a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v26 = a3;
  v27 = a1;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  Level = otbrLogGetLevel();
  v8 = otbr::Ncp::ThreadHost::ConvertToOtLogLevel(Level);
  v15 = *a2;
  v14 = a2[1];
  if ((v14 - *a2) < 0x11)
  {
    v22 = 0;
    if (v15 == v14)
    {
LABEL_7:
      if (!otLoggingSetLevel(v8))
      {
        inited = otSysInitCoprocessor(v21);
        if (inited == 2)
        {
          MakeUnique<otbr::Ncp::NcpHost,char const*&,BOOL &>();
        }

        if (inited == 1)
        {
          MakeUnique<otbr::Ncp::RcpHost,char const*&,std::vector<char const*> const&,char const*&,BOOL &,BOOL &,otInstance *&>();
        }
      }
    }

    else
    {
      v16 = v21;
      v17 = 1;
      while (1)
      {
        v18 = v17;
        if (v17 == 3)
        {
          break;
        }

        v19 = *v15++;
        *v16++ = v19;
        ++v17;
        if (v15 == v14)
        {
          v22 = v18;
          goto LABEL_7;
        }
      }

      v22 = 3;
      __break(0x5512u);
    }
  }

  otbrLog(0, "CTRLR", "FAILED %s:%d - %s", v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/ncp/thread_host.cpp");
  exit(-1);
}

uint64_t otbr::Ncp::ThreadHost::ConvertToOtLogLevel(unsigned int a1)
{
  if (a1 > 6)
  {
    return 5;
  }

  else
  {
    return dword_10044B6F0[a1];
  }
}

void sub_1003CC724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t **a10)
{
  v13 = v12;
  std::vector<_DNSServiceRef_t *>::~vector[abi:ne200100](v10 + 520);
  std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v13;
  std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::~__value_func[abi:ne200100](v10 + 440);
  otbr::Mdns::Publisher::~Publisher(v11);
  otbr::MainloopProcessor::~MainloopProcessor(v10);
  _Unwind_Resume(a1);
}

void *std::vector<_DNSServiceRef_t *>::~vector[abi:ne200100](uint64_t a1)
{
  result = *a1;
  if (!result)
  {
    return a1;
  }

  *(a1 + 8) = result;
  if ((*(a1 + 16) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void otbr::Mdns::Publisher::~Publisher(otbr::Mdns::Publisher *this)
{
  *this = &off_1004CE010;
  std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(this + 208, *(this + 27));
  std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::destroy(this + 184, *(this + 24));
  std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(this + 160, *(this + 21));
  std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::destroy(this + 112, *(this + 15));
  std::__list_imp<otbr::Mdns::Publisher::DiscoverCallback>::clear(this + 11);
  std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(this + 8, *(this + 2));
}

void otbr::Mdns::PublisherMDnsSd::~PublisherMDnsSd(otbr::Mdns::PublisherMDnsSd *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = off_1004CDE40;
  v9 = (this + 8);
  *(this + 1) = off_1004CDEF0;
  otbrLog(6u, "MDNS", "PublisherMDnsSd::~PublisherMDnsSd", a4, a5, a6, a7, a8, v17);
  otbr::Mdns::PublisherMDnsSd::Stop(this, 0, v10, v11, v12, v13, v14, v15);
  v16 = *(this + 65);
  if (!v16)
  {
    goto LABEL_4;
  }

  *(this + 66) = v16;
  if ((*(this + 67) - v16) >= 0)
  {
    operator delete(v16);
LABEL_4:
    v18 = (this + 496);
    std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (this + 472);
    std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>>::__destroy_vector::operator()[abi:ne200100](&v18);
    std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::~__value_func[abi:ne200100](this + 440);
    otbr::Mdns::Publisher::~Publisher(v9);
    otbr::MainloopProcessor::~MainloopProcessor(this);
    return;
  }

  __break(0x550Cu);
}

{
  otbr::Mdns::PublisherMDnsSd::~PublisherMDnsSd(this, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

void otbr::Mdns::PublisherMDnsSd::Stop(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbrLog(6u, "MDNS", "PublisherMDnsSd::Stop mState:%d", a4, a5, a6, a7, a8, *(a1 + 432));
  if (*(a1 + 432) == 1)
  {
    if (a2 == 1)
    {
      otbr::Mdns::PublisherMDnsSd::DeallocateHostsRef(a1);
    }

    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(a1 + 16, *(a1 + 24));
    *(a1 + 16) = a1 + 24;
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(a1 + 40, *(a1 + 48));
    *(a1 + 40) = a1 + 48;
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(a1 + 64, *(a1 + 72));
    *(a1 + 64) = a1 + 72;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
    otbr::Mdns::PublisherMDnsSd::DeallocateHostsRef(a1);
    v16 = *(a1 + 472);
    for (i = *(a1 + 480); i != v16; std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>::reset[abi:ne200100](i, 0))
    {
      --i;
    }

    *(a1 + 480) = v16;
    v18 = *(a1 + 496);
    for (j = *(a1 + 504); j != v18; std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100](j, 0))
    {
      --j;
    }

    *(a1 + 504) = v18;
    *(a1 + 432) = 0;
    otbrLog(6u, "MDNS", "PublisherMDnsSd::Stop return mState:%d", v10, v11, v12, v13, v14, 0);
  }
}

void non-virtual thunk tootbr::Mdns::PublisherMDnsSd::~PublisherMDnsSd(otbr::Mdns::PublisherMDnsSd *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbr::Mdns::PublisherMDnsSd::~PublisherMDnsSd((this - 8), a2, a3, a4, a5, a6, a7, a8);
}

{
  otbr::Mdns::PublisherMDnsSd::~PublisherMDnsSd((this - 8), a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

uint64_t otbr::Mdns::PublisherMDnsSd::Start(otbr::Mdns::PublisherMDnsSd *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbrLog(6u, "MDNS", "PublisherMDnsSd::Start mState:%d", a4, a5, a6, a7, a8, *(this + 108));
  *(this + 108) = 1;
  std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::operator()[abi:ne200100](this + 440);
  return 0;
}

void otbr::Mdns::PublisherMDnsSd::DeallocateHostsRef(otbr::Mdns::PublisherMDnsSd *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    v3 = *(this + 65);
    v4 = *(this + 66);
    if (v3 != v4)
    {
      do
      {
        if (*v3 == *(this + 53))
        {
          *v3 = 0;
        }

        ++v3;
      }

      while (v3 != v4);
      v2 = *(this + 53);
    }

    DNSServiceRefDeallocate(v2);
    otbrLog(7u, "MDNS", "Deallocated DNSServiceRef for hosts: %p", v5, v6, v7, v8, v9, *(this + 53));
    *(this + 53) = 0;
  }
}

uint64_t otbr::Mdns::PublisherMDnsSd::CreateSharedHostsRef(otbr::Mdns::PublisherMDnsSd *this)
{
  if (*(this + 53))
  {
    return 0;
  }

  Connection = DNSServiceCreateConnection(this + 53);
  otbrLog(7u, "MDNS", "Created new shared DNSServiceRef: %p", v4, v5, v6, v7, v8, *(this + 53));
  return Connection;
}

uint64_t otbr::Mdns::PublisherMDnsSd::HandleServiceRefDeallocating(uint64_t this, _DNSServiceRef_t *const *a2)
{
  v2 = *(this + 520);
  v3 = *(this + 528);
  while (v2 != v3)
  {
    if (*v2 == *a2)
    {
      *v2 = 0;
    }

    ++v2;
  }

  return this;
}

_DNSServiceRef_t *otbr::Mdns::PublisherMDnsSd::Update(void *a1, _DWORD *a2)
{
  v4 = a1[2];
  v5 = a1 + 3;
  if (v4 != a1 + 3)
  {
    do
    {
      otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Update(v4[7], a2);
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

    while (v7 != v5);
  }

  result = a1[53];
  if (result)
  {
    v10 = DNSServiceRefSockFD(result);
    if (v10 == -1)
    {
      otbr::Mdns::PublisherMDnsSd::Update();
    }

    v11 = v10;
    result = __darwin_check_fd_set_overflow(v10, a2, 0);
    if (result)
    {
      *(a2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v11;
    }

    v12 = a2[96];
    if (v12 <= v11)
    {
      v12 = v11;
    }

    a2[96] = v12;
  }

  v13 = a1[59];
  v14 = a1[60];
  while (v13 != v14)
  {
    v15 = *v13++;
    result = otbr::Mdns::PublisherMDnsSd::ServiceSubscription::UpdateAll(v15, a2);
  }

  v17 = a1[62];
  v16 = a1[63];
  while (v17 != v16)
  {
    v18 = *v17++;
    result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Update(v18, a2);
  }

  return result;
}

_DNSServiceRef_t *otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Update(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 176);
  if (result)
  {
    result = DNSServiceRefSockFD(result);
    if (result != -1)
    {
      v4 = result;
      result = __darwin_check_fd_set_overflow(result, a2, 0);
      if (result)
      {
        *(a2 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
      }

      v5 = a2[96];
      if (v5 <= v4)
      {
        v5 = v4;
      }

      a2[96] = v5;
    }
  }

  return result;
}

_DNSServiceRef_t *otbr::Mdns::PublisherMDnsSd::ServiceSubscription::UpdateAll(uint64_t a1, _DWORD *a2)
{
  result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Update(a1, a2);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Update(v7, a2);
  }

  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  while (v9 != v8)
  {
    v10 = *v9++;
    result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Update(v10, a2);
  }

  return result;
}

_DNSServiceRef_t *otbr::Mdns::PublisherMDnsSd::ServiceRef::Update(_DNSServiceRef_t **a1, _DWORD *a2)
{
  result = *a1;
  if (result)
  {
    v4 = DNSServiceRefSockFD(result);
    if (v4 == -1)
    {
      otbr::Mdns::PublisherMDnsSd::ServiceRef::Update();
    }

    v5 = v4;
    result = __darwin_check_fd_set_overflow(v4, a2, 0);
    if (result)
    {
      *(a2 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
    }

    v6 = a2[96];
    if (v6 <= v5)
    {
      v6 = v5;
    }

    a2[96] = v6;
  }

  return result;
}

void otbr::Mdns::PublisherMDnsSd::Process(uint64_t *a1, char *a2)
{
  a1[66] = a1[65];
  v4 = a1[2];
  v5 = a1 + 3;
  if (v4 != a1 + 3)
  {
    do
    {
      otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Process(v4[7], a2, a1 + 65);
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
          v39 = *v7 == v4;
          v4 = v7;
        }

        while (!v39);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v8 = a1[53];
  if (v8)
  {
    v9 = DNSServiceRefSockFD(v8);
    if (__darwin_check_fd_set_overflow(v9, a2, 0))
    {
      if ((*&a2[(v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v9))
      {
        std::vector<_DNSServiceRef_t *>::push_back[abi:ne200100](a1 + 65, a1 + 53);
      }
    }
  }

  v10 = a1[59];
  v11 = a1[60];
  while (v10 != v11)
  {
    v12 = *v10++;
    otbr::Mdns::PublisherMDnsSd::ServiceSubscription::ProcessAll(v12, a2, a1 + 65);
  }

  v13 = a1[62];
  v14 = a1[63];
  while (v13 != v14)
  {
    v15 = *v13++;
    otbr::Mdns::PublisherMDnsSd::ServiceRef::Process(v15, a2, a1 + 65);
  }

  v16 = a1[65];
  v17 = a1[66];
  if (v16 != v17)
  {
    while (1)
    {
      if (*v16)
      {
        v18 = DNSServiceProcessResult(*v16);
        if (v18)
        {
          v26 = v18;
          v27 = v18 == -65541 ? 6 : 4;
          v28 = otbr::Mdns::DNSErrorToString(v18, v19, v20, v21, v22, v23, v24, v25);
          otbrLog(v27, "MDNS", "DNSServiceProcessResult failed: %s (serviceRef = %p)", v29, v30, v31, v32, v33, v28);
          v39 = v26 == -65541 || v26 == -65563;
          if (v39)
          {
            break;
          }
        }
      }

      if (++v16 == v17)
      {
        return;
      }
    }

    otbrLog(4u, "MDNS", "Need to reconnect to mdnsd", v34, v35, v36, v37, v38, v47);
    otbr::Mdns::PublisherMDnsSd::Stop(a1, 1, v40, v41, v42, v43, v44, v45);
    v46 = *(*a1 + 88);

    v46(a1);
  }
}

uint64_t *otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Process(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = (a1 + 176);
  result = *(a1 + 176);
  if (result)
  {
    result = DNSServiceRefSockFD(result);
    if (result != -1)
    {
      v7 = result;
      result = __darwin_check_fd_set_overflow(result, a2, 0);
      if (result)
      {
        if ((*&a2[(v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v7))
        {

          return std::vector<_DNSServiceRef_t *>::push_back[abi:ne200100](a3, v4);
        }
      }
    }
  }

  return result;
}

uint64_t *std::vector<_DNSServiceRef_t *>::push_back[abi:ne200100](uint64_t *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 < v4)
  {
    *v5 = *a2;
    v6 = v5 + 1;
LABEL_14:
    v3[1] = v6;
    return result;
  }

  v7 = (v5 - *result) >> 3;
  v8 = v7 + 1;
  if (v7 == -1)
  {
    __break(0x5500u);
LABEL_16:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v8 >> 61)
  {
    goto LABEL_16;
  }

  v9 = v4 - *result;
  v10 = v9 >> 2;
  if (v9 >> 2 <= v8)
  {
    v10 = v7 + 1;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v17[4] = result;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_DNSServiceRef_t *>>(result, v11);
  }

  result = 0;
  v12 = 8 * v7;
  *(8 * v7) = *a2;
  v13 = v3[1] - *v3;
  if (v13 >= 0)
  {
    v6 = (v12 + 8);
    v14 = v12 - v13;
    memcpy((v12 - v13), *v3, v13);
    v15 = *v3;
    *v3 = v14;
    v3[1] = v6;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<_DNSServiceRef_t *>::~__split_buffer(v17);
    goto LABEL_14;
  }

  __break(0x550Cu);
  return result;
}

uint64_t *otbr::Mdns::PublisherMDnsSd::ServiceSubscription::ProcessAll(uint64_t a1, char *a2, uint64_t *a3)
{
  result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Process(a1, a2, a3);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Process(v9, a2, a3);
  }

  v11 = *(a1 + 88);
  v10 = *(a1 + 96);
  while (v11 != v10)
  {
    v12 = *v11++;
    result = otbr::Mdns::PublisherMDnsSd::ServiceRef::Process(v12, a2, a3);
  }

  return result;
}

uint64_t *otbr::Mdns::PublisherMDnsSd::ServiceRef::Process(uint64_t **a1, char *a2, uint64_t *a3)
{
  result = *a1;
  if (result)
  {
    v7 = DNSServiceRefSockFD(result);
    if (v7 == -1)
    {
      otbr::Mdns::PublisherMDnsSd::ServiceRef::Process();
    }

    v8 = v7;
    result = __darwin_check_fd_set_overflow(v7, a2, 0);
    if (result && ((*&a2[(v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v8) & 1) != 0)
    {

      return std::vector<_DNSServiceRef_t *>::push_back[abi:ne200100](a3, a1);
    }
  }

  return result;
}

const char *otbr::Mdns::DNSErrorToString(otbr::Mdns *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(this)
  {
    case 0xFFFEFFE0:
      return "Timeout";
    case 0xFFFEFFE1:
      return "Polling Mode";
    case 0xFFFEFFE2:
      return "No Router";
    case 0xFFFEFFE3:
      return "NAT Port Mapping Disabled";
    case 0xFFFEFFE4:
      return "NAT Port Mapping Unsupported";
    case 0xFFFEFFE5:
      return "Service Not Running";
    case 0xFFFEFFE6:
      return "Transient";
    case 0xFFFEFFE7:
      return "Bad Key";
    case 0xFFFEFFE8:
      return "Bad Sig";
    case 0xFFFEFFE9:
      return "Bad Time";
    case 0xFFFEFFEA:
      return "Double NAT";
    case 0xFFFEFFEB:
      return "NAT Traversal";
    case 0xFFFEFFEC:
      return "No Such Key";
    case 0xFFFEFFED:
      return "No Auth";
    case 0xFFFEFFEE:
      return "No Such Record";
    case 0xFFFEFFEF:
      return "Refused";
    case 0xFFFEFFF0:
      return "Bad Interface Index";
    case 0xFFFEFFF1:
      return "Incompatible";
    case 0xFFFEFFF2:
      return "Firewall";
    case 0xFFFEFFF3:
      return "Invalid";
    case 0xFFFEFFF4:
      return "Name Conflict";
    case 0xFFFEFFF5:
      return "Already Registered";
    case 0xFFFEFFF6:
      goto LABEL_35;
    case 0xFFFEFFF7:
      return "Not Initialized";
    case 0xFFFEFFF8:
      return "Unsupported";
    case 0xFFFEFFF9:
      return "Bad Flags";
    case 0xFFFEFFFA:
      return "Bad State";
    case 0xFFFEFFFB:
      return "Bad Reference";
    case 0xFFFEFFFC:
      return "Bad Param";
    case 0xFFFEFFFD:
      return "No Memory";
    case 0xFFFEFFFE:
      return "No Such Name";
    case 0xFFFEFFFF:
      return "Unknown";
    default:
      if (this)
      {
LABEL_35:
        otbr::Mdns::DNSErrorToString(this, a2, a3, a4, a5, a6, a7, a8);
      }

      return "OK";
  }
}

std::string *otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Register(otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration *this)
{
  v40 = 0uLL;
  v41 = 0;
  memset(v38, 0, sizeof(v38));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v38, *(this + 15), *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3));
  otbr::Mdns::PublisherMDnsSd::MakeRegType(this + 96, v38, &v39);
  __p[0] = v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::string::basic_string[abi:ne200100]<0>(__p, "_trel._udp");
  if ((*(this + 71) & 0x8000000000000000) != 0)
  {
    if (*(this + 7))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 71))
  {
LABEL_3:
    otbr::Mdns::Publisher::MakeFullName(this + 6, &v34);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    v40 = v34;
    v41 = v35;
    if (v35 >= 0)
    {
      v2 = &v40;
    }

    else
    {
      v2 = v40;
    }

    goto LABEL_10;
  }

  v2 = 0;
LABEL_10:
  v3 = (this + 72);
  if (*(this + 95) < 0)
  {
    if (*(this + 10))
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else if (*(this + 95))
  {
    v4 = this + 72;
  }

  else
  {
    v4 = 0;
  }

  result = *(this + 5);
  if (!result)
  {
    goto LABEL_61;
  }

  KeyRegistration = otbr::Mdns::Publisher::FindKeyRegistration(result, this + 9, this + 96);
  v14 = KeyRegistration;
  if (KeyRegistration)
  {
    otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Unregister(KeyRegistration, v7, v8, v9, v10, v11, v12, v13);
  }

  if (*(this + 95) < 0)
  {
    v3 = *v3;
  }

  otbrLog(6u, "MDNS", "Registering service %s.%s", v9, v10, v11, v12, v13, v3);
  size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v39;
  }

  else
  {
    v16 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  if ((v37 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v18 = v37;
  }

  else
  {
    v18 = __p[1];
  }

  if (v18)
  {
    if (size < v18)
    {
      goto LABEL_35;
    }

    v28 = v16 + size;
    v29 = *v17;
    result = v16;
    while (1)
    {
      v30 = __OFSUB__(size, v18);
      v31 = size - v18;
      if (v30)
      {
        goto LABEL_60;
      }

      if (__OFADD__(v31, 1))
      {
        __break(0x5500u);
LABEL_60:
        __break(0x5515u);
        goto LABEL_61;
      }

      if (v31 == -1)
      {
        goto LABEL_35;
      }

      v32 = memchr(result, v29, v31 + 1);
      if (!v32)
      {
        goto LABEL_35;
      }

      v33 = v32;
      if (!memcmp(v32, v17, v18))
      {
        break;
      }

      result = (v33 + 1);
      size = v28 - (v33 + 1);
      if (size < v18)
      {
        goto LABEL_35;
      }
    }

    if (v33 == v28 || v33 - v16 == -1)
    {
LABEL_35:
      v4 = 0;
    }
  }

  v26 = DNSServiceRegister(this + 22, 8u, 0, v4, v16, 0, v2, bswap32(*(this + 72)) >> 16, *(this + 80) - *(this + 19), *(this + 19), otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::HandleRegisterResult, this);
  if (v26)
  {
    otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::HandleRegisterResult(this, 0, v26, v21, v22, v23, v24, v25);
  }

  if (v14)
  {
    otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Register(v14, v19, v20, v21, v22, v23, v24, v25);
  }

  result = *(this + 5);
  if (result)
  {
    v27 = (*(result[-1].__r_.__value_.__r.__words[2] + 152))();
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    return v27;
  }

  else
  {
LABEL_61:
    __break(0x5516u);
  }

  return result;
}

void sub_1003CD90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 89) < 0)
  {
    operator delete(*(v30 - 112));
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::PublisherMDnsSd::MakeRegType(uint64_t a1@<X0>, const void ***a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v5 = a2[1];
  v6 = (2 * __clz(0xAAAAAAAAAAAAAAABLL * (v5 - *a2))) ^ 0x7E;
  if (v5 == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(*a2, v5, __p, v7, 1);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      std::operator+<char>();
      if ((v13 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v11 = v13;
      }

      else
      {
        v11 = __p[1];
      }

      std::string::append(a3, v10, v11);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v8 += 3;
    }

    while (v8 != v9);
  }
}

void sub_1003CDA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Unregister(otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 12))
  {
    v9 = *(this + 13);
    if (v9)
    {
      v10 = *(v9 + 176);
      *(v9 + 184) = 0;
      *(this + 13) = 0;
      v11 = (this + 48);
      if (*(this + 71) < 0)
      {
        v11 = *v11;
      }

      otbrLog(6u, "MDNS", "Unregistering key %s (was registered as a record of a service)", a4, a5, a6, a7, a8, v11);
    }

    else
    {
      v12 = *(this + 5);
      if (!v12)
      {
        __break(0x5516u);
        return;
      }

      v10 = *(v12 + 416);
      v13 = (this + 48);
      if (*(this + 71) < 0)
      {
        v13 = *v13;
      }

      otbrLog(6u, "MDNS", "Unregistering key %s (was registered individually)", a4, a5, a6, a7, a8, v13);
    }

    if (v10)
    {
      v14 = DNSServiceRemoveRecord(v10, *(this + 12), 0);
      v22 = (this + 48);
      if (*(this + 71) < 0)
      {
        v22 = *v22;
      }

      otbr::Mdns::DNSErrorToString(v14, v15, v16, v17, v18, v19, v20, v21);
      otbrLog(6u, "MDNS", "Unregistered key %s: error:%s", v23, v24, v25, v26, v27, v22);
    }
  }
}

void otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::HandleRegisterResult(otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration *this, uint64_t a2, otbr::Mdns *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(this + 23);
  if (v11)
  {
    otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::HandleRegisterResult(v11, a3, a3, a4, a5, a6, a7, a8);
  }

  v12 = (this + 72);
  v13 = *(this + 95);
  if (a3 || (v9 & 2) == 0)
  {
    LOBYTE(v15) = this + 72;
    if (v13 < 0)
    {
      v15 = *v12;
    }

    v16 = (this + 96);
    if (*(this + 119) < 0)
    {
      v17 = *v16;
    }

    otbr::Mdns::DNSErrorToString(a3, a2, a3, a4, a5, a6, a7, a8);
    otbrLog(3u, "MDNS", "Failed to register service %s.%s: %s", v18, v19, v20, v21, v22, v15);
    v23 = *(this + 5);
    if (v23)
    {
      v24 = otbr::Mdns::DNSErrorToOtbrError(a3);

      otbr::Mdns::Publisher::RemoveServiceRegistration(v23, v12, v16, v24);
    }

    else
    {
      __break(0x5516u);
    }
  }

  else
  {
    if (v13 < 0)
    {
      v12 = *v12;
    }

    if (*(this + 119) < 0)
    {
      v14 = *(this + 12);
    }

    otbrLog(6u, "MDNS", "Successfully registered service %s.%s", a4, a5, a6, a7, a8, v12);

    otbr::Mdns::Publisher::ServiceRegistration::Complete(this, 0);
  }
}

void otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Register(otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (this + 48);
  LOBYTE(v10) = this + 48;
  if (*(this + 71) < 0)
  {
    v10 = *v9;
  }

  otbrLog(6u, "MDNS", "Registering new key %s", a4, a5, a6, a7, a8, v10);
  v11 = *(this + 5);
  if (!v11)
  {
    goto LABEL_29;
  }

  ServiceRegistration = otbr::Mdns::Publisher::FindServiceRegistration(v11, v9);
  if (!ServiceRegistration || (v18 = ServiceRegistration, !*(ServiceRegistration + 176)))
  {
    LOBYTE(v28) = v9;
    if (*(this + 71) < 0)
    {
      v28 = *v9;
    }

    otbrLog(6u, "MDNS", "Key %s is being registered individually", v13, v14, v15, v16, v17, v28);
    v29 = *(this + 5);
    if (!v29)
    {
      goto LABEL_29;
    }

    SharedHostsRef = otbr::Mdns::PublisherMDnsSd::CreateSharedHostsRef((v29 - 8));
    if (!SharedHostsRef)
    {
      v32 = *(this + 5);
      if (!v32)
      {
        goto LABEL_29;
      }

      v33 = *(v32 + 416);
      otbr::Mdns::Publisher::MakeFullName(v9, __p);
      if (v37 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      v35 = DNSServiceRegisterRecord(v33, this + 12, 0x20u, 0, v34, 0x19u, 1u, *(this + 40) - *(this + 9), *(this + 9), 0, otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::HandleRegisterResult, this);
      v30 = v35;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (!v30)
        {
          goto LABEL_18;
        }
      }

      else if (!v35)
      {
        goto LABEL_18;
      }

LABEL_17:
      otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::HandleRegisterResult(this, v30, v22, v23, v24, v25, v26, v27);
      goto LABEL_18;
    }

LABEL_16:
    v30 = SharedHostsRef;
    goto LABEL_17;
  }

  if (*(this + 71) < 0)
  {
    v9 = *v9;
  }

  otbrLog(6u, "MDNS", "Key %s is being registered as a record of an existing service registration", v13, v14, v15, v16, v17, v9);
  v19 = *(this + 9);
  v20 = (*(this + 20) - v19);
  SharedHostsRef = DNSServiceAddRecord(*(v18 + 176), this + 12, 0x20u, 0x19u, *(this + 40) - v19, v19, 0);
  if (SharedHostsRef)
  {
    goto LABEL_16;
  }

  *(this + 13) = v18;
  *(v18 + 184) = this;
  if (!*(v18 + 32))
  {
    otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::HandleRegisterResult(this, 0, v22, v23, v24, v25, v26, v27);
  }

LABEL_18:
  v31 = *(this + 5);
  if (v31)
  {
    (*(*(v31 - 8) + 152))();
    return;
  }

LABEL_29:
  __break(0x5516u);
}

void sub_1003CDEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Unregister(otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 22))
  {
    v9 = *(this + 23);
    if (v9)
    {
      otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Unregister(*(this + 23), a2, a3, a4, a5, a6, a7, a8);
    }

    v10 = *(this + 5);
    if (v10)
    {
      v11 = *(v10 + 512);
      v12 = *(v10 + 520);
      while (v11 != v12)
      {
        if (*v11 == *(this + 22))
        {
          *v11 = 0;
        }

        ++v11;
      }

      DNSServiceRefDeallocate(*(this + 22));
      *(this + 22) = 0;
      if (v9)
      {

        otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Register(v9, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    else
    {
      __break(0x5516u);
    }
  }
}

void otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::HandleRegisterResult(otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration *this, otbr::Mdns *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (this + 48);
  v10 = *(this + 71);
  if (a2)
  {
    LOBYTE(v12) = this + 48;
    if (v10 < 0)
    {
      v12 = *v9;
    }

    otbr::Mdns::DNSErrorToString(a2, a2, a3, a4, a5, a6, a7, a8);
    otbrLog(3u, "MDNS", "Failed to register key %s: %s", v13, v14, v15, v16, v17, v12);
    v18 = *(this + 5);
    if (v18)
    {
      v19 = otbr::Mdns::DNSErrorToOtbrError(a2);

      otbr::Mdns::Publisher::RemoveKeyRegistration(v18, v9, v19);
    }

    else
    {
      __break(0x5516u);
    }
  }

  else
  {
    if (v10 < 0)
    {
      v9 = *v9;
    }

    otbrLog(6u, "MDNS", "Successfully registered key %s", a4, a5, a6, a7, a8, v9);

    otbr::Mdns::Publisher::KeyRegistration::Complete(this, 0);
  }
}

uint64_t otbr::Mdns::DNSErrorToOtbrError(uint64_t this)
{
  if (this <= -65549)
  {
    if (this > -65555)
    {
      if (this != -65554)
      {
        if (this == -65552)
        {
          return 4294967286;
        }

        v1 = -13;
LABEL_10:
        if (this != (v1 | 0xFFFE0000))
        {
          return 4294967293;
        }

        return 4294967286;
      }

      return 4294967289;
    }

    if (this == -65563)
    {
      return 4294967283;
    }

    v2 = -65556;
  }

  else
  {
    if (this <= -65541)
    {
      if (this == -65548)
      {
        return 4294967285;
      }

      if (this == -65544)
      {
        return 4294967287;
      }

      v1 = -7;
      goto LABEL_10;
    }

    if (this == -65540)
    {
      return 4294967286;
    }

    if (!this)
    {
      return this;
    }

    v2 = -65538;
  }

  if (this == v2)
  {
    return 4294967289;
  }

  return 4294967293;
}

void otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::Register(otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (this + 48);
  LOBYTE(v10) = this + 48;
  if (*(this + 71) < 0)
  {
    v10 = *v9;
  }

  otbrLog(6u, "MDNS", "Registering new host %s", a4, a5, a6, a7, a8, v10);
  rdata = *(this + 9);
  v17 = *(this + 10);
  if (rdata == v17)
  {
    v24 = 0;
  }

  else
  {
    v18 = (this + 96);
    do
    {
      RecordRef = 0;
      v19 = *(this + 5);
      if (!v19)
      {
        goto LABEL_35;
      }

      SharedHostsRef = otbr::Mdns::PublisherMDnsSd::CreateSharedHostsRef((v19 - 8));
      if (SharedHostsRef)
      {
        v24 = SharedHostsRef;
        goto LABEL_32;
      }

      v21 = *(this + 5);
      if (!v21)
      {
        goto LABEL_35;
      }

      v22 = *(v21 + 416);
      otbr::Mdns::Publisher::MakeFullName(v9, __p);
      if (SHIBYTE(v41) >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      v24 = DNSServiceRegisterRecord(v22, &RecordRef, 0x10u, 0, v23, 0x1Cu, 1u, 0x10u, rdata, 0, otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::HandleRegisterResult, this);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      if (v24)
      {
        goto LABEL_32;
      }

      v26 = *(this + 13);
      v25 = *(this + 14);
      if (v26 >= v25)
      {
        v28 = (v26 - *v18) >> 3;
        v29 = v28 + 1;
        if (v28 == -1)
        {
          __break(0x5500u);
          return;
        }

        if (v29 >> 61)
        {
          goto LABEL_37;
        }

        v30 = v25 - *v18;
        v31 = v30 >> 2;
        if (v30 >> 2 <= v29)
        {
          v31 = v28 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        v43 = this + 96;
        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_DNSServiceRef_t *>>(this + 96, v32);
        }

        v33 = 8 * v28;
        *(8 * v28) = RecordRef;
        v34 = *(this + 13) - *(this + 12);
        if (v34 < 0)
        {
          goto LABEL_36;
        }

        v27 = (v33 + 8);
        v35 = v33 - v34;
        memcpy((v33 - v34), *(this + 12), v34);
        v36 = *(this + 12);
        *(this + 12) = v35;
        *(this + 13) = v27;
        v37 = *(this + 14);
        *(this + 14) = 0;
        v41 = v36;
        v42 = v37;
        __p[0] = v36;
        __p[1] = v36;
        std::__split_buffer<_DNSServiceRef_t *>::~__split_buffer(__p);
      }

      else
      {
        *v26 = RecordRef;
        v27 = v26 + 1;
      }

      *(this + 13) = v27;
      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back(this + 120, __p);
      rdata += 16;
    }

    while (rdata != v17);
    v24 = 0;
    if (*(this + 9) != *(this + 10))
    {
      goto LABEL_33;
    }
  }

LABEL_32:
  otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::HandleRegisterResult(this, 0, v24, v11, v12, v13, v14, v15);
LABEL_33:
  v38 = *(this + 5);
  if (!v38)
  {
LABEL_35:
    __break(0x5516u);
LABEL_36:
    __break(0x550Cu);
LABEL_37:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  (*(*(v38 - 8) + 152))();
}

void sub_1003CE3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2 >> 58)
  {
    __break(0x550Cu);
    goto LABEL_16;
  }

  v4 = result;
  v5 = *(result + 8);
  if (v5 == v2 << 6)
  {
    if (v5 + 1 < 0)
    {
      goto LABEL_17;
    }

    v6 = HIBYTE(v2);
    v7 = v2 << 7;
    v8 = (v5 & 0xFFFFFFFFFFFFFFC0) + 64;
    if (v7 > v8)
    {
      v8 = v7;
    }

    if (v6)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    result = std::vector<BOOL>::reserve(result, v9);
    v5 = v4[1];
  }

  v10 = __CFADD__(v5, 1);
  v11 = v5 + 1;
  if (v10)
  {
LABEL_16:
    __break(0x5500u);
LABEL_17:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v4[1] = v11;
  v12 = v11 - 1;
  v13 = 1 << (v11 - 1);
  v14 = *v4;
  v15 = v12 >> 6;
  if (*a2 == 1)
  {
    v16 = *(v14 + 8 * v15) | v13;
  }

  else
  {
    v16 = *(v14 + 8 * v15) & ~v13;
  }

  *(v14 + 8 * v15) = v16;
  return result;
}

void otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::HandleRegisterResult(otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration *this, _DNSRecordRef_t *a2, otbr::Mdns *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = (this + 48);
    LOBYTE(v11) = this + 48;
    if (*(this + 71) < 0)
    {
      v11 = *v10;
    }

    otbr::Mdns::DNSErrorToString(a3, a2, a3, a4, a5, a6, a7, a8);
    otbrLog(3u, "MDNS", "Failed to register host %s: %s", v12, v13, v14, v15, v16, v11);
    v17 = *(this + 5);
    if (v17)
    {
      v18 = otbr::Mdns::DNSErrorToOtbrError(a3);

      otbr::Mdns::Publisher::RemoveHostRegistration(v17, v10, v18);
    }

    else
    {
      __break(0x5516u);
    }
  }

  else
  {
    v19 = (this + 48);
    v20 = *(this + 4) != 0;
    v21 = *(this + 12);
    if (*(this + 13) != v21)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        if (*(v21 + 8 * v24) == a2)
        {
          v25 = *(this + 15);
          v26 = *(v25 + 8 * (v24 >> 6));
          if ((v26 & (1 << v24)) == 0)
          {
            *(v25 + 8 * (v24 >> 6)) = v26 | (1 << v24);
            LOBYTE(v27) = this + 48;
            if (*(this + 71) < 0)
            {
              v27 = *v19;
            }

            otbr::Ip6Address::ToString((*(this + 9) + v23), &__p);
            otbrLog(6u, "MDNS", "Successfully registered host %s address %s", v28, v29, v30, v31, v32, v27);
            if (v35 < 0)
            {
              operator delete(__p);
            }
          }
        }

        v33 = *(*(this + 15) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
        ++v24;
        v20 &= v33;
        v21 = *(this + 12);
        v23 += 16;
      }

      while (v24 < (*(this + 13) - v21) >> 3);
    }

    if (v20)
    {
      if (*(this + 71) < 0)
      {
        v19 = *v19;
      }

      otbrLog(6u, "MDNS", "Successfully registered all host %s addresses", a4, a5, a6, a7, a8, v19);
      otbr::Mdns::Publisher::HostRegistration::Complete(this, 0);
    }
  }
}

void sub_1003CE6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::Unregister(otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    if (!*(v1 + 416) || (v3 = *(this + 12), *(this + 13) == v3))
    {
LABEL_30:
      *(this + 16) = 0;
      *(this + 13) = *(this + 12);
      return;
    }

    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(this + 9);
      v7 = *(this + 5);
      if ((*(*(this + 15) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
      {
        if (!v7)
        {
          break;
        }

        updated = DNSServiceUpdateRecord(*(v7 + 416), *(v3 + 8 * v5), 0x20u, 0x10u, (v6 + v4), 1u);
        v9 = otbr::Mdns::DNSErrorToOtbrError(updated);
        if (v9)
        {
          v10 = 4;
        }

        else
        {
          v10 = 6;
        }

        otbr::Mdns::Publisher::MakeFullName(this + 6, v42);
        if (v43 >= 0)
        {
          v11 = v42;
        }

        else
        {
          LOBYTE(v11) = v42[0];
        }

        otbr::Ip6Address::ToString((v6 + v4), __p);
        otbr::Mdns::DNSErrorToString(updated, v12, v13, v14, v15, v16, v17, v18);
        otbrErrorString(v9);
        otbrLog(v10, "MDNS", "Send goodbye message for host %s address %s: %s: %s", v19, v20, v21, v22, v23, v11);
        if (v41 < 0)
        {
          operator delete(__p[0]);
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        v7 = *(this + 5);
      }

      if (!v7)
      {
        break;
      }

      v24 = DNSServiceRemoveRecord(*(v7 + 416), *(*(this + 12) + 8 * v5), 0);
      v25 = otbr::Mdns::DNSErrorToOtbrError(v24);
      if (v25)
      {
        v26 = 4;
      }

      else
      {
        v26 = 6;
      }

      otbr::Mdns::Publisher::MakeFullName(this + 6, v42);
      if (v43 >= 0)
      {
        v27 = v42;
      }

      else
      {
        LOBYTE(v27) = v42[0];
      }

      otbr::Ip6Address::ToString((v6 + v4), __p);
      otbr::Mdns::DNSErrorToString(v24, v28, v29, v30, v31, v32, v33, v34);
      otbrErrorString(v25);
      otbrLog(v26, "MDNS", "Remove record for host %s address %s: %s: %s", v35, v36, v37, v38, v39, v27);
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      ++v5;
      v3 = *(this + 12);
      v4 += 16;
      if (v5 >= (*(this + 13) - v3) >> 3)
      {
        goto LABEL_30;
      }
    }
  }

  __break(0x5516u);
}

void sub_1003CE94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t otbr::Mdns::PublisherMDnsSd::PublishServiceImpl(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8)
{
  memset(v25, 0, sizeof(v25));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v25, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  otbr::Mdns::Publisher::SortSubTypeList(v25, &v26);
  v28[0] = v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v28);
  memset(v23, 0, sizeof(v23));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v23, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
  otbr::Mdns::PublisherMDnsSd::MakeRegType(a4, v23, &v24);
  v28[0] = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v28);
  if (*(a1 + 432) == 1)
  {
    otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(a1 + 8, a2, a3, a4, &v26, a6, a7, a8, v28);
    otbr::OnceCallback<void ()(otbrError)>::operator=(a8, v28);
    std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](v28);
    if (*(a8 + 24))
    {
      if (*(a3 + 23) >= 0)
      {
        LOBYTE(v20) = a3;
      }

      else
      {
        v20 = *a3;
      }

      otbrLog(6u, "MDNS", "PublisherMDnsSd::PublishService: MDNS register current service name:%s port:%d type:%s", v15, v16, v17, v18, v19, v20);
      operator new();
    }

    v21 = 0;
  }

  else
  {
    v21 = 4294967283;
    otbr::OnceCallback<void ()(otbrError)>::operator()(a8);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v28[0] = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v28);
  return v21;
}

void sub_1003CED3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  operator delete();
}

uint64_t otbr::OnceCallback<void ()(otbrError)>::operator()(uint64_t a1)
{
  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](v3, a1);
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a1);
  std::__function::__value_func<void ()(otbrError)>::operator()[abi:ne200100](v3);
  return std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](v3);
}

void sub_1003CEED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t otbr::OnceCallback<void ()(otbrError)>::operator=(uint64_t a1, uint64_t a2)
{
  std::function<void ()(otbrError)>::operator=(a1, a2);
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a2);
  return a1;
}

uint64_t otbr::Mdns::PublisherMDnsSd::UnpublishService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a3 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a3 + 8);
  }

  if (v12)
  {
    v14 = *(a2 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 8);
    }

    if (v14)
    {
      v15 = *a2;
      if (v13 < 0)
      {
        v16 = *a3;
      }

      otbrLog(6u, "MDNS", "PublisherMDnsSd::UnpublishService mState:%d aName:%s aType:%s", a4, a5, a6, a7, a8, *(a1 + 432));
    }
  }

  if (*(a1 + 432) == 1)
  {
    otbr::Mdns::Publisher::RemoveServiceRegistration(a1 + 8, a2, a3, -12);
  }

  return otbr::OnceCallback<void ()(otbrError)>::operator()(a4);
}

uint64_t otbr::Mdns::PublisherMDnsSd::PublishHostImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 432) == 1)
  {
    otbr::Mdns::Publisher::HandleDuplicateHostRegistration(a1 + 8, a2, a3, a4, v7);
    otbr::OnceCallback<void ()(otbrError)>::operator=(a4, v7);
    std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](v7);
    if (*(a4 + 24))
    {
      operator new();
    }

    return 0;
  }

  else
  {
    v5 = 4294967283;
    otbr::OnceCallback<void ()(otbrError)>::operator()(a4);
  }

  return v5;
}

uint64_t otbr::Mdns::PublisherMDnsSd::UnpublishHost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 432) == 1)
  {
    otbr::Mdns::Publisher::RemoveHostRegistration(a1 + 8, a2, -12);
  }

  return otbr::OnceCallback<void ()(otbrError)>::operator()(a3);
}

uint64_t otbr::Mdns::PublisherMDnsSd::PublishKeyImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 432) == 1)
  {
    otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(a1 + 8, a2, a3, a4, v7);
    otbr::OnceCallback<void ()(otbrError)>::operator=(a4, v7);
    std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](v7);
    if (*(a4 + 24))
    {
      operator new();
    }

    return 0;
  }

  else
  {
    v5 = 4294967283;
    otbr::OnceCallback<void ()(otbrError)>::operator()(a4);
  }

  return v5;
}

uint64_t otbr::Mdns::PublisherMDnsSd::UnpublishKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 432) == 1)
  {
    otbr::Mdns::Publisher::RemoveKeyRegistration(a1 + 8, a2, -12);
  }

  return otbr::OnceCallback<void ()(otbrError)>::operator()(a3);
}

uint64_t otbr::Mdns::PublisherMDnsSd::SubscribeService(uint64_t result)
{
  if (*(result + 432) == 1)
  {
    MakeUnique<otbr::Mdns::PublisherMDnsSd::ServiceSubscription,otbr::Mdns::PublisherMDnsSd&,std::string const&,std::string const&>();
  }

  return result;
}

void sub_1003CF750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CF868(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t otbr::Mdns::PublisherMDnsSd::ServiceSubscription::Browse(DNSServiceRef *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this)
  {
    otbr::Mdns::PublisherMDnsSd::ServiceSubscription::Browse();
  }

  v9 = (this + 2);
  LOBYTE(v10) = this + 16;
  if (*(this + 39) < 0)
  {
    v10 = *v9;
  }

  otbrLog(6u, "MDNS", "DNSServiceBrowse %s", a4, a5, a6, a7, a8, v10);
  if (*(this + 39) < 0)
  {
    v9 = *v9;
  }

  return DNSServiceBrowse(this, 0, 0, v9, 0, otbr::Mdns::PublisherMDnsSd::ServiceSubscription::HandleBrowseResult, this);
}

uint64_t otbr::Mdns::PublisherMDnsSd::ServiceSubscription::Resolve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v4 == v5)
  {
LABEL_31:
    MakeUnique<otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution,otbr::Mdns::PublisherMDnsSd::ServiceSubscription &,std::string const&,std::string const&,std::string const&,unsigned int &>();
  }

  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    v7 = *a3;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(a4 + 23);
  if (v6 < 0)
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = *(a3 + 23);
  }

  if (v8 < 0)
  {
    v10 = *a4;
  }

  else
  {
    v10 = a4;
  }

  if (v8 < 0)
  {
    v11 = *(a4 + 8);
  }

  else
  {
    v11 = *(a4 + 23);
  }

  while (1)
  {
    v12 = *v4;
    v13 = *(*v4 + 47);
    v14 = v13 < 0 ? *(v12 + 32) : *(*v4 + 47);
    if (v14 == v9)
    {
      v15 = v13 >= 0 ? (v12 + 24) : *(v12 + 24);
      if (!memcmp(v15, v7, v14))
      {
        v16 = *(v12 + 71);
        v17 = v16 < 0 ? *(v12 + 56) : *(v12 + 71);
        if (v17 == v11)
        {
          v18 = v16 >= 0 ? (v12 + 48) : *(v12 + 48);
          result = memcmp(v18, v10, v17);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    if (++v4 == v5)
    {
      goto LABEL_31;
    }
  }
}

void sub_1003CFC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void otbr::Mdns::PublisherMDnsSd::UnsubscribeService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 432) == 1)
  {
    v12 = *(a1 + 472);
    v11 = *(a1 + 480);
    if (v12 != v11)
    {
      v13 = *(a2 + 23);
      if (v13 < 0)
      {
        v14 = *a2;
      }

      else
      {
        v14 = a2;
      }

      v15 = *(a3 + 23);
      if (v13 < 0)
      {
        v16 = *(a2 + 8);
      }

      else
      {
        v16 = *(a2 + 23);
      }

      if (v15 < 0)
      {
        v17 = *a3;
      }

      else
      {
        v17 = a3;
      }

      if (v15 < 0)
      {
        v18 = *(a3 + 8);
      }

      else
      {
        v18 = *(a3 + 23);
      }

      while (1)
      {
        v19 = *v12;
        v20 = *(*v12 + 39);
        v21 = v20 < 0 ? *(v19 + 24) : *(*v12 + 39);
        if (v21 == v16)
        {
          v22 = v20 >= 0 ? (v19 + 16) : *(v19 + 16);
          if (!memcmp(v22, v14, v21))
          {
            v23 = *(v19 + 63);
            v24 = v23 < 0 ? *(v19 + 48) : *(v19 + 63);
            if (v24 == v18)
            {
              v25 = v23 >= 0 ? (v19 + 40) : *(v19 + 40);
              if (!memcmp(v25, v17, v24))
              {
                break;
              }
            }
          }
        }

        if (++v12 == v11)
        {
          v12 = v11;
          break;
        }
      }
    }

    if (v11 != v12)
    {
      v26 = v12 + 1;
      if (v12 + 1 != v11)
      {
        do
        {
          v27 = v26 - 1;
          v28 = *v26;
          *v26++ = 0;
          std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>::reset[abi:ne200100](v27, v28);
        }

        while (v26 != v11);
        v11 = *(a1 + 480);
        v12 = v26 - 1;
      }

      while (v11 != v12)
      {
        std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>::reset[abi:ne200100](--v11, 0);
      }

      *(a1 + 480) = v12;
      if (*(a3 + 23) >= 0)
      {
        LOBYTE(v29) = a3;
      }

      else
      {
        v29 = *a3;
      }

      if (*(a2 + 23) < 0)
      {
        v30 = *a2;
      }

      v31 = (v12 - *(a1 + 472)) >> 3;
      otbrLog(6u, "MDNS", "Unsubscribe service %s.%s (left %zu)", a4, a5, a6, a7, a8, v29);
    }
  }
}

void otbr::Mdns::PublisherMDnsSd::OnServiceResolveFailedImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 23) >= 0)
  {
    LOBYTE(v8) = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  otbrLog(4u, "MDNS", "Resolve service %s.%s failed: code=%d", a4, a5, a6, a7, a8, v8);
}

void otbr::Mdns::PublisherMDnsSd::OnHostResolveFailedImpl(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 23) >= 0)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    v8 = *a2;
  }

  otbrLog(4u, "MDNS", "Resolve host %s failed: code=%d", a4, a5, a6, a7, a8, v8);
}

void non-virtual thunk tootbr::Mdns::PublisherMDnsSd::OnHostResolveFailedImpl(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 23) >= 0)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    v8 = *a2;
  }

  otbrLog(4u, "MDNS", "Resolve host %s failed: code=%d", a4, a5, a6, a7, a8, v8);
}

uint64_t otbr::Mdns::PublisherMDnsSd::SubscribeHost(uint64_t result)
{
  if (*(result + 432) == 1)
  {
    MakeUnique<otbr::Mdns::PublisherMDnsSd::HostSubscription,otbr::Mdns::PublisherMDnsSd&,std::string const&>();
  }

  return result;
}

void sub_1003D00C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void otbr::Mdns::PublisherMDnsSd::HostSubscription::Resolve(otbr::Mdns::PublisherMDnsSd::HostSubscription *this)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 2), *(this + 3));
  }

  else
  {
    v10 = *(this + 16);
  }

  if (*this)
  {
    __assert_rtn("Resolve", "mdns_mdnssd.cpp", 1504, "mServiceRef == nullptr");
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *std::map<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::operator[](*(this + 1) + 216, this + 2) = rep;
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v10;
  }

  else
  {
    LOBYTE(v8) = v10.__r_.__value_.__s.__data_[0];
  }

  otbrLog(6u, "MDNS", "DNSServiceGetAddrInfo %s inf %d", v3, v4, v5, v6, v7, v8);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v10;
  }

  else
  {
    v9 = v10.__r_.__value_.__r.__words[0];
  }

  DNSServiceGetAddrInfo(this, 0, 0, 3u, v9, otbr::Mdns::PublisherMDnsSd::HostSubscription::HandleResolveResult, this);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1003D02B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::PublisherMDnsSd::UnsubscribeHost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 432) == 1)
  {
    v11 = *(a1 + 496);
    v10 = *(a1 + 504);
    if (v11 != v10)
    {
      v12 = *(a2 + 23);
      if (v12 < 0)
      {
        v13 = *a2;
      }

      else
      {
        v13 = a2;
      }

      if (v12 < 0)
      {
        v14 = *(a2 + 8);
      }

      else
      {
        v14 = *(a2 + 23);
      }

      while (1)
      {
        v15 = *v11;
        v16 = *(*v11 + 39);
        v17 = v16 < 0 ? *(v15 + 24) : *(*v11 + 39);
        if (v17 == v14)
        {
          v20 = *(v15 + 16);
          v18 = v15 + 16;
          v19 = v20;
          v21 = (v16 >= 0 ? v18 : v19);
          if (!memcmp(v21, v13, v17))
          {
            break;
          }
        }

        if (++v11 == v10)
        {
          v11 = v10;
          break;
        }
      }
    }

    if (v10 != v11)
    {
      v22 = v11 + 1;
      if (v11 + 1 != v10)
      {
        do
        {
          v23 = v22 - 1;
          v24 = *v22;
          *v22++ = 0;
          std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100](v23, v24);
        }

        while (v22 != v10);
        v10 = *(a1 + 504);
        v11 = v22 - 1;
      }

      while (v10 != v11)
      {
        std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100](--v10, 0);
      }

      *(a1 + 504) = v11;
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v25) = a2;
      }

      else
      {
        v25 = *a2;
      }

      v26 = (v11 - *(a1 + 496)) >> 3;
      otbrLog(6u, "MDNS", "Unsubscribe host %s (remaining %d)", a4, a5, a6, a7, a8, v25);
    }
  }
}

void sub_1003D04C8(uint64_t a1, ...)
{
  va_start(va, a1);
  std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::~__value_func[abi:ne200100](va);
  operator delete();
}

uint64_t otbr::Mdns::Publisher::Destroy(uint64_t result)
{
  if (result)
  {
    return (*(*(result - 8) + 8))();
  }

  return result;
}

void otbr::Mdns::PublisherMDnsSd::ServiceRef::DeallocateServiceRef(_DNSServiceRef_t **this)
{
  v2 = *this;
  if (v2)
  {
    v3 = this[1];
    v4 = *(v3 + 65);
    v5 = *(v3 + 66);
    if (v4 != v5)
    {
      do
      {
        if (*v4 == *this)
        {
          *v4 = 0;
        }

        ++v4;
      }

      while (v4 != v5);
      v2 = *this;
    }

    DNSServiceRefDeallocate(v2);
    *this = 0;
  }
}

void otbr::Mdns::PublisherMDnsSd::ServiceSubscription::HandleBrowseResult(otbr::Mdns::PublisherMDnsSd::ServiceSubscription *this, _DNSServiceRef_t *a2, char a3, uint64_t a4, uint64_t a5, char *a6, char *a7, char *a8)
{
  v15 = "add";
  if ((a3 & 2) == 0)
  {
    v15 = "remove";
  }

  otbrLog(6u, "MDNS", "DNSServiceBrowse reply: %s %s.%s inf %u, flags=%u, error=%d", a4, a5, a6, a7, a8, v15);
  if (a5)
  {
    v21 = *(this + 1);
    if (*(this + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(this + 2), *(this + 3));
    }

    else
    {
      v24 = *(this + 16);
    }

    if (*(this + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(this + 5), *(this + 6));
    }

    else
    {
      v23 = *(this + 40);
    }

    otbr::Mdns::Publisher::OnServiceResolveFailed((v21 + 8), &v24, &v23, a5);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    otbr::Mdns::PublisherMDnsSd::ServiceRef::DeallocateServiceRef(this);
  }

  else
  {
    if ((a3 & 2) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v29, a6);
      std::string::basic_string[abi:ne200100]<0>(v27, a7);
      std::string::basic_string[abi:ne200100]<0>(&__p, a8);
      otbr::Mdns::PublisherMDnsSd::ServiceSubscription::Resolve(this, a4, v29, v27);
      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    else if (a3)
    {
      otbrLog(6u, "MDNS", "DNSServiceBrowse reply: with kDNSServiceFlagsMoreComing flag set", v16, v17, v18, v19, v20, v22);
    }

    otbrLog(4u, "MDNS", "DNSServiceBrowse reply: ignore RMV event", v16, v17, v18, v19, v20, v22);
  }
}

void sub_1003D077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D0930(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  operator delete();
}

otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution **std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution>::~unique_ptr[abi:ne200100](otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::~ServiceInstanceResolution(v2);
    operator delete();
  }

  return a1;
}

uint64_t otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::Resolve(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this)
{
  if (*this)
  {
    otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::Resolve();
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(*(this + 2) + 8);
  v4 = this + 24;
  v5 = this + 48;
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v16, (this + 24), this + 3);
  *std::map<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::operator[](v3 + 192, &v16.__r_.__value_.__l.__data_) = rep;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  LOBYTE(v11) = this + 24;
  if (*(this + 47) < 0)
  {
    v11 = *v4;
  }

  if (*(this + 71) < 0)
  {
    v12 = *v5;
  }

  v15 = *(this + 24);
  otbrLog(6u, "MDNS", "DNSServiceResolve %s %s inf %u", v6, v7, v8, v9, v10, v11);
  if (*(this + 47) < 0)
  {
    v4 = *v4;
  }

  if (*(this + 71) < 0)
  {
    v5 = *v5;
  }

  v13 = this + 72;
  if (*(this + 95) < 0)
  {
    v13 = *v13;
  }

  return DNSServiceResolve(this, 0x10000u, *(this + 24), v4, v5, v13, otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleResolveResult, this);
}

void sub_1003D0AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::string const,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1003D0C64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  operator delete();
}

void otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleQueryrecordResult(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this, _DNSServiceRef_t *a2, unsigned int a3, uint64_t a4, char *a5, const char *a6, unsigned __int16 a7, size_t __n, size_t __na, void *__src, otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *a11, void *a12)
{
  __srca = __na;
  LOWORD(__na) = __n;
  otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleQueryrecordResult(a11, a2, a2, a4, a4, a5, a6, 0, __na, __srca, a11);
}

void otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleQueryrecordResult(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this, _DNSServiceRef_t *a2, char a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, size_t __n, void *__src, unsigned int a11)
{
  if (!a5)
  {
    if ((a3 & 2) == 0)
    {
      otbrLog(4u, "MDNS", "%s: Ignoring the RMV interface for %s", a4, a5, a6, a7, a8, "HandleQueryrecordResult");
      return;
    }

    if (a7 == 33 && __n - 1 <= 0xFD)
    {
      memcpy(__dst, __src, __n);
      *(this + 92) = __rev16(v36);
      otbrLog(6u, "MDNS", "%s: Got an ADD interface for %s at port=%u", v12, v13, v14, v15, v16, "HandleQueryrecordResult");
    }

    v17 = *(this + 2);
    if (v17)
    {
      v18 = *(v17 + 8);
      if (*(v17 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(v17 + 16), *(v17 + 24));
      }

      else
      {
        v34 = *(v17 + 16);
      }

      otbr::Mdns::Publisher::DiscoveredInstanceInfo::DiscoveredInstanceInfo(v24, (this + 104));
      otbr::Mdns::Publisher::OnServiceResolved(v18 + 8, &v34, v24, v19, v20, v21, v22, v23);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      if (v29)
      {
        v30 = v29;
        if (v31 - v29 < 0)
        {
          __break(0x550Cu);
          return;
        }

        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }
  }
}

void otbr::Mdns::Publisher::DiscoveredInstanceInfo::~DiscoveredInstanceInfo(otbr::Mdns::Publisher::DiscoveredInstanceInfo *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    if ((*(this + 9) - v3) < 0)
    {
      __break(0x550Cu);
      return;
    }

    operator delete(v3);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleResolveResult(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this, _DNSServiceRef_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, char *a6, const char *a7, uint64_t a8, unsigned __int16 a9, char *__src)
{
  v10 = a8;
  v14 = a4;
  memset(&__str, 0, sizeof(__str));
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  otbrLog(6u, "MDNS", "DNSServiceResolve reply: %s host %s:%d, TXT=%dB inf %u, flags=%u", a4, a5, a6, a7, a8, a6);
  if (!a5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, a6);
    v16 = SplitFullServiceInstanceName(__p, &__str, v37, v35);
    v22 = v16;
    if (v34 < 0)
    {
      operator delete(__p[0]);
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    else if (!v16)
    {
LABEL_6:
      *(this + 27) = v14;
      std::string::operator=((this + 112), &__str);
      std::string::assign((this + 136), a7);
      *(this + 92) = __rev16(v10);
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 24, __src, &__src[a9], a9);
      *(this + 186) = 0;
      otbr::Mdns::PublisherMDnsSd::ServiceRef::DeallocateServiceRef(this);
      if (!otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::GetAddrInfo(this, v14, v23, v24, v25, v26, v27, v28))
      {
        goto LABEL_19;
      }
    }

    otbrLog(4u, "MDNS", "Failed to resolve service instance %s", v17, v18, v19, v20, v21, a6);
  }

  v29 = *(this + 2);
  v30 = *(v29 + 8);
  if (*(v29 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(v29 + 16), *(v29 + 24));
  }

  else
  {
    v32 = *(v29 + 16);
  }

  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *(this + 3), *(this + 4));
  }

  else
  {
    v31 = *(this + 1);
  }

  otbr::Mdns::Publisher::OnServiceResolveFailed((v30 + 8), &v32, &v31, a5);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::FinishResolution(this);
LABEL_19:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1003D118C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::GetAddrInfo(DNSServiceRef *this, uint32_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this)
  {
    otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::GetAddrInfo();
  }

  v10 = (this + 17);
  LOBYTE(v11) = this - 120;
  if (*(this + 159) < 0)
  {
    v11 = *v10;
  }

  otbrLog(6u, "MDNS", "DNSServiceGetAddrInfo %s inf %d", a4, a5, a6, a7, a8, v11);
  if (*(this + 159) < 0)
  {
    v10 = *v10;
  }

  result = DNSServiceGetAddrInfo(this, 0, a2, 3u, v10, otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleGetAddrInfoResult, this);
  if (result)
  {
    v20 = otbr::Mdns::DNSErrorToString(result, v13, v14, v15, v16, v17, v18, v19);
    otbrLog(4u, "MDNS", "DNSServiceGetAddrInfo failed: %s", v21, v22, v23, v24, v25, v20);
    return 4294967293;
  }

  return result;
}

void otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::FinishResolution(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this)
{
  v2 = *(this + 2);
  if (*(v2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(v2 + 16), *(v2 + 24));
  }

  else
  {
    v35 = *(v2 + 16);
  }

  otbr::Mdns::Publisher::DiscoveredInstanceInfo::DiscoveredInstanceInfo(v25, (this + 104));
  otbrLog(6u, "MDNS", "ServiceInstanceResolution orig inf %u and inf %d", v3, v4, v5, v6, v7, *(this + 27));
  v8 = *(v2 + 8);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v35;
  }

  otbr::Mdns::Publisher::DiscoveredInstanceInfo::DiscoveredInstanceInfo(v14, v25);
  otbr::Mdns::Publisher::OnServiceResolved(v8 + 8, &v24, v14, v9, v10, v11, v12, v13);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    if (v21 - v19 < 0)
    {
      goto LABEL_30;
    }

    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (!v30)
  {
    goto LABEL_23;
  }

  v31 = v30;
  if (v32 - v30 < 0)
  {
LABEL_30:
    __break(0x550Cu);
    return;
  }

  operator delete(v30);
LABEL_23:
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_1003D1474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  otbr::Mdns::Publisher::DiscoveredInstanceInfo::~DiscoveredInstanceInfo(&a12);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  otbr::Mdns::Publisher::DiscoveredInstanceInfo::~DiscoveredInstanceInfo(&a33);
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(a1);
}

void otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleGetAddrInfoResult(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this, _DNSServiceRef_t *a2, char a3, uint64_t a4, uint64_t a5, const char *a6, const sockaddr_in6 *a7, uint64_t a8)
{
  v8 = a8;
  v10 = a5;
  memset(v65, 0, sizeof(v65));
  if (a5)
  {
    v13 = 4;
  }

  else
  {
    v13 = 6;
  }

  v64 = 0uLL;
  sin6_family = a7->sin6_family;
  otbrLog(v13, "MDNS", "DNSServiceGetAddrInfo reply: flags=%u, host=%s, sa_family=%u, error=%d", a4, a5, a6, a7, a8, a3);
  if (v10)
  {
    v14 = 1;
    goto LABEL_14;
  }

  if (a7->sin6_family != 30)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  otbr::Ip6Address::CopyFrom(&v64, a7);
  if (*&v64 == 0 || (v64.n128_u16[0] & 0xC0FF) == 0x80FELL || v64.n128_u8[0] == 255 || !v64.n128_u32[0] && !HIDWORD(v64.n128_u64[0]) && v64.n128_u64[1] == 0x100000000000000)
  {
    otbr::Ip6Address::ToString(&v64, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
    }

    otbrLog(7u, "MDNS", "DNSServiceGetAddrInfo ignores address %s", v15, v16, v17, v18, v19, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_13;
  }

  *(this + 21) = *(this + 20);
  v21 = (this + 112);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("._trel._udp.", this + 14, &__p.__r_.__value_.__l.__data_);
  v22 = std::string::append(&__p, "local.");
  v28 = v22->__r_.__value_.__s.__data_[0];
  *v66 = *(&v22->__r_.__value_.__l.__data_ + 1);
  *&v66[14] = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v29 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v65[2]) < 0)
  {
    operator delete(v65[0]);
  }

  LOBYTE(v65[0]) = v28;
  *(v65 + 1) = *v66;
  *(&v65[1] + 7) = *&v66[14];
  HIBYTE(v65[2]) = v29;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v30 = *(this + 2);
  v32 = v30[11];
  v31 = v30[12];
  if (v32 == v31)
  {
    v14 = 0;
  }

  else
  {
    Record = 0;
    do
    {
      v34 = *v32;
      v35 = *(*v32 + 47);
      if (v35 < 0)
      {
        v36 = *(v34 + 32);
      }

      else
      {
        v36 = *(*v32 + 47);
      }

      v37 = *(this + 135);
      if (v37 < 0)
      {
        v38 = *(this + 15);
      }

      else
      {
        v38 = *(this + 135);
      }

      if (v36 == v38)
      {
        v39 = v35 >= 0 ? (v34 + 24) : *(v34 + 24);
        v40 = *v21;
        v41 = v37 >= 0 ? (this + 112) : *v21;
        if (!memcmp(v39, v41, v36) && !*v34)
        {
          if (SHIBYTE(v65[2]) >= 0)
          {
            v42 = v65;
          }

          else
          {
            v42 = v65[0];
          }

          Record = DNSServiceQueryRecord(v34, 0x100u, *(this + 24), v42, 0x21u, 1u, otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::HandleQueryrecordResult, this);
          if (SHIBYTE(v65[2]) >= 0)
          {
            v48 = v65;
          }

          else
          {
            LOBYTE(v48) = v65[0];
          }

          otbrLog(6u, "MDNS", "QueryRecord submitted for instance=%s err=%d", v43, v44, v45, v46, v47, v48);
        }
      }

      ++v32;
    }

    while (v32 != v31);
    v30 = *(this + 2);
    v14 = Record != 0;
  }

  v61 = (v30[9] - v30[8]) >> 3;
  otbrLog(6u, "MDNS", "QueryRecord list size=%zu resolving list size=%zu", v23, v24, v25, v26, v27, (v30[12] - v30[11]) >> 3);
  otbr::Ip6Address::ToString(&v64, &__p);
  v54 = "add";
  if ((a3 & 2) == 0)
  {
    v54 = "remove";
  }

  otbrLog(6u, "MDNS", "DNSServiceGetAddrInfo reply: %s address=%s, ttl=%u", v49, v50, v51, v52, v53, v54);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((a3 & 2) != 0)
  {
    otbr::Mdns::Publisher::AddAddress(this + 20, &v64);
  }

  otbrLog(4u, "MDNS", "Ignore the RMV event for GetAddrInfo", v55, v56, v57, v58, v59, v60);
  *(this + 54) = v8;
LABEL_14:
  if (*(this + 20) != *(this + 21) || v14)
  {
    otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::FinishResolution(this);
  }

  if (SHIBYTE(v65[2]) < 0)
  {
    operator delete(v65[0]);
  }
}

void sub_1003D18E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = strlen(__s);
  if (__CFADD__(v6, result))
  {
    __break(0x5500u);
  }

  else
  {
    v8 = result;
    result = std::string::basic_string[abi:ne200100](a3, v6 + result);
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      result = memmove(a3, v9, v6);
    }

    if (v8)
    {
      result = memmove(a3 + v6, __s, v8);
    }

    *(a3 + v6 + v8) = 0;
  }

  return result;
}

void otbr::Mdns::PublisherMDnsSd::HostSubscription::HandleResolveResult(otbr::Mdns::PublisherMDnsSd::HostSubscription *this, _DNSServiceRef_t *a2, char a3, uint64_t a4, uint64_t a5, char *a6, const sockaddr_in6 *a7, uint64_t a8)
{
  v8 = a8;
  v12 = a4;
  if (a5)
  {
    v15 = 4;
  }

  else
  {
    v15 = 6;
  }

  v48 = 0uLL;
  sin6_family = a7->sin6_family;
  otbrLog(v15, "MDNS", "DNSServiceGetAddrInfo reply: flags=%u, host=%s, sa_family=%u, error=%d", a4, a5, a6, a7, a8, a3);
  if (a5)
  {
    v16 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, a6);
    otbr::Mdns::Publisher::OnHostResolveFailed((v16 + 8), __p, a5);
    if (v39 < 0)
    {
      v17 = __p[0];
LABEL_7:
      operator delete(v17);
    }
  }

  else if (a7->sin6_family == 30)
  {
    otbr::Ip6Address::CopyFrom(&v48, a7);
    if ((v48.n128_u16[0] & 0xC0FF) == 0x80FE)
    {
      otbr::Ip6Address::ToString(&v48, v46);
      if (v47 >= 0)
      {
        v23 = v46;
      }

      else
      {
        LOBYTE(v23) = v46[0];
      }

      otbrLog(7u, "MDNS", "DNSServiceGetAddrInfo ignore link-local address %s", v18, v19, v20, v21, v22, v23);
      if (v47 < 0)
      {
        v17 = v46[0];
        goto LABEL_7;
      }
    }

    else
    {
      otbr::Ip6Address::ToString(&v48, v46);
      v29 = "add";
      if ((a3 & 2) == 0)
      {
        v29 = "remove";
      }

      otbrLog(6u, "MDNS", "DNSServiceGetAddrInfo reply: %s address=%s, ttl=%u", v24, v25, v26, v27, v28, v29);
      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      v30 = (this + 64);
      if ((a3 & 2) != 0)
      {
        otbr::Mdns::Publisher::AddAddress(v30, &v48);
      }

      else
      {
        otbr::Mdns::Publisher::RemoveAddress(v30, &v48);
      }

      std::string::assign((this + 40), a6);
      *(this + 22) = v12;
      *(this + 23) = v8;
      v31 = *(this + 1);
      if (*(this + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v45, *(this + 2), *(this + 3));
      }

      else
      {
        v45 = *(this + 16);
      }

      if (*(this + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, *(this + 5), *(this + 6));
      }

      else
      {
        v40 = *(this + 40);
      }

      v41 = 0;
      v42 = 0;
      v43 = 0;
      std::vector<otbr::Ip6Address>::__init_with_size[abi:ne200100]<otbr::Ip6Address*,otbr::Ip6Address*>(&v41, *(this + 8), *(this + 9), (*(this + 9) - *(this + 8)) >> 4);
      v44 = *(this + 11);
      otbr::Mdns::Publisher::OnHostResolved(v31 + 8, &v45, &v40, v32, v33, v34, v35, v36);
      if (v41)
      {
        v42 = v41;
        if (v43 - v41 < 0)
        {
          __break(0x550Cu);
          return;
        }

        operator delete(v41);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = v45.__r_.__value_.__r.__words[0];
        goto LABEL_7;
      }
    }
  }
}

void sub_1003D1CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string> const,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string> const,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__list_imp<otbr::Mdns::Publisher::DiscoverCallback>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = *v2;
    *(v4 + 8) = *(*a1 + 8);
    **(v3 + 8) = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<otbr::Mdns::Publisher::DiscoverCallback>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<otbr::Mdns::Publisher::DiscoverCallback>::__delete_node[abi:ne200100](uint64_t a1, void *a2)
{
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::~__value_func[abi:ne200100](a2 + 56);
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::~__value_func[abi:ne200100](a2 + 24);

  operator delete(a2);
}

uint64_t std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t otbr::Mdns::Publisher::ServiceRegistration::ServiceRegistration(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = off_1004CE210;
  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](a1 + 8, a8);
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a8);
  *(a1 + 40) = a9;
  *a1 = off_1004CE110;
  v17 = *a2;
  *(a1 + 64) = *(a2 + 2);
  *(a1 + 48) = v17;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v18 = *(a3 + 16);
  *(a1 + 72) = *a3;
  *(a1 + 88) = v18;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v19 = *a4;
  *(a1 + 112) = *(a4 + 2);
  *(a1 + 96) = v19;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  v21 = *a5;
  v22 = *(a5 + 2);
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  otbr::Mdns::Publisher::SortSubTypeList(&v21, a1 + 120);
  v23 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  *(a1 + 144) = a6;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 152) = *a7;
  *(a1 + 168) = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  return a1;
}

void sub_1003D2274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v4 + 119) < 0)
  {
    operator delete(*(v4 + 96));
  }

  otbr::Mdns::Publisher::ServiceRegistration::ServiceRegistration(v4, (v4 + 72), (v4 + 48));
  otbr::Mdns::Publisher::Registration::~Registration(v4);
  _Unwind_Resume(a1);
}

void otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::~DnssdServiceRegistration(otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::~DnssdServiceRegistration(this, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

{
  *this = off_1004CE0C0;
  otbr::Mdns::PublisherMDnsSd::DnssdServiceRegistration::Unregister(this, a2, a3, a4, a5, a6, a7, a8);

  otbr::Mdns::Publisher::ServiceRegistration::~ServiceRegistration(this);
}

void otbr::Mdns::Publisher::ServiceRegistration::~ServiceRegistration(otbr::Mdns::Publisher::ServiceRegistration *this)
{
  otbr::Mdns::Publisher::ServiceRegistration::~ServiceRegistration(this);

  operator delete();
}

{
  *this = off_1004CE110;
  otbr::Mdns::Publisher::ServiceRegistration::OnComplete(this, -12);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  otbr::Mdns::Publisher::Registration::~Registration(this);
}

uint64_t std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *otbr::Mdns::Publisher::HostRegistration::HostRegistration(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11)
{
  *a1 = off_1004CE210;
  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](a1 + 8, a4);
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a4);
  *(a1 + 40) = a5;
  *a1 = off_1004CE180;
  v16 = *a2;
  *(a1 + 64) = *(a2 + 2);
  *(a1 + 48) = v16;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *__p = *a3;
  v19 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  otbr::Mdns::Publisher::SortAddressList(__p, a1 + 72);
  result = __p[0];
  if (!__p[0])
  {
    return a1;
  }

  __p[1] = __p[0];
  if ((v19 - __p[0]) >= 0)
  {
    operator delete(__p[0]);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::~DnssdHostRegistration(otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration *this)
{
  otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::~DnssdHostRegistration(this);

  operator delete();
}

{
  *this = off_1004CE130;
  otbr::Mdns::PublisherMDnsSd::DnssdHostRegistration::Unregister(this);
  v2 = *(this + 15);
  if (v2)
  {
    if (*(this + 17) >> 61)
    {
      goto LABEL_10;
    }

    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    if ((*(this + 14) - v3) >= 0)
    {
      operator delete(v3);
      goto LABEL_7;
    }

LABEL_10:
    __break(0x550Cu);
    return;
  }

LABEL_7:

  otbr::Mdns::Publisher::HostRegistration::~HostRegistration(this);
}

void otbr::Mdns::Publisher::HostRegistration::~HostRegistration(otbr::Mdns::Publisher::HostRegistration *this)
{
  otbr::Mdns::Publisher::HostRegistration::~HostRegistration(this);

  operator delete();
}

{
  *this = off_1004CE180;
  otbr::Mdns::Publisher::HostRegistration::OnComplete(this, -12);
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    if ((*(this + 11) - v2) < 0)
    {
      __break(0x550Cu);
      return;
    }

    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  otbr::Mdns::Publisher::Registration::~Registration(this);
}

uint64_t otbr::Mdns::Publisher::KeyRegistration::KeyRegistration(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_1004CE210;
  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](a1 + 8, a4);
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a4);
  *(a1 + 40) = a5;
  *a1 = off_1004CE1F0;
  v10 = *a2;
  *(a1 + 64) = *(a2 + 2);
  *(a1 + 48) = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = *a3;
  *(a1 + 88) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return a1;
}

void otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::~DnssdKeyRegistration(otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::~DnssdKeyRegistration(this, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

{
  *this = off_1004CE1A0;
  otbr::Mdns::PublisherMDnsSd::DnssdKeyRegistration::Unregister(this, a2, a3, a4, a5, a6, a7, a8);

  otbr::Mdns::Publisher::KeyRegistration::~KeyRegistration(this);
}

void otbr::Mdns::Publisher::KeyRegistration::~KeyRegistration(otbr::Mdns::Publisher::KeyRegistration *this)
{
  otbr::Mdns::Publisher::KeyRegistration::~KeyRegistration(this);

  operator delete();
}

{
  *this = off_1004CE1F0;
  otbr::Mdns::Publisher::KeyRegistration::OnComplete(this, -12);
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  otbr::Mdns::Publisher::Registration::~Registration(this);
}

otbr::Mdns::Publisher::DiscoveredInstanceInfo *otbr::Mdns::Publisher::DiscoveredInstanceInfo::DiscoveredInstanceInfo(otbr::Mdns::Publisher::DiscoveredInstanceInfo *this, const otbr::Mdns::Publisher::DiscoveredInstanceInfo *a2)
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

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<otbr::Ip6Address>::__init_with_size[abi:ne200100]<otbr::Ip6Address*,otbr::Ip6Address*>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  v6 = *(a2 + 20);
  v7 = *(a2 + 42);
  *(this + 11) = 0;
  *(this + 42) = v7;
  *(this + 20) = v6;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 88, *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  *(this + 28) = *(a2 + 28);
  return this;
}

void sub_1003D2AF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1003D2BB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::DiscoveredHostInfo::~DiscoveredHostInfo(otbr::Mdns::Publisher::DiscoveredHostInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    if ((*(this + 5) - v2) < 0)
    {
      __break(0x550Cu);
      return;
    }

    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__value_func<void ()(otbrError)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;
    if (0xAAAAAAAAAAAAAAABLL * (((*a1)[2] - v3) >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v3);
    }
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

void std::vector<otbr::Ip6Address>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    if (v1[2] - v2 < 0)
    {
      __break(0x550Cu);
    }

    else
    {
      operator delete(v2);
    }
  }
}

uint64_t std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>>::__destroy_vector::operator()[abi:ne200100](uint64_t ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

void std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>>::__destroy_vector::operator()[abi:ne200100](uint64_t ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

uint64_t std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_DNSServiceRef_t *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<_DNSServiceRef_t *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1003D30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >> 58)
  {
    __break(0x550Cu);
  }

  else if (a2 > v2 << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      __p = 0;
      v4 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&__p, a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
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

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  if (__CFADD__(v6, a4))
  {
    __break(0x5500u);
  }

  else
  {
    a1[1] = v7;
    if (!v6)
    {
      goto LABEL_5;
    }

    if (v7)
    {
      if (((v7 - 1) ^ (v6 - 1)) < 0x40)
      {
LABEL_9:
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
        return;
      }

LABEL_5:
      if (v7 >= 0x41)
      {
        v8 = (v7 - 1) >> 6;
      }

      else
      {
        v8 = 0;
      }

      *(*a1 + 8 * v8) = 0;
      goto LABEL_9;
    }
  }

  __break(0x5515u);
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
  while (1)
  {
    while (1)
    {
      v4 = *a1;
      v5 = *(a1 + 8);
      if (*a1 == *a2 && v5 == *(a2 + 8))
      {
        *a4 = v4;
        *(a4 + 8) = v5;
        *(a4 + 16) = *a3;
        *(a4 + 24) = *(a3 + 8);
        return;
      }

      v6 = *a3;
      v7 = 1 << *(a3 + 8);
      v8 = ((*v4 >> v5) & 1) != 0 ? *v6 | v7 : *v6 & ~v7;
      *v6 = v8;
      if (v5 == 63)
      {
        *(a1 + 8) = 0;
        *a1 = v4 + 1;
      }

      else
      {
        if (v5 == -1)
        {
          goto LABEL_15;
        }

        *(a1 + 8) = v5 + 1;
      }

      v9 = *(a3 + 8);
      if (v9 != 63)
      {
        break;
      }

      *(a3 + 8) = 0;
      *a3 += 8;
    }

    v10 = __CFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    *(a3 + 8) = v11;
  }

LABEL_15:
  __break(0x5500u);
}

uint64_t std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::vector<otbr::Ip6Address>::__init_with_size[abi:ne200100]<otbr::Ip6Address*,otbr::Ip6Address*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<otbr::Ip6Address>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<otbr::Ip6Address>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Ip6Address>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Ip6Address>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = a1;
  v88 = a1 - 3;
  while (1)
  {
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v77 = a2 - 3;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v77, v10))
        {
          return;
        }

LABEL_80:
        v126 = *(v10 + 16);
        v106 = *v10;
        v81 = *v77;
        *(v10 + 16) = v77[2];
        *v10 = v81;
        v82 = v106;
        v83 = v126;
        goto LABEL_81;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      v77 = a2 - 3;
      v79 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v10 + 24), v10);
      v80 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v77, (v10 + 24));
      if (v79)
      {
        if (v80)
        {
          goto LABEL_80;
        }

        v128 = *(v10 + 16);
        v108 = *v10;
        *v10 = *(v10 + 24);
        *(v10 + 16) = *(v10 + 40);
        *(v10 + 24) = v108;
        *(v10 + 40) = v128;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v77, (v10 + 24)))
        {
          return;
        }

        v82 = *(v10 + 24);
        v83 = *(v10 + 40);
        v87 = v77[2];
        *(v10 + 24) = *v77;
        *(v10 + 40) = v87;
LABEL_81:
        v77[2] = v83;
        *v77 = v82;
        return;
      }

      if (!v80)
      {
        return;
      }

      v84 = *(v10 + 24);
      v85 = *(v10 + 40);
      v86 = v77[2];
      *(v10 + 24) = *v77;
      *(v10 + 40) = v86;
      v77[2] = v85;
      *v77 = v84;
LABEL_92:
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v10 + 24), v10))
      {
        v127 = *(v10 + 16);
        v107 = *v10;
        *v10 = *(v10 + 24);
        *(v10 + 16) = *(v10 + 40);
        *(v10 + 24) = v107;
        *(v10 + 40) = v127;
      }

      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      v69 = a2 - 3;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, (v10 + 24), (v10 + 48), (v10 + 72), a3);
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v69, (v10 + 72)))
      {
        return;
      }

      v70 = *(v10 + 72);
      v71 = *(v10 + 88);
      v72 = v69[2];
      *(v10 + 72) = *v69;
      *(v10 + 88) = v72;
      v69[2] = v71;
      *v69 = v70;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v10 + 72), (v10 + 48)))
      {
        return;
      }

      v73 = *(v10 + 64);
      v74 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v74;
      *(v10 + 88) = v73;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v10 + 48), (v10 + 24)))
      {
        return;
      }

      v75 = *(v10 + 40);
      v76 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v76;
      *(v10 + 64) = v75;
      goto LABEL_92;
    }

LABEL_9:
    if (v11 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      return;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    if (__OFSUB__(a4--, 1))
    {
      __break(0x5515u);
      return;
    }

    v14 = v12 >> 1;
    v15 = a2 - 3;
    v16 = v10 + 24 * (v12 >> 1);
    if (v11 >= 0xC01)
    {
      v17 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v10 + 24 * v14), v10);
      v18 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, (v10 + 24 * v14));
      if (v17)
      {
        if (v18)
        {
          v109 = *(v10 + 16);
          v89 = *v10;
          v19 = *v15;
          *(v10 + 16) = *(a2 - 1);
          *v10 = v19;
        }

        else
        {
          v115 = *(v10 + 16);
          v95 = *v10;
          v27 = *v16;
          *(v10 + 16) = *(v16 + 16);
          *v10 = v27;
          *(v16 + 16) = v115;
          *v16 = v95;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, (v10 + 24 * v14)))
          {
            goto LABEL_29;
          }

          v109 = *(v16 + 16);
          v89 = *v16;
          v28 = *v15;
          *(v16 + 16) = *(a2 - 1);
          *v16 = v28;
        }

        *(a2 - 1) = v109;
        *v15 = v89;
      }

      else if (v18)
      {
        v111 = *(v16 + 16);
        v91 = *v16;
        v23 = *v15;
        *(v16 + 16) = *(a2 - 1);
        *v16 = v23;
        *(a2 - 1) = v111;
        *v15 = v91;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v10 + 24 * v14), v10))
        {
          v112 = *(v10 + 16);
          v92 = *v10;
          v24 = *v16;
          *(v10 + 16) = *(v16 + 16);
          *v10 = v24;
          *(v16 + 16) = v112;
          *v16 = v92;
        }
      }

LABEL_29:
      v29 = a2 - 6;
      v30 = v10 + 24 * v14 - 24;
      v31 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v30, (v10 + 24));
      v32 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 6, v30);
      if (v31)
      {
        if (v32)
        {
          v33 = *(v10 + 24);
          v34 = *(v10 + 40);
          v35 = *(a2 - 4);
          *(v10 + 24) = *v29;
          *(v10 + 40) = v35;
        }

        else
        {
          v42 = *(v10 + 24);
          v43 = *(v10 + 40);
          v44 = *(v10 + 24 * v14 - 8);
          *(v10 + 24) = *v30;
          *(v10 + 40) = v44;
          *(v10 + 24 * v14 - 8) = v43;
          *v30 = v42;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 6, v30))
          {
            goto LABEL_43;
          }

          v118 = *(v10 + 24 * v14 - 8);
          v98 = *v30;
          v45 = *v29;
          *(v10 + 24 * v14 - 8) = *(a2 - 4);
          *v30 = v45;
          v33 = v98;
          v34 = v118;
        }

        *(a2 - 4) = v34;
        *v29 = v33;
      }

      else if (v32)
      {
        v116 = *(v10 + 24 * v14 - 8);
        v96 = *v30;
        v36 = *v29;
        *(v10 + 24 * v14 - 8) = *(a2 - 4);
        *v30 = v36;
        *(a2 - 4) = v116;
        *v29 = v96;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v30, (v10 + 24)))
        {
          v37 = *(v10 + 24);
          v38 = *(v10 + 40);
          v39 = *(v10 + 24 * v14 - 8);
          *(v10 + 24) = *v30;
          *(v10 + 40) = v39;
          *(v10 + 24 * v14 - 8) = v38;
          *v30 = v37;
        }
      }

LABEL_43:
      v46 = a2 - 9;
      v47 = v10 + 24 * v14;
      v48 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v47 + 24), (v10 + 48));
      v49 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 9, (v47 + 24));
      if (v48)
      {
        if (v49)
        {
          v50 = *(v10 + 48);
          v51 = *(v10 + 64);
          v52 = *(a2 - 7);
          *(v10 + 48) = *v46;
          *(v10 + 64) = v52;
          *(a2 - 7) = v51;
          *v46 = v50;
        }

        else
        {
          v57 = *(v10 + 48);
          v58 = *(v10 + 64);
          v59 = *(v47 + 40);
          *(v10 + 48) = *(v47 + 24);
          *(v10 + 64) = v59;
          *(v47 + 40) = v58;
          *(v47 + 24) = v57;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 9, (v47 + 24)))
          {
            v120 = *(v47 + 40);
            v100 = *(v47 + 24);
            v60 = *v46;
            *(v47 + 40) = *(a2 - 7);
            *(v47 + 24) = v60;
            *(a2 - 7) = v120;
            *v46 = v100;
          }
        }
      }

      else if (v49)
      {
        v119 = *(v47 + 40);
        v99 = *(v47 + 24);
        v53 = *v46;
        *(v47 + 40) = *(a2 - 7);
        *(v47 + 24) = v53;
        *(a2 - 7) = v119;
        *v46 = v99;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v47 + 24), (v10 + 48)))
        {
          v54 = *(v10 + 48);
          v55 = *(v10 + 64);
          v56 = *(v47 + 40);
          *(v10 + 48) = *(v47 + 24);
          *(v10 + 64) = v56;
          *(v47 + 40) = v55;
          *(v47 + 24) = v54;
        }
      }

      v61 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v16, v30);
      v62 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v47 + 24), v16);
      if (v61)
      {
        if (v62)
        {
          v121 = *(v30 + 16);
          v101 = *v30;
          *v30 = *(v47 + 24);
          *(v30 + 16) = *(v47 + 40);
        }

        else
        {
          v124 = *(v30 + 16);
          v104 = *v30;
          *v30 = *v16;
          *(v30 + 16) = *(v16 + 16);
          *(v16 + 16) = v124;
          *v16 = v104;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v47 + 24), v16))
          {
            goto LABEL_60;
          }

          v121 = *(v16 + 16);
          v101 = *v16;
          *v16 = *(v47 + 24);
          *(v16 + 16) = *(v47 + 40);
        }

        *(v47 + 40) = v121;
        *(v47 + 24) = v101;
      }

      else if (v62)
      {
        v122 = *(v16 + 16);
        v102 = *v16;
        *v16 = *(v47 + 24);
        *(v16 + 16) = *(v47 + 40);
        *(v47 + 40) = v122;
        *(v47 + 24) = v102;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v16, v30))
        {
          v123 = *(v30 + 16);
          v103 = *v30;
          *v30 = *v16;
          *(v30 + 16) = *(v16 + 16);
          *(v16 + 16) = v123;
          *v16 = v103;
        }
      }

LABEL_60:
      v125 = *(v10 + 16);
      v105 = *v10;
      v63 = *v16;
      *(v10 + 16) = *(v16 + 16);
      *v10 = v63;
      *(v16 + 16) = v125;
      *v16 = v105;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v20 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10, (v10 + 24 * v14));
    v21 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, v10);
    if (v20)
    {
      if (v21)
      {
        v110 = *(v16 + 16);
        v90 = *v16;
        v22 = *v15;
        *(v16 + 16) = *(a2 - 1);
        *v16 = v22;
        goto LABEL_37;
      }

      v117 = *(v16 + 16);
      v97 = *v16;
      v40 = *v10;
      *(v16 + 16) = *(v10 + 16);
      *v16 = v40;
      *(v10 + 16) = v117;
      *v10 = v97;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, v10))
      {
        v110 = *(v10 + 16);
        v90 = *v10;
        v41 = *v15;
        *(v10 + 16) = *(a2 - 1);
        *v10 = v41;
LABEL_37:
        *(a2 - 1) = v110;
        *v15 = v90;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (!v21)
    {
      goto LABEL_38;
    }

    v113 = *(v10 + 16);
    v93 = *v10;
    v25 = *v15;
    *(v10 + 16) = *(a2 - 1);
    *v10 = v25;
    *(a2 - 1) = v113;
    *v15 = v93;
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10, (v10 + 24 * v14)))
    {
      goto LABEL_38;
    }

    v114 = *(v16 + 16);
    v94 = *v16;
    v26 = *v10;
    *(v16 + 16) = *(v10 + 16);
    *v16 = v26;
    *(v10 + 16) = v114;
    *v10 = v94;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v88, v10))
    {
      a1 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(v10, a2, a3);
      a5 = 0;
      goto LABEL_1;
    }

LABEL_62:
    v64 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(v10, a2, a3);
    if ((v65 & 1) == 0)
    {
      goto LABEL_67;
    }

    std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, v64, a3);
    v67 = v66;
    a1 = v64 + 3;
    std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>((v64 + 3), a2, a3);
    if (!v68)
    {
      if (v67)
      {
        goto LABEL_1;
      }

LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v10, v64, a3, a4, a5 & 1);
      a5 = 0;
      a1 = v64 + 3;
      goto LABEL_1;
    }

    a2 = v64;
    if (v67)
    {
      return;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, (v10 + 24), (v10 + 48), (a2 - 3), a3);
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4)
  {
    v6 = a3[1];
  }

  else
  {
    v6 = *(a3 + 23);
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = memcmp(v9, v5, v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v8 < v6;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a2, a1);
  v11 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v17 = v3;
    v18 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, v11))
        {
          v15 = *v10;
          v16 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          while (1)
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v15, (v12 + a1)))
            {
              v14 = a1 + v12 + 24;
              goto LABEL_12;
            }
          }

          v14 = a1;
LABEL_12:
          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  if (*(v6 - 1) < 0)
  {
    operator delete(*v12);
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2, &v17));
  }

  if (v7 >= a2)
  {
    v9 = a1 + v6;
  }

  else
  {
    v8 = a2;
    v9 = a1 + v6;
    do
    {
      v19 = *v9;
      v10 = v19;
      v20 = *(v9 + 16);
      v11 = v20;
      v12 = v8[2];
      *v9 = *v8;
      *(v9 + 16) = v12;
      v8[2] = v11;
      *v8 = v10;
      do
      {
        v9 += 24;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v9, &v17));
      do
      {
        v8 -= 3;
      }

      while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v8, &v17));
    }

    while (v9 < v8);
  }

  v13 = (v9 - 24);
  if ((v9 - 24) != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v9 - 8);
    *a1 = v14;
    *(v9 - 1) = 0;
    *(v9 - 24) = 0;
  }

  if (*(v9 - 1) < 0)
  {
    operator delete(*v13);
  }

  v15 = v17;
  *(v9 - 8) = v18;
  *v13 = v15;
  return v9 - 24;
}

void std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return;
    }

    if (v6 == 2)
    {
      v7 = a2 - 3;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, a1))
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_17:
    v21 = (a1 + 48);
    v22 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1);
    v23 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 48), (a1 + 24));
    if (v22)
    {
      if (v23)
      {
        v24 = *(a1 + 16);
        v25 = *a1;
        *a1 = *v21;
        *(a1 + 16) = *(a1 + 64);
      }

      else
      {
        v38 = *(a1 + 16);
        v39 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v39;
        *(a1 + 40) = v38;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 48), (a1 + 24)))
        {
          goto LABEL_33;
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 24);
        *(a1 + 24) = *v21;
        *(a1 + 40) = *(a1 + 64);
      }

      *v21 = v25;
      *(a1 + 64) = v24;
    }

    else if (v23)
    {
      v31 = *(a1 + 40);
      v32 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
      *v21 = v32;
      *(a1 + 64) = v31;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1))
      {
        v33 = *(a1 + 16);
        v34 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v34;
        *(a1 + 40) = v33;
      }
    }

LABEL_33:
    v40 = (a1 + 72);
    if ((a1 + 72) != a2)
    {
      v41 = 0;
      v42 = 0;
      while (1)
      {
        v43 = v21;
        v21 = v40;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v40, v43))
        {
          v49 = *v21;
          v50 = v21[2];
          v21[1] = 0;
          v21[2] = 0;
          *v21 = 0;
          v44 = v41;
          while (1)
          {
            v45 = a1 + v44;
            if (*(a1 + v44 + 95) < 0)
            {
              operator delete(*(v45 + 72));
            }

            *(v45 + 72) = *(v45 + 48);
            *(v45 + 88) = *(v45 + 64);
            *(v45 + 71) = 0;
            *(v45 + 48) = 0;
            if (v44 == -48)
            {
              break;
            }

            v46 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v49, (a1 + v44 + 24));
            v44 -= 24;
            if (!v46)
            {
              v47 = a1 + v44 + 72;
              goto LABEL_43;
            }
          }

          v47 = a1;
LABEL_43:
          if (*(v47 + 23) < 0)
          {
            operator delete(*v47);
          }

          *v47 = v49;
          *(v47 + 16) = v50;
          HIBYTE(v50) = 0;
          LOBYTE(v49) = 0;
          if (__CFADD__(v42++, 1))
          {
            __break(0x5500u);
            return;
          }

          if (v42 == 8)
          {
            return;
          }
        }

        v40 = v21 + 3;
        v41 += 24;
        if (v21 + 3 == a2)
        {
          return;
        }
      }
    }

    return;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
      return;
    }

    if (v6 != 5)
    {
      goto LABEL_17;
    }

    v8 = a2 - 3;
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v8, (a1 + 72)))
    {
      return;
    }

    v9 = *(a1 + 88);
    v10 = *(a1 + 72);
    v11 = v8[2];
    *(a1 + 72) = *v8;
    *(a1 + 88) = v11;
    *v8 = v10;
    v8[2] = v9;
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 72), (a1 + 48)))
    {
      return;
    }

    v12 = *(a1 + 64);
    v13 = *(a1 + 48);
    *(a1 + 48) = *(a1 + 72);
    *(a1 + 64) = *(a1 + 88);
    *(a1 + 72) = v13;
    *(a1 + 88) = v12;
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 48), (a1 + 24)))
    {
      return;
    }

    v14 = *(a1 + 40);
    v15 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v15;
    *(a1 + 64) = v14;
LABEL_23:
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return;
  }

  v7 = a2 - 3;
  v16 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1);
  v17 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, (a1 + 24));
  if (!v16)
  {
    if (!v17)
    {
      return;
    }

    v26 = *(a1 + 40);
    v27 = *(a1 + 24);
    v28 = v7[2];
    *(a1 + 24) = *v7;
    *(a1 + 40) = v28;
    *v7 = v27;
    v7[2] = v26;
    goto LABEL_23;
  }

  if (v17)
  {
LABEL_15:
    v18 = *(a1 + 16);
    v19 = *a1;
    v20 = v7[2];
    *a1 = *v7;
    *(a1 + 16) = v20;
LABEL_16:
    *v7 = v19;
    v7[2] = v18;
    return;
  }

  v35 = *(a1 + 16);
  v36 = *a1;
  *a1 = *(a1 + 24);
  *(a1 + 16) = *(a1 + 40);
  *(a1 + 24) = v36;
  *(a1 + 40) = v35;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, (a1 + 24)))
  {
    v18 = *(a1 + 40);
    v19 = *(a1 + 24);
    v37 = v7[2];
    *(a1 + 24) = *v7;
    *(a1 + 40) = v37;
    goto LABEL_16;
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 24);
      do
      {
        if (v17 >= 2)
        {
          v19 = *a1;
          *v27 = *(a1 + 8);
          *&v27[7] = *(a1 + 15);
          v20 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
          v22 = v21;
          v23 = *(v21 + 23);
          if (v18 == v21)
          {
            if (v23 < 0)
            {
              operator delete(*v21);
            }

            *v22 = v19;
            *(v22 + 8) = *v27;
            *(v22 + 15) = *&v27[7];
            *(v22 + 23) = v20;
          }

          else
          {
            if (v23 < 0)
            {
              operator delete(*v21);
            }

            v24 = *v18;
            *(v22 + 16) = *(v18 + 2);
            *v22 = v24;
            *v18 = v19;
            *(v18 + 1) = *v27;
            *(v18 + 15) = *&v27[7];
            *(v18 + 23) = v20;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 + 24 - a1) >> 3));
          }
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1003D516C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v10 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 24 * v10);
      v12 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, (a1 + 24 * v10), v11 + 3))
      {
        v10 = v12;
        v11 = (v11 + 24);
      }

      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, v11, v5))
      {
        v19 = *v5;
        v20 = *(v5 + 2);
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *v5 = 0;
        while (1)
        {
          v13 = v11;
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v14 = *v11;
          *(v5 + 2) = *(v11 + 2);
          *v5 = v14;
          *(v11 + 23) = 0;
          *v11 = 0;
          if (v7 < v10)
          {
            goto LABEL_22;
          }

          if (v10 + 0x4000000000000000 < 0)
          {
            break;
          }

          if (__OFADD__(2 * v10, 2))
          {
            goto LABEL_25;
          }

          v15 = (2 * v10) | 1;
          v11 = (a1 + 24 * v15);
          if (2 * v10 + 2 < a3)
          {
            v16 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, (a1 + 24 * v15), v11 + 3);
            if (v16)
            {
              v17 = 24;
            }

            else
            {
              v17 = 0;
            }

            v11 = (v11 + v17);
            if (v16)
            {
              v15 = 2 * v10 + 2;
            }
          }

          v5 = v13;
          v10 = v15;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, v11, &v19))
          {
            if (*(v13 + 23) < 0)
            {
              operator delete(*v13);
            }

LABEL_22:
            v18 = v19;
            *(v13 + 2) = v20;
            *v13 = v18;
            return;
          }
        }

        __break(0x550Cu);
LABEL_25:
        __break(0x5500u);
      }
    }
  }
}

void std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = __OFSUB__(a3, 2);
  v7 = (a3 - 2) / 2;
  while (v5 + 0x4000000000000000 >= 0)
  {
    v8 = 2 * v5 + 2;
    if (__OFADD__(2 * v5, 2))
    {
      __break(0x5500u);
LABEL_18:
      __break(0x5515u);
      break;
    }

    v9 = a1 + 24 * v5;
    v10 = (v9 + 24);
    v11 = (2 * v5) | 1;
    if (v8 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v12 = (v9 + 48);
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, (v9 + 24), (v9 + 48)))
      {
        v10 = v12;
        v5 = v8;
      }

      else
      {
        v5 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v10;
    *(a1 + 2) = *(v10 + 2);
    *a1 = v13;
    *(v10 + 23) = 0;
    *v10 = 0;
    if (v6)
    {
      goto LABEL_18;
    }

    a1 = v10;
    if (v5 > v7)
    {
      return;
    }
  }

  __break(0x550Cu);
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 88);
    std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceQuery>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (v2 + 64);
    std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceQuery>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    otbr::Mdns::PublisherMDnsSd::ServiceRef::DeallocateServiceRef(v2);
    operator delete();
  }

  return result;
}

void std::vector<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceQuery>>::__destroy_vector::operator()[abi:ne200100](otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if (v1[2] - *v1 < 0)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

uint64_t *std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>>::~__split_buffer(uint64_t *a1)
{
  std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>>::clear[abi:ne200100](a1);
  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if (a1[3] - result >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>>::clear[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v3[2] = v1 - 8;
      result = std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceSubscription>::reset[abi:ne200100]((v1 - 8), 0);
      v1 = v3[2];
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t *std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = *(v2 + 64);
    if (!result)
    {
      goto LABEL_5;
    }

    *(v2 + 72) = result;
    if ((*(v2 + 80) - result) >= 0)
    {
      operator delete(result);
LABEL_5:
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }

      otbr::Mdns::PublisherMDnsSd::ServiceRef::DeallocateServiceRef(v2);

      operator delete();
    }

    __break(0x550Cu);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>>::~__split_buffer(uint64_t *a1)
{
  std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>>::clear[abi:ne200100](a1);
  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if (a1[3] - result >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>>::clear[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v3[2] = v1 - 8;
      result = std::unique_ptr<otbr::Mdns::PublisherMDnsSd::HostSubscription>::reset[abi:ne200100]((v1 - 8), 0);
      v1 = v3[2];
    }

    while (v1 != v2);
  }

  return result;
}

__n128 otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::ServiceInstanceResolution(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __n128 *a5, int a6)
{
  v6 = *(a2 + 8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  v7 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v7;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v8 = *a4;
  *(a1 + 64) = *(a4 + 2);
  *(a1 + 48) = v8;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  result = *a5;
  *(a1 + 88) = a5[1].n128_u64[0];
  *(a1 + 72) = result;
  a5->n128_u64[1] = 0;
  a5[1].n128_u64[0] = 0;
  a5->n128_u64[0] = 0;
  *(a1 + 96) = a6;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  return result;
}

void otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution::~ServiceInstanceResolution(otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    if ((*(this + 22) - v3) < 0)
    {
      __break(0x550Cu);
      return;
    }

    operator delete(v3);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
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

  otbr::Mdns::PublisherMDnsSd::ServiceRef::DeallocateServiceRef(this);
}

void *std::__split_buffer<std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<otbr::Mdns::PublisherMDnsSd::ServiceInstanceResolution>::~unique_ptr[abi:ne200100]((i - 8));
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::string>&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__find_equal<std::pair<std::string,std::string>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__find_equal<std::pair<std::string,std::string>>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::pair<std::string,std::string>>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::pair<std::string,std::string>>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], *a3);
  v7 = a1[2];
  v8 = __CFADD__(v7, 1);
  v9 = (v7 + 1);
  if (v8)
  {
    __break(0x5500u);
  }

  else
  {
    a1[2] = v9;
  }

  return result;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v15 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v15);
    }

    v16 = &v9[v15];
    goto LABEL_23;
  }

  if (v12 == v9)
  {
    v14 = v12 - v9;
  }

  else
  {
    result = memmove(*result, __src, v12 - v9);
    v12 = v7[1];
    v14 = &v12[-*v7];
  }

  if (v14 <= a4)
  {
    v17 = &__src[v13];
    v18 = v12;
    if (&__src[v13] != a3)
    {
      v18 = v12;
      v19 = v12;
      do
      {
        v20 = *v17++;
        *v19++ = v20;
        ++v18;
      }

      while (v17 != a3);
    }

    v16 = v18;
LABEL_23:
    v7[1] = v16;
    return result;
  }

  __break(0x5515u);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1003D5E88(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,trackerInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,void *>>>::construct[abi:ne200100]<std::pair<std::string const,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>,0>(int a1, std::string *this, uint64_t a3, __int128 **a4)
{
  v5 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    this->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
}

int *otbr::Mdns::Publisher::PublishService(int *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v18, a3, a4);
  *std::map<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::operator[]((a1 + 28), &v18.__r_.__value_.__l.__data_) = rep;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  result = (*(*a1 + 112))(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    return otbr::Mdns::Publisher::UpdateMdnsResponseCounters(a1 + 74, result);
  }

  return result;
}

int *otbr::Mdns::Publisher::UpdateMdnsResponseCounters(int *result, int a2)
{
  if (a2 <= -11)
  {
    if (a2 == -13)
    {
      v5 = result[7];
      result += 7;
      v2 = v5;
      goto LABEL_18;
    }

    if (a2 != -12)
    {
      if (a2 == -11)
      {
        v4 = result[3];
        result += 3;
        v2 = v4;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v9 = result[6];
    result += 6;
    v2 = v9;
  }

  else if (a2 > -8)
  {
    if (a2 != -7)
    {
      if (!a2)
      {
        v2 = *result;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v8 = result[1];
    ++result;
    v2 = v8;
  }

  else
  {
    if (a2 != -10)
    {
      if (a2 == -9)
      {
        v3 = result[4];
        result += 4;
        v2 = v3;
        goto LABEL_18;
      }

LABEL_14:
      v6 = result[5];
      result += 5;
      v2 = v6;
      goto LABEL_18;
    }

    v7 = result[2];
    result += 2;
    v2 = v7;
  }

LABEL_18:
  v10 = __CFADD__(v2, 1);
  v11 = v2 + 1;
  if (v10)
  {
    __break(0x5500u);
  }

  else
  {
    *result = v11;
  }

  return result;
}

int *otbr::Mdns::Publisher::PublishHost(int *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *std::map<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::operator[]((a1 + 34), a2) = rep;
  result = (*(*a1 + 120))(a1, a2, a3, a4);
  if (result)
  {

    return otbr::Mdns::Publisher::UpdateMdnsResponseCounters(a1 + 58, result);
  }

  return result;
}

int *otbr::Mdns::Publisher::PublishKey(int *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *std::map<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>::operator[]((a1 + 40), a2) = rep;
  result = (*(*a1 + 128))(a1, a2, a3, a4);
  if (result)
  {

    return otbr::Mdns::Publisher::UpdateMdnsResponseCounters(a1 + 66, result);
  }

  return result;
}

uint64_t otbr::Mdns::Publisher::OnServiceResolveFailed(int *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = (*(*a1 + 152))(a1, a4);
  otbr::Mdns::Publisher::UpdateMdnsResponseCounters(a1 + 90, v8);
  v9 = (*(*a1 + 152))(a1, a4);
  otbr::Mdns::Publisher::UpdateServiceInstanceResolutionEmaLatency(a1, a3, a2, v9);
  v10 = *(*a1 + 136);

  return v10(a1, a2, a3, a4);
}

void otbr::Mdns::Publisher::UpdateServiceInstanceResolutionEmaLatency(uint64_t a1, __int128 *a2, __int128 *a3, int a4)
{
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v15, a2, a3);
  v6 = std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::find<std::pair<std::string,std::string>>(a1 + 184, &v15.__r_.__value_.__l.__data_);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((a1 + 192) != v6)
  {
    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = v6[10];
    v9 = __OFSUB__(v7.__d_.__rep_, v8);
    v10 = LODWORD(v7.__d_.__rep_) - v8;
    if (v9)
    {
      __break(0x5515u);
    }

    else
    {
      if (a4 == -12)
      {
LABEL_12:
        std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase((a1 + 184), v6);
        return;
      }

      v11 = v10 / 1000000;
      v12 = *(a1 + 408);
      if (!v12)
      {
LABEL_11:
        *(a1 + 408) = v11;
        goto LABEL_12;
      }

      v13 = __CFADD__(v11, v12);
      v14 = v11 + v12;
      if (!v13)
      {
        v11 = v14 >> 1;
        goto LABEL_11;
      }
    }

    __break(0x5500u);
  }
}

uint64_t otbr::Mdns::Publisher::OnHostResolveFailed(int *a1, const void **a2, uint64_t a3)
{
  v6 = (*(*a1 + 152))(a1, a3);
  otbr::Mdns::Publisher::UpdateMdnsResponseCounters(a1 + 82, v6);
  v7 = (*(*a1 + 152))(a1, a3);
  otbr::Mdns::Publisher::UpdateHostResolutionEmaLatency(a1, a2, v7);
  v8 = *(*a1 + 144);

  return v8(a1, a2, a3);
}

uint64_t **otbr::Mdns::Publisher::UpdateHostResolutionEmaLatency(uint64_t a1, const void **a2, int a3)
{
  result = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 208, a2);
  if ((a1 + 216) == result)
  {
    return result;
  }

  v6 = result;
  result = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = *(v6 + 56);
  v8 = __OFSUB__(result, v7);
  v9 = result - v7;
  if (v8)
  {
    __break(0x5515u);
    goto LABEL_13;
  }

  if (a3 != -12)
  {
    v10 = v9 / 1000000;
    v11 = *(a1 + 404);
    if (!v11)
    {
LABEL_7:
      *(a1 + 404) = v10;
      goto LABEL_8;
    }

    v12 = __CFADD__(v10, v11);
    v13 = v10 + v11;
    if (!v12)
    {
      v10 = v13 >> 1;
      goto LABEL_7;
    }

LABEL_13:
    __break(0x5500u);
    return result;
  }

LABEL_8:

  return std::__tree<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase((a1 + 208), v6);
}

char *otbr::Mdns::Publisher::EncodeTxtData(char *result, uint64_t a2)
{
  *(a2 + 8) = *a2;
  v3 = *result;
  v4 = *(result + 1);
  if (*result != v4)
  {
    do
    {
      v5 = *(v3 + 23);
      if ((v5 & 0x8000000000000000) != 0)
      {
        v5 = *(v3 + 8);
      }

      if ((*(v3 + 48) & 1) == 0)
      {
        v6 = *(v3 + 32) - *(v3 + 24);
        v7 = __CFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7 || (v7 = __CFADD__(v5, v8), v5 += v8, v7))
        {
          __break(0x5500u);
          return result;
        }
      }

      if (v5 > 0xFF)
      {
        return 4294967286;
      }

      v13 = v5;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, &v13);
      v9 = *(v3 + 23);
      if (v9 < 0)
      {
        v10 = *v3;
        v9 = *(v3 + 8);
      }

      else
      {
        v10 = v3;
      }

      result = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a2, *(a2 + 8), v10, &v10[v9], v9);
      if ((*(v3 + 48) & 1) == 0)
      {
        v12 = 61;
        std::vector<unsigned char>::push_back[abi:ne200100](a2, &v12);
        result = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a2, *(a2 + 8), *(v3 + 24), *(v3 + 32), *(v3 + 32) - *(v3 + 24));
      }

      v3 += 56;
    }

    while (v3 != v4);
    if (*a2 != *(a2 + 8))
    {
      return 0;
    }
  }

  v11 = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v11);
  return 0;
}

void *std::vector<unsigned char>::push_back[abi:ne200100](void *result, _BYTE *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = &v3[-*result];
    if (v4 == -1)
    {
      __break(0x5500u);
    }

    else if (((v4 + 1) & 0x8000000000000000) == 0)
    {
      *result;
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

uint64_t otbr::Mdns::Publisher::DecodeTxtData(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  for (i = a1[1]; i != v6; std::allocator<otbr::Mdns::Publisher::TxtEntry>::destroy[abi:ne200100](a1, i))
  {
    i -= 56;
  }

  a1[1] = v6;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = v8 + 1;
    v10 = *(a2 + v8);
    v8 += 1 + v10;
    v11 = (v9 + v10);
    if (v11 > a3)
    {
      return 4294967288;
    }

    if (v11 <= v9)
    {
      v13 = v9;
      LOWORD(v12) = v9;
    }

    else
    {
      v12 = v9;
      while (*(a2 + v12) != 61)
      {
        if (v11 == ++v12)
        {
          v13 = (v9 + v10);
          goto LABEL_15;
        }
      }

      v13 = v12;
    }

    if (v11 != v12)
    {
      v14 = v12 + 1;
      v20 = (a2 + v9);
      v19 = v13 - v9;
      v18 = (a2 + v14);
      v17 = v11 - v14;
      if (v6 < a1[2])
      {
        otbr::Mdns::Publisher::TxtEntry::TxtEntry(v6, (a2 + v9), v13 - v9, (a2 + v14), (v11 - v14));
LABEL_20:
        v6 += 56;
        a1[1] = v6;
LABEL_24:
        a1[1] = v6;
        goto LABEL_25;
      }

      v15 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const*,int,unsigned char const*,int>(a1, &v20, &v19, &v18, &v17);
LABEL_23:
      v6 = v15;
      goto LABEL_24;
    }

LABEL_15:
    if (v11 > v9)
    {
      v20 = (a2 + v9);
      LODWORD(v18) = v13 - v9;
      if (v6 < a1[2])
      {
        std::string::basic_string[abi:ne200100](v6, (a2 + v9), v13 - v9);
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v6 + 48) = 1;
        goto LABEL_20;
      }

      v15 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const*,int>(a1, &v20, &v18);
      goto LABEL_23;
    }

LABEL_25:
    if (v11 >= a3)
    {
      return 0;
    }
  }
}

void otbr::Mdns::Publisher::RemoveSubscriptionCallbacks(otbr::Mdns::Publisher *this, uint64_t a2)
{
  v2 = this + 88;
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  v3 = *(this + 12);
  if (v3 != this + 88)
  {
    do
    {
      v5 = (v3 + 8);
      if (*(v3 + 2) == a2)
      {
        v6 = *v5;
        v7 = v2;
        if (v6 != v2)
        {
          v7 = v6;
          while (*(v7 + 2) == a2)
          {
            v7 = *(v7 + 1);
            if (v7 == v2)
            {
              v7 = v2;
              break;
            }
          }
        }

        std::list<otbr::Mdns::Publisher::DiscoverCallback>::splice(v8, v8, v2, v3, v7);
        if (v7 == v2)
        {
          goto LABEL_11;
        }

        v5 = (v7 + 8);
      }

      v7 = *v5;
LABEL_11:
      v3 = v7;
    }

    while (v7 != v2);
  }

  std::__list_imp<otbr::Mdns::Publisher::DiscoverCallback>::clear(v8);
}

void sub_1003D6A0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<otbr::Mdns::Publisher::DiscoverCallback>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t otbr::Mdns::Publisher::AddSubscriptionCallbacks(uint64_t result)
{
  v1 = *(result + 80);
  if (v1 != -1)
  {
    *(result + 80) = v1 + 1;
    if (v1)
    {
      std::list<otbr::Mdns::Publisher::DiscoverCallback>::emplace_back<unsigned long long &,std::function<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)> &,std::function<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)> &>();
    }

    otbr::Mdns::Publisher::AddSubscriptionCallbacks();
  }

  __break(0x5500u);
  return result;
}

void otbr::Mdns::Publisher::OnServiceResolved(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v11) = a2;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

  *a3;
  if (*(a3 + 31) < 0)
  {
    v12 = *(a3 + 8);
  }

  if (*(a3 + 55) < 0)
  {
    v13 = *(a3 + 32);
  }

  v35 = (*(a3 + 64) - *(a3 + 56)) >> 4;
  v36 = *(a3 + 4);
  otbrLog(6u, "MDNS", "Service %s is resolved successfully: %s %s host %s addresses %zu", a4, a5, a6, a7, a8, v11);
  if ((*a3 & 1) == 0)
  {
    memset(&v40, 0, sizeof(v40));
    v19 = *(a3 + 56);
    v20 = *(a3 + 64);
    if (v19 != v20)
    {
      do
      {
        otbr::Ip6Address::ToString(v19, &v37);
        v21 = std::string::append(&v37, ",");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v39 = v21->__r_.__value_.__r.__words[2];
        *__p = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        if (v39 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        if (v39 >= 0)
        {
          v24 = HIBYTE(v39);
        }

        else
        {
          v24 = __p[1];
        }

        std::string::append(&v40, v23, v24);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        v19 = (v19 + 16);
      }

      while (v19 != v20);
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (!v40.__r_.__value_.__l.__size_)
        {
          goto LABEL_27;
        }

        v25 = v40.__r_.__value_.__l.__size_ - 1;
        v26 = v40.__r_.__value_.__r.__words[0];
        --v40.__r_.__value_.__l.__size_;
LABEL_26:
        v26->__r_.__value_.__s.__data_[v25] = 0;
LABEL_27:
        v27 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          LOBYTE(v27) = v40.__r_.__value_.__s.__data_[0];
        }

        goto LABEL_29;
      }

      if (*(&v40.__r_.__value_.__s + 23))
      {
        v25 = SHIBYTE(v40.__r_.__value_.__r.__words[2]) - 1;
        --*(&v40.__r_.__value_.__s + 23);
        v26 = &v40;
        goto LABEL_26;
      }
    }

    v27 = &v40;
LABEL_29:
    otbrLog(6u, "MDNS", "addresses: [ %s ]", v14, v15, v16, v17, v18, v27);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  otbr::DnsUtils::CheckServiceNameSanity(a2);
  if ((*a3 & 1) == 0)
  {
    otbr::DnsUtils::CheckHostnameSanity((a3 + 32));
  }

  v28 = *(a1 + 360);
  v29 = __CFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(0x5500u);
  }

  else
  {
    *(a1 + 360) = v30;
    otbr::Mdns::Publisher::UpdateServiceInstanceResolutionEmaLatency(a1, (a3 + 8), a2, 0);
    v31 = a1 + 88;
    v32 = *(a1 + 96);
    if (v32 != a1 + 88)
    {
      v33 = 0;
      do
      {
        if (*(v32 + 48))
        {
          v33 = 1;
          *(v32 + 88) = 1;
        }

        v32 = *(v32 + 8);
      }

      while (v32 != v31);
      if (v33)
      {
LABEL_40:
        for (i = *(a1 + 96); i != v31; i = *(i + 8))
        {
          if (*(i + 88) == 1)
          {
            *(i + 88) = 0;
            std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::operator()[abi:ne200100](i + 24);
            goto LABEL_40;
          }
        }
      }
    }
  }
}

void sub_1003D6D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::OnServiceRemoved(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v30[0]) = 0;
  memset(&v30[1], 0, 48);
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v36 = 0;
  LOBYTE(v12) = a4;
  if (*(a4 + 23) < 0)
  {
    v12 = *a4;
  }

  if (*(a3 + 23) < 0)
  {
    v13 = *a3;
  }

  otbrLog(6u, "MDNS", "Service %s.%s is removed from netif %u.", a4, a5, a6, a7, a8, v12);
  LOBYTE(v30[0]) = 1;
  v30[1] = a2;
  std::string::operator=(&v30[2], a4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a3, *(a3 + 8));
  }

  else
  {
    v29 = *a3;
  }

  otbr::Mdns::Publisher::DiscoveredInstanceInfo::DiscoveredInstanceInfo(v19, v30);
  otbr::Mdns::Publisher::OnServiceResolved(a1, &v29, v19, v14, v15, v16, v17, v18);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    if (v26 - v24 < 0)
    {
      goto LABEL_29;
    }

    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (!*&v31[1])
  {
    goto LABEL_24;
  }

  *&v31[3] = *&v31[1];
  if ((*&v31[5] - *&v31[1]) < 0)
  {
LABEL_29:
    __break(0x550Cu);
    return;
  }

  operator delete(*&v31[1]);
LABEL_24:
  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(*&v30[8]);
  }

  if (SHIBYTE(v30[7]) < 0)
  {
    operator delete(*&v30[2]);
  }
}

void sub_1003D6F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  otbr::Mdns::Publisher::DiscoveredInstanceInfo::~DiscoveredInstanceInfo(&a12);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  otbr::Mdns::Publisher::DiscoveredInstanceInfo::~DiscoveredInstanceInfo(&a33);
  _Unwind_Resume(a1);
}

void otbr::Mdns::Publisher::OnHostResolved(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v11) = a2;
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    v12 = *a3;
  }

  v21 = (*(a3 + 32) - *(a3 + 24)) >> 4;
  v22 = *(a3 + 52);
  otbrLog(6u, "MDNS", "Host %s is resolved successfully: host %s addresses %zu ttl %u", a4, a5, a6, a7, a8, v11);
  v13 = *(a3 + 23);
  if (v13 < 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13)
  {
    otbr::DnsUtils::CheckHostnameSanity(a3);
  }

  v14 = *(a1 + 328);
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(0x5500u);
  }

  else
  {
    *(a1 + 328) = v16;
    otbr::Mdns::Publisher::UpdateHostResolutionEmaLatency(a1, a2, 0);
    v17 = a1 + 88;
    v18 = *(a1 + 96);
    if (v18 != a1 + 88)
    {
      v19 = 0;
      do
      {
        if (*(v18 + 80))
        {
          v19 = 1;
          *(v18 + 88) = 1;
        }

        v18 = *(v18 + 8);
      }

      while (v18 != v17);
      if (v19)
      {
LABEL_16:
        for (i = *(a1 + 96); i != v17; i = *(i + 8))
        {
          if (*(i + 88) == 1)
          {
            *(i + 88) = 0;
            std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::operator()[abi:ne200100](i + 56);
            goto LABEL_16;
          }
        }
      }
    }
  }
}

__n128 otbr::Mdns::Publisher::SortSubTypeList@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (2 * __clz(0xAAAAAAAAAAAAAAABLL * (v5 - v4))) ^ 0x7E;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v4, v5, &v9, v7, 1);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return result;
}

__n128 otbr::Mdns::Publisher::SortAddressList@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (2 * __clz((v5 - v4) >> 4)) ^ 0x7E;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,false>(v4, v5, &v9, v7, 1);
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return result;
}

void otbr::Mdns::Publisher::MakeFullServiceName(const void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v5 == -1)
  {
    __break(0x5500u);
  }

  else
  {
    v7 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v5 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a1 + 23) >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      memmove(v7, v8, v5);
    }

    *(&v7->__r_.__value_.__l.__data_ + v5) = 46;
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::string::append(&v15, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v16, ".local");
    *a3 = *v14;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1003D7304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t otbr::Mdns::Publisher::MakeFullName@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  result = a2;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v4 >= 0xFFFFFFFFFFFFFFFALL)
  {
    __break(0x5500u);
  }

  else
  {
    result = std::string::basic_string[abi:ne200100](a2, v4 + 6);
    if (*(result + 23) >= 0)
    {
      v5 = result;
    }

    else
    {
      v5 = *result;
    }

    if (v4)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      result = memmove(v5, v6, v4);
    }

    strcpy(v5 + v4, ".local");
  }

  return result;
}

void otbr::Mdns::Publisher::AddServiceRegistration(uint64_t a1, uint64_t a2)
{
  otbr::Mdns::Publisher::MakeFullServiceName((*a2 + 72), *a2 + 96, &__p);
  std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__emplace_unique_key_args<std::string,std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>(a1 + 8, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1003D7444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::RemoveServiceRegistration(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  otbr::Mdns::Publisher::MakeFullServiceName(a2, a3, &__p);
  v13 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 8, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    LOBYTE(v14) = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    v15 = *a3;
  }

  otbrLog(6u, "MDNS", "Removing service %s.%s", v8, v9, v10, v11, v12, v14);
  if ((a1 + 16) != v13)
  {
    v16 = v13[7];
    v13[7] = 0;
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::erase((a1 + 8), v13);
    otbr::Mdns::Publisher::ServiceRegistration::Complete(v16, a4);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }
}

void sub_1003D7568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::ServiceRegistration::Complete(uint64_t a1, int a2)
{
  otbr::Mdns::Publisher::ServiceRegistration::OnComplete(a1, a2);
  if (*(a1 + 32))
  {

    otbr::OnceCallback<void ()(otbrError)>::operator()(a1 + 8);
  }
}

uint64_t otbr::Mdns::Publisher::FindServiceRegistration(uint64_t a1, const void **a2, uint64_t a3)
{
  otbr::Mdns::Publisher::MakeFullServiceName(a2, a3, &__p);
  v4 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 8, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a1 + 16 == v4)
  {
    return 0;
  }

  else
  {
    return *(v4 + 56);
  }
}

void sub_1003D765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t otbr::Mdns::Publisher::FindServiceRegistration(uint64_t a1, const void **a2)
{
  otbr::Mdns::Publisher::MakeFullName(a2, __p);
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 8, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_1003D76E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t otbr::Mdns::Publisher::HandleDuplicateServiceRegistration@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  ServiceRegistration = otbr::Mdns::Publisher::FindServiceRegistration(a1, a3, a4);
  if (ServiceRegistration)
  {
    v19 = ServiceRegistration;
    if (otbr::Mdns::Publisher::ServiceRegistration::IsOutdated(ServiceRegistration, a2, a3, a4, a5, a6, a7))
    {
      if (*(a3 + 23) >= 0)
      {
        LOBYTE(v25) = a3;
      }

      else
      {
        v25 = *a3;
      }

      if (*(a4 + 23) < 0)
      {
        v26 = *a4;
      }

      otbrLog(6u, "MDNS", "Removing existing service %s.%s: outdated", v20, v21, v22, v23, v24, v25);
      otbr::Mdns::Publisher::RemoveServiceRegistration(a1, a3, a4, -12);
    }

    else
    {
      if (*(v19 + 32))
      {
        std::allocate_shared[abi:ne200100]<otbr::OnceCallback<void ()(otbrError)>,std::allocator<otbr::OnceCallback<void ()(otbrError)>>,otbr::OnceCallback<void ()(otbrError)>,0>();
      }

      otbr::OnceCallback<void ()(otbrError)>::operator()(a8);
    }
  }

  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](a9, a8);
  return std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a8);
}

void sub_1003D78F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(v11 - 136);
  std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(va);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

BOOL otbr::Mdns::Publisher::ServiceRegistration::IsOutdated(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5, int a6, uint64_t a7)
{
  v13 = *(a1 + 71);
  if (v13 < 0)
  {
    v14 = *(a1 + 56);
  }

  else
  {
    v14 = *(a1 + 71);
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = a2[1];
  }

  if (v14 != v15)
  {
    return 1;
  }

  if (v13 >= 0)
  {
    v17 = (a1 + 48);
  }

  else
  {
    v17 = *(a1 + 48);
  }

  v18 = *a2;
  if (v16 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v17, a2, v14))
  {
    return 1;
  }

  v19 = *(a1 + 95);
  if (v19 < 0)
  {
    v20 = *(a1 + 80);
  }

  else
  {
    v20 = *(a1 + 95);
  }

  v21 = *(a3 + 23);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = a3[1];
  }

  if (v20 != v21)
  {
    return 1;
  }

  v23 = v19 >= 0 ? (a1 + 72) : *(a1 + 72);
  v24 = *a3;
  v25 = v22 >= 0 ? a3 : *a3;
  if (memcmp(v23, v25, v20))
  {
    return 1;
  }

  v26 = *(a1 + 119);
  if (v26 < 0)
  {
    v27 = *(a1 + 104);
  }

  else
  {
    v27 = *(a1 + 119);
  }

  v28 = *(a4 + 23);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = a4[1];
  }

  if (v27 != v28)
  {
    return 1;
  }

  v30 = v26 >= 0 ? (a1 + 96) : *(a1 + 96);
  v31 = *a4;
  v32 = v29 >= 0 ? a4 : *a4;
  if (memcmp(v30, v32, v27))
  {
    return 1;
  }

  v34 = *(a1 + 120);
  v33 = *(a1 + 128);
  v36 = a5;
  v35 = *a5;
  if (v33 - v34 != v36[1] - v35)
  {
    return 1;
  }

  while (v34 != v33)
  {
    v37 = *(v34 + 23);
    if (v37 < 0)
    {
      v38 = *(v34 + 8);
    }

    else
    {
      v38 = *(v34 + 23);
    }

    v39 = *(v35 + 23);
    if (v39 < 0)
    {
      v40 = v35[1];
    }

    else
    {
      v40 = *(v35 + 23);
    }

    if (v38 != v40)
    {
      return 1;
    }

    v41 = v37 >= 0 ? v34 : *v34;
    v42 = *v35;
    v43 = v39 >= 0 ? v35 : *v35;
    if (memcmp(v41, v43, v38))
    {
      return 1;
    }

    v34 += 24;
    v35 += 3;
  }

  if (*(a1 + 144) == a6 && (v44 = *(a1 + 152), v45 = *(a1 + 160) - v44, v45 == *(a7 + 8) - *a7))
  {
    return memcmp(v44, *a7, v45) != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t otbr::Mdns::Publisher::HandleDuplicateHostRegistration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  HostRegistration = otbr::Mdns::Publisher::FindHostRegistration(a1, a2);
  if (HostRegistration)
  {
    v11 = HostRegistration;
    if (otbr::Mdns::Publisher::HostRegistration::IsOutdated(HostRegistration, a2, a3))
    {
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v17) = a2;
      }

      else
      {
        v17 = *a2;
      }

      otbrLog(6u, "MDNS", "Removing existing host %s: outdated", v12, v13, v14, v15, v16, v17);
      otbr::Mdns::Publisher::RemoveHostRegistration(a1, v11 + 48, -12);
    }

    else
    {
      if (*(v11 + 32))
      {
        std::allocate_shared[abi:ne200100]<otbr::OnceCallback<void ()(otbrError)>,std::allocator<otbr::OnceCallback<void ()(otbrError)>>,otbr::OnceCallback<void ()(otbrError)>,0>();
      }

      otbr::OnceCallback<void ()(otbrError)>::operator()(a4);
    }
  }

  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](a5, a4);
  return std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a4);
}

void sub_1003D7D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(v12 - 112);
  std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(va);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t otbr::Mdns::Publisher::FindHostRegistration(uint64_t a1, const void **a2)
{
  otbr::Mdns::Publisher::MakeFullName(a2, __p);
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 32, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 40 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_1003D7DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t otbr::Mdns::Publisher::HostRegistration::IsOutdated(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 71);
  if (v5 < 0)
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = *(a1 + 71);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (v6 != v7)
  {
    return 1;
  }

  v9 = v5 >= 0 ? (a1 + 48) : *(a1 + 48);
  v10 = *a2;
  if (v8 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v9, a2, v6))
  {
    return 1;
  }

  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  v13 = *a3;
  if (v11 - v12 != *(a3 + 8) - *a3)
  {
    return 1;
  }

  if (v12 != v11)
  {
    while (*v12 == *v13 && *(v12 + 1) == v13[1])
    {
      result = 0;
      v12 += 16;
      v13 += 2;
      if (v12 == v11)
      {
        return result;
      }
    }

    return 1;
  }

  return 0;
}

void otbr::Mdns::Publisher::RemoveHostRegistration(uint64_t a1, uint64_t a2, int a3)
{
  otbr::Mdns::Publisher::MakeFullName(a2, __p);
  v11 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 32, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    LOBYTE(v12) = a2;
  }

  else
  {
    v12 = *a2;
  }

  otbrLog(6u, "MDNS", "Removing host %s", v6, v7, v8, v9, v10, v12);
  if ((a1 + 40) != v11)
  {
    v13 = v11[7];
    v11[7] = 0;
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::erase((a1 + 32), v11);
    otbr::Mdns::Publisher::HostRegistration::Complete(v13, a3);
    if (*(a2 + 23) >= 0)
    {
      LOBYTE(v19) = a2;
    }

    else
    {
      v19 = *a2;
    }

    otbrLog(6u, "MDNS", "Removed host %s", v14, v15, v16, v17, v18, v19);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }
}

void sub_1003D7FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::AddHostRegistration(uint64_t a1, uint64_t a2)
{
  otbr::Mdns::Publisher::MakeFullName((*a2 + 48), __p);
  std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__emplace_unique_key_args<std::string,std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>(a1 + 32, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003D8070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **otbr::Mdns::Publisher::HostRegistration::Complete(uint64_t a1, int a2)
{
  result = otbr::Mdns::Publisher::HostRegistration::OnComplete(a1, a2);
  if (*(a1 + 32))
  {

    return otbr::OnceCallback<void ()(otbrError)>::operator()(a1 + 8);
  }

  return result;
}

uint64_t otbr::Mdns::Publisher::HandleDuplicateKeyRegistration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyRegistration = otbr::Mdns::Publisher::FindKeyRegistration(a1, a2);
  if (KeyRegistration)
  {
    v11 = KeyRegistration;
    if (otbr::Mdns::Publisher::KeyRegistration::IsOutdated(KeyRegistration, a2, a3))
    {
      if (*(a2 + 23) >= 0)
      {
        LOBYTE(v17) = a2;
      }

      else
      {
        v17 = *a2;
      }

      otbrLog(6u, "MDNS", "Removing existing key %s: outdated", v12, v13, v14, v15, v16, v17);
      otbr::Mdns::Publisher::RemoveKeyRegistration(a1, v11 + 48, -12);
    }

    else
    {
      if (*(v11 + 32))
      {
        std::allocate_shared[abi:ne200100]<otbr::OnceCallback<void ()(otbrError)>,std::allocator<otbr::OnceCallback<void ()(otbrError)>>,otbr::OnceCallback<void ()(otbrError)>,0>();
      }

      otbr::OnceCallback<void ()(otbrError)>::operator()(a4);
    }
  }

  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100](a5, a4);
  return std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a4);
}

void sub_1003D8294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(v12 - 112);
  std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>::~__bind(va);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t otbr::Mdns::Publisher::FindKeyRegistration(uint64_t a1, const void **a2)
{
  otbr::Mdns::Publisher::MakeFullName(a2, __p);
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 56, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 64 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_1003D8344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL otbr::Mdns::Publisher::KeyRegistration::IsOutdated(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 71);
  if (v5 < 0)
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = *(a1 + 71);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (v6 != v7)
  {
    return 1;
  }

  v9 = v5 >= 0 ? (a1 + 48) : *(a1 + 48);
  v10 = *a2;
  if (v8 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(v9, a2, v6) && (v11 = *(a1 + 72), v12 = *(a1 + 80) - v11, v12 == *(a3 + 8) - *a3))
  {
    return memcmp(v11, *a3, v12) != 0;
  }

  else
  {
    return 1;
  }
}

void otbr::Mdns::Publisher::RemoveKeyRegistration(uint64_t a1, uint64_t a2, int a3)
{
  otbr::Mdns::Publisher::MakeFullName(a2, __p);
  v11 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 56, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    LOBYTE(v12) = a2;
  }

  else
  {
    v12 = *a2;
  }

  otbrLog(6u, "MDNS", "Removing key %s", v6, v7, v8, v9, v10, v12);
  if ((a1 + 64) != v11)
  {
    v13 = v11[7];
    v11[7] = 0;
    std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::erase((a1 + 56), v11);
    otbr::Mdns::Publisher::KeyRegistration::Complete(v13, a3);
    if (*(a2 + 23) >= 0)
    {
      LOBYTE(v19) = a2;
    }

    else
    {
      v19 = *a2;
    }

    otbrLog(6u, "MDNS", "Removed key %s", v14, v15, v16, v17, v18, v19);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }
}

void sub_1003D8520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::AddKeyRegistration(uint64_t a1, uint64_t a2)
{
  otbr::Mdns::Publisher::MakeFullName((*a2 + 48), __p);
  std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__emplace_unique_key_args<std::string,std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>(a1 + 56, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003D85B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **otbr::Mdns::Publisher::KeyRegistration::Complete(uint64_t a1, int a2)
{
  result = otbr::Mdns::Publisher::KeyRegistration::OnComplete(a1, a2);
  if (*(a1 + 32))
  {

    return otbr::OnceCallback<void ()(otbrError)>::operator()(a1 + 8);
  }

  return result;
}

uint64_t otbr::Mdns::Publisher::FindKeyRegistration(uint64_t a1, const void **a2, uint64_t a3)
{
  otbr::Mdns::Publisher::MakeFullServiceName(a2, a3, &__p);
  v4 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 56, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a1 + 64 == v4)
  {
    return 0;
  }

  else
  {
    return *(v4 + 56);
  }
}

void sub_1003D8690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::Mdns::Publisher::Registration::~Registration(otbr::Mdns::Publisher::Registration *this)
{
  *this = off_1004CE210;
  if (*(this + 4))
  {
    otbr::OnceCallback<void ()(otbrError)>::operator()(this + 8);
  }

  std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](this + 8);
}

{
  otbr::Mdns::Publisher::Registration::~Registration(this);

  operator delete();
}

void otbr::Mdns::Publisher::ServiceRegistration::OnComplete(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    otbr::Mdns::Publisher::UpdateMdnsResponseCounters((*(a1 + 40) + 296), a2);
    v4 = *(a1 + 40);

    otbr::Mdns::Publisher::UpdateServiceRegistrationEmaLatency(v4, (a1 + 72), (a1 + 96), a2);
  }
}

void otbr::Mdns::Publisher::UpdateServiceRegistrationEmaLatency(uint64_t a1, __int128 *a2, __int128 *a3, int a4)
{
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v15, a2, a3);
  v6 = std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::find<std::pair<std::string,std::string>>(a1 + 112, &v15.__r_.__value_.__l.__data_);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((a1 + 120) != v6)
  {
    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = v6[10];
    v9 = __OFSUB__(v7.__d_.__rep_, v8);
    v10 = LODWORD(v7.__d_.__rep_) - v8;
    if (v9)
    {
      __break(0x5515u);
    }

    else
    {
      if (a4 == -12)
      {
LABEL_12:
        std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase((a1 + 112), v6);
        return;
      }

      v11 = v10 / 1000000;
      v12 = *(a1 + 400);
      if (!v12)
      {
LABEL_11:
        *(a1 + 400) = v11;
        goto LABEL_12;
      }

      v13 = __CFADD__(v11, v12);
      v14 = v11 + v12;
      if (!v13)
      {
        v11 = v14 >> 1;
        goto LABEL_11;
      }
    }

    __break(0x5500u);
  }
}

uint64_t **otbr::Mdns::Publisher::HostRegistration::OnComplete(uint64_t **result, int a2)
{
  if (result[4])
  {
    v3 = result;
    otbr::Mdns::Publisher::UpdateMdnsResponseCounters(result[5] + 58, a2);
    v4 = v3[5];

    return otbr::Mdns::Publisher::UpdateHostRegistrationEmaLatency(v4, v3 + 6, a2);
  }

  return result;
}

uint64_t **otbr::Mdns::Publisher::UpdateHostRegistrationEmaLatency(uint64_t a1, const void **a2, int a3)
{
  result = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 136, a2);
  if ((a1 + 144) == result)
  {
    return result;
  }

  v6 = result;
  result = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = *(v6 + 56);
  v8 = __OFSUB__(result, v7);
  v9 = result - v7;
  if (v8)
  {
    __break(0x5515u);
    goto LABEL_13;
  }

  if (a3 != -12)
  {
    v10 = v9 / 1000000;
    v11 = *(a1 + 392);
    if (!v11)
    {
LABEL_7:
      *(a1 + 392) = v10;
      goto LABEL_8;
    }

    v12 = __CFADD__(v10, v11);
    v13 = v10 + v11;
    if (!v12)
    {
      v10 = v13 >> 1;
      goto LABEL_7;
    }

LABEL_13:
    __break(0x5500u);
    return result;
  }

LABEL_8:

  return std::__tree<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase((a1 + 136), v6);
}

uint64_t **otbr::Mdns::Publisher::KeyRegistration::OnComplete(uint64_t **result, int a2)
{
  if (result[4])
  {
    v3 = result;
    otbr::Mdns::Publisher::UpdateMdnsResponseCounters(result[5] + 66, a2);
    v4 = v3[5];

    return otbr::Mdns::Publisher::UpdateKeyRegistrationEmaLatency(v4, v3 + 6, a2);
  }

  return result;
}

uint64_t **otbr::Mdns::Publisher::UpdateKeyRegistrationEmaLatency(uint64_t a1, const void **a2, int a3)
{
  result = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(a1 + 160, a2);
  if ((a1 + 168) == result)
  {
    return result;
  }

  v6 = result;
  result = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = *(v6 + 56);
  v8 = __OFSUB__(result, v7);
  v9 = result - v7;
  if (v8)
  {
    __break(0x5515u);
    goto LABEL_13;
  }

  if (a3 != -12)
  {
    v10 = v9 / 1000000;
    v11 = *(a1 + 396);
    if (!v11)
    {
LABEL_7:
      *(a1 + 396) = v10;
      goto LABEL_8;
    }

    v12 = __CFADD__(v10, v11);
    v13 = v10 + v11;
    if (!v12)
    {
      v10 = v13 >> 1;
      goto LABEL_7;
    }

LABEL_13:
    __break(0x5500u);
    return result;
  }

LABEL_8:

  return std::__tree<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase((a1 + 160), v6);
}

unsigned int *otbr::Mdns::Publisher::UpdateEmaLatency(unsigned int *result, unsigned int a2, int a3)
{
  if (a3 != -12)
  {
    v3 = *result;
    if (*result)
    {
      v4 = __CFADD__(a2, v3);
      v5 = a2 + v3;
      if (v4)
      {
        __break(0x5500u);
        return result;
      }

      a2 = v5 >> 1;
    }

    *result = a2;
  }

  return result;
}

uint64_t *otbr::Mdns::Publisher::AddAddress(uint64_t *result, _OWORD *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 < v4)
  {
    *v5 = *a2;
    v6 = v5 + 1;
LABEL_14:
    v3[1] = v6;
    return result;
  }

  v7 = (v5 - *result) >> 4;
  v8 = v7 + 1;
  if (v7 == -1)
  {
    __break(0x5500u);
LABEL_16:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v8 >> 60)
  {
    goto LABEL_16;
  }

  v9 = v4 - *result;
  v10 = v9 >> 3;
  if (v9 >> 3 <= v8)
  {
    v10 = v7 + 1;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v17[4] = result;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Ip6Address>>(result, v11);
  }

  result = 0;
  v12 = 16 * v7;
  *(16 * v7) = *a2;
  v13 = v3[1] - *v3;
  if (v13 >= 0)
  {
    v6 = (v12 + 16);
    v14 = v12 - v13;
    memcpy((v12 - v13), *v3, v13);
    v15 = *v3;
    *v3 = v14;
    v3[1] = v6;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<otbr::Ip6Address>::~__split_buffer(v17);
    goto LABEL_14;
  }

  __break(0x550Cu);
  return result;
}

void *otbr::Mdns::Publisher::RemoveAddress(void *result, void *a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = *result;
    while (*v5 != *a2 || *(v5 + 1) != a2[1])
    {
      v5 += 16;
      v4 += 16;
      if (v5 == v3)
      {
        v4 = result[1];
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v6 = v3 - (v4 + 16);
    if (v3 != v4 + 16)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(0x550Cu);
      }

      else if (v6 - 16 < 0xFFFFFFFFFFFFFFF0)
      {
        result = memmove(v4, v4 + 16, v6);
        goto LABEL_12;
      }

      __break(0x5500u);
      return result;
    }

LABEL_12:
    v2[1] = &v4[v6];
  }

  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(char *result, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v8 = *(result + 1);
  v9 = *(result + 2);
  if (v9 - v8 < a5)
  {
    v10 = &v8[-*result];
    v11 = __CFADD__(v10, a5);
    v12 = &v10[a5];
    if (!v11)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v13 = v9 - *result;
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

      __break(1u);
    }

    __break(0x5500u);
LABEL_33:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v15 = v8 - __dst;
  if (v8 - __dst >= a5)
  {
    v19 = &__dst[a5];
    v20 = &v8[-a5];
    v21 = *(result + 1);
    if (v8 >= a5)
    {
      do
      {
        v22 = *v20++;
        *v21++ = v22;
      }

      while (v20 != v8);
    }

    *(result + 1) = v21;
    if (v8 != v19)
    {
      memmove(&__dst[a5], __dst, v8 - v19);
    }

    v23 = __dst;
    v24 = __src;
    v25 = a5;
LABEL_30:
    memmove(v23, v24, v25);
    return __dst;
  }

  if (!__OFSUB__(a5, v15))
  {
    v16 = &__src[v15];
    if (&__src[v15] == a4)
    {
      v17 = *(result + 1);
      v18 = v17;
    }

    else
    {
      v17 = (&v8[a4] - v16);
      v18 = *(result + 1);
      do
      {
        v26 = *v16++;
        *v18++ = v26;
      }

      while (v16 != a4);
    }

    *(result + 1) = v17;
    if (v15 < 1)
    {
      return __dst;
    }

    v27 = &__dst[a5];
    v28 = &v17[-a5];
    v29 = v17;
    if (&v17[-a5] < v8)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v8);
    }

    *(result + 1) = v29;
    if (v18 != v27)
    {
      memmove(&__dst[a5], __dst, v17 - v27);
    }

    v23 = __dst;
    v24 = __src;
    v25 = v15;
    goto LABEL_30;
  }

  __break(0x5515u);
  return result;
}

void std::allocator<otbr::Mdns::Publisher::TxtEntry>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const*,int>(uint64_t *a1, void **a2, int *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v4;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v7);
  }

  v15 = 0;
  v16 = 56 * v3;
  v17 = (56 * v3);
  v8 = std::string::basic_string[abi:ne200100]((56 * v3), *a2, *a3);
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  v8[48] = 1;
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_1003D9094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (__len >= 0x17)
  {
    if (((__len + 8) & 0x7FFFFFFFFFFFFFF8) != 0)
    {
      operator new();
    }

    __break(0x5515u);
  }

  else
  {
    __dst[23] = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    v5[__len] = 0;
    return v4;
  }

  return __dst;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<otbr::Mdns::Publisher::TxtEntry>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 56;
      std::allocator<otbr::Mdns::Publisher::TxtEntry>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void *std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(void *a1)
{
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::clear[abi:ne200100](a1);
  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[3] - result) >> 3)) < 0x492492492492493)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<otbr::Mdns::Publisher::TxtEntry>::destroy[abi:ne200100](v4, i - 56);
  }
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const*,int,unsigned char const*,int>(uint64_t *a1, char **a2, int *a3, const unsigned __int8 **a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v6 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v9 = 0x492492492492492;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v9);
  }

  v16 = 0;
  v17 = 56 * v5;
  v18 = (56 * v5);
  otbr::Mdns::Publisher::TxtEntry::TxtEntry((56 * v5), *a2, *a3, *a4, *a5);
  *&v18 = 56 * v5 + 56;
  v10 = a1[1];
  v11 = 56 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v16);
  return v15;
}

void sub_1003D9544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

otbr::Mdns::Publisher::TxtEntry *otbr::Mdns::Publisher::TxtEntry::TxtEntry(otbr::Mdns::Publisher::TxtEntry *this, char *a2, size_t a3, const unsigned __int8 *a4, uint64_t a5)
{
  v8 = std::string::basic_string[abi:ne200100](this, a2, a3);
  v8[3] = 0;
  v8[4] = 0;
  v8 += 3;
  v8[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v8, a4, &a4[a5], a5);
  *(this + 48) = 0;
  return this;
}

void sub_1003D95AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::list<otbr::Mdns::Publisher::DiscoverCallback>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      if (v5 == a4)
      {
        v6 = 0;
LABEL_8:
        v9 = __OFADD__(v6, 1);
        v10 = v6 + 1;
        if (!v9)
        {
          v11 = *(a3 + 16);
          v12 = v11 >= v10;
          v13 = v11 - v10;
          if (!v12)
          {
            goto LABEL_16;
          }

          *(a3 + 16) = v13;
          v14 = *(result + 16);
          v12 = __CFADD__(v14, v10);
          v15 = v14 + v10;
          if (!v12)
          {
            *(result + 16) = v15;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v7 = 0;
        v8 = a4;
        while (1)
        {
          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v8 = v8[1];
          ++v7;
          if (v8 == v5)
          {
            goto LABEL_8;
          }
        }
      }

      __break(0x5500u);
LABEL_16:
      __break(0x5515u);
      return result;
    }

LABEL_13:
    v16 = *a4;
    *(v16 + 8) = v5[1];
    *v5[1] = v16;
    v17 = *a2;
    *(v17 + 8) = a4;
    *a4 = v17;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t std::allocator<std::__list_node<otbr::Mdns::Publisher::DiscoverCallback,void *>>::construct[abi:ne200100]<otbr::Mdns::Publisher::DiscoverCallback,unsigned long long &,std::function<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)> &,std::function<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::__value_func[abi:ne200100](v10, a4);
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::__value_func[abi:ne200100](v9, a5);
  *a2 = v7;
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::__value_func[abi:ne200100](a2 + 8, v10);
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::__value_func[abi:ne200100](a2 + 40, v9);
  *(a2 + 72) = 0;
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::~__value_func[abi:ne200100](v9);
  return std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::~__value_func[abi:ne200100](v10);
}

void sub_1003D97B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredInstanceInfo const&)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<void ()(std::string const&,otbr::Mdns::Publisher::DiscoveredHostInfo const&)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::string::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  return a1;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    *v12 = *(a1 + 8);
    *&v12[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a3, a4);
    v10 = v9;
    if (v9 == a2 - 24)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      *v10 = v7;
      *(v10 + 8) = *v12;
      *(v10 + 15) = *&v12[7];
      *(v10 + 23) = v8;
    }

    else
    {
      std::string::operator=[abi:ne200100](v9, (a2 - 24));
      v11 = v10 + 24;
      if (*(a2 - 1) < 0)
      {
        operator delete(*(a2 - 24));
      }

      *(a2 - 24) = v7;
      *(a2 - 16) = *v12;
      *(a2 - 9) = *&v12[7];
      *(a2 - 1) = v8;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v11, a3, 0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 3));
    }
  }
}

void sub_1003D9C10(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = a1;
  while (1)
  {
    v11 = (a2 - v10) >> 4;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v27 = *(a2 - 2);
        v26 = a2 - 2;
        v28 = bswap64(v27);
        v29 = bswap64(*v10);
        if (v28 == v29 && (v28 = bswap64(v26[1]), v29 = bswap64(v10[1]), v28 == v29))
        {
          v30 = 0;
        }

        else if (v28 < v29)
        {
          v30 = -1;
        }

        else
        {
          v30 = 1;
        }

        if (v30 < 0)
        {
          v40 = *v10;
          *v10 = *v26;
          *v26 = v40;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v10, v10 + 2, v10 + 4);
      v22 = *(a2 - 2);
      v21 = a2 - 2;
      v23 = bswap64(v22);
      v24 = bswap64(v10[4]);
      if (v23 == v24 && (v23 = bswap64(v21[1]), v24 = bswap64(v10[5]), v23 == v24))
      {
        v25 = 0;
      }

      else if (v23 < v24)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      if (v25 < 0)
      {
        v31 = *(v10 + 2);
        *(v10 + 2) = *v21;
        *v21 = v31;
        v32 = bswap64(v10[4]);
        v33 = bswap64(v10[2]);
        if (v32 == v33 && (v32 = bswap64(v10[5]), v33 = bswap64(v10[3]), v32 == v33))
        {
          v34 = 0;
        }

        else
        {
          v34 = v32 < v33 ? -1 : 1;
        }

        if (v34 < 0)
        {
          v35 = *(v10 + 1);
          *(v10 + 1) = *(v10 + 2);
          *(v10 + 2) = v35;
          v36 = bswap64(v10[2]);
          v37 = bswap64(*v10);
          if (v36 == v37 && (v36 = bswap64(v10[3]), v37 = bswap64(v10[1]), v36 == v37))
          {
            v38 = 0;
          }

          else
          {
            v38 = v36 < v37 ? -1 : 1;
          }

          if (v38 < 0)
          {
            v41 = *v10;
            *v10 = *(v10 + 1);
            *(v10 + 1) = v41;
          }
        }
      }

      return;
    }

    if (v11 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
      return;
    }

LABEL_9:
    if (v11 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(v10, a2);
      }

      return;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,otbr::Ip6Address *>(v10, a2, a2, a3);
      }

      return;
    }

    if (__OFSUB__(a4--, 1))
    {
      __break(0x5515u);
    }

    v13 = a2 - 2;
    v14 = &v10[2 * (v11 >> 1)];
    if (v11 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(&v10[2 * (v11 >> 1)], v10, v13);
      if (a5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v10, &v10[2 * (v11 >> 1)], v13);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v10 + 2, v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v10 + 4, v14 + 2, a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v14 - 2, v14, v14 + 2);
      v39 = *v10;
      *v10 = *v14;
      *v14 = v39;
      if (a5)
      {
        goto LABEL_23;
      }
    }

    v15 = bswap64(*(v10 - 2));
    v16 = bswap64(*v10);
    if (v15 == v16 && (v15 = bswap64(*(v10 - 1)), v16 = bswap64(v10[1]), v15 == v16))
    {
      v17 = 0;
    }

    else if (v15 < v16)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 0x80000000) == 0)
    {
      a1 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,otbr::Ip6Address *,std::__less<void,void> &>(v10, a2);
      a5 = 0;
      goto LABEL_1;
    }

LABEL_23:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,otbr::Ip6Address *,std::__less<void,void> &>(v10, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(v10, v18);
    a1 = v18 + 2;
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(v18 + 2, a2))
    {
      if (v20)
      {
        goto LABEL_1;
      }

LABEL_28:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,false>(v10, v18, a3, a4, a5 & 1);
      a5 = 0;
      a1 = v18 + 2;
      goto LABEL_1;
    }

    a2 = v18;
    if (v20)
    {
      return;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(v10, v10 + 2, a2 - 2);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = bswap64(*a2);
  v4 = bswap64(*a1);
  if (v3 == v4 && (v3 = bswap64(a2[1]), v4 = bswap64(a1[1]), v3 == v4))
  {
    v5 = 0;
  }

  else if (v3 < v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  v6 = bswap64(*a3);
  v7 = bswap64(*a2);
  if (v6 != v7 || (v6 = bswap64(a3[1]), v7 = bswap64(a2[1]), v6 != v7))
  {
    if (v6 < v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v5 < 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    if ((v8 & 0x80000000) == 0)
    {
      return 0;
    }

    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    v14 = bswap64(*a2);
    v15 = bswap64(*a1);
    if (v14 != v15 || (v14 = bswap64(a2[1]), v15 = bswap64(a1[1]), v14 != v15))
    {
      v18 = v14 < v15 ? -1 : 1;
      if (v18 < 0)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }

    return 1;
  }

  v8 = 0;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v8 < 0)
  {
    v17 = *a1;
    *a1 = *a3;
  }

  else
  {
    v9 = *a1;
    *a1 = *a2;
    *a2 = v9;
    v10 = bswap64(*a3);
    v11 = bswap64(*a2);
    if (v10 == v11)
    {
      v10 = bswap64(a3[1]);
      v11 = bswap64(a2[1]);
      if (v10 == v11)
      {
        return 1;
      }
    }

    v16 = v10 < v11 ? -1 : 1;
    if ((v16 & 0x80000000) == 0)
    {
      return 1;
    }

    v17 = *a2;
    *a2 = *a3;
  }

  *a3 = v17;
  return 1;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(a1, a2, a3);
  v11 = bswap64(*a4);
  v12 = bswap64(*a3);
  if (v11 != v12 || (v11 = bswap64(a4[1]), v12 = bswap64(a3[1]), v11 != v12))
  {
    v13 = v11 < v12 ? -1 : 1;
    if (v13 < 0)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      v14 = bswap64(*a3);
      v15 = bswap64(*a2);
      if (v14 != v15 || (v14 = bswap64(a3[1]), v15 = bswap64(a2[1]), v14 != v15))
      {
        v16 = v14 < v15 ? -1 : 1;
        if (v16 < 0)
        {
          result = *a2;
          *a2 = *a3;
          *a3 = result;
          v17 = bswap64(*a2);
          v18 = bswap64(*a1);
          if (v17 != v18 || (v17 = bswap64(a2[1]), v18 = bswap64(a1[1]), v17 != v18))
          {
            v19 = v17 < v18 ? -1 : 1;
            if (v19 < 0)
            {
              result = *a1;
              *a1 = *a2;
              *a2 = result;
            }
          }
        }
      }
    }
  }

  v20 = bswap64(*a5);
  v21 = bswap64(*a4);
  if (v20 != v21 || (v20 = bswap64(a5[1]), v21 = bswap64(a4[1]), v20 != v21))
  {
    v22 = v20 < v21 ? -1 : 1;
    if (v22 < 0)
    {
      result = *a4;
      *a4 = *a5;
      *a5 = result;
      v23 = bswap64(*a4);
      v24 = bswap64(*a3);
      if (v23 != v24 || (v23 = bswap64(a4[1]), v24 = bswap64(a3[1]), v23 != v24))
      {
        v25 = v23 < v24 ? -1 : 1;
        if (v25 < 0)
        {
          result = *a3;
          *a3 = *a4;
          *a4 = result;
          v26 = bswap64(*a3);
          v27 = bswap64(*a2);
          if (v26 != v27 || (v26 = bswap64(a3[1]), v27 = bswap64(a2[1]), v26 != v27))
          {
            v28 = v26 < v27 ? -1 : 1;
            if (v28 < 0)
            {
              result = *a2;
              *a2 = *a3;
              *a3 = result;
              v29 = bswap64(*a2);
              v30 = bswap64(*a1);
              if (v29 == v30 && (v29 = bswap64(a2[1]), v30 = bswap64(a1[1]), v29 == v30))
              {
                v31 = 0;
              }

              else if (v29 < v30)
              {
                v31 = -1;
              }

              else
              {
                v31 = 1;
              }

              if (v31 < 0)
              {
                result = *a1;
                *a1 = *a2;
                *a2 = result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = bswap64(v4[2]);
        v7 = bswap64(*v4);
        if (v6 != v7 || (v6 = bswap64(v5[1]), v7 = bswap64(v4[1]), v6 != v7))
        {
          v8 = v6 < v7 ? -1 : 1;
          if (v8 < 0)
          {
            v15 = *v5;
            v9 = v3;
            while (1)
            {
              v10 = result + v9;
              *(result + v9 + 16) = *(result + v9);
              if (!v9)
              {
                break;
              }

              v11 = bswap64(v15);
              v12 = bswap64(*(v10 - 2));
              if (v11 == v12 && (v11 = bswap64(*(&v15 + 1)), v12 = bswap64(*(v10 - 1)), v11 == v12))
              {
                v13 = 0;
              }

              else if (v11 < v12)
              {
                v13 = -1;
              }

              else
              {
                v13 = 1;
              }

              v9 -= 16;
              if ((v13 & 0x80000000) == 0)
              {
                v14 = (result + v9 + 16);
                goto LABEL_21;
              }
            }

            v14 = result;
LABEL_21:
            *v14 = v15;
          }
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result - 2;
      do
      {
        v4 = v2;
        v5 = bswap64(*v2);
        v6 = bswap64(*result);
        if (v5 != v6 || (v5 = bswap64(v4[1]), v6 = bswap64(result[1]), v5 != v6))
        {
          v7 = v5 < v6 ? -1 : 1;
          if (v7 < 0)
          {
            v12 = *v4;
            v8 = v3;
            do
            {
              *(v8 + 2) = *(v8 + 1);
              v9 = bswap64(v12);
              v10 = bswap64(*v8);
              if (v9 == v10 && (v9 = bswap64(*(&v12 + 1)), v10 = bswap64(v8[1]), v9 == v10))
              {
                v11 = 0;
              }

              else if (v9 < v10)
              {
                v11 = -1;
              }

              else
              {
                v11 = 1;
              }

              v8 -= 2;
            }

            while (v11 < 0);
            *(v8 + 2) = v12;
          }
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,otbr::Ip6Address *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v32 = *a1;
  v2 = bswap64(*a1);
  v3 = bswap64(*(a2 - 16));
  if (v2 != v3 || (v2 = bswap64(*(&v32 + 1)), v3 = bswap64(*(a2 - 8)), v2 != v3))
  {
    v10 = v2 < v3 ? -1 : 1;
    if (v10 < 0)
    {
      v4 = bswap64(v32);
      v5 = a1;
      while (1)
      {
        v6 = v5[2];
        v5 += 2;
        v7 = bswap64(v6);
        if (v4 != v7)
        {
          break;
        }

        v8 = bswap64(*(&v32 + 1));
        v7 = bswap64(v5[1]);
        if (v8 != v7)
        {
          goto LABEL_9;
        }

        v9 = 0;
LABEL_12:
        if (v9 < 0)
        {
          goto LABEL_27;
        }
      }

      v8 = v4;
LABEL_9:
      if (v8 < v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_12;
    }
  }

  v11 = a1 + 2;
  do
  {
    v5 = v11;
    if (v11 >= a2)
    {
      break;
    }

    v12 = bswap64(v32);
    v13 = bswap64(*v5);
    if (v12 == v13 && (v12 = bswap64(*(&v32 + 1)), v13 = bswap64(v5[1]), v12 == v13))
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 < v13 ? -1 : 1;
    }

    v11 = v5 + 2;
  }

  while ((v14 & 0x80000000) == 0);
LABEL_27:
  if (v5 < a2)
  {
    v15 = bswap64(v32);
    do
    {
      v16 = *(a2 - 16);
      a2 -= 16;
      v17 = bswap64(v16);
      if (v15 == v17)
      {
        v18 = bswap64(*(&v32 + 1));
        v17 = bswap64(*(a2 + 8));
        if (v18 == v17)
        {
          break;
        }
      }

      else
      {
        v18 = v15;
      }

      if (v18 < v17)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19 < 0);
  }

  if (v5 >= a2)
  {
    goto LABEL_57;
  }

  do
  {
    v33 = *v5;
    *v5 = *a2;
    *a2 = v33;
    v20 = bswap64(v32);
    do
    {
      while (1)
      {
        v21 = v5[2];
        v5 += 2;
        v22 = bswap64(v21);
        if (v20 != v22)
        {
          break;
        }

        v23 = bswap64(*(&v32 + 1));
        v22 = bswap64(v5[1]);
        if (v23 != v22)
        {
          goto LABEL_43;
        }
      }

      v23 = v20;
LABEL_43:
      if (v23 < v22)
      {
        v24 = -1;
      }

      else
      {
        v24 = 1;
      }
    }

    while ((v24 & 0x80000000) == 0);
    v25 = bswap64(v32);
    do
    {
      v26 = *(a2 - 16);
      a2 -= 16;
      v27 = bswap64(v26);
      if (v25 == v27)
      {
        v28 = bswap64(*(&v32 + 1));
        v27 = bswap64(*(a2 + 8));
        if (v28 == v27)
        {
          break;
        }
      }

      else
      {
        v28 = v25;
      }

      if (v28 < v27)
      {
        v29 = -1;
      }

      else
      {
        v29 = 1;
      }
    }

    while (v29 < 0);
  }

  while (v5 < a2);
LABEL_57:
  v30 = v5 - 2;
  if (v5 - 2 != a1)
  {
    *a1 = *v30;
  }

  *v30 = v32;
  return v5;
}

unint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,otbr::Ip6Address *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v32 = *a1;
  v3 = bswap64(*a1);
  do
  {
    v4 = bswap64(a1[v2 + 2]);
    if (v4 == v3)
    {
      v4 = bswap64(a1[v2 + 3]);
      v5 = bswap64(*(&v32 + 1));
      if (v4 == v5)
      {
        v6 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v5 = v3;
    }

    if (v4 < v5)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

LABEL_9:
    v2 += 2;
  }

  while (v6 < 0);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 != 2)
  {
    v9 = bswap64(v32);
    while (1)
    {
      v10 = *(a2 - 16);
      a2 -= 16;
      v11 = bswap64(v10);
      if (v11 != v9)
      {
        break;
      }

      v11 = bswap64(*(a2 + 8));
      v12 = bswap64(*(&v32 + 1));
      if (v11 != v12)
      {
LABEL_16:
        if (v11 < v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (v13 < 0)
        {
          goto LABEL_29;
        }
      }
    }

    v12 = v9;
    goto LABEL_16;
  }

  do
  {
    if (v7 >= a2)
    {
      break;
    }

    v14 = *(a2 - 16);
    a2 -= 16;
    v15 = bswap64(v14);
    v16 = bswap64(v32);
    if (v15 == v16 && (v15 = bswap64(*(a2 + 8)), v16 = bswap64(*(&v32 + 1)), v15 == v16))
    {
      v17 = 0;
    }

    else
    {
      v17 = v15 < v16 ? -1 : 1;
    }
  }

  while ((v17 & 0x80000000) == 0);
LABEL_29:
  if (v7 >= a2)
  {
    goto LABEL_51;
  }

  v18 = v7;
  v19 = a2;
  while (2)
  {
    v20 = *v18;
    *v18 = *v19;
    *v19 = v20;
    v21 = bswap64(v32);
    do
    {
      v22 = v18[2];
      v18 += 2;
      v23 = bswap64(v22);
      if (v23 == v21)
      {
        v23 = bswap64(v18[1]);
        v24 = bswap64(*(&v32 + 1));
        if (v23 == v24)
        {
          break;
        }
      }

      else
      {
        v24 = v21;
      }

      if (v23 < v24)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }

    while (v25 < 0);
    v26 = bswap64(v32);
    do
    {
      while (2)
      {
        v27 = *(v19 - 16);
        v19 -= 16;
        v28 = bswap64(v27);
        if (v28 == v26)
        {
          v28 = bswap64(*(v19 + 8));
          v29 = bswap64(*(&v32 + 1));
          if (v28 == v29)
          {
            continue;
          }
        }

        else
        {
          v29 = v26;
        }

        break;
      }

      if (v28 < v29)
      {
        v30 = -1;
      }

      else
      {
        v30 = 1;
      }
    }

    while ((v30 & 0x80000000) == 0);
    if (v18 < v19)
    {
      continue;
    }

    break;
  }

  v8 = v18 - 2;
LABEL_51:
  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v32;
  return v8;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(a1, a1 + 2, a1 + 4);
        v24 = *(a2 - 2);
        v23 = a2 - 2;
        v25 = bswap64(v24);
        v26 = bswap64(a1[4]);
        if (v25 != v26 || (v25 = bswap64(v23[1]), v26 = bswap64(a1[5]), v25 != v26))
        {
          v29 = v25 < v26 ? -1 : 1;
          if (v29 < 0)
          {
            v30 = *(a1 + 2);
            *(a1 + 2) = *v23;
            *v23 = v30;
            v31 = bswap64(a1[4]);
            v32 = bswap64(a1[2]);
            if (v31 == v32 && (v31 = bswap64(a1[5]), v32 = bswap64(a1[3]), v31 == v32))
            {
              v33 = 0;
            }

            else
            {
              v33 = v31 < v32 ? -1 : 1;
            }

            if (v33 < 0)
            {
              v34 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v34;
              v35 = bswap64(a1[2]);
              v36 = bswap64(*a1);
              if (v35 == v36 && (v35 = bswap64(a1[3]), v36 = bswap64(a1[1]), v35 == v36))
              {
                v37 = 0;
              }

              else
              {
                v37 = v35 < v36 ? -1 : 1;
              }

              if (v37 < 0)
              {
                v38 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v38;
              }
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_12;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 2;
    v6 = bswap64(*(a2 - 2));
    v7 = bswap64(*a1);
    if (v6 != v7 || (v6 = bswap64(*(a2 - 1)), v7 = bswap64(a1[1]), v6 != v7))
    {
      if (v6 < v7)
      {
        v27 = -1;
      }

      else
      {
        v27 = 1;
      }

      if (v27 < 0)
      {
        v28 = *a1;
        *a1 = *v5;
        *v5 = v28;
      }
    }

    return 1;
  }

LABEL_12:
  v8 = a1 + 4;
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,0>(a1, a1 + 2, a1 + 4);
  v10 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = bswap64(*v10);
    v14 = bswap64(*v8);
    if (v13 == v14)
    {
      v13 = bswap64(v10[1]);
      v14 = bswap64(v8[1]);
      if (v13 == v14)
      {
        goto LABEL_33;
      }
    }

    v15 = v13 < v14 ? -1 : 1;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    v39 = *v10;
    v16 = v11;
    while (1)
    {
      v17 = a1 + v16;
      *(a1 + v16 + 48) = *(a1 + v16 + 32);
      if (v16 == -32)
      {
        break;
      }

      v18 = bswap64(v39);
      v19 = bswap64(*(v17 + 2));
      if (v18 == v19 && (v18 = bswap64(*(&v39 + 1)), v19 = bswap64(*(v17 + 3)), v18 == v19))
      {
        v20 = 0;
      }

      else if (v18 < v19)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      v16 -= 16;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = (a1 + v16 + 48);
        goto LABEL_31;
      }
    }

    v21 = a1;
LABEL_31:
    *v21 = v39;
    if (__CFADD__(v12++, 1))
    {
      break;
    }

    if (v12 == 8)
    {
      return v10 + 2 == a2;
    }

LABEL_33:
    v8 = v10;
    v11 += 16;
    v10 += 2;
    if (v10 == a2)
    {
      return 1;
    }
  }

  __break(0x5500u);
  return result;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *,otbr::Ip6Address *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = bswap64(*v12);
        v14 = bswap64(*a1);
        if (v13 != v14 || (v13 = bswap64(v12[1]), v14 = bswap64(a1[1]), v13 != v14))
        {
          v15 = v13 < v14 ? -1 : 1;
          if (v15 < 0)
          {
            v16 = *v12;
            *v12 = *a1;
            *a1 = v16;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(a1, a4, v8, a1);
          }
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 2;
      do
      {
        v21 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(a1, a4, v8);
        if (v17 == v18)
        {
          *v18 = v21;
        }

        else
        {
          *v18 = *v17;
          *v17 = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 4);
        }

        v17 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = bswap64(*v8);
        v11 = bswap64(v8[2]);
        if (v10 == v11 && (v10 = bswap64(v8[1]), v11 = bswap64(v8[3]), v10 == v11))
        {
          v12 = 0;
        }

        else
        {
          v12 = v10 < v11 ? -1 : 1;
        }

        if (v12 < 0)
        {
          v7 = v9;
          v8 += 2;
        }
      }

      if ((v13 = bswap64(*v8), v14 = bswap64(*a4), v13 == v14) && (v13 = bswap64(v8[1]), v14 = bswap64(a4[1]), v13 == v14) || (v13 < v14 ? (v15 = -1) : (v15 = 1), (v15 & 0x80000000) == 0))
      {
        v23 = *a4;
        while (1)
        {
          v16 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
LABEL_40:
            *v16 = v23;
            return result;
          }

          if (v7 + 0x4000000000000000 < 0)
          {
            break;
          }

          if (__OFADD__(2 * v7, 2))
          {
            goto LABEL_43;
          }

          v8 = (result + 16 * ((2 * v7) | 1));
          if (2 * v7 + 2 >= a3)
          {
            v7 = (2 * v7) | 1;
          }

          else
          {
            v17 = bswap64(*v8);
            v18 = bswap64(v8[2]);
            if (v17 == v18 && (v17 = bswap64(v8[1]), v18 = bswap64(v8[3]), v17 == v18))
            {
              v19 = 0;
            }

            else if (v17 < v18)
            {
              v19 = -1;
            }

            else
            {
              v19 = 1;
            }

            if (v19 >= 0)
            {
              v7 = (2 * v7) | 1;
            }

            else
            {
              v8 += 2;
              v7 = 2 * v7 + 2;
            }
          }

          v20 = bswap64(*v8);
          v21 = bswap64(v23);
          if (v20 == v21 && (v20 = bswap64(v8[1]), v21 = bswap64(*(&v23 + 1)), v20 == v21))
          {
            v22 = 0;
          }

          else if (v20 < v21)
          {
            v22 = -1;
          }

          else
          {
            v22 = 1;
          }

          a4 = v16;
          if (v22 < 0)
          {
            goto LABEL_40;
          }
        }

        __break(0x550Cu);
LABEL_43:
        __break(0x5500u);
      }
    }
  }

  return result;
}

unint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = __OFSUB__(a3, 2);
  while (v3 + 0x4000000000000000 >= 0)
  {
    v5 = 2 * v3 + 2;
    if (__OFADD__(2 * v3, 2))
    {
      __break(0x5500u);
LABEL_21:
      __break(0x5515u);
      break;
    }

    v6 = &result[2 * v3];
    v7 = v6 + 2;
    v8 = (2 * v3) | 1;
    if (v5 >= a3)
    {
      v3 = (2 * v3) | 1;
    }

    else
    {
      v9 = v6 + 4;
      v10 = bswap64(*v7);
      v11 = bswap64(*v9);
      if (v10 == v11 && (v10 = bswap64(v7[1]), v11 = bswap64(v9[1]), v10 == v11))
      {
        v12 = 0;
      }

      else if (v10 < v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      if (v12 >= 0)
      {
        v3 = v8;
      }

      else
      {
        v7 = v9;
        v3 = v5;
      }
    }

    *result = *v7;
    if (v4)
    {
      goto LABEL_21;
    }

    result = v7;
    if (v3 > (a3 - 2) / 2)
    {
      return v7;
    }
  }

  __break(0x550Cu);
  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,otbr::Ip6Address *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (a1 + 16 * v4);
    v6 = (a2 - 16);
    v7 = bswap64(*v5);
    v8 = bswap64(*(a2 - 16));
    if (v7 != v8 || (v7 = bswap64(v5[1]), v8 = bswap64(*(a2 - 8)), v7 != v8))
    {
      v9 = v7 < v8 ? -1 : 1;
      if (v9 < 0)
      {
        v15 = *v6;
        do
        {
          v10 = v5;
          *v6 = *v5;
          if (!v4)
          {
            break;
          }

          v4 = (v4 - 1) >> 1;
          v5 = (a1 + 16 * v4);
          v11 = bswap64(*v5);
          v12 = bswap64(v15.n128_u64[0]);
          if (v11 == v12 && (v11 = bswap64(v5[1]), v12 = bswap64(v15.n128_u64[1]), v11 == v12))
          {
            v13 = 0;
          }

          else
          {
            v13 = v11 < v12 ? -1 : 1;
          }

          v6 = v10;
        }

        while (v13 < 0);
        result = v15;
        *v10 = v15;
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__emplace_unique_key_args<std::string,std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v4 = a1 + 8;
  v5 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__lower_bound<std::string>(a1, a2, *(a1 + 8), a1 + 8);
  if (v4 != v5)
  {
    v6 = v5;
    if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, (v5 + 32)))
    {
      return v6;
    }
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__lower_bound<std::string>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = std::less<std::string>::operator()[abi:ne200100](a1, (v5 + 32), a2);
      if (v8)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        a4 = v5;
      }

      v5 = *(v5 + v9);
    }

    while (v5);
  }

  return a4;
}

uint64_t **std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__remove_node_pointer(a1, a2);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<otbr::Mdns::Publisher::KeyRegistration>>,0>((a2 + 4));
  operator delete(a2);
  return v3;
}

uint64_t **std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__remove_node_pointer(uint64_t **result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*result == a2)
  {
    *result = v3;
  }

  v6 = result[2];
  v7 = v6 != 0;
  v8 = (v6 - 1);
  if (v7)
  {
    result[2] = v8;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(result[1], a2);
    return v3;
  }

  else
  {
    __break(0x5515u);
  }

  return result;
}

void *std::__shared_ptr_emplace<otbr::OnceCallback<void ()(otbrError)>>::__shared_ptr_emplace[abi:ne200100]<otbr::OnceCallback<void ()(otbrError)>,std::allocator<otbr::OnceCallback<void ()(otbrError)>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1004CE240;
  std::__function::__value_func<void ()(otbrError)>::__value_func[abi:ne200100]((a1 + 3), a2);
  std::__function::__value_func<void ()(otbrError)>::operator=[abi:ne200100](a2);
  return a1;
}

void std::__shared_ptr_emplace<otbr::OnceCallback<void ()(otbrError)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004CE240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::~__func(void *a1)
{
  *a1 = off_1004CE290;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::~__func(void *a1)
{
  *a1 = off_1004CE290;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete();
}

void *std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::__clone(void *result, void *a2)
{
  *a2 = off_1004CE290;
  v2 = result[3];
  a2[2] = result[2];
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = result[5];
  a2[4] = result[4];
  a2[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::operator()(void *a1, unsigned int *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a2;
  otbr::OnceCallback<void ()(otbrError)>::operator()(v3);
  otbr::OnceCallback<void ()(otbrError)>::operator()(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1003DBC84(_Unwind_Exception *exception_object)
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

uint64_t std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateHostRegistration(std::string const&,std::vector<otbr::Ip6Address> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::~__func(void *a1)
{
  *a1 = off_1004CE398;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateHostRegistration(std::string const&,std::vector<otbr::Ip6Address> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::~__func(void *a1)
{
  *a1 = off_1004CE398;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete();
}

void *std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateHostRegistration(std::string const&,std::vector<otbr::Ip6Address> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::__clone(void *result, void *a2)
{
  *a2 = off_1004CE398;
  v2 = result[3];
  a2[2] = result[2];
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = result[5];
  a2[4] = result[4];
  a2[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateHostRegistration(std::string const&,std::vector<otbr::Ip6Address> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateHostRegistration(std::string const&,std::vector<otbr::Ip6Address> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::operator()(void *a1, unsigned int *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a2;
  otbr::OnceCallback<void ()(otbrError)>::operator()(v3);
  otbr::OnceCallback<void ()(otbrError)>::operator()(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1003DBFCC(_Unwind_Exception *exception_object)
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

uint64_t std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateHostRegistration(std::string const&,std::vector<otbr::Ip6Address> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(std::string const&,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::~__func(void *a1)
{
  *a1 = off_1004CE490;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(std::string const&,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::~__func(void *a1)
{
  *a1 = off_1004CE490;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete();
}

void *std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(std::string const&,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::__clone(void *result, void *a2)
{
  *a2 = off_1004CE490;
  v2 = result[3];
  a2[2] = result[2];
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = result[5];
  a2[4] = result[4];
  a2[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(std::string const&,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateServiceRegistration(std::string const&,std::string const&,std::string const&,std::vector<std::string> const&,unsigned short,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(std::string const&,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::operator()(void *a1, unsigned int *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a2;
  otbr::OnceCallback<void ()(otbrError)>::operator()(v3);
  otbr::OnceCallback<void ()(otbrError)>::operator()(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1003DC2C4(_Unwind_Exception *exception_object)
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

uint64_t std::__function::__func<std::__bind<otbr::Mdns::Publisher::HandleDuplicateKeyRegistration(std::string const&,std::vector<unsigned char> const&,otbr::OnceCallback<void ()(otbrError)> &&)::$_0,std::shared_ptr<otbr::OnceCallback<void ()(otbrError)>>,std::shared_ptr,std::placeholders::__ph<1> const&>,std::allocator<std::placeholders::__ph<1> const&>,void ()(otbrError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::find<std::pair<std::string,std::string>>(uint64_t a1, const void **a2)
{
  v4 = a1 + 8;
  v5 = std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__lower_bound<std::pair<std::string,std::string>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v4 != v5)
  {
    v6 = v5;
    if (!std::less<std::pair<std::string,std::string>>::operator()[abi:ne200100](a1, a2, (v5 + 32)))
    {
      return v6;
    }
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::__lower_bound<std::pair<std::string,std::string>>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = std::less<std::pair<std::string,std::string>>::operator()[abi:ne200100](a1, (v5 + 32), a2);
      if (v8)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        a4 = v5;
      }

      v5 = *(v5 + v9);
    }

    while (v5);
  }

  return a4;
}

uint64_t **std::__tree<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__remove_node_pointer(a1, a2);
  std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,std::string> const,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,0>((a2 + 4));
  operator delete(a2);
  return v3;
}

uint64_t **std::__tree<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

void *std::__split_buffer<otbr::Ip6Address>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void sub_1003DC668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v15;
  std::mutex::~mutex(v14);
  std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(v13, *(v12 + 7));
  a12 = v16;
  std::vector<otbr::TaskRunner::DelayedTask>::__destroy_vector::operator()[abi:ne200100](&a12);
  otbr::MainloopProcessor::~MainloopProcessor(v12);
  _Unwind_Resume(a1);
}

void otbr::TaskRunner::~TaskRunner(otbr::TaskRunner *this)
{
  *this = off_1004CE588;
  v2 = *(this + 2);
  if (v2 != -1)
  {
    close(v2);
    *(this + 2) = -1;
  }

  v3 = *(this + 3);
  if (v3 != -1)
  {
    close(v3);
    *(this + 3) = -1;
  }

  std::mutex::~mutex((this + 80));
  std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(this + 48, *(this + 7));
  v4 = (this + 16);
  std::vector<otbr::TaskRunner::DelayedTask>::__destroy_vector::operator()[abi:ne200100](&v4);
  otbr::MainloopProcessor::~MainloopProcessor(this);
}

{
  otbr::TaskRunner::~TaskRunner(this);

  operator delete();
}

uint64_t otbr::TaskRunner::Post(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  otbr::TaskRunner::Post(a1, 0, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_1003DC7F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t otbr::TaskRunner::Post(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a3);
  v5 = otbr::TaskRunner::PushTask(a1, a2, v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  return v5;
}

void sub_1003DC890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t otbr::TaskRunner::PushTask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  __buf = 1;
  v22 = 0;
  std::mutex::lock((a1 + 80));
  v5 = *(a1 + 72);
  if (v5 == -1)
  {
    __break(0x5500u);
    goto LABEL_13;
  }

  *(a1 + 72) = v5 + 1;
  v22 = v5;
  std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1 + 48, &v22);
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 32))
  {
    v7 = std::vector<otbr::TaskRunner::DelayedTask>::__emplace_back_slow_path<unsigned long long &,std::chrono::duration<long long,std::ratio<1l,1000l>> &,std::function<void ()(void)>>(a1 + 16, &v22, &v24, a3);
  }

  else
  {
    std::allocator<otbr::TaskRunner::DelayedTask>::construct[abi:ne200100]<otbr::TaskRunner::DelayedTask,unsigned long long &,std::chrono::duration<long long,std::ratio<1l,1000l>> &,std::function<void ()(void)>>(a1 + 16, *(a1 + 24), &v22, &v24, a3);
    v7 = v6 + 48;
    *(a1 + 24) = v6 + 48;
  }

  *(a1 + 24) = v7;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator &,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(*(a1 + 16), v7, &v25, 0xAAAAAAAAAAAAAAABLL * ((v7 - *(a1 + 16)) >> 4));
  std::mutex::unlock((a1 + 80));
  do
  {
    if (write(*(a1 + 12), &__buf, 1uLL) != -1)
    {
      return v22;
    }
  }

  while (*__error() == 4);
  if (*__error() != 35 && *__error() != 35)
  {
LABEL_13:
    v16 = __error();
    strerror(*v16);
    otbrLog(0, "UTILS", "FAILED %s:%d - %s", v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/common/task_runner.cpp");
    exit(-1);
  }

  v8 = *(a1 + 12);
  v9 = __error();
  strerror(*v9);
  otbrLog(4u, "UTILS", "Failed to write fd %d: %s", v10, v11, v12, v13, v14, v8);
  return v22;
}

void sub_1003DCA44(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  std::mutex::unlock((v1 + 80));
  _Unwind_Resume(a1);
}

void otbr::TaskRunner::Update(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (__darwin_check_fd_set_overflow(v4, a2, 0))
  {
    *(a2 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  }

  v5 = *(a2 + 384);
  if (*(a1 + 8) > v5)
  {
    v5 = *(a1 + 8);
  }

  *(a2 + 384) = v5;
  std::mutex::lock((a1 + 80));
  if (*(a1 + 16) == *(a1 + 24))
  {
    goto LABEL_14;
  }

  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = *(*(a1 + 16) + 8);
  if (__OFSUB__(v7, v6.__d_.__rep_))
  {
    __break(0x5515u);
    goto LABEL_18;
  }

  v8 = *(a2 + 392);
  v9 = 1000000 * v8;
  if ((v8 * 1000000) >> 64 != (1000000 * v8) >> 63)
  {
LABEL_18:
    __break(0x550Cu);
    goto LABEL_19;
  }

  v10 = *(a2 + 400);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_19:
    __break(0x5500u);
    return;
  }

  if (v7 >= v6.__d_.__rep_)
  {
    v13 = (v7 - v6.__d_.__rep_) / 1000;
  }

  else
  {
    v13 = 0;
  }

  if (v12 >= v13)
  {
    *(a2 + 392) = v13 / 1000000;
    *(a2 + 400) = v13 % 1000000;
  }

LABEL_14:

  std::mutex::unlock((a1 + 80));
}

uint64_t otbr::TaskRunner::Process(int *a1)
{
  do
  {
    do
    {
      v10 = 0;
      v2 = read(a1[2], &v10, 1uLL);
    }

    while (v2 > 0);
  }

  while (v2 == -1 && *__error() == 4);
  if (*__error() != 35 && *__error() != 35)
  {
    v4 = __error();
    strerror(*v4);
    otbrLog(0, "UTILS", "FAILED %s:%d - %s", v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/common/task_runner.cpp");
    exit(-1);
  }

  return otbr::TaskRunner::PopTasks(a1);
}

uint64_t otbr::TaskRunner::PopTasks(otbr::TaskRunner *this)
{
  while (1)
  {
    v12 = 0;
    std::mutex::lock((this + 80));
    v2 = *(this + 2);
    if (v2 == *(this + 3))
    {
      break;
    }

    v3 = *(v2 + 8);
    if (std::chrono::steady_clock::now().__d_.__rep_ < v3)
    {
      break;
    }

    v4 = *(this + 2);
    v9 = *v4;
    std::function<void ()(void)>::operator=(v11, (v4 + 2));
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(*(this + 2), *(this + 3), &v10, 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - *(this + 2)) >> 4));
    v5 = *(this + 3);
    v6 = v5 - 48;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5 - 32);
    *(this + 3) = v6;
    v7 = std::__tree<unsigned long long>::__erase_unique<unsigned long long>(this + 6, &v9);
    std::mutex::unlock((this + 80));
    if (v7)
    {
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12);
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  }

  std::mutex::unlock((this + 80));
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
}

void sub_1003DCD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void otbr::TaskRunner::Cancel(otbr::TaskRunner *this, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((this + 80));
  std::__tree<unsigned long long>::__erase_unique<unsigned long long>(this + 6, &v3);
  std::mutex::unlock((this + 80));
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::vector<otbr::TaskRunner::DelayedTask>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 48;
        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v3 - 32));
        v3 = v5;
      }

      while (v5 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v6 = *v1;
    if (0xAAAAAAAAAAAAAAABLL * ((v1[2] - *v1) >> 4) >= 0x555555555555556)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v6);
    }
  }
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::vector<otbr::TaskRunner::DelayedTask>::__emplace_back_slow_path<unsigned long long &,std::chrono::duration<long long,std::ratio<1l,1000l>> &,std::function<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x555555555555555)
  {
    goto LABEL_12;
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::TaskRunner::DelayedTask>>(a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  std::allocator<otbr::TaskRunner::DelayedTask>::construct[abi:ne200100]<otbr::TaskRunner::DelayedTask,unsigned long long &,std::chrono::duration<long long,std::ratio<1l,1000l>> &,std::function<void ()(void)>>(a1, (48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::TaskRunner::DelayedTask>,otbr::TaskRunner::DelayedTask*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<otbr::TaskRunner::DelayedTask>::~__split_buffer(&v15);
  return v14;
}

void sub_1003DD15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::TaskRunner::DelayedTask>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator<otbr::TaskRunner::DelayedTask>::construct[abi:ne200100]<otbr::TaskRunner::DelayedTask,unsigned long long &,std::chrono::duration<long long,std::ratio<1l,1000l>> &,std::function<void ()(void)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a3;
  v7 = *a4;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, a5);
  otbr::TaskRunner::DelayedTask::DelayedTask(a2, v6, v7, v9);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
}

void sub_1003DD1FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::chrono::steady_clock::time_point otbr::TaskRunner::DelayedTask::DelayedTask(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = 1000000 * a3;
  if ((a3 * 1000000) >> 64 == (1000000 * a3) >> 63)
  {
    v9 = __OFADD__(result.__d_.__rep_, v8);
    v10 = result.__d_.__rep_ + v8;
    if (!v9)
    {
      a1[1] = v10;
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 2), a4);
      return a1;
    }
  }

  else
  {
    __break(0x550Cu);
  }

  __break(0x5500u);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::TaskRunner::DelayedTask>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::TaskRunner::DelayedTask>,otbr::TaskRunner::DelayedTask*>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v5 + 1));
      v5 += 3;
    }
  }
}

void *std::__split_buffer<otbr::TaskRunner::DelayedTask>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](i - 32);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - result) >> 4) < 0x555555555555556)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator &,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = result + 48 * (v4 >> 1);
    if (*(v7 + 8) >= *(a2 - 40))
    {
      v8 = (a2 - 48);
      v10 = *(a2 - 48);
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v11, a2 - 32);
      do
      {
        v9 = v7;
        *v8 = *v7;
        std::function<void ()(void)>::operator=((v8 + 1), v7 + 16);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = v5 + 48 * v6;
        v8 = v9;
      }

      while (*(v7 + 8) >= *(&v10 + 1));
      *v9 = v10;
      std::function<void ()(void)>::operator=((v9 + 1), v11);
      return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__tree<unsigned long long>::__erase_unique<unsigned long long>(uint64_t **a1, unint64_t *a2)
{
  v3 = std::__tree<unsigned long long>::find<unsigned long long>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<unsigned long long>::erase(a1, v3);
  return 1;
}

uint64_t std::__tree<unsigned long long>::find<unsigned long long>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || *a2 < *(v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t **std::__tree<unsigned long long>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<otbr::Mdns::Publisher::ServiceRegistration>>>>::__remove_node_pointer(a1, a2);
  operator delete(a2);
  return v3;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_1003DD9CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

_OWORD *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v12 = *result;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v13, (result + 1));
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator &,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 48);
    if ((a2 - 48) == v8)
    {
      *v8 = v12;
      std::function<void ()(void)>::operator=((v8 + 1), v13);
    }

    else
    {
      *v8 = *v10;
      v11 = a2 - 32;
      std::function<void ()(void)>::operator=((v8 + 1), v11);
      *v10 = v12;
      std::function<void ()(void)>::operator=(v11, v13);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator &,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(v7, (v9 + 3), a3, 0xAAAAAAAAAAAAAAABLL * (v9 + 3 - v7));
    }

    return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v13);
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,otbr::TaskRunner::DelayedTask::Comparator &,std::__wrap_iter<otbr::TaskRunner::DelayedTask*>>(_OWORD *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = __OFSUB__(a3, 2);
  v6 = (a3 - 2) / 2;
  while (v4 + 0x4000000000000000 >= 0)
  {
    if (__OFADD__(2 * v4, 2))
    {
      __break(0x5500u);
LABEL_16:
      __break(0x5515u);
      break;
    }

    v7 = &result[3 * v4];
    v8 = v7 + 3;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = *(v7 + 7);
      v10 = *(v7 + 13);
      v11 = v7 + 6;
      if (v9 < v10)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v8 = v11;
        v4 = 2 * v4 + 2;
      }
    }

    *result = *v8;
    result = std::function<void ()(void)>::operator=((result + 1), (v8 + 1));
    if (v5)
    {
      goto LABEL_16;
    }

    result = v8;
    if (v4 > v6)
    {
      return v8;
    }
  }

  __break(0x550Cu);
  return result;
}

uint64_t otbr::agent::ThreadHelper::ThreadHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 559) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  std::random_device::random_device[abi:ne200100]((a1 + 568));
  return a1;
}

void sub_1003DDC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](v10 + 280);
  std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](v10 + 248);
  std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](v10 + 216);
  std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::destroy(v11, *(v10 + 184));
  std::vector<std::function<void ()(otOperationalDatasetTlvs const&)>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v13;
  std::vector<std::function<void ()(otDeviceRole)>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<_DNSServiceRef_t *>::~vector[abi:ne200100](v10 + 104);
  std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::~__value_func[abi:ne200100](v10 + 72);
  a10 = (v10 + 48);
  std::vector<otActiveScanResult>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::~__value_func[abi:ne200100](v10 + 16);
  _Unwind_Resume(a1);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1003DDD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void otbr::agent::ThreadHelper::StateChangedCallback(otbr::agent::ThreadHelper *this, int a2)
{
  if ((a2 & 4) == 0)
  {
    goto LABEL_17;
  }

  v9 = (**(*(this + 1) + 16))();
  v10 = *(this + 16);
  v11 = *(this + 17);
  while (v10 != v11)
  {
    LODWORD(v15[0]) = v9;
    std::__function::__value_func<void ()(otDeviceRole)>::operator()[abi:ne200100](v10);
    v10 += 32;
  }

  if (v9 <= 1)
  {
    goto LABEL_17;
  }

  if (*(this + 30))
  {
    if (*(this + 200) == 1)
    {
      otbrLog(6u, "UTILS", "StateChangedCallback is called during waiting for Mgmt Set Response", v4, v5, v6, v7, v8, v13);
      return;
    }

    v12 = *(this + 566);
    if (v12)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      if (otDatasetSendMgmtPendingSet(*this, v15, this + 312, v12, otbr::agent::ThreadHelper::MgmtSetResponseHandler, this))
      {
        std::__function::__value_func<void ()(otError,long long)>::__value_func[abi:ne200100](v14, this + 216);
        std::__function::__value_func<void ()(otError,long long)>::operator=[abi:ne200100](this + 216);
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
        *(this + 504) = 0u;
        *(this + 520) = 0u;
        *(this + 536) = 0u;
        *(this + 551) = 0u;
        *(this + 200) = 0;
        std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](v14);
        std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](v14);
        if ((a2 & 0x10000000) == 0)
        {
          return;
        }
      }

      else
      {
        *(this + 200) = 1;
        if ((a2 & 0x10000000) == 0)
        {
          return;
        }
      }

      goto LABEL_18;
    }

    std::__function::__value_func<void ()(otError,long long)>::__value_func[abi:ne200100](v15, this + 216);
    std::__function::__value_func<void ()(otError,long long)>::operator=[abi:ne200100](this + 216);
    v14[0] = *(this + 26);
    std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](v15);
    std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](v15);
LABEL_17:
    if ((a2 & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (!*(this + 34))
  {
    goto LABEL_17;
  }

  LODWORD(v15[0]) = 0;
  std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](this + 248);
  std::__function::__value_func<void ()(otError)>::operator=[abi:ne200100](this + 248);
  if ((a2 & 0x10000000) == 0)
  {
    return;
  }

LABEL_18:
  otbr::agent::ThreadHelper::ActiveDatasetChangedCallback(this);
}

void sub_1003DDFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void otbr::agent::ThreadHelper::ActiveDatasetChangedCallback(otbr::agent::ThreadHelper *this)
{
  ActiveTlvs = otDatasetGetActiveTlvs(*this, v11);
  if (ActiveTlvs)
  {
    v3 = otThreadErrorToString(ActiveTlvs);
    otbrLog(4u, "UTILS", "Error handling active dataset change: %s", v4, v5, v6, v7, v8, v3);
  }

  else
  {
    v9 = *(this + 19);
    v10 = *(this + 20);
    while (v9 != v10)
    {
      std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::operator()[abi:ne200100](v9);
      v9 += 32;
    }
  }
}

uint64_t otbr::agent::ThreadHelper::AddDeviceRoleHandler(uint64_t *a1, uint64_t a2)
{
  v3 = a1[17];
  if (v3 >= a1[18])
  {
    result = std::vector<std::function<void ()(otDeviceRole)>>::__emplace_back_slow_path<std::function<void ()(otDeviceRole)>&>(a1 + 16, a2);
  }

  else
  {
    std::__function::__value_func<void ()(otDeviceRole)>::__value_func[abi:ne200100](a1[17], a2);
    result = v3 + 32;
    a1[17] = v3 + 32;
  }

  a1[17] = result;
  return result;
}

uint64_t otbr::agent::ThreadHelper::Scan(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v3 = result;
    std::function<void ()(otError,std::vector<otActiveScanResult> const&)>::operator=((result + 16), a2);
    v3[7] = v3[6];
    result = otLinkActiveScan(*v3, 0, 0, otbr::agent::ThreadHelper::ActiveScanHandler, v3);
    if (result)
    {
      if (*(a2 + 24))
      {
        memset(v4, 0, sizeof(v4));
        v5 = result;
        std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::operator()[abi:ne200100]((v3 + 2));
        v6 = v4;
        std::vector<otActiveScanResult>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      return std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::operator=[abi:ne200100]((v3 + 2));
    }
  }

  return result;
}

void sub_1003DE1B4(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<otActiveScanResult>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void *std::function<void ()(otError,std::vector<otActiveScanResult> const&)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t otbr::agent::ThreadHelper::EnergyScan(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  PreferredChannelMask = otPlatRadioGetPreferredChannelMask();
  if (*(a3 + 24))
  {
    if (a2 > 0xFFFE)
    {
      goto LABEL_5;
    }

    v8 = PreferredChannelMask;
    std::function<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator=(a1 + 9, a3);
    a1[14] = a1[13];
    result = otLinkEnergyScan(*a1, v8, a2, otbr::agent::ThreadHelper::EnergyScanCallback, a1);
    if (!result)
    {
      return result;
    }

    if (*(a3 + 24))
    {
LABEL_5:
      std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator()[abi:ne200100]((a1 + 9));
    }
  }

  return std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator=[abi:ne200100]((a1 + 9));
}

void sub_1003DE33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    otbr::Mdns::PublisherMDnsSd::PublishHostImpl(&__p, __p);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

std::random_device *otbr::agent::ThreadHelper::RandomFill(std::random_device *this, char *a2, uint64_t a3)
{
  v6 = 0xFF00000000;
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      this = std::uniform_int_distribution<int>::operator()<std::random_device>(&v6, v5 + 142, &v6);
      *a2++ = this;
      --v3;
    }

    while (v3);
  }

  return this;
}

void *otbr::agent::ThreadHelper::ActiveScanHandler(void *result, __int128 *a2)
{
  v2 = result;
  if (a2)
  {
    v5 = result[7];
    v4 = result[8];
    if (v5 < v4)
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      *(v5 + 44) = *(a2 + 44);
      v5[1] = v7;
      v5[2] = v8;
      *v5 = v6;
      v9 = v5 + 60;
LABEL_17:
      v2[7] = v9;
      return result;
    }

    v10 = (result + 6);
    v11 = v2[6];
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - v11) >> 2);
    v13 = v12 + 1;
    if (v12 == -1)
    {
      __break(0x5500u);
    }

    else if (v13 <= 0x444444444444444)
    {
      v14 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v11) >> 2);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x222222222222222)
      {
        v15 = 0x444444444444444;
      }

      else
      {
        v15 = v13;
      }

      v24[4] = v2 + 6;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<otActiveScanResult>>(v10, v15);
      }

      result = 0;
      v16 = 60 * v12;
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      *(v16 + 44) = *(a2 + 44);
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      *v16 = v17;
      v20 = v2[7] - v2[6];
      if (!is_mul_ok(0xEEEEEEEEEEEEEEEFLL * (v20 >> 2), 0x3CuLL))
      {
        __break(0x550Cu);
        return result;
      }

      v9 = (v16 + 60);
      v21 = v16 - v20;
      memcpy((v16 - v20), v2[6], v20);
      v22 = v2[6];
      v2[6] = v21;
      v2[7] = v9;
      v23 = v2[8];
      v2[8] = 0;
      v24[2] = v22;
      v24[3] = v23;
      v24[0] = v22;
      v24[1] = v22;
      result = std::__split_buffer<otActiveScanResult>::~__split_buffer(v24);
      goto LABEL_17;
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (result[5])
  {
    LODWORD(v24[0]) = 0;
    return std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::operator()[abi:ne200100]((result + 2));
  }

  return result;
}

void *otbr::agent::ThreadHelper::EnergyScanCallback(void *result, _WORD *a2)
{
  v2 = result;
  if (a2)
  {
    v5 = result[14];
    v4 = result[15];
    if (v5 < v4)
    {
      *v5 = *a2;
      v6 = v5 + 1;
LABEL_18:
      v2[14] = v6;
      return result;
    }

    v7 = (result + 13);
    v8 = v2[13];
    v9 = (v5 - v8) >> 1;
    v10 = v9 + 1;
    if (v9 == -1)
    {
      __break(0x5500u);
    }

    else if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = v4 - v8;
      if (v11 <= v10)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v11;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      v19[4] = v2 + 13;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v7, v13);
      }

      result = 0;
      v14 = 2 * v9;
      *(2 * v9) = *a2;
      v15 = v2[14] - v2[13];
      if (v15 < 0)
      {
        __break(0x550Cu);
        return result;
      }

      v6 = (v14 + 2);
      v16 = v14 - v15;
      memcpy((v14 - v15), v2[13], v15);
      v17 = v2[13];
      v2[13] = v16;
      v2[14] = v6;
      v18 = v2[15];
      v2[15] = 0;
      v19[2] = v17;
      v19[3] = v18;
      v19[0] = v17;
      v19[1] = v17;
      result = std::__split_buffer<otEnergyScanResult>::~__split_buffer(v19);
      goto LABEL_18;
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (result[12])
  {
    LODWORD(v19[0]) = 0;
    return std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator()[abi:ne200100]((result + 9));
  }

  return result;
}

uint64_t otbr::agent::ThreadHelper::RandomChannelFromChannelMask(std::random_device *this, unsigned int a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    if ((a2 >> v2))
    {
      if (v3 >= 0x20)
      {
        goto LABEL_8;
      }

      *(&v6[2] + v3++) = v2;
    }

    ++v2;
  }

  while (v2 != 32);
  v6[0] = 0;
  v6[1] = v3 - 1;
  v4 = std::uniform_int_distribution<int>::operator()<std::random_device>(v6, this + 142, v6);
  if (v4 >= 0x20)
  {
LABEL_8:
    __break(0x5512u);
  }

  return *(&v6[2] + v4);
}

uint64_t otbr::agent::ThreadHelper::Attach(uint64_t result, uint64_t a2, int a3, unint64_t a4, __int128 **a5, uint64_t a6, int a7, uint64_t a8)
{
  v33 = 0;
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  if (*(a8 + 24))
  {
    v9 = result;
    if (*(result + 240) || *(result + 272))
    {
      result = 13;
      goto LABEL_5;
    }

    v16 = a5[1];
    if (v16 != *a5 && v16 - *a5 != 16)
    {
LABEL_10:
      result = 7;
LABEL_5:
      if (*(a8 + 24))
      {
        return std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](a8);
      }

      return result;
    }

    v17 = *(a6 + 8);
    if (*a6 == v17)
    {
      if (!a7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = 7;
      if (!a7 || v17 - *a6 != 16)
      {
        goto LABEL_5;
      }
    }

    result = otDatasetCreateNewNetwork(*v9, v27);
    if (result)
    {
      goto LABEL_5;
    }

    if (a4 != -1)
    {
      v18 = vdupq_n_s64(a4);
      *(&v30 + 1) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v18, xmmword_10044CB60), vshlq_u64(v18, xmmword_10044CB50)), vuzp1q_s32(vshlq_u64(v18, xmmword_10044CB80), vshlq_u64(v18, xmmword_10044CB70))));
    }

    if (*a5 != a5[1])
    {
      v28 = **a5;
    }

    if (a3 != 0xFFFF)
    {
      WORD4(v31[0]) = a3;
    }

    if (*a6 != *(a6 + 8))
    {
      *(v31 + 14) = **a6;
    }

    v19 = *(a2 + 23) >= 0 ? a2 : *a2;
    result = otNetworkNameFromString(&v29, v19);
    if (result)
    {
      goto LABEL_5;
    }

    v25 = DWORD1(v32) & a7;
    DWORD1(v32) &= a7;
    if (DWORD1(v32))
    {
      WORD5(v31[0]) = otbr::agent::ThreadHelper::RandomChannelFromChannelMask(v9, v25);
      result = otDatasetSetActive(*v9, v27);
      if (!result)
      {
        if ((otIp6IsEnabled(*v9) & 1) != 0 || (result = otIp6SetEnabled(*v9, 1), !result))
        {
          result = otThreadSetEnabled(*v9, 1);
          if (!result)
          {
            v9[26] = 0;
            return std::function<void ()(otError,long long)>::operator=(v9 + 27, a8);
          }
        }
      }

      goto LABEL_5;
    }

    otbrLog(4u, "UTILS", "Invalid channel mask", v20, v21, v22, v23, v24, v26);
    goto LABEL_10;
  }

  return result;
}

void *std::function<void ()(otError,long long)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(otError,long long)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(otError,long long)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t otbr::agent::ThreadHelper::Attach(uint64_t *a1, uint64_t a2)
{
  if (a1[30] || a1[34])
  {
    result = 13;
LABEL_4:
    if (*(a2 + 24))
    {
      return std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](a2);
    }

    return result;
  }

  if ((otIp6IsEnabled(*a1) & 1) == 0)
  {
    result = otIp6SetEnabled(*a1, 1);
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = otThreadSetEnabled(*a1, 1);
  if (result)
  {
    goto LABEL_4;
  }

  return std::function<void ()(otError,long long)>::operator=(a1 + 27, a2);
}

uint64_t otbr::agent::ThreadHelper::Detach(otbr::agent::ThreadHelper *this)
{
  result = otThreadSetEnabled(*this, 0);
  if (!result)
  {
    v3 = *this;

    return otIp6SetEnabled(v3, 0);
  }

  return result;
}

void otbr::agent::ThreadHelper::Reset(otbr::agent::ThreadHelper *this)
{
  v2 = *(this + 17);
  v3 = *(this + 16);
  while (v2 != v3)
  {
    v2 = std::__function::__value_func<void ()(otDeviceRole)>::~__value_func[abi:ne200100](v2 - 32);
  }

  *(this + 17) = v3;
  otInstanceReset(*this);
}

uint64_t otbr::agent::ThreadHelper::JoinerStart(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a8 + 24))
  {
    v9 = result;
    if (*(result + 240) || *(result + 272))
    {
      result = 13;
LABEL_5:
      if (*(a8 + 24))
      {
        return std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](a8);
      }

      return result;
    }

    if ((otIp6IsEnabled(*result) & 1) == 0)
    {
      result = otIp6SetEnabled(*v9, 1);
      if (result)
      {
        goto LABEL_5;
      }
    }

    v16 = *(a2 + 23) >= 0 ? a2 : *a2;
    v17 = *(a3 + 23) >= 0 ? a3 : *a3;
    v18 = *(a4 + 23) >= 0 ? a4 : *a4;
    v19 = *(a5 + 23) >= 0 ? a5 : *a5;
    v20 = *(a6 + 23) >= 0 ? a6 : *a6;
    v21 = *(a7 + 23) >= 0 ? a7 : *a7;
    result = otJoinerStart(*v9, v16, v17, v18, v19, v20, v21, otbr::agent::ThreadHelper::JoinerCallback, v9);
    if (result)
    {
      goto LABEL_5;
    }

    return std::function<void ()(otError)>::operator=(v9 + 31, a8);
  }

  return result;
}

void *std::function<void ()(otError)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(otError)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(otError)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(otError)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void otbr::agent::ThreadHelper::JoinerCallback(uint64_t *a1, int a2)
{
  if (a2)
  {
    v3 = otThreadErrorToString(a2);
    otbrLog(4u, "UTILS", "Failed to join Thread network: %s", v4, v5, v6, v7, v8, v3);
    std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100]((a1 + 31));
    std::__function::__value_func<void ()(otError)>::operator=[abi:ne200100]((a1 + 31));
  }

  else
  {
    v9 = otThreadSetEnabled(*a1, 1);
    if (v9)
    {
      v10 = 4;
    }

    else
    {
      v10 = 6;
    }

    otThreadErrorToString(v9);
    otbrLog(v10, "UTILS", "%s: %s", v11, v12, v13, v14, v15, "Start Thread network");
  }
}

void otbr::agent::ThreadHelper::LogOpenThreadResult(char a1, int a2)
{
  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 6;
  }

  otThreadErrorToString(a2);
  otbrLog(v3, "UTILS", "%s: %s", v4, v5, v6, v7, v8, a1);
}

uint64_t otbr::agent::ThreadHelper::TryResumeNetwork(otbr::agent::ThreadHelper *this)
{
  if (otLinkGetPanId(*this) != 0xFFFF && !(**(*(this + 1) + 16))() && (otIp6IsEnabled(*this) & 1) == 0)
  {
    v4 = otIp6SetEnabled(*this, 1);
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = otThreadSetEnabled(*this, 1);
      if (!v2)
      {
        return v2;
      }
    }

    otIp6SetEnabled(*this, 0);
    return v2;
  }

  return 0;
}

uint64_t otbr::agent::ThreadHelper::AttachAllNodesTo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = 0;
  v6 = *(a1 + 8);
  memset(v50, 0, sizeof(v50));
  v7 = (**(v6 + 16))();
  if (!*(a3 + 24))
  {
    otbrLog(4u, "UTILS", "Attach Handler is nullptr", v8, v9, v10, v11, v12, v47.tv_sec);
    goto LABEL_6;
  }

  if (!*(a1 + 240) && !*(a1 + 272))
  {
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = v15 - *a2;
    if (v16 <= 0xFE)
    {
      v17 = v7;
      if (v15 != v14)
      {
        memmove(__dst, v14, v16);
      }

      v54[30] = v16;
      result = otDatasetParseTlvs(__dst, v52);
      if (result)
      {
        goto LABEL_7;
      }

      if (v52[120] == 1 && v52[122] == 1 && v52[123] == 1 && v52[124] == 1 && v52[125] == 1 && v52[127] == 1 && v52[128] == 1 && v52[129] == 1 && v52[130] == 1 && v52[131] == 1)
      {
        v18 = v54[30];
        v19 = __dst;
        v20 = __dst + v54[30];
        if (v54[30] < 3u)
        {
LABEL_45:
          if (v54[30] != 255)
          {
            *v20 = 51;
            result = clock_gettime(_CLOCK_REALTIME, &v47);
            if (v47.tv_nsec >> 49)
            {
LABEL_74:
              __break(0x550Cu);
              return result;
            }

            if (v18 != 254)
            {
              v33 = (((((v47.tv_nsec & 0x1FFFFFFFFFFFFuLL) << 6) * 0x44B82FA09B5A53uLL) >> 64) >> 10) & 0xFFFE | (v47.tv_sec << 16);
              v20[1] = 8;
              v34 = v18 + 2;
              v35 = 56;
              while (v34 <= 0xFE)
              {
                *(__dst + v34++) = v33 >> v35;
                v35 -= 8;
                if (v35 == -8)
                {
                  if (v18 <= 0xF4)
                  {
                    v20[10] = 52;
                    if (v18 != 244)
                    {
                      v20[11] = 4;
                      v36 = v18 + 12;
                      v37 = 32;
                      while (v36 <= 0xFE)
                      {
                        v37 -= 8;
                        *(__dst + v36++) = 0x493E0u >> v37;
                        if (!v37)
                        {
                          v54[30] = v20 - __dst + 16;
                          if ((v20 - __dst) == 0xF0)
                          {
                            otbr::agent::ThreadHelper::AttachAllNodesTo();
                          }

                          if (v17 > 1)
                          {
                            LODWORD(result) = otDatasetSendMgmtPendingSet(*a1, v50, __dst, (v20 - __dst) + 16, otbr::agent::ThreadHelper::MgmtSetResponseHandler, a1);
                            if (result)
                            {
                              goto LABEL_7;
                            }

                            *(a1 + 208) = 300000;
                            result = std::function<void ()(otError,long long)>::operator=((a1 + 216), a3);
                            *(a1 + 200) = 1;
                            return result;
                          }

                          LODWORD(result) = otDatasetGetActive(*a1, v49);
                          v38 = result;
                          if (result == 23 || !result)
                          {
                            if (!result || (LODWORD(result) = otDatasetSetActiveTlvs(*a1, __dst), !result))
                            {
                              if ((otIp6IsEnabled(*a1) & 1) != 0 || (LODWORD(result) = otIp6SetEnabled(*a1, 1), !result))
                              {
                                LODWORD(result) = otThreadSetEnabled(*a1, 1);
                                if (!result)
                                {
                                  v39 = (a1 + 312);
                                  if (v38)
                                  {
                                    *(a1 + 208) = 0;
                                    *v39 = 0u;
                                    *(a1 + 328) = 0u;
                                    *(a1 + 344) = 0u;
                                    *(a1 + 360) = 0u;
                                    *(a1 + 376) = 0u;
                                    *(a1 + 392) = 0u;
                                    *(a1 + 408) = 0u;
                                    *(a1 + 424) = 0u;
                                    *(a1 + 440) = 0u;
                                    *(a1 + 456) = 0u;
                                    *(a1 + 472) = 0u;
                                    *(a1 + 488) = 0u;
                                    *(a1 + 504) = 0u;
                                    *(a1 + 520) = 0u;
                                    *(a1 + 536) = 0u;
                                    *(a1 + 551) = 0u;
                                  }

                                  else
                                  {
                                    *(a1 + 208) = 300000;
                                    v40 = __dst[13];
                                    *(a1 + 504) = __dst[12];
                                    *(a1 + 520) = v40;
                                    *(a1 + 536) = *v54;
                                    *(a1 + 551) = *&v54[15];
                                    v41 = __dst[9];
                                    *(a1 + 440) = __dst[8];
                                    *(a1 + 456) = v41;
                                    v42 = __dst[11];
                                    *(a1 + 472) = __dst[10];
                                    *(a1 + 488) = v42;
                                    v43 = __dst[5];
                                    *(a1 + 376) = __dst[4];
                                    *(a1 + 392) = v43;
                                    v44 = __dst[7];
                                    *(a1 + 408) = __dst[6];
                                    *(a1 + 424) = v44;
                                    v45 = __dst[1];
                                    *v39 = __dst[0];
                                    *(a1 + 328) = v45;
                                    v46 = __dst[3];
                                    *(a1 + 344) = __dst[2];
                                    *(a1 + 360) = v46;
                                  }

                                  *(a1 + 200) = 0;
                                  return std::function<void ()(otError,long long)>::operator=((a1 + 216), a3);
                                }
                              }
                            }
                          }

                          goto LABEL_7;
                        }
                      }
                    }
                  }

                  break;
                }
              }
            }
          }
        }

        else
        {
          v21 = 0;
          v22 = __dst + 2;
          v23 = 2;
          v24 = __dst + 2;
          while (v21 <= 0xFE)
          {
            if (*v19 == 51)
            {
              goto LABEL_6;
            }

            if (v21 == 254)
            {
              break;
            }

            v25 = v19 + 1;
            v26 = v19[1];
            if (v26 == 255)
            {
              if (v23 > 0xFE || v21 > 0xFB)
              {
                break;
              }

              v26 = v19[3] | (*v24 << 8);
              v27 = 3;
            }

            else
            {
              v27 = 1;
            }

            v21 += 1 + v27 + v26;
            v19 = &v25[v27 + v26];
            v23 = v21 + 2;
            v24 = v19 + 2;
            if (v19 + 2 >= v20)
            {
              v28 = 0;
              v29 = __dst;
              v30 = 2;
              while (v28 <= 0xFE)
              {
                if (*v29 == 52)
                {
                  goto LABEL_6;
                }

                if (v28 == 254)
                {
                  break;
                }

                v31 = v29[1];
                if (v31 == 255)
                {
                  if (v30 > 0xFE || v28 > 0xFB)
                  {
                    goto LABEL_73;
                  }

                  v31 = v29[3] | (*v22 << 8);
                  v32 = 3;
                }

                else
                {
                  v32 = 1;
                }

                v28 += 1 + v32 + v31;
                v29 += v32 + v31 + 1;
                v30 = v28 + 2;
                v22 = v29 + 2;
                if (v29 + 2 >= v20)
                {
                  if (v54[30] > 0xEEu)
                  {
                    goto LABEL_6;
                  }

                  goto LABEL_45;
                }
              }

              break;
            }
          }
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

LABEL_6:
    LODWORD(result) = 7;
    goto LABEL_7;
  }

  LODWORD(result) = 5;
LABEL_7:
  v48 = result;
  v49[0] = 0;
  return std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](a3);
}

uint64_t otbr::agent::ThreadHelper::MgmtSetResponseHandler(uint64_t a1, int a2)
{
  v18[3] = 0;
  otThreadErrorToString(a2);
  if (a2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 6;
  }

  otbrLog(v9, "UTILS", "%s: %s", v4, v5, v6, v7, v8, "MgmtSetResponseHandler()");
  *(a1 + 200) = 0;
  if (*(a1 + 240))
  {
    v15 = *(a1 + 208);
    std::function<void ()(otError,long long)>::operator=(v18, a1 + 216);
    *(a1 + 208) = 0;
    std::__function::__value_func<void ()(otError,long long)>::operator=[abi:ne200100](a1 + 216);
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 551) = 0u;
    std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](v18);
  }

  else
  {
    otbrLog(4u, "UTILS", "mAttachHandler is nullptr", v10, v11, v12, v13, v14, v17);
    *(a1 + 208) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 551) = 0u;
  }

  return std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](v18);
}

void sub_1003DF638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(otError,long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t otbr::agent::ThreadHelper::AddActiveDatasetChangeHandler(uint64_t *a1, uint64_t a2)
{
  v3 = a1[20];
  if (v3 >= a1[21])
  {
    result = std::vector<std::function<void ()(otOperationalDatasetTlvs const&)>>::__emplace_back_slow_path<std::function<void ()(otOperationalDatasetTlvs const&)>>(a1 + 19, a2);
  }

  else
  {
    result = std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::__value_func[abi:ne200100](v3, a2) + 32;
  }

  a1[20] = result;
  return result;
}

void *otbr::agent::ThreadHelper::DetachGracefully(uint64_t *a1, uint64_t a2)
{
  if (a1[38] || otThreadDetachGracefully(*a1, otbr::agent::ThreadHelper::DetachGracefullyCallback, a1))
  {
    return std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](a2);
  }

  return std::function<void ()(otError)>::operator=(a1 + 35, a2);
}

uint64_t otbr::agent::ThreadHelper::DetachGracefullyCallback(uint64_t this, void *a2)
{
  if (*(this + 304))
  {
    return std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](this + 280);
  }

  return this;
}

uint64_t otbr::agent::ThreadHelper::DetachGracefullyCallback(uint64_t this)
{
  if (*(this + 304))
  {
    return std::__function::__value_func<void ()(otError)>::operator()[abi:ne200100](this + 280);
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(otDeviceRole)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<void ()(otError,long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(otError,long long)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(otError,long long)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<void ()(otError)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::vector<std::function<void ()(otDeviceRole)>>::__emplace_back_slow_path<std::function<void ()(otDeviceRole)>&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v3 >> 59)
  {
    goto LABEL_12;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__function::__value_func<void ()(otDeviceRole)>::__value_func[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(otDeviceRole)>>,std::function<void ()(otDeviceRole)>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<void ()(otDeviceRole)>>::~__split_buffer(&v14);
  return v13;
}

void sub_1003DFB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(otDeviceRole)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(otDeviceRole)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(otDeviceRole)>>,std::function<void ()(otDeviceRole)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<void ()(otDeviceRole)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<void ()(otDeviceRole)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

void *std::__split_buffer<std::function<void ()(otDeviceRole)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(otDeviceRole)>::~__value_func[abi:ne200100](i - 32);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

uint64_t std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_1003E0000(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<void ()(otError,std::vector<otActiveScanResult> const&)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_1003E03C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<void ()(otError,std::vector<otEnergyScanResult> const&)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::uniform_int_distribution<int>::operator()<std::random_device>(int a1, std::random_device *this, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return std::random_device::operator()(this);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      std::__independent_bits_engine<std::random_device,unsigned int>::__independent_bits_engine(&v10, this, v8 - v7);
      do
      {
        v9 = std::random_device::operator()(v10);
      }

      while ((v11 & v9) >= v5);
      return *a3 + (v11 & v9);
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::random_device,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  *(result + 40) = 0;
  if (v3 < a3 % v3)
  {
    goto LABEL_15;
  }

  v5 = 0;
  *(result + 32) = v3 - a3 % v3;
  *(result + 44) = 0;
  if (v4 <= 0x1E && v3 > a3)
  {
    goto LABEL_11;
  }

  if (v4 > 0x20)
  {
LABEL_15:
    __break(0x5515u);
    return result;
  }

  v5 = 0xFFFFFFFF >> (32 - v4);
LABEL_11:
  if (v4 >= 0x1F)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 48) = v5;
  *(result + 52) = v7;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<otActiveScanResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x444444444444445)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<otActiveScanResult>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = (v2 - *(a1 + 8) - 60) % 0x3CuLL + *(a1 + 8);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 24) - result) >> 2) < 0x444444444444445)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void *std::__split_buffer<otEnergyScanResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 1) & 0xFFFFFFFFFFFFFFFELL);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void *std::__function::__value_func<void ()(otError,long long)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_1003E095C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(otError)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(otError)>::swap[abi:ne200100](void *result, void *a2)
{
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

void sub_1003E0C58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<std::function<void ()(otOperationalDatasetTlvs const&)>>::__emplace_back_slow_path<std::function<void ()(otOperationalDatasetTlvs const&)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v3 >> 59)
  {
    goto LABEL_12;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::__value_func[abi:ne200100](32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(otOperationalDatasetTlvs const&)>>,std::function<void ()(otOperationalDatasetTlvs const&)>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::function<void ()(otOperationalDatasetTlvs const&)>>::~__split_buffer(&v14);
  return v13;
}

void sub_1003E0D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(otOperationalDatasetTlvs const&)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::function<void ()(otOperationalDatasetTlvs const&)>>,std::function<void ()(otOperationalDatasetTlvs const&)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::__value_func[abi:ne200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::~__value_func[abi:ne200100](v6);
      v6 += 32;
    }
  }
}

void *std::__split_buffer<std::function<void ()(otOperationalDatasetTlvs const&)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(otOperationalDatasetTlvs const&)>::~__value_func[abi:ne200100](i - 32);
  }

  result = *a1;
  if (!*a1)
  {
    return a1;
  }

  if ((*(a1 + 24) - result) >= 0)
  {
    operator delete(result);
    return a1;
  }

  __break(0x550Cu);
  return result;
}

void otbr::MainloopManager::AddMainloopProcessor(otbr::MainloopManager *this, otbr::MainloopProcessor *a2)
{
  if (a2)
  {
    std::list<otbr::MainloopProcessor *>::emplace_back<otbr::MainloopProcessor *&>();
  }

  otbr::MainloopManager::AddMainloopProcessor();
}

void *std::list<otbr::MainloopProcessor *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v5 = v2[2];
      v6 = v2 + 1;
      if (v5 == *a2)
      {
        v7 = *v6;
        v8 = a1;
        if (v7 != a1)
        {
          v8 = v7;
          while (v8[2] == v5)
          {
            v8 = v8[1];
            if (v8 == a1)
            {
              v8 = a1;
              break;
            }
          }
        }

        std::list<otbr::Mdns::Publisher::DiscoverCallback>::splice(v10, v10, a1, v2, v8);
        if (v8 == a1)
        {
          goto LABEL_11;
        }

        v6 = v8 + 1;
      }

      v8 = *v6;
LABEL_11:
      v2 = v8;
    }

    while (v8 != a1);
  }

  return std::__list_imp<otbr::MainloopProcessor *>::clear(v10);
}

void sub_1003E1054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<otbr::MainloopProcessor *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t otbr::MainloopManager::Update(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != result)
  {
    v4 = result;
    do
    {
      result = (*(**(v2 + 16) + 16))(*(v2 + 16), a2);
      v2 = *(v2 + 8);
    }

    while (v2 != v4);
  }

  return result;
}

uint64_t otbr::MainloopManager::Process(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != result)
  {
    v4 = result;
    do
    {
      result = (*(**(v2 + 16) + 24))(*(v2 + 16), a2);
      v2 = *(v2 + 8);
    }

    while (v2 != v4);
  }

  return result;
}

void *std::__list_imp<otbr::MainloopProcessor *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *v1;
    v3 = *result;
    *(v3 + 8) = *(*v1 + 8);
    **(v2 + 8) = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void otbr::MainloopProcessor::MainloopProcessor(otbr::MainloopProcessor *this)
{
  *this = off_1004CE5F0;
  Instance = otbr::MainloopManager::GetInstance(this);
  otbr::MainloopManager::AddMainloopProcessor(Instance, this);
}

uint64_t *otbr::MainloopManager::GetInstance(otbr::MainloopManager *this)
{
  {
    otbr::MainloopManager::GetInstance();
  }

  return &otbr::MainloopManager::GetInstance(void)::sMainloopManager;
}

void otbr::MainloopProcessor::~MainloopProcessor(otbr::MainloopProcessor *this)
{
  *this = off_1004CE5F0;
  Instance = otbr::MainloopManager::GetInstance(this);
  otbr::MainloopManager::RemoveMainloopProcessor(Instance, this);
}

void sub_1003E142C(_Unwind_Exception *a1)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v2 + 48));
  }

  v7 = *v4;
  if (*v4)
  {
    *(v1 + 64) = v7;
    operator delete(v7);
  }

  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(v2, *v3);
  otbr::MainloopProcessor::~MainloopProcessor(v1);
  _Unwind_Resume(a1);
}

void sub_1003E14C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(otbr::Mdns::Publisher::State)>::~__value_func[abi:ne200100](va);
  JUMPOUT(0x1003E14B4);
}

void otbr::BorderAgent::SetEnabled(otbr::BorderAgent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 24) != a2)
  {
    *(this + 24) = a2;
    if (a2)
    {
      otbr::BorderAgent::Start(this, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      otbr::BorderAgent::Stop(this, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

uint64_t otbr::BorderAgent::SetMeshCopServiceValues(uint64_t a1, const std::string *a2, std::string *__str, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size > 0x18)
  {
    return 4294967286;
  }

  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 > 0x18)
  {
    return 4294967286;
  }

  v13 = *(a5 + 8);
  if (v13 != *a5 && v13 - *a5 != 3)
  {
    return 4294967286;
  }

  for (i = *a6; i != a6[1]; i += 56)
  {
    if (*(i + 23) < 0)
    {
      if (!*(i + 8))
      {
        return 4294967286;
      }

      v16 = *i;
    }

    else
    {
      v16 = i;
      if (!*(i + 23))
      {
        return 4294967286;
      }
    }

    if (*v16 != 118)
    {
      return 4294967286;
    }
  }

  std::string::operator=((a1 + 104), __str);
  std::string::operator=((a1 + 80), a4);
  if (a1 + 56 != a5)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 56), *a5, *(a5 + 8), *(a5 + 8) - *a5);
  }

  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1 + 32, *(a1 + 40));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  v17 = *a6;
  v18 = a6[1];
  if (v17 != v18)
  {
    v19 = v17 + 24;
    do
    {
      v20 = std::map<std::string,std::vector<unsigned char>>::operator[](a1 + 32, (v19 - 24));
      if (v19 != v20)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v20, *v19, *(v19 + 8), *(v19 + 8) - *v19);
      }

      v21 = v19 + 32;
      v19 += 56;
    }

    while (v21 != v18);
  }

  std::string::operator=((a1 + 128), a2);
  return 0;
}

void otbr::BorderAgent::Start(otbr::BorderAgent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbrLog(6u, "BA", "Start Thread Border Agent", a4, a5, a6, a7, a8, v9);
  (***(this + 2))();
  otbr::BorderAgent::GetServiceInstanceNameWithExtAddr(this, this + 128, &v10);
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  *(this + 152) = v10;
  *(this + 21) = v11;
  otbr::BorderAgent::UpdateMeshCopService(this);
}

uint64_t otbr::BorderAgent::Stop(otbr::BorderAgent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  otbrLog(6u, "BA", "Stop Thread Border Agent", a4, a5, a6, a7, a8, v18);
  otbr::BorderAgent::UnpublishMeshCopService(this, v9, v10, v11, v12, v13, v14, v15);
  v16 = *(**(this + 2) + 8);

  return v16();
}

void otbr::BorderAgent::GetServiceInstanceNameWithExtAddr(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(*(a1 + 8) + 32);
  if (v3)
  {
    ExtendedAddress = otLinkGetExtendedAddress(v3);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
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
      v8 = *(a2 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " #", 2);
    v10 = v23;
    v11 = v23;
    v12 = *(v23 - 24);
    if ((v12 - 253) < 0xFFFFFFFFFFFFFEEBLL)
    {
      goto LABEL_23;
    }

    *(&v23 + v12 + 8) |= 0x4000u;
    v13 = *(v11 - 24);
    if ((v13 - 253) < 0xFFFFFFFFFFFFFEEBLL)
    {
      goto LABEL_23;
    }

    *(&v23 + v13 + 8) = *(&v23 + v13 + 8) & 0xFFFFFFB5 | 8;
    v14 = *(v11 - 24);
    if ((v14 - 117) < 0xFFFFFFFFFFFFFEEBLL)
    {
      goto LABEL_23;
    }

    v15 = (&v23 + v14);
    if (*&v27[v14] == -1)
    {
      std::ios_base::getloc(v15);
      v16 = std::locale::use_facet(&v28, &std::ctype<char>::id);
      (v16->__vftable[2].~facet_0)(v16, 32);
      std::locale::~locale(&v28);
      v10 = v23;
    }

    v15[1].__fmtflags_ = 48;
    v17 = *(v10 - 24);
    if ((v17 - 233) < 0xFFFFFFFFFFFFFEEFLL)
    {
      goto LABEL_23;
    }

    *(&v25[1].__locale_ + v17) = 2;
    v18 = *(ExtendedAddress + 6);
    std::ostream::operator<<();
    v19 = *(v23 - 24);
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      if (v26 < 0)
      {
        operator delete(v25[7].__locale_);
      }

      std::locale::~locale(v25);
      std::iostream::~basic_iostream();
      std::ios::~ios();
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "false");
  }
}

void otbr::BorderAgent::UpdateMeshCopService(void (****this)(void))
{
  if (otbr::BorderAgent::IsThreadStarted(this) && *(this + 24) == 1)
  {
    if (((*this[2])[2])(this[2]))
    {

      otbr::BorderAgent::PublishMeshCopService(this);
    }

    else
    {
      v2 = **this[2];

      v2();
    }
  }
}

void otbr::BorderAgent::UnpublishMeshCopService(otbr::BorderAgent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (this + 152);
  LOBYTE(v10) = this - 104;
  if (*(this + 175) < 0)
  {
    v10 = *v9;
  }

  otbrLog(6u, "BA", "Unpublish meshcop service %s.%s.local", a4, a5, a6, a7, a8, v10);
  v11 = *(this + 2);
  std::string::basic_string[abi:ne200100]<0>(__p, "_meshcop._udp");
  v14[0] = off_1004CE818;
  v14[1] = this;
  v14[3] = v14;
  (*(*v11 + 40))(v11, v9, __p, v14);
  std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003E1D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void otbr::BorderAgent::HandleMdnsState(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 24) == 1)
  {
    if (a2 == 1)
    {
      otbr::BorderAgent::UpdateMeshCopService(a1);
    }

    else
    {
      otbrLog(4u, "BA", "mDNS publisher not available!", a4, a5, a6, a7, a8, a9);
    }
  }
}

uint64_t otbr::BorderAgent::Update(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t otbr::BorderAgent::Process(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t otbr::GetStateBitmap(uint64_t a1)
{
  DeviceRole = otThreadGetDeviceRole(a1);
  v3 = 0;
  v4 = 2081;
  if (DeviceRole > 2)
  {
    if (DeviceRole == 3)
    {
      v5 = 3121;
      goto LABEL_10;
    }

    if (DeviceRole == 4)
    {
      v5 = 3633;
      goto LABEL_10;
    }
  }

  else if (DeviceRole == 1)
  {
    v3 = 0;
    v4 = 2089;
  }

  else if (DeviceRole == 2)
  {
    v5 = 2609;
LABEL_10:
    v4 = v5 | ((otBackboneRouterGetState(a1) != 0) << 7);
    v3 = (otBackboneRouterGetState(a1) == 2) << 8;
  }

  return v4 | v3;
}

uint64_t otbr::AppendBbrTxtEntries(uint64_t a1, char a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    v13 = -16400;
    otBackboneRouterGetConfig(a1, &v14);
    v11 = 1;
    v12 = &v15;
    v5 = a3[1];
    if (v5 >= a3[2])
    {
      v6 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(a3, "sq", &v12, &v11);
    }

    else
    {
      std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(a3, a3[1], "sq", &v12, &v11);
      v6 = (v5 + 56);
      a3[1] = v6;
    }

    a3[1] = v6;
    v12 = &v13;
    v11 = 2;
    if (v6 >= a3[2])
    {
      v7 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(a3, "bb", &v12, &v11);
    }

    else
    {
      std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(a3, v6, "bb", &v12, &v11);
      v7 = v6 + 56;
      a3[1] = v6 + 56;
    }

    a3[1] = v7;
  }

  otThreadGetDomainName(a1);
  v14 = v8;
  v9 = a3[1];
  if (v9 >= a3[2])
  {
    result = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const*>(a3, "dn", &v14);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(a3[1], "dn", v8);
    result = v9 + 56;
    a3[1] = v9 + 56;
  }

  a3[1] = result;
  return result;
}

void otbr::AppendActiveTimestampTxtEntry(uint64_t a1, uint64_t *a2)
{
  Active = otDatasetGetActive(a1, &v15);
  if (Active)
  {
    v4 = otThreadErrorToString(Active);
    otbrLog(4u, "BA", "Failed to get active dataset: %s", v5, v6, v7, v8, v9, v4);
  }

  else
  {
    v13 = &v14;
    v14 = bswap64((2 * v16) | (v15 << 16) | v17);
    v12 = 8;
    v10 = a2[1];
    if (v10 >= a2[2])
    {
      v11 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(a2, "at", &v13, &v12);
    }

    else
    {
      std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(a2, a2[1], "at", &v13, &v12);
      v11 = v10 + 56;
      a2[1] = v10 + 56;
    }

    a2[1] = v11;
  }
}

char **otbr::AppendVendorTxtEntries(char **result, uint64_t *a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != (result + 1))
  {
    do
    {
      v5 = v3 + 32;
      v7 = *a2;
      v6 = a2[1];
      if (*a2 == v6)
      {
        if (v3[55] < 0)
        {
LABEL_24:
          v5 = *v5;
        }
      }

      else
      {
        v8 = v3[55];
        v9 = v3[55];
        do
        {
          v10 = *(v7 + 23);
          if (v10 < 0)
          {
            v11 = *(v7 + 8);
          }

          else
          {
            v11 = *(v7 + 23);
          }

          v12 = v8;
          if (v8 < 0)
          {
            v12 = *(v3 + 5);
          }

          if (v11 == v12)
          {
            v13 = v10 >= 0 ? v7 : *v7;
            v14 = *v5;
            v15 = (v8 & 0x80u) == 0 ? v3 + 32 : *v5;
            if (!memcmp(v13, v15, v11))
            {
              result = (v7 + 24);
              if ((v7 + 24) != v3 + 56)
              {
                result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result, *(v3 + 7), *(v3 + 8), *(v3 + 8) - *(v3 + 7));
              }

              *(v7 + 48) = 0;
              goto LABEL_28;
            }
          }

          v7 += 56;
        }

        while (v7 != v6);
        if (v9 < 0)
        {
          goto LABEL_24;
        }
      }

      v16 = *(v3 + 8);
      v21 = *(v3 + 7);
      v22 = v5;
      v20 = v16 - v21;
      if (v6 >= a2[2])
      {
        result = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const*,unsigned char const*,unsigned long>(a2, &v22, &v21, &v20);
      }

      else
      {
        std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const*,unsigned char const*,unsigned long,0>(a2, v6, &v22, &v21, &v20);
        result = (v6 + 56);
        a2[1] = v6 + 56;
      }

      a2[1] = result;
LABEL_28:
      v17 = *(v3 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v3 + 2);
          v19 = *v18 == v3;
          v3 = v18;
        }

        while (!v19);
      }

      v3 = v18;
    }

    while (v18 != v2);
  }

  return result;
}

void otbr::BorderAgent::PublishMeshCopService(otbr::BorderAgent *this)
{
  v62 = 0;
  v2 = *(*(this + 1) + 32);
  otThreadGetExtendedPanId(v2);
  v4 = v3;
  ExtendedAddress = otLinkGetExtendedAddress(v2);
  otThreadGetNetworkName(v2);
  v61 = v6;
  otbr::Mdns::Publisher::TxtEntry::TxtEntry(v63, "rv", "1");
  v58 = 0;
  v59 = 0;
  v60 = 0;
  std::vector<otbr::Mdns::Publisher::TxtEntry>::__init_with_size[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry const*,otbr::Mdns::Publisher::TxtEntry const*>(&v58, v63, &v67, 1uLL);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  LOBYTE(v7) = this - 104;
  if (*(this + 175) < 0)
  {
    v7 = *(this + 19);
  }

  otBorderAgentGetUdpPort(v2);
  otbrLog(6u, "BA", "Publish meshcop service %s.%s.local. xa:0x%llx xp:%llx port:%d", v8, v9, v10, v11, v12, v7);
  v13 = *(this + 7);
  v14 = *(this + 8);
  if (v13 != v14)
  {
    v63[0] = *(this + 7);
    v53[0] = (v14 - v13);
    v15 = v59;
    if (v59 >= v60)
    {
      v16 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(&v58, "vo", v63, v53);
    }

    else
    {
      std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(&v58, v59, "vo", v63, v53);
      v16 = (v15 + 56);
    }

    v59 = v16;
  }

  v17 = (this + 80);
  if (*(this + 103) < 0)
  {
    if (!*(this + 11))
    {
      goto LABEL_21;
    }

    v17 = *v17;
  }

  else if (!*(this + 103))
  {
    goto LABEL_21;
  }

  v63[0] = v17;
  v18 = v59;
  if (v59 >= v60)
  {
    v19 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const*>(&v58, "vn", v63);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v59, "vn", v17);
    v19 = (v18 + 56);
  }

  v59 = v19;
LABEL_21:
  v20 = (this + 104);
  if (*(this + 127) < 0)
  {
    if (!*(this + 14))
    {
      goto LABEL_30;
    }

    v20 = *v20;
  }

  else if (!*(this + 127))
  {
    goto LABEL_30;
  }

  v63[0] = v20;
  v21 = v59;
  if (v59 >= v60)
  {
    v22 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const*>(&v58, "mn", v63);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v59, "mn", v20);
    v22 = (v21 + 56);
  }

  v59 = v22;
LABEL_30:
  v23 = v59;
  if (v59 >= v60)
  {
    v24 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const*>(&v58, "nn", &v61);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v59, "nn", v61);
    v24 = (v23 + 56);
  }

  v59 = v24;
  v63[0] = 8;
  if (v24 >= v60)
  {
    v25 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char const(&)[8],unsigned long>(&v58, "xp", v4, v63);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v24, "xp", 2uLL, v4, 8);
    v25 = (v24 + 56);
  }

  v59 = v25;
  ThreadVersion = otbr::Ncp::RcpHost::GetThreadVersion(v25);
  v63[0] = ThreadVersion;
  v27 = v59;
  if (v59 >= v60)
  {
    v28 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const*>(&v58, "tv", v63);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v59, "tv", ThreadVersion);
    v28 = (v27 + 56);
  }

  v59 = v28;
  v63[0] = 8;
  if (v28 >= v60)
  {
    v29 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char const(&)[8],unsigned long>(&v58, "xa", ExtendedAddress, v63);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v28, "xa", 2uLL, ExtendedAddress, 8);
    v29 = (v28 + 56);
  }

  v59 = v29;
  v63[0] = 8;
  if (v29 >= v60)
  {
    v30 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char const(&)[8],unsigned long>(&v58, "dd", ExtendedAddress, v63);
  }

  else
  {
    otbr::Mdns::Publisher::TxtEntry::TxtEntry(v29, "dd", 2uLL, ExtendedAddress, 8);
    v30 = (v29 + 56);
  }

  v59 = v30;
  IsPrimaryResident = otbr::Ncp::RcpHost::IsPrimaryResident(*(this + 1));
  v32 = v59;
  if (IsPrimaryResident)
  {
    if (v59 < v60)
    {
      otbr::Mdns::Publisher::TxtEntry::TxtEntry(v59, "vp", "1");
LABEL_50:
      v33 = (v32 + 56);
      goto LABEL_54;
    }

    v34 = "1";
  }

  else
  {
    if (v59 < v60)
    {
      otbr::Mdns::Publisher::TxtEntry::TxtEntry(v59, "vp", "0");
      goto LABEL_50;
    }

    v34 = "0";
  }

  v33 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const(&)[2]>(&v58, "vp", v34);
LABEL_54:
  v59 = v33;
  StateBitmap = otbr::GetStateBitmap(v2);
  v36 = StateBitmap;
  v37 = StateBitmap;
  v62 = bswap32(StateBitmap & 0xFFF);
  v63[0] = &v62;
  v53[0] = 4;
  v38 = v59;
  if (v59 >= v60)
  {
    v44 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(&v58, "sb", v63, v53);
  }

  else
  {
    std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(&v58, v59, "sb", v63, v53);
    v44 = (v38 + 56);
  }

  v59 = v44;
  otbrLog(6u, "BA", "Meshcop entry state bitmap sb entry:0x%x stateUint32:%llu", v39, v40, v41, v42, v43, v37);
  if ((v36 & 0x18) == 0x10)
  {
    otbr::AppendActiveTimestampTxtEntry(v2, &v58);
    LODWORD(__p[0]) = otThreadGetPartitionId(v2);
    v63[0] = __p;
    v53[0] = 4;
    v45 = v59;
    if (v59 >= v60)
    {
      v46 = std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(&v58, "pt", v63, v53);
    }

    else
    {
      std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(&v58, v59, "pt", v63, v53);
      v46 = (v45 + 56);
    }

    v59 = v46;
  }

  otbr::AppendBbrTxtEntries(v2, v36, &v58);
  otbr::AppendVendorTxtEntries(this + 4, &v58);
  if (otBorderAgentGetState(v2))
  {
    UdpPort = otBorderAgentGetUdpPort(v2);
  }

  else
  {
    UdpPort = 49152;
  }

  if (otbr::Mdns::Publisher::EncodeTxtData(&v58, &v55))
  {
    __assert_rtn("PublishMeshCopService", "border_agent.cpp", 672, "error == OTBR_ERROR_NONE");
  }

  v48 = *(this + 2);
  std::string::basic_string[abi:ne200100]<0>(v53, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "_meshcop._udp");
  memset(v50, 0, sizeof(v50));
  v63[0] = off_1004CE798;
  v63[1] = this;
  v65 = v63;
  otbr::Mdns::Publisher::PublishService(v48, v53, (this + 152), __p, v50, UdpPort, &v55, v63);
  v49 = std::__function::__value_func<void ()(otbrError)>::~__value_func[abi:ne200100](v63);
  v63[0] = v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v63[0] = &v58;
  std::vector<otbr::Mdns::Publisher::TxtEntry>::__destroy_vector::operator()[abi:ne200100](v63);
}

void sub_1003E2994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v33 - 128) = &a32;
  std::vector<otbr::Mdns::Publisher::TxtEntry>::__destroy_vector::operator()[abi:ne200100]((v33 - 128));
  _Unwind_Resume(a1);
}

otbr::Mdns::Publisher::TxtEntry *otbr::Mdns::Publisher::TxtEntry::TxtEntry(otbr::Mdns::Publisher::TxtEntry *this, char *a2, const char *__s)
{
  v6 = strlen(__s);
  v7 = strlen(a2);

  return otbr::Mdns::Publisher::TxtEntry::TxtEntry(this, a2, v7, __s, v6);
}

BOOL otbr::BorderAgent::IsThreadStarted(otbr::BorderAgent *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  otbr::Ncp::OtNetworkProperties::SetInstance(v1 + 16, v2);
  v4 = (**(*(this + 1) + 16))();
  return v4 == 4 || (v4 & 0xFFFFFFFE) == 2;
}

void otbr::BorderAgent::HandleThreadStateChanged(otbr::BorderAgent *this, int a2)
{
  if (*(this + 24) == 1)
  {
    if ((a2 & 4) == 0)
    {
      goto LABEL_6;
    }

    IsThreadStarted = otbr::BorderAgent::IsThreadStarted(this);
    v10 = "down";
    if (IsThreadStarted)
    {
      v10 = "up";
    }

    otbrLog(6u, "BA", "Thread is %s", v5, v6, v7, v8, v9, v10);
    if (!otbr::BorderAgent::IsThreadStarted(this))
    {

      otbr::BorderAgent::Stop(this, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
LABEL_6:
      if ((a2 & 0x2030204) != 0)
      {

        otbr::BorderAgent::UpdateMeshCopService(this);
      }
    }
  }
}

void otbr::BorderAgent::GetAlternativeServiceInstanceName(otbr::BorderAgent *this)
{
  v2 = std::random_device::random_device[abi:ne200100](&v19);
  v3 = std::random_device::operator()(v2);
  if (v3 + ((v3 / 0x7FFFFFFF) | ((v3 / 0x7FFFFFFF) << 31)) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 + ((v3 / 0x7FFFFFFF) | ((v3 / 0x7FFFFFFF) << 31));
  }

  v17 = -65535;
  v18 = v4;
  std::uniform_int_distribution<unsigned short>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v17, &v18, &v17);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  otbr::BorderAgent::GetServiceInstanceNameWithExtAddr(this, this + 128, __p);
  if ((v11 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (", 2);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v9 > 0x110)
  {
    __break(1u);
  }

  else
  {
    if (v16 < 0)
    {
      operator delete(v15[7].__locale_);
    }

    std::locale::~locale(v15);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    std::random_device::~random_device(&v19);
  }
}

void sub_1003E2EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  std::random_device::~random_device((v15 - 52));
  _Unwind_Resume(a1);
}

void otbr::BorderAgent::~BorderAgent(void **this)
{
  otbr::BorderAgent::~BorderAgent(this);

  operator delete();
}

{
  *this = off_1004CE630;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 4), this[5]);

  otbr::MainloopProcessor::~MainloopProcessor(this);
}

void otbr::Mdns::Publisher::TxtEntry::~TxtEntry(otbr::Mdns::Publisher::TxtEntry *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_0,std::allocator<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_0>,void ()(otbr::Mdns::Publisher::State)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1004CE678;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_0,std::allocator<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_0>,void ()(otbr::Mdns::Publisher::State)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_1,std::allocator<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_1>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1004CE708;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_1,std::allocator<otbr::BorderAgent::BorderAgent(otbr::Ncp::RcpHost &)::$_1>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1003E33DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>::construct[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>,0>(int a1, std::string *this, uint64_t a3, __int128 **a4)
{
  v5 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    this->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<unsigned char>>,0>(__p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char *,unsigned long>(uint64_t *a1, char *a2, const unsigned __int8 **a3, uint64_t *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v8);
  }

  v15 = 0;
  v16 = 56 * v4;
  std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(a1, (56 * v4), a2, a3, a4);
  v17 = (56 * v4 + 56);
  v9 = a1[1];
  v10 = 56 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_1003E35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

otbr::Mdns::Publisher::TxtEntry *std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char *,unsigned long,0>(int a1, otbr::Mdns::Publisher::TxtEntry *a2, char *__s, const unsigned __int8 **a4, uint64_t *a5)
{
  v7 = *a4;
  v8 = *a5;
  v9 = strlen(__s);

  return otbr::Mdns::Publisher::TxtEntry::TxtEntry(a2, __s, v9, v7, v8);
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const*>(uint64_t *a1, char *a2, const char **a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v7);
  }

  v14 = 0;
  v15 = 56 * v3;
  v16 = (56 * v3);
  otbr::Mdns::Publisher::TxtEntry::TxtEntry((56 * v3), a2, *a3);
  *&v16 = 56 * v3 + 56;
  v8 = a1[1];
  v9 = 56 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v14);
  return v13;
}

void sub_1003E37B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const*,unsigned char const*,unsigned long>(uint64_t *a1, const char **a2, const unsigned __int8 **a3, uint64_t *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v8);
  }

  v15 = 0;
  v16 = 56 * v4;
  std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const*,unsigned char const*,unsigned long,0>(a1, (56 * v4), a2, a3, a4);
  v17 = (56 * v4 + 56);
  v9 = a1[1];
  v10 = 56 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_1003E3920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

otbr::Mdns::Publisher::TxtEntry *std::allocator_traits<std::allocator<otbr::Mdns::Publisher::TxtEntry>>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const*,unsigned char const*,unsigned long,0>(uint64_t a1, otbr::Mdns::Publisher::TxtEntry *a2, const char **a3, const unsigned __int8 **a4, uint64_t *a5)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = strlen(*a3);

  return otbr::Mdns::Publisher::TxtEntry::TxtEntry(a2, v6, v9, v7, v8);
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__init_with_size[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry const*,otbr::Mdns::Publisher::TxtEntry const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<otbr::Mdns::Publisher::TxtEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1003E39FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<otbr::Mdns::Publisher::TxtEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<otbr::Mdns::Publisher::TxtEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry const*,otbr::Mdns::Publisher::TxtEntry const*,otbr::Mdns::Publisher::TxtEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v4[1].__r_.__value_.__r.__words[0] = 0;
      v4[1].__r_.__value_.__l.__size_ = 0;
      v4[1].__r_.__value_.__r.__words[2] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v4[1], *(v6 + 3), *(v6 + 4), *(v6 + 4) - *(v6 + 3));
      v4[2].__r_.__value_.__s.__data_[0] = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = (v12 + 56);
      v12 = (v12 + 56);
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::vector<otbr::Mdns::Publisher::TxtEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        std::allocator<otbr::Mdns::Publisher::TxtEntry>::destroy[abi:ne200100](v1, v3);
      }

      while (v3 != v2);
      v1[1] = v2;
      v1 = *a1;
    }

    v5 = *v1;
    if ((0x6DB6DB6DB6DB6DB7 * ((v1[2] - *v1) >> 3)) >= 0x492492492492493)
    {
      __break(0x550Cu);
    }

    else
    {

      operator delete(v5);
    }
  }
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],unsigned char const(&)[8],unsigned long>(uint64_t *a1, char *a2, const unsigned __int8 *a3, uint64_t *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v8);
  }

  v15 = 0;
  v16 = 56 * v4;
  std::allocator<otbr::Mdns::Publisher::TxtEntry>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char const(&)[8],unsigned long>(a1, (56 * v4), a2, a3, a4);
  v17 = (56 * v4 + 56);
  v9 = a1[1];
  v10 = 56 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_1003E3D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

otbr::Mdns::Publisher::TxtEntry *std::allocator<otbr::Mdns::Publisher::TxtEntry>::construct[abi:ne200100]<otbr::Mdns::Publisher::TxtEntry,char const(&)[3],unsigned char const(&)[8],unsigned long>(int a1, otbr::Mdns::Publisher::TxtEntry *a2, char *__s, const unsigned __int8 *a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = strlen(__s);

  return otbr::Mdns::Publisher::TxtEntry::TxtEntry(a2, __s, v9, a4, v8);
}

uint64_t std::vector<otbr::Mdns::Publisher::TxtEntry>::__emplace_back_slow_path<char const(&)[3],char const(&)[2]>(uint64_t *a1, char *a2, const char *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 == -1)
  {
    __break(0x5500u);
LABEL_12:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x492492492492492)
  {
    goto LABEL_12;
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>>(a1, v7);
  }

  v14 = 0;
  v15 = 56 * v3;
  otbr::Mdns::Publisher::TxtEntry::TxtEntry((56 * v3), a2, a3);
  v16 = (56 * v3 + 56);
  v8 = a1[1];
  v9 = 56 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<otbr::Mdns::Publisher::TxtEntry>,otbr::Mdns::Publisher::TxtEntry*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(&v14);
  return v13;
}

void sub_1003E3F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<otbr::Mdns::Publisher::TxtEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<otbr::BorderAgent::PublishMeshCopService(void)::$_0,std::allocator<otbr::BorderAgent::PublishMeshCopService(void)::$_0>,void ()(otbrError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1004CE798;
  a2[1] = v2;
  return result;
}

void std::__function::__func<otbr::BorderAgent::PublishMeshCopService(void)::$_0,std::allocator<otbr::BorderAgent::PublishMeshCopService(void)::$_0>,void ()(otbrError)>::operator()(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(a1 + 8);
  if (*a2 == -12)
  {
    v10 = (v9 + 152);
    if (*(v9 + 175) < 0)
    {
      v10 = *v10;
    }

    otbrLog(6u, "BA", "Cancelled previous publishing meshcop service %s.%s.local", a4, a5, a6, a7, a8, v10);
  }

  else
  {
    if (v8)
    {
      v11 = 4;
    }

    else
    {
      v11 = 6;
    }

    v12 = (v9 + 152);
    LOBYTE(v13) = v9 - 104;
    if (*(v9 + 175) < 0)
    {
      v13 = *v12;
    }

    otbrErrorString(*a2);
    otbrLog(v11, "BA", "Result of publish meshcop service %s.%s.local: %s", v14, v15, v16, v17, v18, v13);
    if (v8 == -11)
    {
      otbr::BorderAgent::UnpublishMeshCopService(v9, v19, v20, v21, v22, v23, v24, v25);
      otbr::BorderAgent::GetAlternativeServiceInstanceName(v9);
      if (*(v9 + 175) < 0)
      {
        operator delete(*v12);
      }

      *v12 = v26;
      *(v9 + 168) = v27;
      otbr::BorderAgent::PublishMeshCopService(v9);
    }
  }
}

uint64_t std::__function::__func<otbr::BorderAgent::PublishMeshCopService(void)::$_0,std::allocator<otbr::BorderAgent::PublishMeshCopService(void)::$_0>,void ()(otbrError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<otbr::BorderAgent::UnpublishMeshCopService(void)::$_0,std::allocator<otbr::BorderAgent::UnpublishMeshCopService(void)::$_0>,void ()(otbrError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1004CE818;
  a2[1] = v2;
  return result;
}

void std::__function::__func<otbr::BorderAgent::UnpublishMeshCopService(void)::$_0,std::allocator<otbr::BorderAgent::UnpublishMeshCopService(void)::$_0>,void ()(otbrError)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = (v4 + 152);
  if (*(v4 + 175) < 0)
  {
    v5 = *v5;
  }

  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  otbrErrorString(v3);
  otbrLog(v6, "BA", "Result of unpublish meshcop service %s.%s.local: %s", v7, v8, v9, v10, v11, v5);
}

uint64_t std::__function::__func<otbr::BorderAgent::UnpublishMeshCopService(void)::$_0,std::allocator<otbr::BorderAgent::UnpublishMeshCopService(void)::$_0>,void ()(otbrError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::uniform_int_distribution<unsigned short>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  LODWORD(result) = a3[1];
  v6 = result - *a3;
  if (v6)
  {
    v18 = v3;
    v19 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      v11 = a2;
      v12 = xmmword_10044CBB0;
      v15 = 2147418112;
      v13 = 2;
      v14 = 2;
      v16 = 0xFFFF7FFE0000;
      v17 = 0x1FFFF;
      LOWORD(result) = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(&v11);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(&v11, a2, v10 - v9);
      do
      {
        LODWORD(result) = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(&v11);
      }

      while (result >= v7);
      LOWORD(result) = *a3 + result;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    v6 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
    if (a3 / v3 >= 0x20)
    {
      v6 = 0;
    }

    *(result + 40) = v6;
  }

  v7 = v3 >= a3 % v3;
  v8 = v3 - a3 % v3;
  if (!v7)
  {
    goto LABEL_23;
  }

  *(result + 32) = v8;
  if (v4 >= 0x1F)
  {
    *(result + 44) = 0;
  }

  else
  {
    *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
    if (!v4)
    {
      v9 = 0;
      goto LABEL_19;
    }
  }

  if (v4 > 0x20)
  {
LABEL_23:
    __break(0x5515u);
    return result;
  }

  v9 = 0xFFFFFFFF >> (32 - v4);
LABEL_19:
  if (v4 >= 0x1F)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 48) = v9;
  *(result + 52) = v10;
  return result;
}

unsigned int **std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(unsigned int **result)
{
  v1 = 0;
  v2 = 0;
  v3 = result[4];
LABEL_2:
  if (v1 >= v3)
  {
    v16 = result[3];
LABEL_18:
    if (v3 >= v16)
    {
      return v2;
    }

    v17 = *result;
    v18 = **result;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v21 = 3399 * v19;
      v22 = v20 >= v21 ? 0 : 0x7FFFFFFF;
      v23 = v22 + v20;
      v11 = v23 >= v21;
      v18 = v23 - v21;
      if (!v11)
      {
        break;
      }

      *v17 = v18;
      v24 = v18 - 1;
      if (!v18)
      {
        break;
      }

      if (v24 < *(result + 11))
      {
        v25 = result[2];
        v26 = v2 << (v25 + 1);
        if (v25 >= 0x1F)
        {
          v26 = 0;
        }

        v27 = *(result + 13) & v24;
        v11 = __CFADD__(v26, v27);
        v2 = (v26 + v27);
        if (v11 || (v11 = __CFADD__(v3, 1), v3 = (v3 + 1), v11))
        {
LABEL_32:
          __break(0x5500u);
          return v2;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v4 = *result;
    v5 = **result;
    while (1)
    {
      v6 = v5 / 0xADC8;
      v7 = 48271 * (v5 % 0xADC8);
      v8 = 3399 * v6;
      v9 = v7 >= v8 ? 0 : 0x7FFFFFFF;
      v10 = v9 + v7;
      v11 = v10 >= v8;
      v5 = v10 - v8;
      if (!v11)
      {
        break;
      }

      *v4 = v5;
      v12 = v5 - 1;
      if (!v5)
      {
        break;
      }

      if (v12 < *(result + 10))
      {
        v13 = result[2];
        v14 = v2 << v13;
        if (v13 >= 0x20)
        {
          v14 = 0;
        }

        v15 = result[6] & v12;
        v11 = __CFADD__(v14, v15);
        v2 = (v14 + v15);
        if (v11)
        {
          goto LABEL_32;
        }

        v11 = __CFADD__(v1++, 1);
        if (v11)
        {
          goto LABEL_32;
        }

        goto LABEL_2;
      }
    }
  }

  __break(0x5515u);
  return result;
}

uint64_t otbrLogSetLevel(uint64_t result)
{
  if (result >= 8)
  {
    otbrLogSetLevel();
  }

  sLevel = result;
  return result;
}

void otbrLogInit(char *a1, unsigned int a2, int a3, char a4)
{
  if (!a1)
  {
    otbrLogInit();
  }

  if (a2 >= 8)
  {
    otbrLogInit();
  }

  v8 = strrchr(a1, 47);
  sSyslogDisabled = a4;
  if ((a4 & 1) == 0)
  {
    if (v8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = a1;
    }

    if (a3)
    {
      v10 = 35;
    }

    else
    {
      v10 = 3;
    }

    openlog(v9, v10, 8);
  }

  sLevel = a2;
  sDefaultLevel = a2;
}

void otbrLog(unsigned int a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.commissioning", "commissioning");
  if (sLevel >= a1)
  {
    v13 = logging_obg;
    if (vsnprintf(__str, 0x400uLL, a3, &a9) >= 1)
    {
      if (sSyslogDisabled == 1)
      {
        if (a1 < 9)
        {
          GetPrefix(a2);
          printf("%s%s: %s\n", &sLevelString[8 * a1], GetPrefix(char const*)::prefix, __str);
          return;
        }

        __break(0x5512u);
LABEL_17:
        otbrLog();
      }

      if (a1 >= 5)
      {
        if (a1 - 5 >= 2)
        {
          if (a1 != 7)
          {
            goto LABEL_17;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            otbrLog(a2, __str, v13);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          GetPrefix(a2);
          *buf = 136315394;
          v15 = GetPrefix(char const*)::prefix;
          v16 = 2080;
          v17 = __str;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        otbrLog(a2, __str, v13);
      }
    }
  }
}

const char *GetPrefix(const char *result)
{
  if (*result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 >= 7)
    {
      v3 = 7;
    }

    else
    {
      v3 = v2;
    }

    GetPrefix(char const*)::prefix[0] = 45;
    memcpy(&unk_10053AC03, v1, v3);
    result = memset(&unk_10053AC03 + v3, 45, 8 - v3);
    v4 = &dword_100000008 + 1;
  }

  else
  {
    v4 = 0;
  }

  GetPrefix(char const*)::prefix[v4] = 0;
  return result;
}

void otbrLogv(int a1, char *a2, va_list a3)
{
  if (!a2)
  {
    otbrLogv();
  }

  if (sLevel >= a1)
  {

    otbrLogvNoFilter(a1, a2, a3);
  }
}

void otbrLogvNoFilter(int a1, char *a2, va_list a3)
{
  if (sSyslogDisabled == 1)
  {
    vprintf(a2, a3);

    putchar(10);
  }

  else
  {
    vsyslog(a1, a2, a3);
  }
}

uint64_t otbrDump(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3 || !a4 && a5)
  {
    otbrDump();
  }

  if (a5)
  {
    if (sLevel > result)
    {
      __break(0x5512u);
    }
  }

  return result;
}

char *otbrErrorString(int a1)
{
  if (a1 > -8)
  {
    if (a1 <= -3)
    {
      switch(a1)
      {
        case -7:
          return "Not found";
        case -4:
          return "OpenThread error";
        case -3:
          return "MDNS error";
      }

      return "Unknown";
    }

    if (a1 == -2)
    {
      return "DBUS error";
    }

    if (!a1)
    {
      return "OK";
    }

    if (a1 != -1)
    {
      return "Unknown";
    }

    v3 = *__error();

    return strerror(v3);
  }

  else
  {
    if (a1 <= -11)
    {
      switch(a1)
      {
        case -13:
          return "Invalid state";
        case -12:
          return "Aborted";
        case -11:
          return "Duplicated";
      }

      return "Unknown";
    }

    if (a1 == -10)
    {
      return "Invalid arguments";
    }

    else if (a1 == -9)
    {
      return "Not implemented";
    }

    else
    {
      return "Parse error";
    }
  }
}

void SplitFullDnsName(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  v3 = (a2 + 48);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
LABEL_9:
      if (p_str->__r_.__value_.__s.__data_[size - 1] == 46)
      {
        goto LABEL_11;
      }
    }
  }

  else if (*(&__str.__r_.__value_.__s + 23))
  {
    p_str = &__str;
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    goto LABEL_9;
  }

  std::string::push_back(&__str, 46);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
LABEL_11:
  v7 = (a2 + 72);
  v8 = v4;
  v9 = v4;
  v10 = &__str;
  if (v8 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = __str.__r_.__value_.__l.__size_;
    v10 = __str.__r_.__value_.__r.__words[0];
  }

  if (!v11)
  {
    goto LABEL_51;
  }

  v12 = (v10 + v11);
  v13 = v10;
  v14 = (v10 + v11);
  do
  {
    if (v13->__r_.__value_.__s.__data_[0] == 46)
    {
      v15 = &_mh_execute_header.magic + 1;
      while (v15 != 6)
      {
        if ((v13 + v15) == v12)
        {
          goto LABEL_25;
        }

        v16 = v13->__r_.__value_.__s.__data_[v15];
        v17 = aUdp_1[v15++];
        if (v16 != v17)
        {
          goto LABEL_17;
        }
      }

      v14 = v13;
    }

LABEL_17:
    v13 = (v13 + 1);
  }

  while (v13 != v12);
LABEL_25:
  if (v14 != v12)
  {
    v18 = v14 - v10;
    if (v14 - v10 != -1)
    {
      if (v18)
      {
        goto LABEL_28;
      }

LABEL_42:
      v19 = -1;
      goto LABEL_43;
    }
  }

  v20 = v10;
  v21 = (v10 + v11);
  do
  {
    if (v20->__r_.__value_.__s.__data_[0] == 46)
    {
      v22 = &_mh_execute_header.magic + 1;
      while (v22 != 6)
      {
        if ((v20 + v22) == v12)
        {
          goto LABEL_40;
        }

        v23 = v20->__r_.__value_.__s.__data_[v22];
        v24 = aTcp_0[v22++];
        if (v23 != v24)
        {
          goto LABEL_32;
        }
      }

      v21 = v20;
    }

LABEL_32:
    v20 = (v20 + 1);
  }

  while (v20 != v12);
LABEL_40:
  if (v21 == v12)
  {
    goto LABEL_51;
  }

  v18 = v21 - v10;
  if (v21 == v10)
  {
    goto LABEL_42;
  }

LABEL_28:
  if (v18 != -1)
  {
    v19 = std::string::rfind(&__str, 46, v18 - 1);
LABEL_43:
    if (v18 >= 0xFFFFFFFFFFFFFFFALL)
    {
LABEL_78:
      __break(0x5500u);
      return;
    }

    std::string::basic_string(&v32, &__str, v18 + 6, 0xFFFFFFFFFFFFFFFFLL, &v34);
    if (*(a2 + 95) < 0)
    {
      operator delete(*v7);
    }

    *v7 = *&v32.__r_.__value_.__l.__data_;
    *(a2 + 88) = *(&v32.__r_.__value_.__l + 2);
    if (v19 == -1)
    {
      std::string::basic_string(&v32, &__str, 0, v18 + 5, &v34);
      goto LABEL_63;
    }

    std::string::basic_string(&v32, &__str, 0, v19, &v34);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v32;
    if (v18 + 4 >= v19)
    {
      std::string::basic_string(&v32, &__str, v19 + 1, v18 + 4 - v19, &v34);
LABEL_63:
      if (*(a2 + 47) < 0)
      {
        operator delete(*(a2 + 24));
      }

      *(a2 + 24) = v32;
      goto LABEL_66;
    }

LABEL_77:
    __break(0x5515u);
    goto LABEL_78;
  }

LABEL_51:
  v25 = std::string::find(&__str, 46, 0);
  if (v25 == -1)
  {
    __assert_rtn("SplitFullDnsName", "dns_utils.cpp", 63, "dotPos != std::string::npos");
  }

  v26 = v25;
  std::string::basic_string(&v32, &__str, 0, v25, &v34);
  if (*(a2 + 71) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v32;
  v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __str.__r_.__value_.__l.__size_;
  }

  v28 = v27 >= v26;
  v29 = v27 - v26;
  if (!v28 || !v29)
  {
    goto LABEL_77;
  }

  std::string::basic_string(&v32, &__str, v26 + 1, v29 - 1, &v34);
  if (*(a2 + 95) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *&v32.__r_.__value_.__l.__data_;
  *(a2 + 88) = *(&v32.__r_.__value_.__l + 2);
LABEL_66:
  v30 = *(a2 + 95);
  if (v30 < 0)
  {
    v30 = *(a2 + 80);
    if (v30)
    {
      v31 = *v7;
LABEL_71:
      if (v31[v30 - 1] == 46)
      {
        goto LABEL_73;
      }
    }
  }

  else if (*(a2 + 95))
  {
    v31 = (a2 + 72);
    goto LABEL_71;
  }

  std::string::push_back((a2 + 72), 46);
LABEL_73:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1003E4ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  DnsNameInfo::~DnsNameInfo(v18);
  _Unwind_Resume(a1);
}

uint64_t SplitFullServiceInstanceName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SplitFullDnsName(a1, v10);
  v7 = HIBYTE(v11);
  if (v11 < 0)
  {
    v7 = v10[1];
  }

  if (v7)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *(a2 + 16) = v11;
    *a2 = *v10;
    HIBYTE(v11) = 0;
    LOBYTE(v10[0]) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *(a3 + 16) = v13;
    *a3 = v12;
    HIBYTE(v13) = 0;
    LOBYTE(v12) = 0;
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    v8 = 0;
    *a4 = __p;
    *(a4 + 16) = v17;
    HIBYTE(v17) = 0;
    LOBYTE(__p) = 0;
  }

  else
  {
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }

    v8 = 4294967286;
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v8;
}

uint64_t SplitFullServiceName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SplitFullDnsName(a1, v9);
  v5 = HIBYTE(v12);
  if (v12 < 0)
  {
    v5 = *(&v11 + 1);
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v6 = v9[1];
  }

  if (!v6)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *(a2 + 16) = v12;
    *a2 = v11;
    HIBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v7 = 0;
    *a3 = __p;
    *(a3 + 16) = v16;
    HIBYTE(v16) = 0;
    LOBYTE(__p) = 0;
  }

  else
  {
LABEL_7:
    v7 = 4294967286;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v7;
}

uint64_t SplitFullHostName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SplitFullDnsName(a1, &v8);
  v5 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v5 = v11;
  }

  if (v5)
  {
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    v6 = 4294967286;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *(a2 + 16) = v14;
    *a2 = v13;
    HIBYTE(v14) = 0;
    LOBYTE(v13) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v6 = 0;
    *a3 = __p;
    *(a3 + 16) = v16;
    HIBYTE(v16) = 0;
    LOBYTE(__p) = 0;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  return v6;
}

void DnsNameInfo::~DnsNameInfo(void **this)
{
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

uint64_t updateBorderAgent(uint64_t result)
{
  if (result)
  {
    return (*(**(result + 8) + 16))();
  }

  return result;
}

uint64_t processBorderAgent(uint64_t result)
{
  if (result)
  {
    return (*(**(result + 8) + 24))();
  }

  return result;
}

void *destroyBorderAgent(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v1[1] = 0;
    if (*v1)
    {
      (*(**v1 + 8))(*v1);
    }

    *v1 = 0;

    operator delete();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 otbr::Ip6Address::Ip6Address(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

{
  result = *a2;
  *this = *a2;
  return result;
}

_BYTE *otbr::Ip6Address::ToString@<X0>(otbr::Ip6Address *this@<X0>, _BYTE *a2@<X8>)
{
  if (!inet_ntop(30, this, __s, 0x2Eu))
  {
    otbrLog(0, "UTILS", "FAILED %s:%d - %s", v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/common/types.cpp");
    exit(-1);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, __s);
}

uint64_t otbr::Ip6Address::ToSolicitedNodeMulticastAddress(otbr::Ip6Address *this)
{
  SolicitedMulticastAddressPrefix = otbr::Ip6Address::GetSolicitedMulticastAddressPrefix(this);
  v3 = SolicitedMulticastAddressPrefix[1] & 0xFFFFFFFFFFLL | (*(this + 13) << 40) | (*(this + 14) << 48) | (*(this + 15) << 56);
  return *SolicitedMulticastAddressPrefix;
}

uint64_t *otbr::Ip6Address::GetSolicitedMulticastAddressPrefix(otbr::Ip6Address *this)
{
  {
    otbr::Ip6Address::GetSolicitedMulticastAddressPrefix(void)::sSolicitedMulticastAddressPrefix = otbr::Ip6Address::FromString("ff02::01:ff00:0", v2);
    unk_1004E5550 = v3;
  }

  return &otbr::Ip6Address::GetSolicitedMulticastAddressPrefix(void)::sSolicitedMulticastAddressPrefix;
}

__n128 otbr::Ip6Address::CopyTo(in6_addr *this, sockaddr_in6 *a2)
{
  *&a2->sin6_len = 0;
  *a2->sin6_addr.__u6_addr8 = 0;
  a2->sin6_scope_id = 0;
  *&a2->sin6_addr.__u6_addr32[2] = 0;
  result = *this;
  a2->sin6_addr = *this;
  a2->sin6_family = 30;
  return result;
}

__n128 otbr::Ip6Address::CopyTo(__n128 *this, in6_addr *a2)
{
  result = *this;
  *a2 = *this;
  return result;
}

__n128 otbr::Ip6Address::CopyFrom(__n128 *this, const sockaddr_in6 *a2)
{
  result = a2->sin6_addr;
  *this = result;
  return result;
}

__n128 otbr::Ip6Address::CopyFrom(in6_addr *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t otbr::Ip6Address::FromString(otbr::Ip6Address *this, char *a2, otbr::Ip6Address *a3)
{
  if (inet_pton(30, this, a2) == 1)
  {
    return 0;
  }

  else
  {
    return 4294967286;
  }
}

uint64_t otbr::Ip6Address::FromString(otbr::Ip6Address *this, const char *a2)
{
  *v10 = 0;
  v11 = 0;
  if (inet_pton(30, this, v10) != 1)
  {
    otbr::Ip6Address::FromString(this, v10, v3);
    otbrLog(0, "UTILS", "FAILED %s:%d - %d: %s", v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/common/types.cpp");
    exit(-1);
  }

  return *v10;
}

uint64_t otbr::Ip6Prefix::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[16];
  if (v2 != a2[16])
  {
    return 0;
  }

  result = memcmp(a1, a2, v2 >> 3);
  if (result)
  {
    return 0;
  }

  if ((v2 & 7) == 0)
  {
    return 1;
  }

  if ((v2 & 0x80) == 0)
  {
    return !((a2[v2 >> 3] ^ a1[v2 >> 3]) >> (8 - (v2 & 7)));
  }

  __break(0x5512u);
  return result;
}

__n128 otbr::Ip6Prefix::Set(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void otbr::Ip6Prefix::ToString(otbr::Ip6Prefix *this)
{
  std::stringbuf::basic_stringbuf[abi:ne200100](&v10);
  if (!inet_ntop(30, this, __s, 0x2Eu))
  {
    otbrLog(0, "UTILS", "FAILED %s:%d - %s", v2, v3, v4, v5, v6, "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread_border_router/src/common/types.cpp");
    exit(-1);
  }

  v7 = strlen(__s);
  v10[12](&v10, __s, v7);
  v8 = v12;
  if (v12 == v13)
  {
    (v10[13])(&v10, 47);
  }

  else
  {
    ++v12;
    *v8 = 47;
  }

  snprintf(__s, 0x2EuLL, "%d", *(this + 16));
  v9 = strlen(__s);
  v10[12](&v10, __s, v9);
  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v11);
}

uint64_t otbr::OtbrErrorToOtError(unsigned int a1)
{
  if (a1 != 0 && a1 < 0xFFFFFFF3)
  {
    return 1;
  }

  else
  {
    return *&asc_10044CF20[4 * a1 + 52];
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1003E5D60(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void otbr::DnsUtils::UnescapeInstanceName(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  std::string::reserve(a2, v4);
  if (v4)
  {
    v5 = 0;
    for (i = 0; ; ++i)
    {
      v7 = *a1;
      v8 = *(a1 + 23) >= 0 ? a1 : *a1;
      v9 = *(v8 + v5);
      if (v9 != 92)
      {
        break;
      }

      v10 = i + 3;
      if (i >= 0xFFFFFFFD)
      {
        goto LABEL_28;
      }

      v11 = i + 1;
      if (v4 > v10 && (v12 = *(v8 + v11), (v12 & 0x8000000000000000) == 0) && (_DefaultRuneLocale.__runetype[v12] & 0x400) != 0 && (v13 = *(v8 + i + 2), (v13 & 0x8000000000000000) == 0) && (_DefaultRuneLocale.__runetype[v13] & 0x400) != 0 && (v14 = *(v8 + v10), (v14 & 0x8000000000000000) == 0) && (_DefaultRuneLocale.__runetype[v14] & 0x400) != 0)
      {
        std::string::push_back(a2, 10 * v13 + 100 * v12 + v14 + 48);
        i += 3;
      }

      else
      {
        if (v4 <= v11)
        {
          break;
        }

        if (*(a1 + 23) >= 0)
        {
          v7 = a1;
        }

        std::string::push_back(a2, *(v7 + v11));
        ++i;
      }

LABEL_23:
      v5 = i + 1;
      if (i == -1)
      {
LABEL_28:
        __break(0x5500u);
        return;
      }

      if (v4 <= v5)
      {
        return;
      }
    }

    std::string::push_back(a2, v9);
    goto LABEL_23;
  }
}

void sub_1003E5EF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *otbr::DnsUtils::CheckHostnameSanity(uint64_t *result)
{
  v1 = *(result + 23);
  if (v1 < 0)
  {
    v1 = result[1];
    if (!v1)
    {
      goto LABEL_8;
    }

    result = *result;
  }

  else if (!*(result + 23))
  {
LABEL_8:
    otbr::DnsUtils::CheckHostnameSanity();
  }

  if (*(result + v1 - 1) != 46)
  {
    otbr::DnsUtils::CheckHostnameSanity();
  }

  return result;
}

std::string::size_type otbr::DnsUtils::CheckServiceNameSanity(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23))
    {
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      goto LABEL_5;
    }

LABEL_12:
    otbr::DnsUtils::CheckServiceNameSanity();
  }

  size = this->__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v2 >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (v4->__r_.__value_.__s.__data_[size - 1] == 46)
  {
    otbr::DnsUtils::CheckServiceNameSanity();
  }

  v5 = std::string::find(this, 46, 0);
  if (v5 == -1)
  {
    otbr::DnsUtils::CheckServiceNameSanity();
  }

  v6 = v5;
  result = std::string::rfind(this, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v6 != result)
  {
    otbr::DnsUtils::CheckServiceNameSanity();
  }

  return result;
}

void ThreadPowerAssertDispatchTask_cold_5(os_log_t log)
{
  v1 = 136315138;
  v2 = "ThreadPowerAssertDispatchTask";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Power Assertion: %s Failed to assert power", &v1, 0xCu);
}

void CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, &_os_log_default, v0, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v0, v1, "CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms Failed to add entry to histogram for avgRouteCost appType:%d, appTxCount:%d", v2, v3);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v0, v1, "CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms Failed to add entry to histogram for maxRouteCost appType:%d, appTxCount:%d", v2, v3);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v0, v1, "CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms histEntries is null for maxroutecost for appType:%d appTxCount:%d", v2, v3);
}

void CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v0, v1, "CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms Failed to add entry to histogram for avgHopCount appType:%d, appTxCount:%d", v2, v3);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v0, v1, "CoreAnalyticsHistogramMetricsHelper::ProcessGetHopCountMetricsHistograms for maxHopCount Failed to add entry to histogram for appType:%d, appTxCount:%d", v2, v3);
}

void FaultInfo::setControlInterface()
{
  v0 = 136315394;
  v1 = "com.apple.wpantund.ncp";
  v2 = 2080;
  v3 = "default";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &v0, 0x16u);
}

void CAMetricsHandlers_handle_getprop_allTriggerMetrics_accessory_specific()
{
  OUTLINED_FUNCTION_5();
  v2 = 3449;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s:%d: msg is not of type XPC_ARRAY", v1, 0x12u);
}

{
  OUTLINED_FUNCTION_5();
  v2 = 3441;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s:%d: inner msg is not of type XPC_ARRAY", v1, 0x12u);
}

void CAMetricsHandlers_handle_getprop_RCP2_generic_hist(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315650;
  OUTLINED_FUNCTION_3(a2, "int CAMetricsHandlers_handle_getprop_RCP2_generic_hist(__strong xpc_object_t, NSMutableDictionary *__strong, uint16_t, NSString *__strong)");
  OUTLINED_FUNCTION_2_0(v2, v3, 4952);
  OUTLINED_FUNCTION_4(&_mh_execute_header, v4, v5, "%s:%d: input %s case not matching with predefined list.", v6);
}

{
  *a2 = 136315650;
  OUTLINED_FUNCTION_3(a2, "int CAMetricsHandlers_handle_getprop_RCP2_generic_hist(__strong xpc_object_t, NSMutableDictionary *__strong, uint16_t, NSString *__strong)");
  OUTLINED_FUNCTION_2_0(v2, v3, 4946);
  OUTLINED_FUNCTION_4(&_mh_execute_header, v4, v5, "%s:%d: Size of array not matching in %s", v6);
}

{
  *a2 = 136315650;
  OUTLINED_FUNCTION_3(a2, "int CAMetricsHandlers_handle_getprop_RCP2_generic_hist(__strong xpc_object_t, NSMutableDictionary *__strong, uint16_t, NSString *__strong)");
  OUTLINED_FUNCTION_2_0(v2, v3, 4937);
  OUTLINED_FUNCTION_4(&_mh_execute_header, v4, v5, "%s:%d: Size of array not matching in %s", v6);
}

void CAMetricsHandlers_handle_getprop_RCP2_generic_hist(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CAMetrics : %s - ERROR : type not a dictionary", buf, 0xCu);
}

void PcapManager::start_pcap_capture()
{
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "SNIFFER_TLF::Starting pcap, checking descriptor", v1, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PcapManager::start_pcap_capture(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  LODWORD(v3) = 136315138;
  HIDWORD(v3) = a2;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, a2, a3, "SNIFFER_TLF::Starting pcap, checking fd path : %s", v3);
}

void PcapManager::start_pcap_capture(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  v3 = __error();
  strerror(*v3);
  v9 = *__error();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void PcapManager::stop_pcap_capture()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PcapManager::insert_fd()
{
  v0 = __error();
  strerror(*v0);
  v6 = *__error();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void PcapManager::new_fd()
{
  v0 = __error();
  strerror(*v0);
  v6 = *__error();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void PcapManager::remove_old_pcap_files()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PcapManager::remove_old_pcap_files(char *a1, uint64_t *a2, NSObject *a3)
{
  if (*a1 >= 0)
  {
    LODWORD(v3) = a2;
  }

  else
  {
    v3 = *a2;
  }

  LODWORD(v4) = 136315138;
  HIDWORD(v4) = v3;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, a2, a3, "PcapManager::remove_old_pcap_files => oldest file deleted : %s", v4);
}

void AWDMetricsClient_TriggerAutoBugCaptures(os_log_t log)
{
  v1 = 136315138;
  v2 = "AWDMetricsClient_TriggerAutoBugCaptures";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "AWDMetrics : %s", &v1, 0xCu);
}

void AWDMetricsClient_TriggerAutoBugCaptures_internal(os_log_t log)
{
  v1 = 136315138;
  v2 = "AWDMetricsClient_TriggerAutoBugCaptures_internal";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "AWDMetrics : %s", &v1, 0xCu);
}

{
  *v1 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AWDMetricsClient_TriggerAutoBugCapture : signatureWithDomain API failed", v1, 2u);
}

{
  v1 = 136315138;
  v2 = "AWDMetricsClient_TriggerAutoBugCaptures_internal";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : error creating SDRDiagnosticReporter", &v1, 0xCu);
}

void ___Z48AWDMetricsClient_TriggerAutoBugCaptures_internalNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES5_S5_S5_S5_S5_Pc_block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "AWDMetricsClient_TriggerAutoBugCaptures_internal_block_invoke";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : SDR rejected snapshotWithSignature. Reason %@", buf, 0x16u);
}

void ne_tunnel_name_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to set rank on %s", &v2, 0xCu);
}

void ne_tunnel_name_cold_6(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to update AdHoc service on %s", &v2, 0xCu);
}

void postFollowUpNotification(os_log_t log)
{
  v1 = 136315138;
  v2 = "postFollowUpNotification";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : Failed to allocate Follow up controller asserting...", &v1, 0xCu);
}

{
  v1 = 136315394;
  v2 = "postFollowUpNotification";
  v3 = 1024;
  v4 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: FAULT detected, Failed Post Followup Notification : %d, asserting !!! ", &v1, 0x12u);
}

void clearFollowUpNotification(os_log_t log)
{
  v1 = 136315138;
  v2 = "clearFollowUpNotification";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : Failed to allocate Follow up controller asserting...", &v1, 0xCu);
}

void dskeychainRcp::printCFData()
{
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "------------------------------------------------------------", v1, 2u);
}

{
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, " %s", v1, 0xCu);
}

void dskeychainRcp::AddKeychainItem()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void dskeychainRcp::FindKeychainItem()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void dskeychainRcp::DeleteKeychainItem()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void dskeychainRcp::AddDataSet()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void dskeychainRcp::FindDataSet()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void dskeychainRcp::FindAndGetDataSet()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void XPCIPCAPI_v1_rcp::interface_prop_get_handler(char *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, __stack_chk_guard);
  LODWORD(v5) = 136315138;
  HIDWORD(v5) = v2;
  OUTLINED_FUNCTION_5_1(&_mh_execute_header, v3, v4, "property_get_value: Unsupported property %s", v5);
}

void RcpHostContext::otctl_OutputFormatV(unsigned __int16 *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

{
  v6 = *a1;
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void RcpHostContext::is_device_state_valid_for_service_or_route_modification(uint64_t *a1)
{
  OUTLINED_FUNCTION_6(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void RcpHostContext::too_many_partitions(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 5952);
  v4 = *(a1 + 5944);
  v5 = *a2;
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 2048;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "numPartitions=%d, Partition-time-Sec=%ld, Curr-Time-Sec=%ld", v6, 0x1Cu);
}

void InternalIPCAPI::received_network_diagnostics_response(os_log_t log)
{
  v1 = 136315138;
  v2 = "received_network_diagnostics_response";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s any_cast to convert the value to type Data failed \n", &v1, 0xCu);
}

void InternalIPCAPI::received_network_diagnostics_response(void *a1, uint64_t *a2, os_log_t log)
{
  v3 = *a1 - *a2;
  if (*a2 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *a2;
  }

  v5 = 136315650;
  v6 = "received_network_diagnostics_response";
  v7 = 1024;
  v8 = v3;
  v9 = 2080;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ERROR %s got empty data in response length=%d data=%s", &v5, 0x1Cu);
}

void InternalIPCAPI::interface_send_network_diagnostics_req(int a1, NSObject *a2)
{
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 1024;
  v4 = 16;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TDM: WPANTUND_v1 Error dest_addr_len=%d does not match sizeof(dest)=%d\n", v2, 0xEu);
}

void log_get_logging_obg_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = 136315394;
  v3 = a1;
  v4 = 2080;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s, using default logObj", &v2, 0x16u);
}

void OpenFile1M()
{
  perror("tcsetattr");
  strrchr[abi:ne200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/Rcp/host-ot-adaptation/RcpConfigHelper.cpp", 47);
  otExitCodeToString(1);
  otLogCritPlat("%s() at %s:%d: %s", v0, v1, v2, v3, v4, v5, v6, "OpenFile1M");
  handle_daemon_exit();
  exit(1);
}

void ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::GetNextSavedFrame(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[GetNextSavedFrame]:  mBuffer[%p] aFrame[%p]", &v4, 0x16u);
}

void HostInterpreter::ProcessDatasetUpdate(uint64_t a1)
{
  v1 = *(a1 + 254);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void HostInterpreter::ProcessDatasetUpdate()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::ProcessDatasetUpdate(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void HostInterpreter::ProcessGeneratePSKc()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessGetRcpCrashDump()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessInitialize()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessPeekCmd()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::ProcessPrefixAdd()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void HostInterpreter::ProcessPrefixRemove()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void HostInterpreter::ProcessPropertyGet()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessPropertyGet(char *a1)
{
  OUTLINED_FUNCTION_18(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void HostInterpreter::ProcessPropertyGet(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void HostInterpreter::ProcessPropertySet(char *a1)
{
  OUTLINED_FUNCTION_18(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void HostInterpreter::ProcessRcpReportCrashInfo()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HostInterpreter::ProcessRouteAdd()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessRouteRemove()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessServiceAdd(uint64_t a1)
{
  v1 = *(a1 + 505);
  v2 = *(a1 + 252);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x14u);
}

void HostInterpreter::ProcessServiceAdd()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void HostInterpreter::ProcessServiceRemove()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void HostInterpreter::ProcessWedStart(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

{
  v1 = *a1;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void HostInterpreter::ProcessWedStart(unsigned __int8 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x3Cu);
}

void HostInterpreter::ProcessWedStart(char a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "ProcessWedStart";
  *(buf + 6) = 1024;
  *(buf + 14) = a1 & 1;
  *(buf + 9) = 1024;
  *(buf + 5) = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Wed operation is in progress, reject %s request Peer Unlinking = [%d], Peer linking = [%d]", buf, 0x18u);
}

void HostInterpreter::ProcessWedStart()
{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HostInterpreter::ProcessWedStop()
{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HostInterpreter::ProcessWedStop(uint64_t *a1, NSObject *a2)
{
  IsEnhCslPeerUnlinking = otThreadIsEnhCslPeerUnlinking(*a1);
  otThreadIsEnhCslPeerLinking(*a1);
  *v7 = 136315650;
  OUTLINED_FUNCTION_15();
  *&v7[7] = IsEnhCslPeerUnlinking;
  v7[9] = v5;
  v8 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Wed operation is in progress, reject %s request Peer Unlinking = [%d], Peer linking = [%d]", v7, 0x18u);
}

void HostInterpreter::setRcpSrpSignalMeshLocalAddressTimer()
{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HostInterpreter::checkAnycastSrpServiceConvergence()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::checkSrpAdvertisedWithoutPrefix()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::checkChildRoleDetection()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::checkUnicastSrpServiceConvergence()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::checkSrpPrefixCovergence()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::force_leader_reelection()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::ProcessUpdateAccessoryAddr()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HostInterpreter::DeviceModeConfig(char *a1)
{
  OUTLINED_FUNCTION_18(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  *v6 = 136315650;
  OUTLINED_FUNCTION_15();
  *&v6[7] = 11047;
  v6[9] = 2080;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ThreadConnection: %s:%d: Node Type:%s", v6, 0x1Cu);
}

void ___ZN15HostInterpreter18CAStabilityMetricsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN15HostInterpreter18CAStabilityMetricsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::restore_health_metrics_from_persisted_db()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::restore_awd_stability_counters_from_persisted_db()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::HandleDiagnosticGetResponseFromLeader(uint64_t *a1, int a2, NSObject *a3)
{
  otThreadGetLeaderRouterId(*a1);
  OUTLINED_FUNCTION_3_1();
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "HI:HandleDiagnosticGetResponseFromLeader Leader rloc16:0x%x does not match DIAG rsp rloc16:0x%x", v5, 0xEu);
}

void HostInterpreter::HandleDiagGetSingleHopPeerResponseIPAddr()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v0, v1, "%s: for peer:%s", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HostInterpreter::HandleDiagnosticGetResponse()
{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::ProcessUpdateLeaderInfo(unsigned __int16 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "ProcessDiagGetSingleHopPeerMeshLocalIPAddr";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: start setRcpSrpSignalMeshLocalAddressTimer", buf, 0xCu);
}

void HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(unsigned __int8 *a1)
{
  v6 = *(a1 + 4);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x42u);
}

void HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void HostInterpreter::GetRcpStateInfo()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::GetRcpStateInfo(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void HostInterpreter::GetRcpStateInfo(unsigned __int16 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *a1;
  v2 = *(a1 + 2);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void HostInterpreter::GetRcpStateInfo(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void HostInterpreter::GetThreadHealthMetrics(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void HostInterpreter::GetThreadHealthMetrics(uint64_t a1)
{
  v1 = *(a1 + 5964);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

{
  v1 = *(a1 + 5965);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

{
  v1 = *(a1 + 5966);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

{
  v1 = *(a1 + 5967);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

{
  v1 = *(a1 + 5968);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void HostInterpreter::persist_awd_stability_counters()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::save_awd_stability_counters(const __CFString *a1, int a2, os_log_t log)
{
  v6 = xmmword_1004E5778;
  v5 = DWORD1(xmmword_1004E5778);
  v7 = *(&xmmword_1004E5778 + 1);
  if (a1)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(a1, SystemEncoding);
  }

  else
  {
    CStringPtr = " ";
  }

  v11[0] = 67110914;
  v11[1] = v6;
  v12 = 1024;
  v13 = v5;
  v14 = 2048;
  v15 = v7;
  v16 = 2080;
  v17 = CStringPtr;
  v18 = 1024;
  v19 = a2;
  v20 = 1024;
  v21 = xmmword_1004E5788;
  v22 = 1024;
  v23 = DWORD1(xmmword_1004E5788);
  v24 = 1024;
  v25 = WORD4(xmmword_1004E5788);
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "\nFault Block Random Id: %u \nCrash Type: %d \nTimestamp(ms): %llu \nTimestamp(format): [%s.%03d]\nAddress: 0x%0x \nLine: %d \nCrash Count: %d", v11, 0x3Au);
}

void HostInterpreter::SaveCrashLogs()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::processCommand()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void HostInterpreter::processCommand(uint64_t a1)
{
  v1 = *(*a1 + 12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void HostInterpreter::rcp_ot_dataset_update()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void processXpcOtctl()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>()
{
  OUTLINED_FUNCTION_11();
  do
  {
    OUTLINED_FUNCTION_17();
    (*v2)(v0);
    OUTLINED_FUNCTION_16();
    v0 = v1;
  }

  while (!v3);
}

void handle_captureABC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void handle_getnextframe_captureABC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void handle_daemon_exit()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void host_crash_dump_collection()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void persist_host_reset_dueto_rcp(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

void resetThreadWedSession()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void processHostSystemStartActionsBasedOnTime()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void processHostSystemStartActions()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void update_stabilitymetrics_host_for_periodic_ca_metrics()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_4(&_mh_execute_header, v0, v1, "Size of kCAPeriodicCounters_Num_Daemon_Restart_Crashes : %d, String is : %s. Reseting it to 1.", v2, v3);
}

{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_4(&_mh_execute_header, v0, v1, "Size of kCAPeriodicCounters_Num_Daemon_Restart_Reboots : %d, String is : %s. Reseting it to 1.", v2, v3);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void update_stabilitymetrics_host_for_triggerbased_ca_metrics()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_4(&_mh_execute_header, v0, v1, "Size of kCATriggerBasedCounters_Num_Daemon_Restart_Reboots : %d, String is : %s. Reseting it to 1.", v2, v3);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void main_cold_7(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Thread feature is disabled, threadservice : %d", buf, 8u);
}

void main_cold_9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_11()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void main_cold_13()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_15()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_17()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_19()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_21()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_23()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_29()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_32()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void main_cold_35(const std::exception *a1)
{
  std::exception::what(a1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_3(&_mh_execute_header, v1, v2, "Exception thrown while starting up, %s", v3, v4, v5, v6, v7);
}

void main_cold_37(const std::runtime_error *a1)
{
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_3(&_mh_execute_header, v1, v2, "Runtime error thrown while starting up, %s", v3, v4, v5, v6, v7);
}

void main_cold_39()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void main_cold_46()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __main_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __main_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void boost::filesystem::filesystem_error::get_empty_path()
{
  if (__cxa_guard_acquire(&_MergedGlobals_15))
  {
    qword_10052D7C0 = 0;
    unk_10052D7C8 = 0;
    qword_10052D7B8 = 0;
    __cxa_atexit(boost::filesystem::path::~path, &qword_10052D7B8, &_mh_execute_header);

    __cxa_guard_release(&_MergedGlobals_15);
  }
}

void boost::filesystem::detail::directory_iterator_construct(void *a1)
{
  OUTLINED_FUNCTION_0_6();
  if (v2 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12) & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = 12;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a1[2] = v3;
}

uint64_t boost::filesystem::detail::recursive_directory_iterator_construct(void *a1, char a2, uint64_t *a3)
{
  __cxa_begin_catch(a1);
  if (a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_6();
  if (v7 || ((*(*v6 + 48))(v6, 12) & 1) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void boost::filesystem::detail::recursive_directory_iterator_increment(void *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_0_6();
  if (v4 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 84) & 1) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *a1 = 84;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  *a2 = v5;
}

{
  __cxa_begin_catch(a1);
  OUTLINED_FUNCTION_0_6();
  if (v4 || ((*(*v3 + 48))(v3, 12) & 1) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void boost::filesystem::detail::relative(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void boost::filesystem::detail::relative(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void boost::filesystem::detail::initial_path()
{
  if (__cxa_guard_acquire(&_MergedGlobals_16))
  {
    unk_10052D7F8 = 0;
    xmmword_10052D7E8 = 0uLL;
    __cxa_atexit(boost::filesystem::path::~path, &xmmword_10052D7E8, &_mh_execute_header);

    __cxa_guard_release(&_MergedGlobals_16);
  }
}

void otbr::Mdns::PublisherMDnsSd::PublishHostImpl(uint64_t a1, void *__p)
{
  *(a1 + 8) = __p;
  if ((*(a1 + 16) - __p) < 0)
  {
    __break(0x550Cu);
  }

  else
  {
    operator delete(__p);
  }
}

void otbr::Mdns::Publisher::ServiceRegistration::ServiceRegistration(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*a2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*a3);
  }
}

void otbr::MainloopManager::GetInstance()
{
  {
    otbr::MainloopManager::GetInstance(void)::sMainloopManager = &otbr::MainloopManager::GetInstance(void)::sMainloopManager;
    *algn_1004E5528 = &otbr::MainloopManager::GetInstance(void)::sMainloopManager;
    qword_1004E5530 = 0;
    __cxa_atexit(otbr::MainloopManager::~MainloopManager, &otbr::MainloopManager::GetInstance(void)::sMainloopManager, &_mh_execute_header);
  }
}

void otbrLogInit()
{
  __assert_rtn("otbrLogInit", "logging.cpp", 96, "aLevel >= OTBR_LOG_EMERG && aLevel <= OTBR_LOG_DEBUG");
}

{
  __assert_rtn("otbrLogInit", "logging.cpp", 95, "aProgramName != nullptr");
}

void otbrLog(const char *a1, uint64_t a2, NSObject *a3)
{
  GetPrefix(a1);
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%s: %s", v4, 0x16u);
}

{
  GetPrefix(a1);
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: %s", v4, 0x16u);
}

void otbr::DnsUtils::CheckHostnameSanity()
{
  __assert_rtn("CheckHostnameSanity", "dns_utils.cpp", 81, "aHostName.back() == '.'");
}

{
  __assert_rtn("CheckHostnameSanity", "dns_utils.cpp", 80, "aHostName.length() > 0");
}

void otbr::DnsUtils::CheckServiceNameSanity()
{
  __assert_rtn("CheckServiceNameSanity", "dns_utils.cpp", 95, "dotpos == aServiceName.find_last_of('.')");
}

{
  __assert_rtn("CheckServiceNameSanity", "dns_utils.cpp", 94, "dotpos != std::string::npos");
}

{
  __assert_rtn("CheckServiceNameSanity", "dns_utils.cpp", 92, "aServiceName[aServiceName.length() - 1] != '.'");
}

{
  __assert_rtn("CheckServiceNameSanity", "dns_utils.cpp", 91, "aServiceName.length() > 0");
}

uint64_t ot::AsCoreType<otSockAddr>(uint64_t a1)
{
  ot::AsCoreType<otSockAddr>(a1);
  return a1;
}

{
  ot::AsCoreType<otSockAddr>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otIp6Prefix>(uint64_t a1)
{
  ot::AsCoreType<otIp6Prefix>(a1);
  return a1;
}

{
  ot::AsCoreType<otIp6Prefix>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otUdpSocket>(uint64_t a1)
{
  ot::AsCoreType<otUdpSocket>(a1);
  return a1;
}

{
  ot::AsCoreType<otUdpSocket>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otExtAddress>(uint64_t a1)
{
  ot::AsCoreType<otExtAddress>(a1);
  return a1;
}

{
  ot::AsCoreType<otExtAddress>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otIp4Address>(uint64_t a1)
{
  ot::AsCoreType<otIp4Address>(a1);
  return a1;
}

{
  ot::AsCoreType<otIp4Address>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otIp6Address>(uint64_t a1)
{
  ot::AsCoreType<otIp6Address>(a1);
  return a1;
}

{
  ot::AsCoreType<otIp6Address>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otNetworkKey>(uint64_t a1)
{
  ot::AsCoreType<otNetworkKey>(a1);
  return a1;
}

{
  ot::AsCoreType<otNetworkKey>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otMessageInfo>(uint64_t a1)
{
  ot::AsCoreType<otMessageInfo>(a1);
  return a1;
}

{
  ot::AsCoreType<otMessageInfo>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otNetworkName>(uint64_t a1)
{
  ot::AsCoreType<otNetworkName>(a1);
  return a1;
}

{
  ot::AsCoreType<otNetworkName>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otSteeringData>(uint64_t a1)
{
  ot::AsCoreType<otSteeringData>(a1);
  return a1;
}

{
  ot::AsCoreType<otSteeringData>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otBorderAgentId>(uint64_t a1)
{
  ot::AsCoreType<otBorderAgentId>(a1);
  return a1;
}

{
  ot::AsCoreType<otBorderAgentId>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otExtendedPanId>(uint64_t a1)
{
  ot::AsCoreType<otExtendedPanId>(a1);
  return a1;
}

{
  ot::AsCoreType<otExtendedPanId>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otSecurityPolicy>(uint64_t a1)
{
  ot::AsCoreType<otSecurityPolicy>(a1);
  return a1;
}

{
  ot::AsCoreType<otSecurityPolicy>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otJoinerDiscerner>(uint64_t a1)
{
  ot::AsCoreType<otJoinerDiscerner>(a1);
  return a1;
}

{
  ot::AsCoreType<otJoinerDiscerner>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otIp6NetworkPrefix>(uint64_t a1)
{
  ot::AsCoreType<otIp6NetworkPrefix>(a1);
  return a1;
}

{
  ot::AsCoreType<otIp6NetworkPrefix>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otBorderRouterConfig>(uint64_t a1)
{
  ot::AsCoreType<otBorderRouterConfig>(a1);
  return a1;
}

{
  ot::AsCoreType<otBorderRouterConfig>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otOperationalDataset>(uint64_t a1)
{
  ot::AsCoreType<otOperationalDataset>(a1);
  return a1;
}

{
  ot::AsCoreType<otOperationalDataset>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otExternalRouteConfig>(uint64_t a1)
{
  ot::AsCoreType<otExternalRouteConfig>(a1);
  return a1;
}

{
  ot::AsCoreType<otExternalRouteConfig>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otCommissioningDataset>(uint64_t a1)
{
  ot::AsCoreType<otCommissioningDataset>(a1);
  return a1;
}

{
  ot::AsCoreType<otCommissioningDataset>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otPskc>(uint64_t a1)
{
  ot::AsCoreType<otPskc>(a1);
  return a1;
}

{
  ot::AsCoreType<otPskc>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otIp4Cidr>(uint64_t a1)
{
  ot::AsCoreType<otIp4Cidr>(a1);
  return a1;
}

{
  ot::AsCoreType<otIp4Cidr>(a1);
  return a1;
}

uint64_t ot::AsCoreType<otMessage>(uint64_t a1)
{
  ot::AsCoreType<otMessage>(a1);
  return a1;
}

{
  ot::AsCoreType<otMessage>(a1);
  return a1;
}

uint64_t std::stringbuf::str()
{
  return std::stringbuf::str();
}

{
  return std::stringbuf::str();
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);
}

{
  std::runtime_error::~runtime_error(this);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[](void *__p)
{
    ;
  }
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

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}