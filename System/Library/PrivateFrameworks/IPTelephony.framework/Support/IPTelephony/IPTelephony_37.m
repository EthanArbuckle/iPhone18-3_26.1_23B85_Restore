void sub_1E4EEEB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (*(v24 - 17) < 0)
  {
    operator delete(*(v24 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims10CallHandle6hangupERKNS_13CallEndReasonE_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, a1 + 32);
  (*(*v2 + 56))(v2, v3, a1 + 56);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEECAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::CallHandle::answer(uint64_t a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v7 = *(a1 + 32);
  }

  memset(&v6, 0, sizeof(v6));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims10CallHandle6answerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v3[3] = &__block_descriptor_tmp_106_0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = v7;
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEEE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 25) < 0)
  {
    operator delete(*(v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ims10CallHandle6answerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(IPTelephonyManager *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, a1 + 32);
  (*(*v2 + 48))(v2, v3, a1 + 56);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEEF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::CallHandle::setRelayCall(ims::CallHandle *this, char a2)
{
  *(this + 84) = a2;
  memset(&v6, 0, sizeof(v6));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 4), *(this + 5));
  }

  else
  {
    v6 = *(this + 32);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims10CallHandle12setRelayCallEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_109;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEF0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims10CallHandle12setRelayCallEb_block_invoke(unsigned __int8 *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, (a1 + 32));
  IMSCallManager::setRelayMode(v2, v3, a1[56]);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEF178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::CallHandle::setScreeningCall(ims::CallHandle *this, char a2)
{
  *(this + 85) = a2;
  memset(&v6, 0, sizeof(v6));
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 4), *(this + 5));
  }

  else
  {
    v6 = *(this + 32);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZN3ims10CallHandle16setScreeningCallEb_block_invoke;
  v3[3] = &__block_descriptor_tmp_112;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = a2;
  IMSClientManager::callOnImsQueue(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EEF2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ims10CallHandle16setScreeningCallEb_block_invoke(unsigned __int8 *a1)
{
  IPTelephonyManager::getCallManager(a1, &v5);
  v2 = v5;
  ImsUuid::ImsUuid(v3, (a1 + 32));
  IMSCallManager::setScreeningMode(v2, v3, a1[56]);
  v3[0] = &unk_1F5EBEE78;
  if (v4 < 0)
  {
    operator delete(v3[1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4EEF378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ims::setBBServerConnection(void *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSClientManager::setBBServerConnection(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1E4EEF430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ims::addCallEndInfo(xpc_object_t *a1)
{
  v1 = *a1;
  v2 = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    v1 = xpc_null_create();
    v2 = v1;
  }

  IMSClientManager::addCallEndInfo(&v2);
  xpc_release(v1);
}

void std::__shared_ptr_pointer<ims::StackEventDelegateWrapper *,std::shared_ptr<ims::StackEventDelegate>::__shared_ptr_default_delete<ims::StackEventDelegate,ims::StackEventDelegateWrapper>,std::allocator<ims::StackEventDelegateWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<ims::StackEventDelegateWrapper *,std::shared_ptr<ims::StackEventDelegate>::__shared_ptr_default_delete<ims::StackEventDelegate,ims::StackEventDelegateWrapper>,std::allocator<ims::StackEventDelegateWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ims::StackEventDelegateWrapper *,std::shared_ptr<ims::StackEventDelegate>::__shared_ptr_default_delete<ims::StackEventDelegate,ims::StackEventDelegateWrapper>,std::allocator<ims::StackEventDelegateWrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ims::CallEventDelegateWrapper *,std::shared_ptr<ims::CallEventDelegate>::__shared_ptr_default_delete<ims::CallEventDelegate,ims::CallEventDelegateWrapper>,std::allocator<ims::CallEventDelegateWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<ims::CallEventDelegateWrapper *,std::shared_ptr<ims::CallEventDelegate>::__shared_ptr_default_delete<ims::CallEventDelegate,ims::CallEventDelegateWrapper>,std::allocator<ims::CallEventDelegateWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ims::CallEventDelegateWrapper *,std::shared_ptr<ims::CallEventDelegate>::__shared_ptr_default_delete<ims::CallEventDelegate,ims::CallEventDelegateWrapper>,std::allocator<ims::CallEventDelegateWrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ims::CallManagerEventDelegateWrapper::~CallManagerEventDelegateWrapper(void **this)
{
  *this = &unk_1F5ED98E8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED98E8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::CallManagerEventDelegateWrapper::handleIncomingEvent(ims::CallManagerEventDelegateWrapper *this, ims::CallHandle *a2, const ims::CallIncomingInfo *a3)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void std::__shared_ptr_pointer<ims::CallManagerEventDelegateWrapper *,std::shared_ptr<ims::CallManagerEventDelegate>::__shared_ptr_default_delete<ims::CallManagerEventDelegate,ims::CallManagerEventDelegateWrapper>,std::allocator<ims::CallManagerEventDelegateWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<ims::CallManagerEventDelegateWrapper *,std::shared_ptr<ims::CallManagerEventDelegate>::__shared_ptr_default_delete<ims::CallManagerEventDelegate,ims::CallManagerEventDelegateWrapper>,std::allocator<ims::CallManagerEventDelegateWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ims::CallManagerEventDelegateWrapper *,std::shared_ptr<ims::CallManagerEventDelegate>::__shared_ptr_default_delete<ims::CallManagerEventDelegate,ims::CallManagerEventDelegateWrapper>,std::allocator<ims::CallManagerEventDelegateWrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ims::MessageEventDelegateWrapper *,std::shared_ptr<ims::MessageEventDelegate>::__shared_ptr_default_delete<ims::MessageEventDelegate,ims::MessageEventDelegateWrapper>,std::allocator<ims::MessageEventDelegateWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<ims::MessageEventDelegateWrapper *,std::shared_ptr<ims::MessageEventDelegate>::__shared_ptr_default_delete<ims::MessageEventDelegate,ims::MessageEventDelegateWrapper>,std::allocator<ims::MessageEventDelegateWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ims::MessageEventDelegateWrapper *,std::shared_ptr<ims::MessageEventDelegate>::__shared_ptr_default_delete<ims::MessageEventDelegate,ims::MessageEventDelegateWrapper>,std::allocator<ims::MessageEventDelegateWrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ims::XcapEventDelegateWrapper *,std::shared_ptr<ims::XcapEventDelegate>::__shared_ptr_default_delete<ims::XcapEventDelegate,ims::XcapEventDelegateWrapper>,std::allocator<ims::XcapEventDelegateWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<ims::XcapEventDelegateWrapper *,std::shared_ptr<ims::XcapEventDelegate>::__shared_ptr_default_delete<ims::XcapEventDelegate,ims::XcapEventDelegateWrapper>,std::allocator<ims::XcapEventDelegateWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ims::XcapEventDelegateWrapper *,std::shared_ptr<ims::XcapEventDelegate>::__shared_ptr_default_delete<ims::XcapEventDelegate,ims::XcapEventDelegateWrapper>,std::allocator<ims::XcapEventDelegateWrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ims::NetworkServices::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  v5 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v5;
  std::string::operator=((a1 + 144), (a2 + 144));
  std::string::operator=((a1 + 168), (a2 + 168));
  v6 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v6;
  *(a1 + 216) = *(a2 + 216);
  std::string::operator=((a1 + 224), (a2 + 224));
  std::string::operator=((a1 + 248), (a2 + 248));
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 272), *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 3));
  }

  v7 = *(a2 + 296);
  *(a1 + 302) = *(a2 + 302);
  *(a1 + 296) = v7;
  return a1;
}

ims::NetworkConfig *ims::NetworkConfig::NetworkConfig(ims::NetworkConfig *this, const ims::NetworkConfig *a2)
{
  v4 = ims::NetworkServices::NetworkServices(this, a2);
  if (*(a2 + 335) < 0)
  {
    std::string::__init_copy_ctor_external(v4 + 13, *(a2 + 39), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 312);
    v4[13].__r_.__value_.__r.__words[2] = *(a2 + 41);
    *&v4[13].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 359) < 0)
  {
    std::string::__init_copy_ctor_external(this + 14, *(a2 + 42), *(a2 + 43));
  }

  else
  {
    v6 = *(a2 + 21);
    *(this + 44) = *(a2 + 44);
    *(this + 21) = v6;
  }

  if (*(a2 + 383) < 0)
  {
    std::string::__init_copy_ctor_external(this + 15, *(a2 + 45), *(a2 + 46));
  }

  else
  {
    v7 = *(a2 + 360);
    *(this + 47) = *(a2 + 47);
    *(this + 360) = v7;
  }

  if (*(a2 + 407) < 0)
  {
    std::string::__init_copy_ctor_external(this + 16, *(a2 + 48), *(a2 + 49));
  }

  else
  {
    v8 = *(a2 + 24);
    *(this + 50) = *(a2 + 50);
    *(this + 24) = v8;
  }

  if (*(a2 + 431) < 0)
  {
    std::string::__init_copy_ctor_external(this + 17, *(a2 + 51), *(a2 + 52));
  }

  else
  {
    v9 = *(a2 + 408);
    *(this + 53) = *(a2 + 53);
    *(this + 408) = v9;
  }

  if (*(a2 + 455) < 0)
  {
    std::string::__init_copy_ctor_external(this + 18, *(a2 + 54), *(a2 + 55));
  }

  else
  {
    v10 = *(a2 + 27);
    *(this + 56) = *(a2 + 56);
    *(this + 27) = v10;
  }

  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 456, *(a2 + 57), *(a2 + 58), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 58) - *(a2 + 57)) >> 3));
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 480, *(a2 + 60), *(a2 + 61), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 61) - *(a2 + 60)) >> 3));
  if (*(a2 + 527) < 0)
  {
    std::string::__init_copy_ctor_external(this + 21, *(a2 + 63), *(a2 + 64));
  }

  else
  {
    v11 = *(a2 + 504);
    *(this + 65) = *(a2 + 65);
    *(this + 504) = v11;
  }

  v12 = *(a2 + 132);
  *(this + 531) = *(a2 + 531);
  *(this + 132) = v12;
  if (*(a2 + 559) < 0)
  {
    std::string::__init_copy_ctor_external((this + 536), *(a2 + 67), *(a2 + 68));
  }

  else
  {
    v13 = *(a2 + 536);
    *(this + 69) = *(a2 + 69);
    *(this + 536) = v13;
  }

  v14 = (this + 560);
  if (*(a2 + 583) < 0)
  {
    std::string::__init_copy_ctor_external(v14, *(a2 + 70), *(a2 + 71));
  }

  else
  {
    v15 = *(a2 + 35);
    *(this + 72) = *(a2 + 72);
    *&v14->__r_.__value_.__l.__data_ = v15;
  }

  *(this + 292) = *(a2 + 292);
  return this;
}

void sub_1E4EEFCDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 559) < 0)
  {
    operator delete(*v7);
  }

  if (*(v2 + 527) < 0)
  {
    operator delete(*v6);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 455) < 0)
  {
    operator delete(*(v2 + 432));
  }

  if (*(v2 + 431) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 407) < 0)
  {
    operator delete(*(v2 + 384));
  }

  if (*(v2 + 383) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 359) < 0)
  {
    operator delete(*(v2 + 336));
  }

  if (*(v2 + 335) < 0)
  {
    operator delete(*v3);
  }

  ims::NetworkServices::~NetworkServices(v2);
  _Unwind_Resume(a1);
}

ims::NetworkServices *ims::NetworkServices::NetworkServices(ims::NetworkServices *this, const ims::NetworkServices *a2)
{
  LODWORD(ims::AccessNetworks::AccessNetworks(this, a2)[9].__r_.__value_.__l.__data_) = *(a2 + 54);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v4 = *(a2 + 14);
    *(this + 30) = *(a2 + 30);
    *(this + 14) = v4;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 248);
    *(this + 33) = *(a2 + 33);
    *(this + 248) = v5;
  }

  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 272, *(a2 + 34), *(a2 + 35), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 35) - *(a2 + 34)) >> 3));
  v6 = *(a2 + 37);
  *(this + 302) = *(a2 + 302);
  *(this + 37) = v6;
  return this;
}

void sub_1E4EEFE9C(_Unwind_Exception *a1)
{
  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  ims::AccessNetworks::~AccessNetworks(v1);
  _Unwind_Resume(a1);
}

std::string *ims::AccessNetworks::AccessNetworks(std::string *this, const ims::AccessNetworks *a2)
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

  v6 = *(a2 + 3);
  this[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
  *&this[2].__r_.__value_.__l.__data_ = v6;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  v9 = *(a2 + 120);
  this[5].__r_.__value_.__s.__data_[16] = *(a2 + 136);
  *&this[5].__r_.__value_.__l.__data_ = v9;
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v11;
  }

  v12 = *(a2 + 12);
  this[8].__r_.__value_.__s.__data_[16] = *(a2 + 208);
  *&this[8].__r_.__value_.__l.__data_ = v12;
  return this;
}

void sub_1E4EF0028(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  ims::AccessNetwork::~AccessNetwork((v1 + 72));
  ims::AccessNetwork::~AccessNetwork(v1);
  _Unwind_Resume(a1);
}

void sub_1E4EF007C()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }

  JUMPOUT(0x1E4EF0074);
}

std::string *ims::DeviceConfig::DeviceConfig(std::string *this, __int128 *a2)
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
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  LOWORD(this[4].__r_.__value_.__l.__data_) = *(a2 + 48);
  return this;
}

void sub_1E4EF0164(_Unwind_Exception *exception_object)
{
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

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4EF0210(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ims::IsimFiles::~IsimFiles(void **this)
{
  v2 = this + 12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void IMSCallOptions::IMSCallOptions(IMSCallOptions *this, const IMSCallOptions *a2)
{
  *this = *a2;
  *(this + 1) = &unk_1F5EBEE78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v4;
  }

  BambiCallOptions::BambiCallOptions((this + 40), (a2 + 40));
  BambiEmergencyCallOptions::BambiEmergencyCallOptions((this + 392), (a2 + 392));
}

void sub_1E4EF037C(_Unwind_Exception *a1)
{
  BambiEmergencyCallOptions::~BambiEmergencyCallOptions((v1 + 392));
  BambiCallOptions::~BambiCallOptions((v1 + 40));
  *(v1 + 8) = v2;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

ImsOutStream *SipSecurityMechanism::log(SipSecurityMechanism *this, ImsOutStream *a2)
{
  (*(*a2 + 32))(a2, this + 8);
  SipParameterMap::toStream((this + 32), a2, 0, 0, 0, 0);
  return a2;
}

uint64_t tlv::parseV<nas::tlv::SsacInfoVoice>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 2);
  v6 = *(v3 + 1);
  *a1 = (v3 + 3);
  return (v6 << 16) | v5;
}

void sub_1E4EF04AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0498);
}

uint64_t nas::tlv::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 2);
  *(a3 + 2) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 1);
  *(a3 + 4) = *(a1 + 3);
  return a1 + 4;
}

unint64_t tlv::parseV<nas::tlv::AcbInfoSignaling>(uint64_t *a1, int a2)
{
  v4 = 0;
  v3 = 0;
  *a1 = nas::tlv::parseField(*a1, (*a1 + a2), &v3);
  return v3 | (v4 << 32);
}

void sub_1E4EF0584(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0568);
}

unint64_t tlv::parseV<nas::tlv::AcbInfoData>(uint64_t *a1, int a2)
{
  v4 = 0;
  v3 = 0;
  *a1 = nas::tlv::parseField(*a1, (*a1 + a2), &v3);
  return v3 | (v4 << 32);
}

void sub_1E4EF05E4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF05C8);
}

BOOL tlv::parseV<nas::tlv::AcbInfoSkipVoice>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

void sub_1E4EF0638(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF062CLL);
}

BOOL tlv::parseV<nas::tlv::AcbInfoSkipSms>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

void sub_1E4EF0690(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0684);
}

uint64_t tlv::parseV<nas::tlv::SubInfoVSID>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF06E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF06D4);
}

uint64_t tlv::parseV<nas::tlv::CallType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  result = *v3;
  *a1 = (v3 + 8);
  return result;
}

void sub_1E4EF0730(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0724);
}

uint64_t tlv::parseV<nas::tlv::SystemMode>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

void sub_1E4EF0780(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0774);
}

uint64_t tlv::parseV<nas::tlv::VoiceSystemId>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF07D0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF07C4);
}

uint64_t tlv::parseV<nas::tlv::Response>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF0820(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0814);
}

uint64_t tlv::parseV<nas::tlv::BarringTime>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF0870(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF0864);
}

BOOL tlv::parseV<nas::tlv::NwCongestion>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3 != 0;
  *a1 = (v3 + 1);
  return result;
}

void sub_1E4EF08C8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF08BCLL);
}

uint64_t tlv::parseV<nas::tlv::TimerValueRemaining>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF0918(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF090CLL);
}

uint64_t tlv::parseV<nas::tlv::RemainingTimerValue>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF0968(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF095CLL);
}

uint64_t tlv::parseV<nas::tlv::Status>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4EF09B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4EF09ACLL);
}

uint64_t SipRetryAfterHeader::SipRetryAfterHeader(uint64_t a1, int a2, const std::string *a3)
{
  v6 = SipHeader::SipHeader(a1, "Retry-After");
  *(v6 + 88) = 0;
  *(v6 + 80) = 0;
  *(v6 + 64) = &unk_1F5EBEF50;
  *(v6 + 72) = v6 + 80;
  *(v6 + 96) = 256;
  *v6 = &unk_1F5EDB528;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 104) = a2;
  std::string::operator=((v6 + 112), a3);
  return a1;
}

void sub_1E4EF0A78(_Unwind_Exception *a1)
{
  if (v1[135] < 0)
  {
    operator delete(*v2);
  }

  SipParameterHeader::~SipParameterHeader(v1);
  _Unwind_Resume(a1);
}

uint64_t SipRetryAfterHeader::encodeValue(SipRetryAfterHeader *this, ImsOutStream *a2)
{
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 26));
  *(a2 + 17) = 0;
  v4 = *(this + 135);
  if (v4 < 0)
  {
    v4 = *(this + 15);
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    v8 = 40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 112);
    v6 = *(a2 + 1);
    v9 = 41;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v9, 1);
    *(a2 + 17) = 0;
  }

  return 1;
}

uint64_t SipRetryAfterHeader::setValueFromString(uint64_t a1, std::string *this)
{
  v4 = std::string::find(this, 40, 0);
  if (v4 == -1 || (v5 = v4, v6 = std::string::find(this, 41, v4), v6 == -1))
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    *(a1 + 104) = strtoul(v8, 0, 10);
  }

  else
  {
    std::string::basic_string(&__p, this, v5 + 1, v6 - v5, &v11);
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 112) = __p;
    memset(&__p, 0, sizeof(__p));
    std::string::basic_string(&__p, this, 0, v5, &v11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *(a1 + 104) = strtoul(p_p, 0, 10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void SipRetryAfterHeader::~SipRetryAfterHeader(void **this)
{
  *this = &unk_1F5EDB528;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EDB528;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4EF0E60(_Unwind_Exception *a1)
{
  if (v2[135] < 0)
  {
    operator delete(*v3);
  }

  SipParameterHeader::~SipParameterHeader(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1E4EF0F3C(_Unwind_Exception *a1)
{
  shared_owners = v1[2].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::ActiveRatFieldImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDB5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::ActiveRatFieldImpl::setLatestRat(_anonymous_namespace_::ActiveRatFieldImpl *this, const ims::AccessNetwork *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  if (v2)
  {
    v3 = *(a2 + 47);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 4);
    }

    if (v3)
    {
      std::allocate_shared[abi:ne200100]<ims::AccessNetwork,std::allocator<ims::AccessNetwork>,ims::AccessNetwork const&,0>();
    }
  }
}

void anonymous namespace::ActiveRatFieldImpl::trackAudioProgress(_anonymous_namespace_::ActiveRatFieldImpl *this)
{
  if (*(this + 3) && time(0) - *(this + 5) >= 3)
  {
    v3 = *(this + 3);
    v2 = *(this + 4);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(this + 2);
    *(this + 1) = v3;
    *(this + 2) = v2;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(this + 4);
    *(this + 3) = 0;
    *(this + 4) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v12 = 9;
    strcpy(v11, "ActiveRat");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::debug(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Audio is active over RAT: ", 26);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, *(this + 1));
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_1E4EF1200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::ActiveRatFieldImpl::getActiveRat@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void anonymous namespace::ActiveRatFieldImpl::~ActiveRatFieldImpl(_anonymous_namespace_::ActiveRatFieldImpl *this)
{
  *this = &unk_1F5EDB618;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_emplace<ims::AccessNetwork>::__shared_ptr_emplace[abi:ne200100]<ims::AccessNetwork const&,std::allocator<ims::AccessNetwork>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EDB678;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 64) = *(a2 + 5);
    *(a1 + 48) = v5;
  }

  v6 = a2[3];
  *(a1 + 88) = *(a2 + 64);
  *(a1 + 72) = v6;
  return a1;
}

void sub_1E4EF13F8(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ims::AccessNetwork>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EDB678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ims::AccessNetwork>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void SDPLazuliBuilder::~SDPLazuliBuilder(SDPLazuliBuilder *this)
{
  *this = &unk_1F5EDB6C8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EDB6C8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPLazuliBuilder::createSDP(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> &,0>();
}

void sub_1E4EF1644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a55 == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings(&a10);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v58 = *(v55 + 8);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  _Unwind_Resume(exception_object);
}

void SDPLazuliBuilder::adjustModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 448);
  v3 = *(*a2 + 456);
  if (v4 != v3)
  {
    while (*(v4 + 12) != 6)
    {
      v4 += 200;
      if (v4 == v3)
      {
        return;
      }
    }

    if (*(a3 + 360) == 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v6, *(a3 + 280), *(a3 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 288) - *(a3 + 280)) >> 3));
      SDPMedia::setAcceptTypes(v4, &v6);
      v9 = &v6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
      v6 = 0;
      v7 = 0;
      v8 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v6, *(a3 + 304), *(a3 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 312) - *(a3 + 304)) >> 3));
      SDPMedia::setAcceptWrappedTypes(v4, &v6);
      v9 = &v6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
    }
  }
}

void sub_1E4EF176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

SDPMediaLazuliSettings *std::__optional_copy_base<SDPMediaLazuliSettings,false>::__optional_copy_base[abi:ne200100](SDPMediaLazuliSettings *this, const SDPMediaLazuliSettings *a2)
{
  *this = 0;
  *(this + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    SDPMediaLazuliSettings::SDPMediaLazuliSettings(this, a2);
    *(this + 360) = 1;
  }

  return this;
}

void sub_1E4EF17D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 360) == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ims::toString<ms::MediaServiceDirection>@<X0>(signed int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *a1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = "QMI::ReceiveOnly";
      return std::string::basic_string[abi:ne200100]<0>(a2, v3);
    }

    if (v2 == 3)
    {
      v3 = "QMI::SendReceive";
      return std::string::basic_string[abi:ne200100]<0>(a2, v3);
    }

    return std::to_string(a2, v2);
  }

  if (!v2)
  {
    v3 = "QMI::Inactive";
    return std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }

  if (v2 != 1)
  {
    return std::to_string(a2, v2);
  }

  v3 = "QMI::SendOnly";
  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t QMIRTPCommandDriver::QMIRTPCommandDriver(uint64_t a1, NSObject **a2, uint64_t a3)
{
  *a1 = &unk_1F5EDBD58;
  v6 = ims::SharedLoggable<QMIRTPCommandDriver>::SharedLoggable((a1 + 8), "rtp.qmidriver");
  *a1 = &unk_1F5EDB6F8;
  *(a1 + 8) = &unk_1F5EDB728;
  *(a1 + 56) = 0;
  v7 = ims::logger(v6);
  v8 = ImsLogger::osLog(v7);
  qmi::ClientRouter::ClientRouter((a1 + 64), v8);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a1 + 112;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v9 = *a2;
  *(a1 + 144) = *a2;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = a3;
  return a1;
}

void *ims::SharedLoggable<QMIRTPCommandDriver>::SharedLoggable(void *a1, const char *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<QMIRTPCommandDriver,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EDBD88;
  return a1;
}

void sub_1E4EF19C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPCommandDriver::~QMIRTPCommandDriver(QMIRTPCommandDriver *this)
{
  *this = &unk_1F5EDB6F8;
  *(this + 1) = &unk_1F5EDB728;
  qmi::ClientRouter::reset((this + 64));
  qmi::Client::release((this + 80));
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    dispatch_release(v3);
  }

  std::__list_imp<unsigned long long>::clear(this + 14);
  qmi::Client::~Client((this + 80));
  v4 = *(this + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);
}

{
  QMIRTPCommandDriver::~QMIRTPCommandDriver(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toQMIRTPCommandDriver::~QMIRTPCommandDriver(QMIRTPCommandDriver *this)
{
  QMIRTPCommandDriver::~QMIRTPCommandDriver((this - 8));
}

{
  QMIRTPCommandDriver::~QMIRTPCommandDriver((this - 8));

  JUMPOUT(0x1E69235B0);
}

void QMIRTPCommandDriver::initializeDriverForInstance(QMIRTPCommandDriver *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v20, "rtp.qmidriver");
  v16[0] = 0;
  v19 = 0;
  v4 = ims::debug(v20, v16);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*this - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "initializeDriverForInstance", 27);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [instance=", 11);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v9 = *(this + 19);
  if (v9)
  {
    v10 = *(this + 3);
    if (!v10 || (v11 = *(this + 2), (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    v14 = v11;
    v15 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    (*(*v9 + 16))(v9, a2, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E4EF1D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t QMIRTPCommandDriver::getInstanceType(void *a1, void **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v39, "rtp.qmidriver");
  v35[0] = 0;
  v38 = 0;
  v5 = ims::debug(v4, v35);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*a1 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "getInstanceType", 15);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [stackId=", 10);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v10 = a1[21];
  if (!v10)
  {
    v11 = 0;
LABEL_15:
    v18 = std::string::basic_string[abi:ne200100]<0>(v39, "rtp.qmidriver");
    v31[0] = 0;
    v34 = 0;
    v19 = ims::error(v18, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "No controller associated with this command driver!", 50);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v34 != 1 || (v33 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v17 = __p;
    goto LABEL_18;
  }

  v11 = std::__shared_weak_count::lock(v10);
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = a1[20];
  if (!v12)
  {
    goto LABEL_15;
  }

  QMIRTPStackController::getProfileByStackId(v12, a2);
  v14 = v13;
  if ((v13 & 0x100000000) != 0)
  {
    goto LABEL_22;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(v39, "rtp.qmidriver");
  v27[0] = 0;
  v30 = 0;
  v16 = ims::error(v15, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No profile for stack ", 21);
  *(v16 + 17) = 0;
  (*(*v16 + 32))(v16, a2);
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    v17 = v28;
LABEL_18:
    operator delete(v17);
  }

LABEL_19:
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v14 = 0xFFFFFFFFLL;
LABEL_22:
  v20 = std::string::basic_string[abi:ne200100]<0>(v39, "rtp.qmidriver");
  v23[0] = 0;
  v26 = 0;
  v21 = ims::debug(v20, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Using instance ", 15);
  *(v21 + 17) = 0;
  MEMORY[0x1E6923350](*(v21 + 8), v14);
  *(v21 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " for stack ", 11);
  *(v21 + 17) = 0;
  (*(*v21 + 32))(v21, a2);
  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v21 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    return 2 * (v14 == 1);
  }

  else
  {
    return 1;
  }
}

void QMIRTPCommandDriver::voiceSystemIdRetrieved(QMIRTPCommandDriver *this, unsigned int a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v27, "rtp.qmidriver");
  v22[0] = 0;
  v25 = 0;
  v6 = ims::debug(v5, v22);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v7 = v6;
  v8 = *(*(*this - 8) + 8);
  v9 = *(v6 + 8);
  v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "voiceSystemIdRetrieved", 22);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [instance=", 11);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), v26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", voiceSystemId=", 16);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  v11 = *(this + 21);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12 && *(this + 20))
    {
      QMIRTPStackController::setVoiceSystemIdForInstance(*(this + 20), v26, a3);
      object = 0;
      ims::getQueue(&object);
      memset(&v16, 0, sizeof(v16));
      std::string::basic_string[abi:ne200100]<0>(&v16, "ims::RTP.");
      ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(&v27, "rtp.qmidriver");
  v18[0] = 0;
  v21 = 0;
  v14 = ims::error(v13, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "No controller associated with this command driver!", 50);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4EF2D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, dispatch_object_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, dispatch_object_t object, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  _Unwind_Resume(a1);
}

void QMIRTPCommandDriver::voiceSystemIdUpdated(QMIRTPCommandDriver *this, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.qmidriver");
  v21[0] = 0;
  v24 = 0;
  v7 = ims::debug(v6, v21);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "voiceSystemIdUpdated", 20);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [instance=", 11);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", voiceSystemId=", 16);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v12 = *(this + 21);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *(this + 20);
      if (v14)
      {
        QMIRTPStackController::setVoiceSystemIdForInstance(v14, a2, a3);
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        return;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.qmidriver");
  v17[0] = 0;
  v20 = 0;
  v16 = ims::error(v15, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No controller associated with this command driver!", 50);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v13)
  {
    goto LABEL_18;
  }
}

BOOL ___ZN19QMIRTPCommandDriver20serviceInitializeReqEjj_block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = QMIRTPStackController::isAssertEnabled(*(a1 + 32));
  *a2 = result;
  return result;
}

uint64_t __copy_helper_block_e8_32c49_ZTSNSt3__110shared_ptrI21QMIRTPStackControllerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c49_ZTSNSt3__110shared_ptrI21QMIRTPStackControllerEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QMIRTPCommandDriver::sessionInitializeReq(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  if (*a2)
  {
    v8 = a6[1];
    if (v8)
    {
      v13 = std::__shared_weak_count::lock(v8);
      if (v13)
      {
        v14 = *a6;
        if (*a6)
        {
          v15 = std::string::basic_string[abi:ne200100]<0>(&v88, "rtp.qmidriver");
          v76[0] = 0;
          v79 = 0;
          v16 = ims::debug(v15, v76);
          if (!a1)
          {
            __cxa_bad_typeid();
          }

          v17 = v16;
          v18 = *(*(*a1 - 8) + 8);
          v19 = *(v16 + 8);
          v20 = strlen((v18 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v18 & 0x7FFFFFFFFFFFFFFFLL, v20);
          *(v17 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "::", 2);
          *(v17 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "sessionInitializeReq", 20);
          *(v17 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " [sessionId=", 12);
          *(v17 + 17) = 0;
          v21 = (*(*(*a2 + 8) + 176))();
          MEMORY[0x1E69233B0](*(v17 + 8), v21);
          *(v17 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " appId=", 7);
          *(v17 + 17) = 0;
          MEMORY[0x1E6923340](*(v17 + 8), a3);
          *(v17 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "]", 1);
          *(v17 + 17) = 0;
          (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v17 + 17) = 0;
          if (v79 == 1 && v78 < 0)
          {
            operator delete(__p);
          }

          if (v89 < 0)
          {
            operator delete(v88.tv_sec);
          }

          v74 = 0u;
          v75 = 0u;
          qmi::MutableMessageBase::MutableMessageBase(&v74);
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 0x40000000;
          v72[2] = ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke;
          v72[3] = &__block_descriptor_tmp_48;
          v73 = a3;
          v22 = *(&v74 + 1);
          if (*(&v74 + 1) != v75)
          {
            while (*(*v22 + 8) != 1)
            {
              if (++v22 == v75)
              {
                goto LABEL_32;
              }
            }
          }

          if (v22 == v75)
          {
LABEL_32:
            operator new();
          }

          v31 = ***v22;
          if (!v32)
          {
            goto LABEL_109;
          }

          ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke(v72, v32 + 3);
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 0x40000000;
          v71[2] = ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_2;
          v71[3] = &__block_descriptor_tmp_50;
          v71[4] = a4;
          v33 = *(&v74 + 1);
          if (*(&v74 + 1) != v75)
          {
            while (*(*v33 + 8) != 2)
            {
              if (++v33 == v75)
              {
                goto LABEL_40;
              }
            }
          }

          if (v33 == v75)
          {
LABEL_40:
            operator new();
          }

          v34 = ***v33;
          if (!v35)
          {
LABEL_109:
            __cxa_bad_cast();
          }

          ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_2(v71, v35 + 4);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 1174405120;
          v65 = ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_3;
          v66 = &__block_descriptor_tmp_51_0;
          v67 = v14;
          v68 = v13;
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v36 = a2[1];
          v69 = *a2;
          v70 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = *(&v74 + 1);
          if (*(&v74 + 1) != v75)
          {
            while (*(*v37 + 8) != 3)
            {
              if (++v37 == v75)
              {
                goto LABEL_50;
              }
            }
          }

          if (v37 == v75)
          {
LABEL_50:
            operator new();
          }

          v38 = ***v37;
          if (!v39)
          {
            __cxa_bad_cast();
          }

          v65(v64, v39 + 16);
          if (a5 == 2)
          {
            if (v14[584])
            {
              v40 = v14 + 152;
              goto LABEL_59;
            }
          }

          else if (a5 == 6 && (v14[1856] & 1) != 0)
          {
            v40 = v14 + 1496;
LABEL_59:
            if (v14[584])
            {
              v41 = v14 + 152;
            }

            else
            {
              v41 = 0;
            }

            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 0x40000000;
            v63[2] = ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_52;
            v63[3] = &__block_descriptor_tmp_54;
            v63[4] = v40;
            v42 = *(&v74 + 1);
            if (*(&v74 + 1) != v75)
            {
              while (*(*v42 + 8) != 16)
              {
                if (++v42 == v75)
                {
                  goto LABEL_69;
                }
              }
            }

            if (v42 == v75)
            {
LABEL_69:
              operator new();
            }

            v43 = ***v42;
            if (!v44)
            {
              goto LABEL_110;
            }

            ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_52(v63, v44 + 5);
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 0x40000000;
            v62[2] = ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_2_55;
            v62[3] = &__block_descriptor_tmp_56_0;
            v62[4] = v41;
            v45 = *(&v74 + 1);
            if (*(&v74 + 1) != v75)
            {
              while (*(*v45 + 8) != 17)
              {
                if (++v45 == v75)
                {
                  goto LABEL_77;
                }
              }
            }

            if (v45 == v75)
            {
LABEL_77:
              operator new();
            }

            v46 = ***v45;
            if (!v47)
            {
LABEL_110:
              __cxa_bad_cast();
            }

            ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_2_55(v62, v47 + 8);
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 1174405120;
            v58 = ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_3_57;
            v59 = &__block_descriptor_tmp_59_2;
            v48 = a2[1];
            v60 = *a2;
            v61 = v48;
            if (v48)
            {
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v49 = *(&v74 + 1);
            if (*(&v74 + 1) != v75)
            {
              while (*(*v49 + 8) != 18)
              {
                if (++v49 == v75)
                {
                  goto LABEL_87;
                }
              }
            }

            if (v49 == v75)
            {
LABEL_87:
              operator new();
            }

            v50 = ***v49;
            if (!v51)
            {
              __cxa_bad_cast();
            }

            v58(v57, v51 + 3);
            v52 = *(&v74 + 1);
            if (*(&v74 + 1) != v75)
            {
              while (*(*v52 + 8) != 20)
              {
                if (++v52 == v75)
                {
                  goto LABEL_95;
                }
              }
            }

            if (v52 == v75)
            {
LABEL_95:
              operator new();
            }

            v53 = ***v52;
            if (!v54)
            {
              __cxa_bad_cast();
            }

            v55 = v54 + 16;
            v88.tv_sec = 0;
            *&v88.tv_usec = 0;
            gettimeofday(&v88, 0);
            *v55 = 1000 * v88.tv_sec + v88.tv_usec / 1000 + 2208988800000;
            if (QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64)))
            {
              qmi::ClientRouter::get();
              operator new();
            }

            if (v61)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v61);
            }

            if (v70)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v70);
            }

            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v68);
            }

            qmi::MutableMessageBase::~MutableMessageBase(&v74);
            goto LABEL_105;
          }

          v40 = v14 + 1032;
          if (!v14[1328])
          {
            v40 = 0;
          }

          goto LABEL_59;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v29 = std::string::basic_string[abi:ne200100]<0>(&v88, "rtp.qmidriver");
    v80[0] = 0;
    v83 = 0;
    v30 = ims::error(v29, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "SDPSession expired in QMIRTPCommandDriver::sessionInitializeReq", 63);
    *(v30 + 17) = 0;
    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v30 + 17) = 0;
    if (v83 == 1 && v82 < 0)
    {
      operator delete(v81);
    }

    if (v89 < 0)
    {
      operator delete(v88.tv_sec);
    }

    if (v13)
    {
LABEL_105:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v23 = std::string::basic_string[abi:ne200100]<0>(&v88, "rtp.qmidriver");
    v84[0] = 0;
    v87 = 0;
    v24 = ims::error(v23, v84);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v25 = v24;
    v26 = *(*(*a1 - 8) + 8);
    v27 = *(v24 + 8);
    v28 = strlen((v26 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v26 & 0x7FFFFFFFFFFFFFFFLL, v28);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "::", 2);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "sessionInitializeReq", 20);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " session is null", 16);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v87 == 1 && v86 < 0)
    {
      operator delete(v85);
    }

    if (v89 < 0)
    {
      operator delete(v88.tv_sec);
    }
  }
}

void sub_1E4EF42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v49 = *(v47 - 152);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a45);
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  _Unwind_Resume(a1);
}

void sub_1E4EF442C()
{
  if (*(v0 - 200) == 1 && *(v0 - 209) < 0)
  {
    operator delete(*(v0 - 232));
  }

  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1E4EF4424);
}

void ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_2(uint64_t a1, _BOOL4 *a2)
{
  v4 = (*(***(a1 + 32) + 152))(**(a1 + 32));
  v5 = *(v4 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5 == 3)
  {
    if (v6 >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *v4;
    }

    v8 = *v7;
    v9 = *(v7 + 2);
    v11 = v8 == IpAddress::kAddressTypeIPv6 && v9 == 54;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = **(a1 + 32);
  IpAddress::asString();
}

void sub_1E4EF45AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v7 = *(*(v4 + 120) + 296);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  else if ((MEMORY[0x128] & 1) == 0)
  {
    goto LABEL_4;
  }

  v8 = 1;
  v9 = 1;
LABEL_7:
  *(a2 + 32) = v8;
  *(*(a1 + 48) + 361) = v9;
  memset(&v20, 0, sizeof(v20));
  v10 = *(a1 + 32);
  v11 = *(v10 + 128);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = *(v10 + 120);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  if (*(v13 + 4199) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(v13 + 4176), *(v13 + 4184));
  }

  else
  {
    v20 = *(v13 + 4176);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v14 = 0;
  v15 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v20.__r_.__value_.__s.__data_[8];
  }

  *a2 = v16;
  v17 = a2 + 8;
  if ((v15 & 0x80) != 0)
  {
    goto LABEL_23;
  }

  while (v14 < v15)
  {
    while (1)
    {
      v18 = (v15 & 0x80u) == 0 ? &v20 : v20.__r_.__value_.__r.__words[0];
      v19 = v18->__r_.__value_.__s.__data_[v14];
      std::vector<unsigned char>::push_back[abi:ne200100](v17, &v19);
      ++v14;
      v15 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      if ((*(&v20.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        break;
      }

LABEL_23:
      if (v14 >= v20.__r_.__value_.__l.__size_)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        return;
      }
    }
  }
}

void sub_1E4EF4748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10SDPSessionEE48c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10SDPSessionEE48c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_2_55(uint64_t a1, unsigned __int16 *a2)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(a1 + 32);
  if (*(v4 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v4 + 72), *(v4 + 80));
  }

  else
  {
    v10 = *(v4 + 72);
  }

  v5 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v10.__r_.__value_.__r.__words[1];
  }

  *a2 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v10;
      }

      else
      {
        v8 = v10.__r_.__value_.__r.__words[0];
      }

      v9 = v8->__r_.__value_.__s.__data_[v7];
      std::vector<unsigned char>::push_back[abi:ne200100]((a2 + 4), &v9);
      ++v7;
    }

    while (v7 < *a2);
    v6 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  a2[16] = *(*(a1 + 32) + 24) + 1;
  *(a2 + 34) = 1;
  if (v6 < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EF48F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN19QMIRTPCommandDriver20sessionInitializeReqENSt3__110shared_ptrI13QMIRTPSessionEEhRKNS1_I9IpAddressEEN8SDPMedia9MediaTypeENS0_8weak_ptrI10SDPSessionEE_block_invoke_3_57(uint64_t a1, _DWORD *a2)
{
  result = (*(*(*(a1 + 32) + 8) + 176))();
  *a2 = result;
  return result;
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN19QMIRTPCommandDriver27handleSessionInitializeRespERKN2ms17SessionInitialize8ResponseENSt3__110shared_ptrI13QMIRTPSessionEEh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(v2 + 168);
  if (v3)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(v2 + 160);
        if (!v7)
        {
          goto LABEL_20;
        }

        v8 = *(v7 + 72);
        v9 = *(v7 + 80);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRTPError(v8, 4);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v10 = *(a1 + 48);
        v15 = *(a1 + 40);
        v16 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QMIRTPStackController::sessionDidInitialize(v7, &v15, 0, 4);
        v11 = v16;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  else if (v4)
  {
    v12 = std::__shared_weak_count::lock(v4);
    if (v12)
    {
      v6 = v12;
      v13 = *(v2 + 160);
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 48);
      v17 = *(a1 + 40);
      v18 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QMIRTPStackController::handleInitializeRequestReceipt(v13, &v17);
      v11 = v18;
      if (!v18)
      {
        goto LABEL_20;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4EF4A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN19QMIRTPCommandDriver33handleSessionInitializeIndicationERKN2ms17SessionInitialize10IndicationE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        QMIRTPStackController::sessionDidInitialize(v6, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(a1 + 56));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void QMIRTPCommandDriver::sessionUninitializeReq(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v42, "rtp.qmidriver");
    v34[0] = 0;
    v37 = 0;
    v5 = ims::debug(v4, v34);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v6 = v5;
    v7 = *(*(*a1 - 8) + 8);
    v8 = *(v5 + 8);
    v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sessionUninitializeReq", 22);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
    *(v6 + 17) = 0;
    v10 = (*(*(*a2 + 8) + 176))();
    MEMORY[0x1E69233B0](*(v6 + 8), v10);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(__p);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    memset(v33, 0, sizeof(v33));
    qmi::MutableMessageBase::MutableMessageBase(v33);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 1174405120;
    v29 = ___ZN19QMIRTPCommandDriver22sessionUninitializeReqENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
    v30 = &__block_descriptor_tmp_72_1;
    v11 = a2[1];
    v31 = *a2;
    v32 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(v33, 1);
    v29(v28, v12);
    InstanceType = QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64));
    if (InstanceType)
    {
      qmi::ClientRouter::send<ms::SessionUninitialize::Request>(&v27, (a1 + 8), InstanceType);
    }

    v20 = a1[21];
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      if (v21)
      {
        v22 = v21;
        v23 = a1[20];
        if (v23)
        {
          v24 = a2[1];
          v25 = *a2;
          v26 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QMIRTPStackController::sessionDidUninitialize(v23, &v25, 0);
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v33);
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(&v42, "rtp.qmidriver");
    v38[0] = 0;
    v41 = 0;
    v15 = ims::error(v14, v38);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v16 = v15;
    v17 = *(*(*a1 - 8) + 8);
    v18 = *(v15 + 8);
    v19 = strlen((v17 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v17 & 0x7FFFFFFFFFFFFFFFLL, v19);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "::", 2);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "sessionUninitializeReq", 22);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " session is null", 16);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }
  }
}

void sub_1E4EF50F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a19);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::send<ms::SessionUninitialize::Request>(_DWORD *a1, uint64_t a2, int a3)
{
  qmi::ClientRouter::get();
  *a1 = a3;
  operator new();
}

void QMIRTPCommandDriver::sessionInternalUninitializeReq(void *a1, char a2, void **a3)
{
  memset(v11, 0, sizeof(v11));
  qmi::MutableMessageBase::MutableMessageBase(v11);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN19QMIRTPCommandDriver30sessionInternalUninitializeReqEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_73_0;
  v10 = a2;
  v6 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(v11, 1);
  ___ZN19QMIRTPCommandDriver30sessionInternalUninitializeReqEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(v9, v6);
  InstanceType = QMIRTPCommandDriver::getInstanceType(a1, a3);
  if (InstanceType)
  {
    qmi::ClientRouter::send<ms::SessionUninitialize::Request>(&v8, (a1 + 8), InstanceType);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v11);
}

void sub_1E4EF5498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase(&a17);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver29handleSessionUninitializeRespERKN2ms19SessionUninitialize8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(v2 + 168);
  if (v3)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(v2 + 160);
        if (!v7)
        {
          goto LABEL_20;
        }

        v8 = *(v7 + 72);
        v9 = *(v7 + 80);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRTPError(v8, 5);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v10 = *(a1 + 48);
        v15 = *(a1 + 40);
        v16 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QMIRTPStackController::sessionDidUninitialize(v7, &v15, 4);
        v11 = v16;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  else if (v4)
  {
    v12 = std::__shared_weak_count::lock(v4);
    if (v12)
    {
      v6 = v12;
      v13 = *(v2 + 160);
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 48);
      v17 = *(a1 + 40);
      v18 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QMIRTPStackController::handleUninitializeRequestReceipt(v13, &v17);
      v11 = v18;
      if (!v18)
      {
        goto LABEL_20;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4EF55F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver35handleSessionUninitializeIndicationERKN2ms19SessionUninitialize10IndicationE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        QMIRTPStackController::sessionDidUninitialize(v6, *(a1 + 44), *(a1 + 40));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void QMIRTPCommandDriver::sessionConfigureReq(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    v35[0] = 0;
    v38 = 0;
    v5 = ims::debug(v4, v35);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v6 = v5;
    v7 = *(*(*a1 - 8) + 8);
    v8 = *(v5 + 8);
    v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sessionConfigureReq", 19);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
    *(v6 + 17) = 0;
    v10 = (*(*(*a2 + 8) + 176))();
    MEMORY[0x1E69233B0](*(v6 + 8), v10);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(block[0]);
    }

    v34 = 0;
    memset(v33, 0, sizeof(v33));
    LOBYTE(v33[0]) = *(*a2 + 408);
    qmi::MutableMessageBase::MutableMessageBase();
    if (v33[0])
    {
      if (QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64)))
      {
        qmi::ClientRouter::get();
        operator new();
      }
    }

    else
    {
      v17 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
      v29[0] = 0;
      v32 = 0;
      v18 = ims::warn(v17, v29);
      v19 = *(*(*a1 - 8) + 8);
      v20 = strlen((v19 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), v19 & 0x7FFFFFFFFFFFFFFFLL, v20);
      *(v18 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "::", 2);
      *(v18 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "sessionConfigureReq", 19);
      *(v18 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " session configuration is null", 30);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v32 == 1 && v31 < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(block[0]);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 1174405120;
      v27[2] = ___ZN19QMIRTPCommandDriver19sessionConfigureReqENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
      v27[3] = &__block_descriptor_tmp_83_0;
      v21 = a2[1];
      v27[4] = *a2;
      v28 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = a1[3];
      if (!v22 || (v23 = a1[2], (v24 = std::__shared_weak_count::lock(v22)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v25 = v24;
      v26 = a1[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      v44 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      v45 = &unk_1F5EDC868;
      v47 = v23;
      v48 = v25;
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = v27;
      dispatch_async(v26, block);
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }

    qmi::MutableMessageBase::~MutableMessageBase((v33 + 8));
  }

  else
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    v39[0] = 0;
    v42 = 0;
    v12 = ims::error(v11, v39);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v13 = v12;
    v14 = *(*(*a1 - 8) + 8);
    v15 = *(v12 + 8);
    v16 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v14 & 0x7FFFFFFFFFFFFFFFLL, v16);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "sessionConfigureReq", 19);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " session is null", 16);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(block[0]);
    }
  }
}

void sub_1E4EF5D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{
  v57 = *(v55 - 136);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  qmi::MutableMessageBase::~MutableMessageBase((v54 | 8));
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver19sessionConfigureReqENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 8) + 152))(&v9);
  if (v10)
  {
    v2 = std::__shared_weak_count::lock(v10);
    if (v2)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v3)
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      if (v5)
      {
        v6 = v5 + 8;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 16))(v3, &v7, 0);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void sub_1E4EF5F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver26handleSessionConfigureRespERKN2ms16SessionConfigure8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(v2 + 168);
  if (v3)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(v2 + 160);
        if (!v7)
        {
          goto LABEL_20;
        }

        v8 = v7[9];
        v9 = v7[10];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRTPError(v8, 6);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v10 = *(a1 + 48);
        v15 = *(a1 + 40);
        v16 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QMIRTPStackController::sessionDidConfigure(v7, &v15, 4);
        v11 = v16;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

  else if (v4)
  {
    v12 = std::__shared_weak_count::lock(v4);
    if (v12)
    {
      v6 = v12;
      v13 = *(v2 + 160);
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 48);
      v17 = *(a1 + 40);
      v18 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QMIRTPStackController::handleConfigureRequestReceipt(v13, &v17);
      v11 = v18;
      if (!v18)
      {
        goto LABEL_20;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4EF60AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver32handleSessionConfigureIndicationERKN2ms16SessionConfigure10IndicationE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        QMIRTPStackController::sessionDidConfigure(v6, *(a1 + 44), *(a1 + 40));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void QMIRTPCommandDriver::sessionSetStreamDirectionReq(void *a1, void *a2, unsigned int a3, char a4)
{
  v45 = a3;
  if (!*a2)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(&v46, "rtp.qmidriver");
    v41[0] = 0;
    v44 = 0;
    v9 = ims::error(v8, v41);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v10 = v9;
    v11 = *(*(*a1 - 8) + 8);
    v12 = *(v9 + 8);
    v13 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v11 & 0x7FFFFFFFFFFFFFFFLL, v13);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sessionSetStreamDirectionReq", 28);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " session is null", 16);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v44 == 1 && v43 < 0)
    {
      operator delete(__p);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(&v46, "rtp.qmidriver");
  v37[0] = 0;
  v40 = 0;
  v15 = ims::debug(v14, v37);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v16 = v15;
  v17 = *(*(*a1 - 8) + 8);
  v18 = *(v15 + 8);
  v19 = strlen((v17 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v17 & 0x7FFFFFFFFFFFFFFFLL, v19);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "::", 2);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "sessionSetStreamDirectionReq", 28);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " [sessionId=", 12);
  *(v16 + 17) = 0;
  v20 = (*(*(*a2 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v16 + 8), v20);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " direction=", 11);
  *(v16 + 17) = 0;
  ims::toString<ms::MediaServiceDirection>(&v45, &aBlock);
  (*(*v16 + 32))(v16, &aBlock);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "]", 1);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(aBlock.__r_.__value_.__l.__data_);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  v35 = 0u;
  v36 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v35);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1174405120;
  v31 = ___ZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENSt3__110shared_ptrI13QMIRTPSessionEEN2ms21MediaServiceDirectionEb_block_invoke;
  v32 = &__block_descriptor_tmp_91_0;
  v21 = a2[1];
  v33 = *a2;
  v34 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(&v35, 1);
  v31(v30, v22);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = ___ZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENSt3__110shared_ptrI13QMIRTPSessionEEN2ms21MediaServiceDirectionEb_block_invoke_92;
  v27[3] = &__block_descriptor_tmp_94_0;
  v29 = a4;
  v28 = a3;
  v23 = *(&v35 + 1);
  if (*(&v35 + 1) != v36)
  {
    while (*(*v23 + 8) != 2)
    {
      if (++v23 == v36)
      {
        goto LABEL_25;
      }
    }
  }

  if (v23 == v36)
  {
LABEL_25:
    operator new();
  }

  v24 = ***v23;
  if (!v25)
  {
    __cxa_bad_cast();
  }

  ___ZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENSt3__110shared_ptrI13QMIRTPSessionEEN2ms21MediaServiceDirectionEb_block_invoke_92(v27, v25 + 3);
  if (QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64)))
  {
    qmi::ClientRouter::get();
    operator new();
  }

  if (a3 <= 3)
  {
    QMIRTPCommandDriver::sendAudioCallEvent(a1, *(*a2 + 362), (*a2 + 64), a3 | 0x10, *(*a2 + 368));
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v35);
}

void sub_1E4EF6878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  v49 = *(v47 - 128);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

uint64_t ___ZN19QMIRTPCommandDriver28sessionSetStreamDirectionReqENSt3__110shared_ptrI13QMIRTPSessionEEN2ms21MediaServiceDirectionEb_block_invoke_92(uint64_t result, _DWORD *a2)
{
  if ((*(result + 36) & (*(result + 32) == 2)) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(result + 32);
  }

  *a2 = v2;
  return result;
}

void QMIRTPCommandDriver::sendAudioCallEvent(uint64_t a1, char a2, void **a3, unsigned int a4, char a5)
{
  v10 = std::string::basic_string[abi:ne200100]<0>(aBlock, "rtp.qmidriver");
  v70[0] = 0;
  v73 = 0;
  v11 = ims::debug(v10, v70);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v12 = v11;
  v13 = *(*(*a1 - 8) + 8);
  v14 = *(v11 + 8);
  v15 = strlen((v13 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v13 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "::", 2);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "sendAudioCallEvent", 18);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " [event=", 8);
  *(v12 + 17) = 0;
  v16 = audio::asString(a4);
  v17 = strlen(v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), v16, v17);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "]", 1);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v73 == 1 && v72 < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(aBlock[0]);
  }

  if (*(a1 + 56))
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = *(a1 + 160);
        if (v20)
        {
          ProfileByStackId = QMIRTPStackController::getProfileByStackId(v20, a3);
          v23 = v22;
          if ((v22 & 0x100000000) != 0)
          {
            v24 = ProfileByStackId;
            v25 = std::string::basic_string[abi:ne200100]<0>(aBlock, "rtp.qmidriver");
            v54[0] = 0;
            v57 = 0;
            v26 = ims::debug(v25, v54);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Using VoiceSystemId ", 20);
            *(v26 + 17) = 0;
            MEMORY[0x1E6923350](*(v26 + 8), HIDWORD(v24));
            *(v26 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " for stack ", 11);
            *(v26 + 17) = 0;
            (*(*v26 + 32))(v26, a3);
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v26 + 17) = 0;
            if (v57 == 1 && v56 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v75) < 0)
            {
              operator delete(aBlock[0]);
            }

            v52 = 0u;
            v53 = 0u;
            qmi::MutableMessageBase::MutableMessageBase(&v52);
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 0x40000000;
            v48[2] = ___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke;
            v48[3] = &__block_descriptor_tmp_231;
            v49 = a4;
            v50 = a5;
            v51 = a2;
            v27 = *(&v52 + 1);
            if (*(&v52 + 1) != v53)
            {
              while (*(*v27 + 8) != 1)
              {
                if (++v27 == v53)
                {
                  goto LABEL_42;
                }
              }
            }

            if (v27 == v53)
            {
LABEL_42:
              operator new();
            }

            v34 = ***v27;
            if (!v35)
            {
              goto LABEL_57;
            }

            ___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke(v48, v35 + 9);
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 0x40000000;
            v43[2] = ___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke_2;
            v43[3] = &__block_descriptor_tmp_233;
            v43[4] = v24;
            v44 = v23;
            v45 = BYTE4(v23);
            v46 = 0;
            v47 = 0;
            v36 = *(&v52 + 1);
            if (*(&v52 + 1) != v53)
            {
              while (*(*v36 + 8) != 16)
              {
                if (++v36 == v53)
                {
                  goto LABEL_50;
                }
              }
            }

            if (v36 == v53)
            {
LABEL_50:
              operator new();
            }

            v37 = ***v36;
            if (!v38)
            {
LABEL_57:
              __cxa_bad_cast();
            }

            ___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke_2(v43, v38 + 3);
            v39[5] = a1 + 80;
            v39[6] = QMIServiceMsg::create();
            v40 = 25000;
            v41 = 0;
            v42 = 0;
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 0x40000000;
            v39[2] = ___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke_3;
            v39[3] = &__block_descriptor_tmp_235;
            v39[4] = a1;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 0x40000000;
            v75 = ___ZNO3qmi6Client9SendProxy8callbackIRKN5audio13SendCallEvent8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
            v76 = &unk_1E876B298;
            v77 = v39;
            v42 = _Block_copy(aBlock);
            qmi::Client::send();
            if (v42)
            {
              _Block_release(v42);
            }

            qmi::MutableMessageBase::~MutableMessageBase(&v52);
          }

          else
          {
            v32 = std::string::basic_string[abi:ne200100]<0>(aBlock, "rtp.qmidriver");
            v58[0] = 0;
            v61 = 0;
            v33 = ims::error(v32, v58);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "No profile associated with stack ", 33);
            *(v33 + 17) = 0;
            (*(*v33 + 32))(v33, a3);
            (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v33 + 17) = 0;
            if (v61 == 1 && v60 < 0)
            {
              operator delete(v59);
            }

            if (SHIBYTE(v75) < 0)
            {
              operator delete(aBlock[0]);
            }
          }

          goto LABEL_54;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v30 = std::string::basic_string[abi:ne200100]<0>(aBlock, "rtp.qmidriver");
    v62[0] = 0;
    v65 = 0;
    v31 = ims::error(v30, v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "No controller associated with this command driver!", 50);
    *(v31 + 17) = 0;
    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v31 + 17) = 0;
    if (v65 == 1 && v64 < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(aBlock[0]);
    }

    if (v19)
    {
LABEL_54:
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v28 = std::string::basic_string[abi:ne200100]<0>(aBlock, "rtp.qmidriver");
    v66[0] = 0;
    v69 = 0;
    v29 = ims::error(v28, v66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "SVC_AUDIO service is not initialized.", 37);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (v69 == 1 && v68 < 0)
    {
      operator delete(v67);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(aBlock[0]);
    }
  }
}

void sub_1E4EF7220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  qmi::Client::SendProxy::~SendProxy(&a15);
  qmi::MutableMessageBase::~MutableMessageBase(&a31);
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver35handleSessionSetStreamDirectionRespERKN2ms25SessionSetStreamDirection8ResponseENSt3__110shared_ptrI13QMIRTPSessionEENS0_21MediaServiceDirectionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = v2[21];
  if (v3)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = v2[20];
        if (v7)
        {
          v8 = *(a1 + 60);
          if (v8 > 1)
          {
            if (v8 == 2)
            {
              v35 = v7[9];
              v36 = v7[10];
              if (v36)
              {
                atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RTPManager::logRTPError(v35, 9);
              if (v36)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v36);
              }

              v37 = *(a1 + 48);
              v55 = *(a1 + 40);
              v56 = v37;
              if (v37)
              {
                atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              QMIRTPStackController::sessionDirectionChangeFailed(v7, &v55);
              v12 = v56;
              if (!v56)
              {
                goto LABEL_78;
              }
            }

            else
            {
              if (v8 != 3)
              {
                goto LABEL_49;
              }

              v22 = v7[9];
              v23 = v7[10];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RTPManager::logRTPError(v22, 7);
              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              v24 = *(a1 + 48);
              v53 = *(a1 + 40);
              v54 = v24;
              if (v24)
              {
                atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              QMIRTPStackController::sessionDidStart(v7, &v53, 4);
              v12 = v54;
              if (!v54)
              {
                goto LABEL_78;
              }
            }
          }

          else
          {
            if (v8)
            {
              if (v8 == 1)
              {
                v9 = v7[9];
                v10 = v7[10];
                if (v10)
                {
                  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                RTPManager::logRTPError(v9, 10);
                if (v10)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
                }

                v11 = *(a1 + 48);
                v57 = *(a1 + 40);
                v58 = v11;
                if (v11)
                {
                  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                QMIRTPStackController::sessionDirectionChangeFailed(v7, &v57);
                v12 = v58;
                if (!v58)
                {
                  goto LABEL_78;
                }

                goto LABEL_77;
              }

LABEL_49:
              v27 = std::string::basic_string[abi:ne200100]<0>(v80, "rtp.qmidriver");
              v49[0] = 0;
              v52 = 0;
              v28 = ims::error(v27, v49);
              v29 = *(*(*v2 - 8) + 8);
              v30 = strlen((v29 & 0x7FFFFFFFFFFFFFFFLL));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), v29 & 0x7FFFFFFFFFFFFFFFLL, v30);
              *(v28 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "::", 2);
              *(v28 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "handleSessionSetStreamDirectionResp_block_invoke", 48);
              *(v28 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " [direction=", 12);
              *(v28 + 17) = 0;
              MEMORY[0x1E6923340](*(v28 + 8), *(a1 + 60));
              *(v28 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "]", 1);
              *(v28 + 17) = 0;
              (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v28 + 17) = 0;
              if (v52 == 1 && v51 < 0)
              {
                v31 = v50;
LABEL_71:
                operator delete(v31);
                goto LABEL_72;
              }

              goto LABEL_72;
            }

            v32 = v7[9];
            v33 = v7[10];
            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            RTPManager::logRTPError(v32, 8);
            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            v34 = *(a1 + 48);
            v59 = *(a1 + 40);
            v60 = v34;
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QMIRTPStackController::sessionDidStop(v7, &v59, 4);
            v12 = v60;
            if (!v60)
            {
              goto LABEL_78;
            }
          }

LABEL_77:
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          goto LABEL_78;
        }

        goto LABEL_78;
      }
    }
  }

  else if (v4)
  {
    v13 = std::__shared_weak_count::lock(v4);
    if (v13)
    {
      v6 = v13;
      v14 = v2[20];
      if (v14)
      {
        v16 = (a1 + 60);
        v15 = *(a1 + 60);
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v44 = std::string::basic_string[abi:ne200100]<0>(v80, "rtp.qmidriver");
            v69[0] = 0;
            v72 = 0;
            v45 = ims::debug(v44, v69);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), " [session=", 10);
            *(v45 + 17) = 0;
            v46 = (*(*(*(a1 + 40) + 8) + 176))();
            MEMORY[0x1E69233B0](*(v45 + 8), v46);
            *(v45 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), " direction=", 11);
            *(v45 + 17) = 0;
            ims::toString<ms::MediaServiceDirection>((a1 + 60), &v75);
            (*(*v45 + 32))(v45, &v75);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "]", 1);
            *(v45 + 17) = 0;
            (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v45 + 17) = 0;
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            if (v72 == 1 && v71 < 0)
            {
              operator delete(v70);
            }

            if (v81 < 0)
            {
              operator delete(v80[0]);
            }

            v47 = *(a1 + 40);
            *(v47 + 433) = 1;
            v48 = *(a1 + 48);
            v67 = v47;
            v68 = v48;
            if (v48)
            {
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QMIRTPStackController::sessionDidStart(v14, &v67, *(a1 + 56));
            v12 = v68;
            if (!v68)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }

          if (v15 == 3)
          {
            v25 = *(a1 + 40);
            *(v25 + 433) = 0;
            v26 = *(a1 + 48);
            v65 = v25;
            v66 = v26;
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QMIRTPStackController::sessionDidStart(v14, &v65, *(a1 + 56));
            v12 = v66;
            if (!v66)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        else
        {
          if (!v15)
          {
            v42 = *(a1 + 40);
            *(v42 + 433) = 1;
            v43 = *(a1 + 48);
            v82 = v42;
            v83 = v43;
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QMIRTPStackController::sessionDidStop(v14, &v82, *(a1 + 56));
            v12 = v83;
            if (!v83)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }

          if (v15 == 1)
          {
            v17 = std::string::basic_string[abi:ne200100]<0>(v80, "rtp.qmidriver");
            v76[0] = 0;
            v79 = 0;
            v18 = ims::debug(v17, v76);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " [session=", 10);
            *(v18 + 17) = 0;
            v19 = (*(*(*(a1 + 40) + 8) + 176))();
            MEMORY[0x1E69233B0](*(v18 + 8), v19);
            *(v18 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " direction=", 11);
            *(v18 + 17) = 0;
            ims::toString<ms::MediaServiceDirection>((a1 + 60), &v75);
            (*(*v18 + 32))(v18, &v75);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "]", 1);
            *(v18 + 17) = 0;
            (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v18 + 17) = 0;
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            if (v79 == 1 && v78 < 0)
            {
              operator delete(v77);
            }

            if (v81 < 0)
            {
              operator delete(v80[0]);
            }

            v20 = *(a1 + 40);
            *(v20 + 433) = 1;
            v21 = *(a1 + 48);
            v73 = v20;
            v74 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QMIRTPStackController::sessionDidStart(v14, &v73, *(a1 + 56));
            v12 = v74;
            if (!v74)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        v38 = std::string::basic_string[abi:ne200100]<0>(v80, "rtp.qmidriver");
        v61[0] = 0;
        v64 = 0;
        v39 = ims::error(v38, v61);
        v40 = *(*(*v2 - 8) + 8);
        v41 = strlen((v40 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), v40 & 0x7FFFFFFFFFFFFFFFLL, v41);
        *(v39 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "::", 2);
        *(v39 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "handleSessionSetStreamDirectionResp_block_invoke", 48);
        *(v39 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), " [direction=", 12);
        *(v39 + 17) = 0;
        MEMORY[0x1E6923340](*(v39 + 8), *v16);
        *(v39 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "]", 1);
        *(v39 + 17) = 0;
        (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v39 + 17) = 0;
        if (v64 == 1 && v63 < 0)
        {
          v31 = __p;
          goto LABEL_71;
        }

LABEL_72:
        if (v81 < 0)
        {
          operator delete(v80[0]);
        }
      }

LABEL_78:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4EF7B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  _Unwind_Resume(a1);
}

void QMIRTPCommandDriver::configureRTCPReportsReq(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*a2)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&v75, "rtp.qmidriver");
    v71[0] = 0;
    v74 = 0;
    v13 = ims::error(v12, v71);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v14 = v13;
    v15 = *(*(*a1 - 8) + 8);
    v16 = *(v13 + 8);
    v17 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15 & 0x7FFFFFFFFFFFFFFFLL, v17);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "configureRTCPReportsReq", 23);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " session is null", 16);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v74 == 1 && v73 < 0)
    {
      operator delete(v72);
    }

    if (v76 < 0)
    {
      operator delete(v75);
    }
  }

  v18 = std::string::basic_string[abi:ne200100]<0>(&v75, "rtp.qmidriver");
  v67[0] = 0;
  v70 = 0;
  v19 = ims::debug(v18, v67);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v20 = v19;
  v21 = *(*(*a1 - 8) + 8);
  v22 = *(v19 + 8);
  v23 = strlen((v21 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21 & 0x7FFFFFFFFFFFFFFFLL, v23);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "::", 2);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "configureRTCPReportsReq", 23);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " [sessionId=", 12);
  *(v20 + 17) = 0;
  v24 = (*(*(*a2 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v20 + 8), v24);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " enable=", 8);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923320](*(v20 + 8), a3);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " local=", 7);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923320](*(v20 + 8), a4);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " interval=", 10);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923390](*(v20 + 8), a5);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " xrInterval=", 12);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923390](*(v20 + 8), a6);
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " rtcpInterval()=", 16);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923350](*(v20 + 8), *(*a2 + 304));
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " localRTCPReportInterval()=", 27);
  *(v20 + 17) = 0;
  MEMORY[0x1E6923350](*(v20 + 8), *(*a2 + 312));
  *(v20 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "]", 1);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v70 == 1 && v69 < 0)
  {
    operator delete(__p);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  v65 = 0u;
  v66 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v65);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 1174405120;
  v61 = ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke;
  v62 = &__block_descriptor_tmp_108_0;
  v25 = a2[1];
  v63 = *a2;
  v64 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(&v65, 1);
  v61(v60, v26);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 1174405120;
  v49 = ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_109;
  v50 = &unk_1F5EDB958;
  v54 = a3;
  v55 = a4;
  v27 = a2[1];
  v52 = *a2;
  v53 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v51 = &v56;
  v28 = *(&v65 + 1);
  if (*(&v65 + 1) != v66)
  {
    while (*(*v28 + 8) != 16)
    {
      if (++v28 == v66)
      {
        goto LABEL_25;
      }
    }
  }

  if (v28 == v66)
  {
LABEL_25:
    operator new();
  }

  v29 = ***v28;
  if (!v30)
  {
    __cxa_bad_cast();
  }

  v49(v48, v30 + 5);
  if (a6 && a3 && *(v57 + 6))
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 0x40000000;
    v46[2] = ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_115;
    v46[3] = &__block_descriptor_tmp_118;
    v47 = a6;
    v31 = *(&v65 + 1);
    if (*(&v65 + 1) != v66)
    {
      while (*(*v31 + 8) != 17)
      {
        if (++v31 == v66)
        {
          goto LABEL_36;
        }
      }
    }

    if (v31 == v66)
    {
LABEL_36:
      operator new();
    }

    v32 = ***v31;
    if (!v33)
    {
      __cxa_bad_cast();
    }

    ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_115(v46, v33 + 5);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1174405120;
  v40 = ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_2;
  v41 = &__block_descriptor_tmp_123;
  v44 = a3;
  v45 = a4;
  v34 = a2[1];
  v42 = *a2;
  v43 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(&v65 + 1);
  if (*(&v65 + 1) != v66)
  {
    while (*(*v35 + 8) != 18)
    {
      if (++v35 == v66)
      {
        goto LABEL_46;
      }
    }
  }

  if (v35 == v66)
  {
LABEL_46:
    operator new();
  }

  v36 = ***v35;
  if (!v37)
  {
    __cxa_bad_cast();
  }

  v40(v39, v37 + 3);
  if (QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64)))
  {
    qmi::ClientRouter::get();
    operator new();
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  _Block_object_dispose(&v56, 8);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v65);
}

void sub_1E4EF8780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, char a41)
{
  v44 = *(v42 - 144);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  qmi::ClientRouter::SendProxy::~SendProxy(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Block_object_dispose(&a31, 8);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a41);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_109(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 56) != 1)
  {
    LOWORD(v6) = 0;
    goto LABEL_11;
  }

  v4 = *(a1 + 57);
  v5 = *(a1 + 40);
  if (v4 == 1)
  {
    v6 = *(v5 + 304);
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = 304;
  }

  else
  {
    v6 = *(v5 + 312);
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = 312;
  }

  v8 = (*(*(v5 + 8) + 96))();
  v9 = 308;
  if (v8 == 1)
  {
    v9 = v7;
  }

  v6 = *(*(a1 + 40) + v9);
LABEL_11:
  *a2 = v6;
  std::string::basic_string[abi:ne200100]<0>(v15, "rtp.qmidriver");
  v11[0] = 0;
  v14 = 0;
  v10 = ims::debug(v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "tlv.fRtcpReportingInterval=", 27);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923350](*(v10 + 8), *a2);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  *(*(*(a1 + 32) + 8) + 24) = *a2;
}

void sub_1E4EF8A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_115(uint64_t a1, _WORD *a2)
{
  *a2 = *(a1 + 32);
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "rtp.qmidriver");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "tlv.fRtcpXrReportingInterval=", 29);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923350](*(v4 + 8), *a2);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_1E4EF8B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver23configureRTCPReportsReqENSt3__110shared_ptrI13QMIRTPSessionEEbbtt_block_invoke_2(uint64_t a1, int *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = 312;
    if (*(a1 + 49))
    {
      v3 = 304;
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (*(*(a1 + 32) + v3))
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.qmidriver");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v6, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "tlv.fRtcpReportTypes=", 21);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }
}

void sub_1E4EF8C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver30handleConfigureRTCPReportsRespERKN2ms27SessionConfigureRtcpReports8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = *(a1 + 32);
    v2 = *(v1 + 168);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(v1 + 160);
        if (v5)
        {
          v6 = *(v5 + 72);
          v7 = *(v5 + 80);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v6, 11);
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }
}

void sub_1E4EF8D5C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void QMIRTPCommandDriver::configureRTPLinkMonitorReq(void *a1, void *a2, __int16 a3)
{
  if (!*a2)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v43, "rtp.qmidriver");
    v39[0] = 0;
    v42 = 0;
    v7 = ims::error(v6, v39);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v8 = v7;
    v9 = *(*(*a1 - 8) + 8);
    v10 = *(v7 + 8);
    v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "configureRTPLinkMonitorReq", 26);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " session is null", 16);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(__p);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v43, "rtp.qmidriver");
  v35[0] = 0;
  v38 = 0;
  v13 = ims::debug(v12, v35);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v14 = v13;
  v15 = *(*(*a1 - 8) + 8);
  v16 = *(v13 + 8);
  v17 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "configureRTPLinkMonitorReq", 26);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [sessionId=", 12);
  *(v14 + 17) = 0;
  v18 = (*(*(*a2 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v14 + 8), v18);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  v33 = 0u;
  v34 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v33);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1174405120;
  v29 = ___ZN19QMIRTPCommandDriver26configureRTPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEt_block_invoke;
  v30 = &__block_descriptor_tmp_127;
  v19 = a2[1];
  v31 = *a2;
  v32 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(&v33, 1);
  v29(v28, v20);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZN19QMIRTPCommandDriver26configureRTPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEt_block_invoke_128;
  v26[3] = &__block_descriptor_tmp_130;
  v27 = a3;
  v21 = *(&v33 + 1);
  if (*(&v33 + 1) != v34)
  {
    while (*(*v21 + 8) != 16)
    {
      if (++v21 == v34)
      {
        goto LABEL_23;
      }
    }
  }

  if (v21 == v34)
  {
LABEL_23:
    operator new();
  }

  v22 = ***v21;
  if (!v23)
  {
    __cxa_bad_cast();
  }

  ___ZN19QMIRTPCommandDriver26configureRTPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEt_block_invoke_128(v26, v23 + 5);
  InstanceType = QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64));
  if (InstanceType)
  {
    qmi::ClientRouter::send<ms::SessionConfigureLinkMonitor::Request>(&v25, (a1 + 8), InstanceType);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v33);
}

void sub_1E4EF93A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  v50 = *(v48 - 128);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::send<ms::SessionConfigureLinkMonitor::Request>(_DWORD *a1, uint64_t a2, int a3)
{
  qmi::ClientRouter::get();
  *a1 = a3;
  operator new();
}

void QMIRTPCommandDriver::configureRTCPLinkMonitorReq(void *a1, void *a2, __int16 a3)
{
  if (!*a2)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v43, "rtp.qmidriver");
    v39[0] = 0;
    v42 = 0;
    v7 = ims::error(v6, v39);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v8 = v7;
    v9 = *(*(*a1 - 8) + 8);
    v10 = *(v7 + 8);
    v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "configureRTCPLinkMonitorReq", 27);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " session is null", 16);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(__p);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v43, "rtp.qmidriver");
  v35[0] = 0;
  v38 = 0;
  v13 = ims::debug(v12, v35);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v14 = v13;
  v15 = *(*(*a1 - 8) + 8);
  v16 = *(v13 + 8);
  v17 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "configureRTCPLinkMonitorReq", 27);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [sessionId=", 12);
  *(v14 + 17) = 0;
  v18 = (*(*(*a2 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v14 + 8), v18);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  v33 = 0u;
  v34 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v33);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1174405120;
  v29 = ___ZN19QMIRTPCommandDriver27configureRTCPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEt_block_invoke;
  v30 = &__block_descriptor_tmp_133_0;
  v19 = a2[1];
  v31 = *a2;
  v32 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(&v33, 1);
  v29(v28, v20);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZN19QMIRTPCommandDriver27configureRTCPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEt_block_invoke_134;
  v26[3] = &__block_descriptor_tmp_136;
  v27 = a3;
  v21 = *(&v33 + 1);
  if (*(&v33 + 1) != v34)
  {
    while (*(*v21 + 8) != 17)
    {
      if (++v21 == v34)
      {
        goto LABEL_23;
      }
    }
  }

  if (v21 == v34)
  {
LABEL_23:
    operator new();
  }

  v22 = ***v21;
  if (!v23)
  {
    __cxa_bad_cast();
  }

  ___ZN19QMIRTPCommandDriver27configureRTCPLinkMonitorReqENSt3__110shared_ptrI13QMIRTPSessionEEt_block_invoke_134(v26, v23 + 5);
  InstanceType = QMIRTPCommandDriver::getInstanceType(a1, (*a2 + 64));
  if (InstanceType)
  {
    qmi::ClientRouter::send<ms::SessionConfigureLinkMonitor::Request>(&v25, (a1 + 8), InstanceType);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v33);
}

void sub_1E4EF9B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  v50 = *(v48 - 128);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  qmi::ClientRouter::SendProxy::~SendProxy(&a10);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a23);
  _Unwind_Resume(a1);
}

void QMIRTPCommandDriver::handleConfigureLinkMonitorResp(void *a1, unsigned __int16 *a2, void *a3)
{
  if (!*a3)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
    v40[0] = 0;
    v43 = 0;
    v7 = ims::error(v6, v40);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v8 = v7;
    v9 = *(*(*a1 - 8) + 8);
    v10 = *(v7 + 8);
    v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleConfigureLinkMonitorResp", 30);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " session is null", 16);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v43 == 1 && v42 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(block[0]);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmidriver");
  v36[0] = 0;
  v39 = 0;
  v13 = ims::debug(v12, v36);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v14 = v13;
  v15 = *(*(*a1 - 8) + 8);
  v16 = *(v13 + 8);
  v17 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleConfigureLinkMonitorResp", 30);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [sessionId=", 12);
  *(v14 + 17) = 0;
  v18 = (*(*(*a3 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v14 + 8), v18);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(block[0]);
  }

  v19 = *(a2 + 1);
  if (v19)
  {
    v20 = std::string::basic_string[abi:ne200100]<0>(&v52, "rtp.qmidriver");
    LOBYTE(block[0]) = 0;
    LOBYTE(v51) = 0;
    v21 = ims::error(v20, block);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Error response for request: ", 28);
    *(v21 + 17) = 0;
    v22 = QMIRTPCommandDriver::nameForRequestId(v44, *a2);
    (*(*v21 + 32))(v21, v44, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " error:", 7);
    *(v21 + 17) = 0;
    MEMORY[0x1E6923350](*(v21 + 8), *(a2 + 1));
    *(v21 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " reason: ", 9);
    *(v21 + 17) = 0;
    v23 = *(a2 + 1);
    v24 = qmi::asString();
    v25 = strlen(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), v24, v25);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (v51 == 1 && SHIBYTE(v49) < 0)
    {
      operator delete(v47);
    }

    if (v53 < 0)
    {
      operator delete(v52);
    }

    v19 = 4;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1174405120;
  v33[2] = ___ZN19QMIRTPCommandDriver30handleConfigureLinkMonitorRespERKN2ms27SessionConfigureLinkMonitor8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
  v33[3] = &__block_descriptor_tmp_139_0;
  v35 = v19;
  v27 = *a3;
  v26 = a3[1];
  v33[4] = a1;
  v33[5] = v27;
  v34 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = a1[3];
  if (!v28 || (v29 = a1[2], (v30 = std::__shared_weak_count::lock(v28)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = v30;
  v32 = a1[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v47 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v48 = &unk_1F5EDC868;
  v50 = v29;
  v51 = v31;
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  v49 = v33;
  dispatch_async(v32, block);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_1E4EFA15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (*(v43 - 112) == 1 && *(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (*(v43 - 81) < 0)
  {
    operator delete(*(v43 - 104));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver30handleConfigureLinkMonitorRespERKN2ms27SessionConfigureLinkMonitor8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 168);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(v2 + 160);
        if (v6)
        {
          v7 = v6[9];
          v8 = v6[10];
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v7, 12);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v9 = *(a1 + 48);
          v10 = *(a1 + 40);
          v11 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QMIRTPStackController::sessionMediaError(v6, &v10, 5);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_1E4EFA2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver33handleSessionInactivityIndicationERKN2ms17SessionInactivity10IndicationE_block_invoke(uint64_t a1, _DWORD *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = *a2;
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "rtp.qmidriver");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "[inactivityType=", 16);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923350](*(v4 + 8), *a2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_1E4EFA3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver33handleSessionInactivityIndicationERKN2ms17SessionInactivity10IndicationE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[21];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v2[20];
      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 24);
        if (v7 == 1)
        {
          v11 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
          v21[0] = 0;
          v24 = 0;
          v12 = ims::error(v11, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Baseband declared RTCP timeout", 30);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
          if (v24 == 1 && v23 < 0)
          {
            operator delete(v22);
          }

          if (v30 < 0)
          {
            operator delete(v29[0]);
          }

          v10 = 6;
        }

        else
        {
          if (v7)
          {
            v13 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
            v17[0] = 0;
            v20 = 0;
            v14 = ims::error(v13, v17);
            v15 = *(*(*v2 - 8) + 8);
            v16 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15 & 0x7FFFFFFFFFFFFFFFLL, v16);
            *(v14 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
            *(v14 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleSessionInactivityIndication_block_invoke_2", 48);
            *(v14 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " unknown inactivty type [qmisessionId=", 38);
            *(v14 + 17) = 0;
            MEMORY[0x1E6923340](*(v14 + 8), *(a1 + 48));
            *(v14 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " inactivityType=", 16);
            *(v14 + 17) = 0;
            MEMORY[0x1E6923340](*(v14 + 8), *(*(*(a1 + 32) + 8) + 24));
            *(v14 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
            *(v14 + 17) = 0;
            (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v14 + 17) = 0;
            if (v20 == 1 && v19 < 0)
            {
              operator delete(v18);
            }

            if (v30 < 0)
            {
              operator delete(v29[0]);
            }

            goto LABEL_24;
          }

          v8 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
          v25[0] = 0;
          v28 = 0;
          v9 = ims::error(v8, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Baseband declared RTP timeout", 29);
          *(v9 + 17) = 0;
          (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v9 + 17) = 0;
          if (v28 == 1 && v27 < 0)
          {
            operator delete(__p);
          }

          if (v30 < 0)
          {
            operator delete(v29[0]);
          }

          v10 = 5;
        }

        QMIRTPStackController::sessionMediaError(v6, *(a1 + 48), v10);
      }

LABEL_24:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void ___ZN19QMIRTPCommandDriver28handleServiceErrorIndicationERKN2ms12ServiceError10IndicationE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        if (*(a1 + 40) == 4)
        {
          v10 = 0u;
          v11 = 0u;
          v12 = 0u;
          v13 = 0u;
          v8[0] = &unk_1F5EBDEF8;
          v8[1] = &_bambiDomain;
          v9 = 1073741846;
          v7 = ImsResult::operator<<<char [28]>(v8, "Fatal baseband driver error");
          ImsResult::ImsResult(v14, v7);
          (*(*v6 + 56))(v6, v14);
          ImsResult::~ImsResult(v14);
          ImsResult::~ImsResult(v8);
        }

        else
        {
          QMIRTPStackController::sessionMediaError(v6, *(a1 + 44), 9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4EFA918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  ImsResult::~ImsResult(&a20);
  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 40);
  v17 = 0;
  v18 = 0;
  v16 = &unk_1F5EF0658;
  v19 = *a2;
  v20 = *(a2 + 2);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_3;
  v8[3] = &unk_1F5EDBA50;
  v8[4] = *(a1 + 32);
  v8[5] = v2;
  v9 = &unk_1F5EF0658;
  memset(v10, 0, sizeof(v10));
  v11 = v19;
  v12 = v20;
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<RTCPReceiverReport>::__init_with_size[abi:ne200100]<RTCPReceiverReport*,RTCPReceiverReport*>(&__p, 0, 0, 0);
  v3 = v2[3];
  if (!v3 || (v4 = v2[2], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = v2[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EDC868;
  block[5] = v4;
  v25 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  v9 = &unk_1F5EF0658;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v16 = &unk_1F5EF0658;
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_1E4EFAB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_3(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        v7 = *(v6 + 72);
        v8 = *(v6 + 80);
        if (*(*(a1[4] + 8) + 24) == 1)
        {
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logLocalRTCPSRPacket(v7, (a1 + 6));
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = (a1 + 6);
          RTPManager::logRemoteRTCPSRPacket(v7, v9);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          std::string::basic_string[abi:ne200100]<0>(v15, "rtp.qmidriver");
          v11[0] = 0;
          v14 = 0;
          v10 = ims::spam(v15, v11);
          (*(*v9 + 24))(v9, v10);
          if (v14 == 1 && v13 < 0)
          {
            operator delete(__p);
          }

          if (v16 < 0)
          {
            operator delete(v15[0]);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_48c18_ZTS12RTCPSRPacket(void *a1, uint64_t a2)
{
  a1[6] = &unk_1F5EDD2D8;
  v2 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  a1[6] = &unk_1F5EF0658;
  a1[7] = v2;
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  a1[12] = 0;
  v5 = (a1 + 12);
  *(v5 - 8) = v4;
  *(v5 - 24) = v3;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return std::vector<RTCPReceiverReport>::__init_with_size[abi:ne200100]<RTCPReceiverReport*,RTCPReceiverReport*>(v5, *(a2 + 96), *(a2 + 104), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 104) - *(a2 + 96)) >> 2));
}

void __destroy_helper_block_e8_48c18_ZTS12RTCPSRPacket(void *a1)
{
  a1[6] = &unk_1F5EF0658;
  v1 = a1[12];
  if (v1)
  {
    a1[13] = v1;
    operator delete(v1);
  }
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_159(uint64_t a1, int *a2)
{
  v4 = *(a1 + 40);
  HIBYTE(block) = 0;
  *(&block + 5) = 0;
  v5 = *(a2 + 8);
  v6 = a2[7];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v8 = *a2;
  v7 = a2[1];
  v25 = &unk_1F5EF3398;
  LODWORD(v28) = v8;
  v30 = 0;
  v31 = 0;
  LODWORD(block) = v7;
  BYTE4(block) = v5;
  v33 = *(a2 + 3);
  LODWORD(v34) = v6;
  std::vector<RTCPReceiverReport>::push_back[abi:ne200100](&v29, &block);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1174405120;
  v15[2] = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_160;
  v15[3] = &unk_1F5EDBA88;
  v15[4] = *(a1 + 32);
  v15[5] = v4;
  v17[0] = 0;
  *(v17 + 6) = 0;
  v16 = &unk_1F5EF3398;
  v18 = v28;
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<RTCPReceiverReport>::__init_with_size[abi:ne200100]<RTCPReceiverReport*,RTCPReceiverReport*>(&__p, v29, v30, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 2));
  v9 = *(a2 + 1);
  v22 = *a2;
  v23 = v9;
  v24 = a2[8];
  v10 = v4[3];
  if (!v10 || (v11 = v4[2], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = v4[4];
  block = MEMORY[0x1E69E9820];
  *&v33 = 1174405120;
  *(&v33 + 1) = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v34 = &unk_1F5EDC868;
  v36 = v11;
  v37 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v35 = v15;
  dispatch_async(v14, &block);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v16 = &unk_1F5EF3398;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v25 = &unk_1F5EF3398;
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_1E4EFB004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_160(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        v7 = *(v6 + 72);
        v8 = *(v6 + 80);
        if (*(*(*(a1 + 32) + 8) + 24) == 1)
        {
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logLocalRTCPRRPacket(v7, (a1 + 48), *(a1 + 136));
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRemoteRTCPRRPacket(v7, (a1 + 48), *(a1 + 136));
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v9 = std::string::basic_string[abi:ne200100]<0>(v22, "rtp.qmidriver");
          v18[0] = 0;
          v21 = 0;
          v10 = ims::spam(v9, v18);
          v11 = (*(*(a1 + 48) + 24))(a1 + 48, v10);
          (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v11[17] = 0;
          if (v21 == 1 && v20 < 0)
          {
            operator delete(__p);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          v12 = std::string::basic_string[abi:ne200100]<0>(v22, "rtp.qmidriver");
          v14[0] = 0;
          v17 = 0;
          v13 = ims::spam(v12, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "RoundTripTime: ", 15);
          *(v13 + 17) = 0;
          MEMORY[0x1E6923350](*(v13 + 8), *(a1 + 136));
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v17 == 1 && v16 < 0)
          {
            operator delete(v15);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_48c18_ZTS12RTCPRRPacket(void *a1, uint64_t a2)
{
  a1[6] = &unk_1F5EDD2D8;
  v2 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  a1[6] = &unk_1F5EF3398;
  a1[7] = v2;
  v3 = *(a2 + 72);
  a1[10] = 0;
  v4 = (a1 + 10);
  *(v4 - 8) = v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  return std::vector<RTCPReceiverReport>::__init_with_size[abi:ne200100]<RTCPReceiverReport*,RTCPReceiverReport*>(v4, *(a2 + 80), *(a2 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 88) - *(a2 + 80)) >> 2));
}

void __destroy_helper_block_e8_48c18_ZTS12RTCPRRPacket(void *a1)
{
  a1[6] = &unk_1F5EF3398;
  v1 = a1[10];
  if (v1)
  {
    a1[11] = v1;
    operator delete(v1);
  }
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_165(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  memset(&v34, 0, sizeof(v34));
  std::string::basic_string[abi:ne200100]<0>(&v34, "");
  v5 = *(a2 + 8);
  if (*(a2 + 24) - *(a2 + 16) < v5)
  {
    LOWORD(v5) = *(a2 + 24) - *(a2 + 16);
  }

  if (v5)
  {
    v6 = 0;
    v7 = v5;
    do
    {
      std::string::append(&v34, 1uLL, *(*(a2 + 16) + v6++));
    }

    while (v7 != v6);
  }

  memset(v33, 0, sizeof(v33));
  v8 = *(a2 + 4);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v34;
  }

  RTCPSDesItem::RTCPSDesItem(v33, v8, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v28 = 0;
  v29 = 0;
  LODWORD(v28) = *a2;
  v30 = 0;
  v31 = 0;
  v25 = v33[0];
  v26 = BYTE4(v33[0]);
  if (SHIBYTE(v33[1]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(&v33[0] + 1), *&v33[1]);
  }

  else
  {
    __p = *(v33 + 8);
  }

  std::vector<RTCPSDesItem>::push_back[abi:ne200100](&v29, &v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = 0uLL;
  v20 = &unk_1F5EF5148;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v18 = v28;
  memset(v19, 0, sizeof(v19));
  std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(v19, v29, v30, (v30 - v29) >> 5);
  std::vector<RTCPSDesInfo>::push_back[abi:ne200100](&v22, &v18);
  block[0] = v19;
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](block);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1174405120;
  v14[2] = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_167;
  v14[3] = &unk_1F5EDBAC0;
  v14[4] = *(a1 + 32);
  v14[5] = v4;
  v16[0] = v21;
  *(v16 + 6) = *(&v21 + 6);
  v15 = &unk_1F5EF5148;
  memset(v17, 0, sizeof(v17));
  std::vector<RTCPSDesInfo>::__init_with_size[abi:ne200100]<RTCPSDesInfo*,RTCPSDesInfo*>(v17, v22, v23, (v23 - v22) >> 5);
  v9 = v4[3];
  if (!v9 || (v10 = v4[2], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = v4[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EDC868;
  block[5] = v10;
  v36 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v14;
  dispatch_async(v13, block);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = &unk_1F5EF5148;
  block[0] = v17;
  std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](block);
  v20 = &unk_1F5EF5148;
  block[0] = &v22;
  std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](block);
  block[0] = &v29;
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](block);
  if (SHIBYTE(v33[1]) < 0)
  {
    operator delete(*(&v33[0] + 1));
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EFB704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  *(v48 - 152) = v47;
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100]((v48 - 152));
  if (*(v48 - 177) < 0)
  {
    operator delete(*(v48 - 200));
  }

  if (*(v48 - 153) < 0)
  {
    operator delete(*(v48 - 176));
  }

  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_167(void *a1)
{
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v2 = a1[5];
    v3 = *(v2 + 168);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(v2 + 160);
        if (v6)
        {
          std::string::basic_string[abi:ne200100]<0>(v15, "rtp.qmidriver");
          v11[0] = 0;
          v14 = 0;
          v7 = ims::spam(v15, v11);
          v8 = (*(a1[6] + 24))(a1 + 6, v7);
          (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v8[17] = 0;
          if (v14 == 1 && v13 < 0)
          {
            operator delete(__p);
          }

          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          v9 = *(v6 + 72);
          v10 = *(v6 + 80);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logSdesRTCPTime(v9);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_1E4EFB8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = v25;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_48c20_ZTS14RTCPSDesPacket(void *a1, void *a2)
{
  a1[6] = &unk_1F5EDD2D8;
  v2 = a2[7];
  v3 = *(a2 + 62);
  a1[9] = 0;
  *(a1 + 62) = v3;
  a1[7] = v2;
  a1[6] = &unk_1F5EF5148;
  a1[10] = 0;
  a1[11] = 0;
  return std::vector<RTCPSDesInfo>::__init_with_size[abi:ne200100]<RTCPSDesInfo*,RTCPSDesInfo*>((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 5);
}

void __destroy_helper_block_e8_48c20_ZTS14RTCPSDesPacket(uint64_t a1)
{
  *(a1 + 48) = &unk_1F5EF5148;
  v1 = (a1 + 72);
  std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_171(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v13 = 4;
  v11 = a2;
  v12 = &unk_1F5ED5640;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_172;
  v9[3] = &unk_1F5EDBAF8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = 4;
  v9[4] = v2;
  v9[5] = &unk_1F5ED5640;
  v4 = v3[3];
  if (!v4 || (v5 = v3[2], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v3[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EDC868;
  block[5] = v5;
  v16 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_172(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "rtp.qmidriver");
    v4[0] = 0;
    v7 = 0;
    v3 = ims::spam(v2, v4);
    (**(a1 + 40))(a1 + 40, v3);
    if (v7 == 1 && v6 < 0)
    {
      operator delete(__p);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }
}

void sub_1E4EFBC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c39_ZTS33RTCPXRReceiverReferenceTimeReport(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(result + 40) = &unk_1F5ED5640;
  *(result + 56) = *(a2 + 56);
  return result;
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_176(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v16 = 5;
  v17 = a2;
  v15 = &unk_1F5ECB9F0;
  v18 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_177;
  v9[3] = &__block_descriptor_tmp_178_1;
  v10 = 5;
  v9[4] = &unk_1F5ECB9F0;
  v12 = a3;
  v11 = a2;
  v13 = a2;
  v14 = a3;
  v4 = v3[3];
  if (!v4 || (v5 = v3[2], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v3[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EDC868;
  block[5] = v5;
  v20 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void ___ZN19QMIRTPCommandDriver34handleServiceRtcpReportsIndicationERKN2ms18ServiceRtcpReports10IndicationE_block_invoke_2_177(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v14, "rtp.qmidriver");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::spam(v2, v10);
  (**(a1 + 32))(a1 + 32, v3);
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v4 = std::string::basic_string[abi:ne200100]<0>(v14, "rtp.qmidriver");
  v6[0] = 0;
  v9 = 0;
  v5 = ims::spam(v4, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "RoundTripTime: ", 15);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(a1 + 68));
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(v7);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1E4EFBF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c22_ZTS16RTCPXRDLRRReport(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 32) = &unk_1F5ECB9F0;
  v2 = *(a2 + 44);
  *(result + 52) = *(a2 + 52);
  *(result + 44) = v2;
  return result;
}

void ___ZN19QMIRTPCommandDriver18handleSendDTMFRespERKN2ms15SessionSendDTMF8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(v2 + 168);
  if (v3)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(v2 + 160);
        if (v7)
        {
          v8 = *(v7 + 72);
          v9 = *(v7 + 80);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v8, 14);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    std::__list_imp<unsigned long long>::clear((v2 + 112));
  }

  else if (v4)
  {
    v10 = std::__shared_weak_count::lock(v4);
    if (v10)
    {
      v11 = v10;
      if (*(v2 + 160) && (*(v2 + 136) & 1) == 0)
      {
        *(v2 + 136) = 1;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        v13 = *(v2 + 176);
        v14 = std::string::basic_string[abi:ne200100]<0>(&v36, "rtp.qmidriver");
        v32[0] = 0;
        v35 = 0;
        v15 = ims::debug(v14, v32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "QMIRTPCommandDriver::handleSendDTMFResp DispatchInFlight DTMF digit queue size: ", 80);
        *(v15 + 17) = 0;
        MEMORY[0x1E6923370](*(v15 + 8), *(v2 + 128));
        *(v15 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " elapsed (ms): ", 15);
        v16 = rep / 1000 - v13;
        *(v15 + 17) = 0;
        MEMORY[0x1E69233A0](*(v15 + 8), v16);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
        if (v35 == 1 && v34 < 0)
        {
          operator delete(__p);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        v17 = *(a1 + 40);
        v18 = *(v17 + 345);
        v19 = *(v17 + 348);
        if (v19 + v18 >= v16)
        {
          v22 = *(v2 + 160);
          v21 = *(v2 + 168);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v23 = *(a1 + 40);
            v18 = *(v23 + 345);
            v19 = *(v23 + 348);
          }

          v24 = dispatch_time(0, 1000000 * (v18 - v16 + v19));
          v25 = *(v2 + 144);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 1174405120;
          v27[2] = ___ZN19QMIRTPCommandDriver18handleSendDTMFRespERKN2ms15SessionSendDTMF8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke_2;
          v27[3] = &__block_descriptor_tmp_193;
          v27[4] = v22;
          v28 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = *(a1 + 48);
          v29 = *(a1 + 40);
          v30 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          dispatch_after(v24, v25, v27);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_weak(v28);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        else
        {
          v20 = *(a1 + 48);
          v31[0] = v17;
          v31[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QMIRTPCommandDriver::processDTMFDigitQueue(v2, v31);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4EFC33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void QMIRTPCommandDriver::processDTMFDigitQueue(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v31 = std::string::basic_string[abi:ne200100]<0>(v86, "rtp.qmidriver");
    v68[0] = 0;
    v71 = 0;
    v32 = ims::error(v31, v68);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v33 = v32;
    v34 = *(*(*a1 - 8) + 8);
    v35 = *(v32 + 8);
    v36 = strlen((v34 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v34 & 0x7FFFFFFFFFFFFFFFLL, v36);
    *(v33 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "::", 2);
    *(v33 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "processDTMFDigitQueue", 21);
    *(v33 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " session is null", 16);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
    if (v71 != 1 || (v70 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v37 = v69;
    goto LABEL_35;
  }

  v4 = std::string::basic_string[abi:ne200100]<0>(v86, "rtp.qmidriver");
  v64[0] = 0;
  v67 = 0;
  v5 = ims::debug(v4, v64);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*a1 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "processDTMFDigitQueue", 21);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  v10 = (*(*(*a2 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v6 + 8), v10);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v67 == 1 && v66 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  *(a1 + 136) = 0;
  if (!*(a1 + 128))
  {
    v38 = std::string::basic_string[abi:ne200100]<0>(v86, "rtp.qmidriver");
    v60[0] = 0;
    v63 = 0;
    v39 = ims::debug(v38, v60);
    v40 = *(*(*a1 - 8) + 8);
    v41 = strlen((v40 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), v40 & 0x7FFFFFFFFFFFFFFFLL, v41);
    *(v39 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "::", 2);
    *(v39 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "processDTMFDigitQueue", 21);
    *(v39 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), " doesn't have any digits in the queue", 37);
    *(v39 + 17) = 0;
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v39 + 17) = 0;
    if (v63 != 1 || (v62 & 0x80000000) == 0)
    {
LABEL_36:
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86[0]);
      }

      return;
    }

    v37 = v61;
LABEL_35:
    operator delete(v37);
    goto LABEL_36;
  }

  v11 = *(*(a1 + 120) + 16);
  v12 = std::string::basic_string[abi:ne200100]<0>(v86, "rtp.qmidriver");
  v56[0] = 0;
  v59 = 0;
  v13 = ims::debug(v12, v56);
  v14 = *(*(*a1 - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "processDTMFDigitQueue", 21);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [size=", 7);
  *(v13 + 17) = 0;
  MEMORY[0x1E6923340](*(v13 + 8), *(a1 + 128));
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " digit=", 7);
  *(v13 + 17) = 0;
  MEMORY[0x1E6923340](*(v13 + 8), v11);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "]", 1);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v59 == 1 && v58 < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  v16 = *(a1 + 120);
  v18 = *v16;
  v17 = v16[1];
  *(v18 + 8) = v17;
  *v17 = v18;
  --*(a1 + 128);
  operator delete(v16);
  v20 = *a2;
  v19 = a2[1];
  v21 = *a2;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = *a2;
  }

  if (v20)
  {
    v22 = *(v21 + 344);
    v23 = *(v21 + 345);
    v24 = std::string::basic_string[abi:ne200100]<0>(&v90, "rtp.qmidriver");
    LOBYTE(v86[0]) = 0;
    v89 = 0;
    v25 = ims::debug(v24, v86);
    v26 = *(*(*a1 - 8) + 8);
    v27 = strlen((v26 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), v26 & 0x7FFFFFFFFFFFFFFFLL, v27);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "::", 2);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "sendDTMFReq", 11);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " [sessionId=", 12);
    *(v25 + 17) = 0;
    v28 = (*(*(v20 + 8) + 176))();
    MEMORY[0x1E69233B0](*(v25 + 8), v28);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "]", 1);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v89 == 1 && v88 < 0)
    {
      operator delete(v87);
    }

    if (v91 < 0)
    {
      operator delete(v90);
    }

    v84 = 0u;
    v85 = 0u;
    qmi::MutableMessageBase::MutableMessageBase(&v84);
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 1174405120;
    v80 = ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke;
    v81 = &__block_descriptor_tmp_183_0;
    v82 = v20;
    v83 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = qmi::MutableMessageBase::getTLV<ms::tlv::RTPSessionIdentifier>(&v84, 1);
    v80(v79, v29);
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 0x40000000;
    v77[2] = ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke_184;
    v77[3] = &__block_descriptor_tmp_186;
    v78 = v11;
    v30 = *(&v84 + 1);
    if (*(&v84 + 1) != v85)
    {
      while (*(*v30 + 8) != 2)
      {
        if (++v30 == v85)
        {
          goto LABEL_46;
        }
      }
    }

    if (v30 == v85)
    {
LABEL_46:
      operator new();
    }

    v42 = ***v30;
    if (!v43)
    {
      goto LABEL_73;
    }

    ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke_184(v77, v43 + 9);
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 0x40000000;
    v75[2] = ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke_2;
    v75[3] = &__block_descriptor_tmp_188;
    v76 = v22;
    v48 = *(&v84 + 1);
    if (*(&v84 + 1) != v85)
    {
      while (*(*v48 + 8) != 3)
      {
        if (++v48 == v85)
        {
          goto LABEL_54;
        }
      }
    }

    if (v48 == v85)
    {
LABEL_54:
      operator new();
    }

    v49 = ***v48;
    if (!v50)
    {
      goto LABEL_73;
    }

    ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke_2(v75, v50 + 9);
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 0x40000000;
    v73[2] = ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke_3;
    v73[3] = &__block_descriptor_tmp_190;
    v74 = v23;
    v51 = *(&v84 + 1);
    if (*(&v84 + 1) != v85)
    {
      while (*(*v51 + 8) != 4)
      {
        if (++v51 == v85)
        {
          goto LABEL_62;
        }
      }
    }

    if (v51 == v85)
    {
LABEL_62:
      operator new();
    }

    v52 = ***v51;
    if (!v53)
    {
LABEL_73:
      __cxa_bad_cast();
    }

    ___ZN19QMIRTPCommandDriver11sendDTMFReqENSt3__110shared_ptrI13QMIRTPSessionEEcht_block_invoke_3(v73, v53 + 5);
    *(a1 + 176) = std::chrono::system_clock::now().__d_.__rep_ / 1000;
    InstanceType = QMIRTPCommandDriver::getInstanceType(a1, (v20 + 64));
    v55 = InstanceType;
    if (InstanceType)
    {
      qmi::ClientRouter::get();
      v72 = v55;
      operator new();
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v84);
  }

  else
  {
    v44 = std::string::basic_string[abi:ne200100]<0>(&v90, "rtp.qmidriver");
    LOBYTE(v86[0]) = 0;
    v89 = 0;
    v45 = ims::error(v44, v86);
    v46 = *(*(*a1 - 8) + 8);
    v47 = strlen((v46 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), v46 & 0x7FFFFFFFFFFFFFFFLL, v47);
    *(v45 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "::", 2);
    *(v45 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "sendDTMFReq", 11);
    *(v45 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), " session is null", 16);
    *(v45 + 17) = 0;
    (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v45 + 17) = 0;
    if (v89 == 1 && v88 < 0)
    {
      operator delete(v87);
    }

    if (v91 < 0)
    {
      operator delete(v90);
    }
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_1E4EFD1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v65 = *(v63 - 144);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  qmi::ClientRouter::SendProxy::~SendProxy(&a38);
  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a61);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

void ___ZN19QMIRTPCommandDriver18handleSendDTMFRespERKN2ms15SessionSendDTMF8ResponseENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        v6 = *(v5 + 384);
        v7 = *(v5 + 392);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = a1[6];
        v9 = a1[7];
        v10[0] = v8;
        v10[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QMIRTPCommandDriver::processDTMFDigitQueue(v6, v10);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4EFD3C8(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrI21QMIRTPStackControllerEE48c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrI21QMIRTPStackControllerEE48c41_ZTSNSt3__110shared_ptrI13QMIRTPSessionEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void QMIRTPCommandDriver::sendDTMFDigit(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.qmidriver");
    v19[0] = 0;
    v22 = 0;
    v7 = ims::debug(v6, v19);
    if (a1)
    {
      v8 = v7;
      v9 = *(*(*a1 - 8) + 8);
      v10 = *(v7 + 8);
      v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sendDTMFDigit", 13);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
      *(v8 + 17) = 0;
      v12 = (*(*(*a2 + 8) + 176))();
      MEMORY[0x1E69233B0](*(v8 + 8), v12);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " digit=", 7);
      *(v8 + 17) = 0;
      MEMORY[0x1E6923340](*(v8 + 8), a3);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v22 == 1 && v21 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      operator new();
    }

    __cxa_bad_typeid();
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.qmidriver");
  v23[0] = 0;
  v26 = 0;
  v14 = ims::error(v13, v23);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v15 = v14;
  v16 = *(*(*a1 - 8) + 8);
  v17 = *(v14 + 8);
  v18 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v16 & 0x7FFFFFFFFFFFFFFFLL, v18);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "sendDTMFDigit", 13);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " session is null", 16);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_1E4EFD910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver13sendDTMFDigitENSt3__110shared_ptrI13QMIRTPSessionEEh_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::processDTMFDigitQueue(v2, v4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4EFD9FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPCommandDriver::uninitializeAllSessionsReq(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v68, "rtp.qmidriver");
  v64[0] = 0;
  v67 = 0;
  v7 = ims::debug(v6, v64);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*a1 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "uninitializeAllSessionsReq", 26);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [stackId=", 10);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " apnType=", 9);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v67 == 1 && v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  v62 = 0u;
  v63 = 0u;
  qmi::MutableMessageBase::MutableMessageBase(&v62);
  if (a3 != 255)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 0x40000000;
    v60[2] = ___ZN19QMIRTPCommandDriver26uninitializeAllSessionsReqERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN2ms7ApnTypeE_block_invoke;
    v60[3] = &__block_descriptor_tmp_217;
    v61 = a3;
    v12 = *(&v62 + 1);
    if (*(&v62 + 1) != v63)
    {
      while (*(*v12 + 8) != 16)
      {
        if (++v12 == v63)
        {
          goto LABEL_15;
        }
      }
    }

    if (v12 == v63)
    {
LABEL_15:
      operator new();
    }

    v13 = ***v12;
    if (!v14)
    {
      __cxa_bad_cast();
    }

    ___ZN19QMIRTPCommandDriver26uninitializeAllSessionsReqERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN2ms7ApnTypeE_block_invoke(v60, v14 + 3);
  }

  v15 = a1[21];
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v48 = v16;
      v17 = a1[20];
      if (!v17)
      {
LABEL_49:
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        goto LABEL_50;
      }

      v18 = *(a2 + 23);
      if (v18 < 0)
      {
        if (*(a2 + 8) != 15)
        {
LABEL_28:
          QMIRTPStackController::getProfileByStackId(a1[20], a2);
          v24 = v23;
          if ((v23 & 0x100000000) != 0)
          {
            v25 = std::string::basic_string[abi:ne200100]<0>(&v68, "rtp.qmidriver");
            v49[0] = 0;
            v52 = 0;
            v26 = ims::debug(v25, v49);
            v27 = *(*(*a1 - 8) + 8);
            v28 = strlen((v27 & 0x7FFFFFFFFFFFFFFFLL));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), v27 & 0x7FFFFFFFFFFFFFFFLL, v28);
            *(v26 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "::", 2);
            *(v26 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "uninitializeAllSessionsReq", 26);
            *(v26 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " [instance=", 11);
            *(v26 + 17) = 0;
            MEMORY[0x1E6923350](*(v26 + 8), v24);
            *(v26 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "]", 1);
            *(v26 + 17) = 0;
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v26 + 17) = 0;
            if (v52 == 1 && v51 < 0)
            {
              operator delete(__p);
            }

            if (v69 < 0)
            {
              operator delete(v68);
            }

            if (v24)
            {
              v29 = 2 * (v24 == 1);
            }

            else
            {
              v29 = 1;
            }

            if (v29)
            {
              v30 = *(v17 + 176);
              if (v30)
              {
                v31 = v17 + 176;
                do
                {
                  v32 = *(v30 + 28);
                  v33 = v32 >= v24;
                  v34 = v32 < v24;
                  if (v33)
                  {
                    v31 = v30;
                  }

                  v30 = *(v30 + 8 * v34);
                }

                while (v30);
                if (v31 != v17 + 176 && *(v31 + 28) <= v24 && *(v31 + 32) == 2)
                {
                  qmi::ClientRouter::send<ms::ServiceUninitializeAllSessions::Request>(v58, (a1 + 8), v29);
                }
              }
            }
          }

          QMIRTPStackController::handleStackUninitializeAllSessions(v17, a2, a3);
          goto LABEL_49;
        }

        v19 = *a2;
      }

      else
      {
        v19 = a2;
        if (v18 != 15)
        {
          goto LABEL_28;
        }
      }

      v20 = *v19;
      v21 = *(v19 + 7);
      v22 = v20 == 0x536C6C41494D516BLL && v21 == 0x736E6F6973736553;
      if (v22)
      {
        v35 = *(v17 + 144);
        if (v35 != (v17 + 152))
        {
          v36 = (v17 + 176);
          do
          {
            v59 = 0;
            memset(v58, 0, sizeof(v58));
            if (*(v35 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(v58, v35[4], v35[5]);
            }

            else
            {
              *v58 = *(v35 + 2);
              *&v58[16] = v35[6];
            }

            *&v58[24] = v35[7];
            LODWORD(v59) = *(v35 + 16);
            v37 = std::string::basic_string[abi:ne200100]<0>(&v68, "rtp.qmidriver");
            v54[0] = 0;
            v57 = 0;
            v38 = ims::debug(v37, v54);
            v39 = *(*(*a1 - 8) + 8);
            v40 = strlen((v39 & 0x7FFFFFFFFFFFFFFFLL));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), v39 & 0x7FFFFFFFFFFFFFFFLL, v40);
            *(v38 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "::", 2);
            *(v38 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "uninitializeAllSessionsReq", 26);
            *(v38 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " [instance=", 11);
            *(v38 + 17) = 0;
            MEMORY[0x1E6923350](*(v38 + 8), v59);
            *(v38 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "]", 1);
            *(v38 + 17) = 0;
            (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v38 + 17) = 0;
            if (v57 == 1 && v56 < 0)
            {
              operator delete(v55);
            }

            if (v69 < 0)
            {
              operator delete(v68);
            }

            if (v59)
            {
              v41 = 2 * (v59 == 1);
            }

            else
            {
              v41 = 1;
            }

            if (v41)
            {
              v42 = *v36;
              if (*v36)
              {
                v43 = v17 + 176;
                do
                {
                  v44 = *(v42 + 28);
                  v33 = v44 >= v59;
                  v45 = v44 < v59;
                  if (v33)
                  {
                    v43 = v42;
                  }

                  v42 = *(v42 + 8 * v45);
                }

                while (v42);
                if (v43 != v36 && *(v43 + 28) <= v59 && *(v43 + 32) == 2)
                {
                  qmi::ClientRouter::send<ms::ServiceUninitializeAllSessions::Request>(&v53, (a1 + 8), v41);
                }
              }
            }

            QMIRTPStackController::handleStackUninitializeAllSessions(v17, a2, a3);
            if ((v58[23] & 0x80000000) != 0)
            {
              operator delete(*v58);
            }

            v46 = v35[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v35[2];
                v22 = *v47 == v35;
                v35 = v47;
              }

              while (!v22);
            }

            v35 = v47;
          }

          while (v47 != (v17 + 152));
        }

        goto LABEL_49;
      }

      goto LABEL_28;
    }
  }

LABEL_50:
  qmi::MutableMessageBase::~MutableMessageBase(&v62);
}

void sub_1E4EFE4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  v54 = *(v52 - 152);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  qmi::ClientRouter::SendProxy::~SendProxy(&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  qmi::MutableMessageBase::~MutableMessageBase(&a51);
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::send<ms::ServiceUninitializeAllSessions::Request>(_DWORD *a1, uint64_t a2, int a3)
{
  qmi::ClientRouter::get();
  *a1 = a3;
  operator new();
}

void QMIRTPCommandDriver::handleUninitializeAllSessionsResp(void *a1, unsigned __int16 *a2)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v26, "rtp.qmidriver");
    LOBYTE(block[0]) = 0;
    LOBYTE(v25) = 0;
    v6 = ims::error(v5, block);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Error response for request: ", 28);
    *(v6 + 17) = 0;
    v7 = QMIRTPCommandDriver::nameForRequestId(__p, *a2);
    (*(*v6 + 32))(v6, __p, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " error:", 7);
    *(v6 + 17) = 0;
    MEMORY[0x1E6923350](*(v6 + 8), *(a2 + 1));
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " reason: ", 9);
    *(v6 + 17) = 0;
    v8 = *(a2 + 1);
    v9 = qmi::asString();
    v10 = strlen(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v9, v10);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 == 1 && SHIBYTE(v23) < 0)
    {
      operator delete(v21);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    v3 = 4;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN19QMIRTPCommandDriver33handleUninitializeAllSessionsRespERKN2ms30ServiceUninitializeAllSessions8ResponseEh_block_invoke;
  v16[3] = &__block_descriptor_tmp_219;
  v16[4] = a1;
  v17 = v3;
  v11 = a1[3];
  if (!v11 || (v12 = a1[2], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = a1[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v21 = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v22 = &unk_1F5EDC868;
  v24 = v12;
  v25 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = v16;
  dispatch_async(v15, block);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
}

void sub_1E4EFE91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a31 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 33) < 0)
  {
    operator delete(*(v31 - 56));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver33handleUninitializeAllSessionsRespERKN2ms30ServiceUninitializeAllSessions8ResponseEh_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 168);
  if (v2)
  {
    if (!v3)
    {
      return;
    }

    v4 = std::__shared_weak_count::lock(v3);
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = *(v1 + 160);
    if (v6)
    {
      QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(v6, 1);
    }
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = std::__shared_weak_count::lock(v3);
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v8 = *(v1 + 160);
    if (v8)
    {
      QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(v8, 0);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void ___ZN19QMIRTPCommandDriver39handleUninitializeAllSessionsIndicationERKN2ms30ServiceUninitializeAllSessions10IndicationE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 160);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "kQMIAllSessionsOnAPN");
        QMIRTPStackController::handleStackUninitializeAllSessions(v6, __p, *(*(*(a1 + 32) + 8) + 24));
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4EFEAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

_BYTE *___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke(_BYTE *result, _BYTE *a2)
{
  *a2 = result[32];
  if (result[33])
  {
    v2 = 9;
  }

  else
  {
    v2 = 2;
  }

  a2[1] = v2;
  a2[2] = result[34];
  return result;
}

void ___ZN19QMIRTPCommandDriver18sendAudioCallEventEhRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN5audio5EventEb_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(v16, "rtp.qmidriver");
  v23[0] = 0;
  v26 = 0;
  v4 = ims::debug(v16, v23);
  if (!v3)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*v3 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleSendAudioCallEventResp", 28);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  v9 = *(a2 + 4) != 0;
  memset(&v22, 0, sizeof(v22));
  v10 = qmi::asString();
  std::string::basic_string[abi:ne200100]<0>(&v22, v10);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1174405120;
  v17 = ___ZN19QMIRTPCommandDriver28handleSendAudioCallEventRespERKN5audio13SendCallEvent8ResponseE_block_invoke;
  v18 = &__block_descriptor_tmp_237;
  v19 = v3;
  v21 = v9;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v22;
  }

  v11 = v3[3];
  if (!v11 || (v12 = v3[2], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = v3[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19QMIRTPCommandDriverE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EDC868;
  block[5] = v12;
  v28 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v16;
  dispatch_async(v15, block);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4EFEDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver28handleSendAudioCallEventRespERKN5audio13SendCallEvent8ResponseE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
    v25[0] = 0;
    v28 = 0;
    v4 = ims::error(v3, v25);
    if (!v1)
    {
      __cxa_bad_typeid();
    }

    v5 = v4;
    v6 = *(*(*v1 - 8) + 8);
    v7 = *(v4 + 8);
    v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleSendAudioCallEventResp_block_invoke", 41);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " Error  ", 8);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a1 + 40);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    v9 = v1[21];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = v1[20];
        if (v12)
        {
          v13 = *(v12 + 72);
          v14 = *(v12 + 80);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RTPManager::logRTPError(v13, 19);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  else
  {
    v15 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmidriver");
    v21[0] = 0;
    v24 = 0;
    v16 = ims::debug(v15, v21);
    if (!v1)
    {
      __cxa_bad_typeid();
    }

    v17 = v16;
    v18 = *(*(*v1 - 8) + 8);
    v19 = *(v16 + 8);
    v20 = strlen((v18 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v18 & 0x7FFFFFFFFFFFFFFFLL, v20);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "::", 2);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "handleSendAudioCallEventResp_block_invoke", 41);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " Success", 8);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void sub_1E4EFF0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  v31 = v29;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

__n128 QMIRTPCommandDriver::nameForRequestId(QMIRTPCommandDriver *this, uint64_t a2)
{
  v3 = this;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::string::basic_string[abi:ne200100]<0>(this, "Unknown");
  v5 = "ServiceSubscribeNotifications";
  v6 = 29;
  switch(a2)
  {
    case '>':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 11;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 11;
      }

      strcpy(v3, "ServiceBind");
      return result;
    case '?':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 17;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 17;
      }

      *(v3 + 8) = 101;
      v11 = "ServiceInitialize";
      goto LABEL_67;
    case '@':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 19;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 19;
      }

      *(v3 + 15) = 1702521196;
      v9 = "ServiceUninitialize";
      goto LABEL_53;
    case 'A':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 17;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 17;
      }

      *(v3 + 8) = 101;
      v11 = "SessionInitialize";
      goto LABEL_67;
    case 'B':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 19;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 19;
      }

      *(v3 + 15) = 1702521196;
      v9 = "SessionUninitialize";
LABEL_53:
      result = *v9;
      *v3 = *v9;
      *(v3 + 19) = 0;
      return result;
    case 'C':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 16;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 16;
      }

      v10 = "SessionConfigure";
      goto LABEL_64;
    case 'D':
      v5 = "SessionSetStreamDirection";
      v6 = 25;
      goto LABEL_35;
    case 'E':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 17;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 17;
      }

      *(v3 + 8) = 99;
      v11 = "ServiceStartCodec";
LABEL_67:
      result = *v11;
      *v3 = *v11;
      return result;
    case 'F':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 16;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 16;
      }

      v10 = "ServiceStopCodec";
LABEL_64:
      result = *v10;
      *v3 = *v10;
      *(v3 + 16) = 0;
      return result;
    case 'G':
      v5 = "SessionConfigureRTCPReports";
      v6 = 27;
      goto LABEL_35;
    case 'H':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 20;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 20;
      }

      result.n128_u64[0] = *"ConfigureLinkMonitor";
      strcpy(v3, "ConfigureLinkMonitor");
      return result;
    case 'I':
      goto LABEL_35;
    case 'J':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 22;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 22;
      }

      result.n128_u64[0] = *"ServiceErrorIndication";
      strcpy(v3, "ServiceErrorIndication");
      return result;
    case 'K':
      v5 = "ServiceRTCPreportsIndication";
      v6 = 28;
      goto LABEL_35;
    case 'L':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 8;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 8;
      }

      v8 = 1684956499;
      goto LABEL_42;
    case 'M':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 9;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 9;
      }

      strcpy(v3, "StartDTMF");
      return result;
    case 'N':
      if (*(v3 + 23) < 0)
      {
        *(v3 + 1) = 8;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 8;
      }

      v8 = 1886352467;
LABEL_42:
      *v3 = v8 | 0x464D544400000000;
      *(v3 + 8) = 0;
      break;
    case 'O':
      v5 = "ServiceUninitializeAllSessions";
      v6 = 30;
LABEL_35:
      std::string::__assign_external(v3, v5, v6);
      break;
    default:
      std::string::basic_string[abi:ne200100]<0>(v16, "rtp.qmidriver");
      v12[0] = 0;
      v15 = 0;
      v7 = ims::error(v16, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Couldn't find a QMI MS_EXT request with id: ", 44);
      *(v7 + 17) = 0;
      MEMORY[0x1E6923390](*(v7 + 8), a2);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v15 == 1 && v14 < 0)
      {
        operator delete(__p);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      break;
  }

  return result;
}

void sub_1E4EFF5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19QMIRTPCommandDriver26registerAudioCodecChangeCbEj_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 4))
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(v18, "rtp.qmidriver");
    v8[0] = 0;
    v11 = 0;
    v7 = ims::debug(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Succesfully registered audio codec change callback", 50);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v11 != 1 || (v10 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    v5 = v9;
    goto LABEL_10;
  }

  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v2 = qmi::asString();
  std::string::basic_string[abi:ne200100]<0>(v18, v2);
  v3 = std::string::basic_string[abi:ne200100]<0>(&v16, "rtp.qmidriver");
  v12[0] = 0;
  v15 = 0;
  v4 = ims::error(v3, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Failed to register audio codec change callback. Error ", 54);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, v18);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    v5 = v16;
LABEL_10:
    operator delete(v5);
  }

LABEL_11:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1E4EFF7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<RTCPReceiverReport>::__init_with_size[abi:ne200100]<RTCPReceiverReport*,RTCPReceiverReport*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RTCPReceiverReport>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4EFF8EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RTCPReceiverReport>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPReceiverReport>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RTCPSDesItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4EFF9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<RTCPSDesItem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPSDesItem>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPSDesItem>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RTCPSDesItem>,RTCPSDesItem*,RTCPSDesItem*,RTCPSDesItem*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v6 = (a2 + 8);
    do
    {
      v8 = v6 - 8;
      v7 = *(v6 - 2);
      *(v4 + 4) = *(v6 - 4);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 8), *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *(v4 + 8) = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v8 + 32 != a3);
  }

  LOBYTE(v12) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesItem>,RTCPSDesItem*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesItem>,RTCPSDesItem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesItem>,RTCPSDesItem*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesItem>,RTCPSDesItem*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

void std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<RTCPSDesItem>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<RTCPSDesItem>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<RTCPSDesInfo>::__init_with_size[abi:ne200100]<RTCPSDesInfo*,RTCPSDesInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPSDesInfo>>(result, a4);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPSDesInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesInfo>,RTCPSDesInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesInfo>,RTCPSDesInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesInfo>,RTCPSDesInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      v4 = (v1 - 24);
      std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *ctu::SharedLoggable<QMIRTPCommandDriver,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, NSObject **a2, char *a3, const char **a4)
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

uint64_t ims::SharedLoggable<QMIRTPCommandDriver>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<QMIRTPCommandDriver>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_0,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_0>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDBDB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_0,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_0>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *a2 == 2;
  std::string::basic_string[abi:ne200100]<0>(&v41, "rtp.qmidriver");
  v32[0] = 0;
  v35 = 0;
  v5 = ims::debug(&v41, v32);
  if (!v3)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*v3 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "started", 7);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [instance=", 11);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923350](*(v6 + 8), v2 == 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v35 == 1 && v34 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v42) < 0)
  {
    operator delete(v41);
  }

  v10 = v3[21];
  if (!v10)
  {
    v11 = 0;
LABEL_37:
    v26 = std::string::basic_string[abi:ne200100]<0>(&v45, "rtp.qmidriver");
    LOBYTE(v41) = 0;
    v44 = 0;
    v27 = ims::error(v26, &v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "No controller associated with this command driver!", 50);
    *(v27 + 17) = 0;
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_38;
  }

  v11 = std::__shared_weak_count::lock(v10);
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = v3[20];
  if (!v12)
  {
    goto LABEL_37;
  }

  v13 = *(v12 + 144);
  v14 = (v12 + 152);
  if (v13 != (v12 + 152))
  {
    v15 = 0;
    do
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      if (*(v13 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, v13[4], v13[5]);
      }

      else
      {
        v41 = *(v13 + 2);
        *&v42 = v13[6];
      }

      LODWORD(v43) = *(v13 + 16);
      *(&v42 + 1) = v13[7];
      v16 = HIDWORD(v42);
      v17 = v43;
      if (v43 == v4)
      {
        v15 = HIDWORD(v42);
      }

      if (SBYTE7(v42) < 0)
      {
        operator delete(v41);
      }

      if (v17 == v4)
      {
        if (v16)
        {
          goto LABEL_27;
        }

        goto LABEL_47;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v13[2];
          v20 = *v19 == v13;
          v13 = v19;
        }

        while (!v20);
      }

      v13 = v19;
    }

    while (v19 != v14);
    if (v15)
    {
LABEL_27:
      v21 = std::string::basic_string[abi:ne200100]<0>(&v45, "rtp.qmidriver");
      LOBYTE(v41) = 0;
      v44 = 0;
      v22 = ims::debug(v21, &v41);
      v23 = *(*(*v3 - 8) + 8);
      v24 = strlen((v23 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), v23 & 0x7FFFFFFFFFFFFFFFLL, v24);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "::", 2);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "serviceBindReq", 14);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " [instance=", 11);
      *(v22 + 17) = 0;
      MEMORY[0x1E6923350](*(v22 + 8), v2 == 2);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "]", 1);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      if (v44 == 1 && SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      v39 = 0u;
      v40 = 0u;
      qmi::MutableMessageBase::MutableMessageBase(&v39);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 0x40000000;
      v37[2] = ___ZN19QMIRTPCommandDriver14serviceBindReqEj_block_invoke;
      v37[3] = &__block_descriptor_tmp_13;
      v38 = v4;
      v25 = *(&v39 + 1);
      if (*(&v39 + 1) != v40)
      {
        while (*(*v25 + 8) != 1)
        {
          if (++v25 == v40)
          {
            goto LABEL_51;
          }
        }
      }

      if (v25 != v40)
      {
        v29 = ***v25;
        if (v30)
        {
          ___ZN19QMIRTPCommandDriver14serviceBindReqEj_block_invoke(v37, v30 + 3);
          if (v2 == 2)
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          qmi::ClientRouter::get();
          v36 = v31;
          operator new();
        }

        __cxa_bad_cast();
      }

LABEL_51:
      operator new();
    }
  }

LABEL_47:
  v28 = std::string::basic_string[abi:ne200100]<0>(&v45, "rtp.qmidriver");
  LOBYTE(v41) = 0;
  v44 = 0;
  v27 = ims::error(v28, &v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "QMI client is supposed to start only after VSID is retrieved. Do not proceed with Service Bind request.", 103);
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_38:
  *(v27 + 17) = 0;
  if (v44 == 1 && SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E4F00828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  v46 = *(v44 - 152);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  qmi::ClientRouter::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_0,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_0>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(qmi::SubscriptionType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_1,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_1>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDBE40;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_1,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_1>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 == 2;
  std::string::basic_string[abi:ne200100]<0>(__p, "rtp.qmidriver");
  v27[0] = 0;
  v30 = 0;
  v4 = ims::debug(__p, v27);
  if (!v2)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*v2 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "stopped", 7);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rtp.qmidriver");
  v23[0] = 0;
  v26 = 0;
  v9 = ims::error(__p, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "driver on instance", 18);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), v3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " has stopped!", 13);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v2[21];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = v2[20];
      if (v13)
      {
        std::__list_imp<unsigned long long>::clear(v2 + 14);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v15[0] = &unk_1F5EBDEF8;
        v15[1] = &_bambiDomain;
        v16 = 1073741846;
        v14 = ImsResult::operator<<<char [56]>(v15, "Baseband driver stopped, the baseband probably crashed.");
        ImsResult::ImsResult(__p, v14);
        (*(*v13 + 56))(v13, __p);
        ImsResult::~ImsResult(__p);
        ImsResult::~ImsResult(v15);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_1E4F00D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ImsResult::~ImsResult(&__p);
  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_1,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_1>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_2,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_2>,void ()(qmi::SubscriptionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDBEC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_2,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_2>,void ()(qmi::SubscriptionType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 == 2;
  std::string::basic_string[abi:ne200100]<0>(v15, "rtp.qmidriver");
  v22[0] = 0;
  v25 = 0;
  v4 = ims::error(v15, v22);
  if (!v2)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*v2 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "serverError", 11);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [instance=", 11);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), v3);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v15[0]);
  }

  v9 = v2[21];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = v2[20];
      if (v12)
      {
        v13 = v12[9];
        v14 = v12[10];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRTPError(v13, 3);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        std::__list_imp<unsigned long long>::clear(v2 + 14);
        v18 = 0u;
        v19 = 0u;
        v21 = 0u;
        v20 = 0u;
        v15[0] = &unk_1F5EBDEF8;
        v15[1] = &_bambiDomain;
        v16 = 0x40000000;
        (*(*v12 + 56))(v12, v15);
        ImsResult::~ImsResult(v15);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4F01128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  ImsResult::~ImsResult(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_2,std::allocator<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_2>,void ()(qmi::SubscriptionType)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3 &&,QMIServiceMsg const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EDBF40;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void qmi::ClientRouter::setIndHandler<QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3>(unsigned short,QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3 &&)::{lambda(qmi::SubscriptionType,QMIServiceMsg const&)#1},std::allocator<QMIServiceMsg const&>,void ()(QMIRTPCommandDriver::setMediaServiceIndications(void)::$_3 &&,QMIServiceMsg const)>::operator()(uint64_t a1, int *a2, QMIServiceMsg *this)
{
  v4 = *a2;
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    QMIServiceMsg::serialize(&v55, this);
    qmi::MessageBase::MessageBase(v37, v55);
    qmi::MessageBase::validateMsgId(v37);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  else
  {
    v6 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v37);
  }

  v7 = *(a1 + 8);
  v8 = v4 == 2;
  v9 = std::string::basic_string[abi:ne200100]<0>(&v55, "rtp.qmidriver");
  v39[0] = 0;
  v42 = 0;
  v10 = ims::debug(v9, v39);
  if (!v7)
  {
    __cxa_bad_typeid();
  }

  v11 = v10;
  v12 = *(*(*v7 - 8) + 8);
  v13 = *(v10 + 8);
  v14 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12 & 0x7FFFFFFFFFFFFFFFLL, v14);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "handleServiceInitializeIndication", 33);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [instance=", 11);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923350](*(v11 + 8), v8);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v55);
  }

  if (v38)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "rtp.qmidriver");
    LOBYTE(v55) = 0;
    v59 = 0;
    v15 = ims::error(v47, &v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Error indication for request: ", 30);
    *(v15 + 17) = 0;
    v16 = QMIRTPCommandDriver::nameForRequestId(&v51, v37[0]);
    (*(*v15 + 32))(v15, &v51, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " error:", 7);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923350](*(v15 + 8), v38);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " reason: ", 9);
    *(v15 + 17) = 0;
    v17 = qmi::asString();
    v18 = strlen(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v17, v18);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v51);
    }

    if (v59 == 1 && v58 < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    v19 = v7[21];
    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v7[20];
      if (v21)
      {
        v22 = *(v21 + 72);
        v23 = *(v21 + 80);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRTPError(v22, 24);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_30:
      LODWORD(v20) = 0;
    }
  }

  else
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2000000000;
    v54 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v48 = ___ZN19QMIRTPCommandDriver23getStatusFromIndicationIN2ms17ServiceInitialize10IndicationEEENS1_9RTPStatusERKT__block_invoke;
    v49 = &unk_1E876AF00;
    v50 = &v51;
    v55 = v47;
    qmi::MessageBase::applyTlv<ms::tlv::IndicationStatus,void({block_pointer})(ms::tlv::IndicationStatus)>(v37, &v55);
    if (*(v52 + 6))
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "rtp.qmidriver");
      LOBYTE(v55) = 0;
      v59 = 0;
      v24 = ims::error(v45, &v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Error indication for request: ", 30);
      *(v24 + 17) = 0;
      v25 = QMIRTPCommandDriver::nameForRequestId(v43, v37[0]);
      (*(*v24 + 32))(v24, v43, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " [error=", 8);
      *(v24 + 17) = 0;
      MEMORY[0x1E6923340](*(v24 + 8), *(v52 + 6));
      *(v24 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "]", 1);
      *(v24 + 17) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "rtp.qmidriver");
      LOBYTE(v55) = 0;
      v59 = 0;
      v24 = ims::spam(v45, &v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Success indication for request: ", 32);
      *(v24 + 17) = 0;
      v26 = QMIRTPCommandDriver::nameForRequestId(v43, v37[0]);
      (*(*v24 + 32))(v24, v43, v26);
    }

    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    if (v59 == 1 && v58 < 0)
    {
      operator delete(v57);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    v27 = *(v52 + 6);
    _Block_object_dispose(&v51, 8);
    LODWORD(v20) = v27 == 0;
  }

  v28 = v7[21];
  if (v28)
  {
    v29 = std::__shared_weak_count::lock(v28);
    if (v29)
    {
      v30 = v29;
      v31 = v7[20];
      if (v31)
      {
        v32 = *(v31 + 22);
        if (v32)
        {
          v33 = (v31 + 176);
          do
          {
            v34 = *(v32 + 28);
            v35 = v34 >= v8;
            v36 = v34 < v8;
            if (v35)
            {
              v33 = v32;
            }

            v32 = *(v32 + 8 * v36);
          }

          while (v32);
          if (v33 != (v31 + 176) && *(v33 + 7) <= v8 && *(v33 + 8) == 1)
          {
            QMIRTPStackController::handleStackInitializeResponse(v31, v8, v20);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  qmi::MessageBase::~MessageBase(v37);
}