void CentauriTransport::create(uint64_t *a1@<X0>, ACFULogging *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  v14 = operator new(0x70uLL);
  ACFUTransport::ACFUTransport(v14);
  *v14 = &unk_28561A990;
  v14[24] = 1;
  *(v14 + 4) = 0;
  *(v14 + 10) = 0;
  *(v14 + 6) = 0;
  *(v14 + 36) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 76) = 0x300000000;
  *(v14 + 11) = 0;
  *(v14 + 48) = 256;
  v14[98] = 0;
  *(v14 + 13) = 0;
  *a7 = v14;
  v15 = *a1;
  v16 = a1[1];
  v20[0] = v15;
  v20[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = CentauriTransport::init(v14, v20, a2, a3, a4, a5, a6);
  v18 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v18 & 1) == 0)
  {
    ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage();
    *a7 = 0;
    v19 = *(*v14 + 64);

    v19(v14);
  }
}

void sub_243386DFC(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

void CentauriTransport::CentauriTransport(CentauriTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_28561A990;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 76) = 0x300000000;
  *(v1 + 88) = 0;
  *(v1 + 96) = 256;
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
}

uint64_t CentauriTransport::init(uint64_t a1, uint64_t *a2, ACFULogging *a3, uint64_t a4, char a5, char a6, int a7)
{
  Platform = CentauriTransport::getPlatform(a1);
  *(a1 + 80) = Platform;
  if (Platform == 3)
  {
    CentauriTransport::init(Platform);
    return 0;
  }

  result = CentauriTransport::parseDeviceBootArgs(a1);
  if (!result)
  {
    return result;
  }

  v16 = CentauriTransport::tagForBootMode(a3);
  if (!v16)
  {
    CentauriTransport::init(a3);
    return 0;
  }

  *(a1 + 76) = a3;
  if (a4)
  {
    *(a1 + 88) = a4;
    *(a1 + 96) = 1;
  }

  *(a1 + 97) = a5;
  *(a1 + 98) = a6;
  ACFULogging::getLogInstance(v16);
  v17 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v17);
  CentauriTransport::platformToString(*(a1 + 80), &__p);
  v18 = ACFULogging::handleMessage();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v18);
  v19 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v19);
  v35 = CentauriTransport::kTimeouts[6 * *(a1 + 80)];
  v20 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v20);
  v36 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 1];
  v21 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v21);
  v22 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  *(a1 + 96);
  v23 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v23);
  v37 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3];
  v24 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v24);
  v38 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 4];
  v25 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v25);
  CentauriTransport::bootModeToString(*(a1 + 76), &__p);
  v26 = ACFULogging::handleMessage();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v26);
  *(a1 + 24);
  v27 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v27);
  *(a1 + 96);
  v28 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v28);
  *(a1 + 97);
  v29 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v29);
  *(a1 + 98);
  v30 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v30);
  ACFULogging::handleMessage();
  v31 = a2[1];
  v39 = *a2;
  v40 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = ACFUTransport::init();
  v33 = v40;
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if ((v32 & 1) == 0)
  {
    CentauriTransport::init(v33);
    return 0;
  }

  if (a7)
  {
    MEMORY[0x245D31450](&__block_literal_global);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  *(a1 + 104) = Mutable;
  if (!Mutable)
  {
    CentauriTransport::init(0);
  }

  return 1;
}

void sub_24338729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void CentauriTransport::getBoardParameters(CentauriTransport *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v67 = xmmword_278DB0548;
  v68 = *&off_278DB0558;
  v69 = xmmword_278DB0568;
  *v65 = xmmword_278DB0528;
  v66 = *&off_278DB0538;
  v63 = 0;
  v64 = 0;
  __p = 0;
  v8 = std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(&__p, v65, v70, 0xAuLL);
  *v65 = 0u;
  v66 = 0u;
  *v60 = 0;
  *bytes = 0;
  v59 = 0;
  *v58 = 0;
  *v57 = 0;
  *v56 = 0;
  *v55 = 0;
  v54 = 0;
  ACFULogging::getLogInstance(v8);
  v9 = ACFULogging::handleMessage();
  v10 = *(this + 7);
  if (v10)
  {
    if (!a3 || *(v10 + 80) == 1)
    {
      ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage();
      v14 = 0;
      goto LABEL_28;
    }

    v11 = *(this + 8);
    *(this + 7) = 0;
    *(this + 8) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (a2)
  {
    v12 = CentauriTransport::openInterfaceDriver(this);
    if (v12)
    {
      v13 = CentauriTransport::sendCCHICommand(this, 0, 0, 2u);
      v14 = v13;
      if (v13)
      {
        Length = CFDataGetLength(v13);
        if (Length == 58)
        {
          BytePtr = CFDataGetBytePtr(v14);
          *&v58[2] = *BytePtr;
          v17 = *(BytePtr + 2);
          *v58 = *(BytePtr + 2);
          v18 = *(BytePtr + 44);
          *v60 = *(BytePtr + 4);
          *bytes = v18;
          v56[1] = *(BytePtr + 52);
          v56[0] = *(BytePtr + 53);
          v54 = *(BytePtr + 54);
          v55[1] = *(BytePtr + 55);
          v55[0] = *(BytePtr + 56);
          *v57 = *(BytePtr + 57);
          v19 = *(BytePtr + 28);
          *v65 = *(BytePtr + 12);
          v66 = v19;
LABEL_21:
          if (v17 == 1)
          {
            ACFULogging::getLogInstance(BytePtr);
            ACFULogging::handleMessage();
            *v58 = 3;
          }

          std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> const&,0>(&__p, &v53);
          v24 = v53;
          v53 = 0uLL;
          v25 = *(this + 8);
          *(this + 56) = v24;
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            v25 = *(&v53 + 1);
            if (*(&v53 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
            }

            v26 = *(this + 7);
            if (v26)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v26 = v24;
            if (v24)
            {
LABEL_27:
              v27 = *MEMORY[0x277CBECE8];
              v28 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
              *(v26 + 72) = v28;
              *(v26 + 80) = v28 != 0;
              v29 = *(this + 7);
              v30 = CFDataCreate(v27, v65, 32);
              *(v29 + 56) = v30;
              *(v29 + 64) = v30 != 0;
              v31 = *(this + 7);
              v32 = CFDataCreate(v27, v60, 8);
              *(v31 + 40) = v32;
              *(v31 + 48) = v32 != 0;
              v33 = *(this + 7);
              v34 = CFDataCreate(v27, v58, 2);
              *(v33 + 24) = v34;
              *(v33 + 32) = v34 != 0;
              v35 = *(this + 7);
              v36 = CFDataCreate(v27, &v58[2], 2);
              *(v35 + 8) = v36;
              *(v35 + 16) = v36 != 0;
              v37 = *(this + 7);
              v38 = CFDataCreate(v27, &v56[1], 1);
              *(v37 + 88) = v38;
              *(v37 + 96) = v38 != 0;
              v39 = *(this + 7);
              v40 = CFDataCreate(v27, v56, 1);
              *(v39 + 104) = v40;
              *(v39 + 112) = v40 != 0;
              v41 = *(this + 7);
              v42 = CFDataCreate(v27, &v55[1], 1);
              *(v41 + 136) = v42;
              *(v41 + 144) = v42 != 0;
              v43 = *(this + 7);
              v44 = CFDataCreate(v27, v55, 1);
              *(v43 + 152) = v44;
              *(v43 + 160) = v44 != 0;
              v45 = *(this + 7);
              v46 = CFDataCreate(v27, v57, 2);
              *(v45 + 168) = v46;
              *(v45 + 176) = v46 != 0;
              v47 = *(this + 7);
              v48 = CFDataCreate(v27, &v54, 1);
              *(v47 + 120) = v48;
              *(v47 + 128) = v48 != 0;
              ACFUCommon::PersonalizeParams::logParameters(*(this + 7));
LABEL_28:
              v49 = 0;
              goto LABEL_29;
            }
          }

          ACFULogging::getLogInstance(v25);
          ACFULogging::handleMessage();
          goto LABEL_42;
        }

        ACFULogging::getLogInstance(Length);
        CFDataGetLength(v14);
        ACFULogging::handleMessage();
      }

LABEL_42:
      v49 = 3000;
      goto LABEL_29;
    }

LABEL_39:
    ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage();
    v14 = 0;
    v49 = 3019;
    goto LABEL_29;
  }

  v20 = CentauriTransport::kTimeouts[6 * *(this + 20)];
  v12 = CentauriTransport::openBootDriver(this, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (a3)
  {
    BootNonce = CentauriTransport::generateBootNonce(this);
    if ((BootNonce & 1) == 0)
    {
      ACFULogging::getLogInstance(BootNonce);
      ACFULogging::handleMessage();
      v14 = 0;
      v49 = 3008;
      goto LABEL_29;
    }

    ACFULogging::getLogInstance(BootNonce);
    ACFULogging::handleMessage();
  }

  Register = CentauriTransport::readRegister(this);
  if ((Register & 1) == 0)
  {
    ACFULogging::getLogInstance(Register);
    ACFULogging::handleMessage();
    v14 = 0;
    v49 = 3017;
    goto LABEL_29;
  }

  v23 = CentauriTransport::readRegister(this);
  if (v23)
  {
    BytePtr = CentauriTransport::readRegister(this);
    if (BytePtr)
    {
      BytePtr = CentauriTransport::readRegister(this);
      if (BytePtr)
      {
        *v58 = HIDWORD(v59);
        BytePtr = CentauriTransport::readRegister(this);
        if (BytePtr)
        {
          v14 = 0;
          v55[0] = v59 & 0x7F;
          v55[1] = (v59 >> 7) & 3;
          v56[1] = (v59 & 0x200) != 0;
          v56[0] = (v59 & 0x400) != 0;
          v54 = (v59 & 0x800) != 0;
          v17 = WORD2(v59);
          *v57 = (v59 >> 19) & 0x70 | (v59 >> 20) & 7;
          goto LABEL_21;
        }
      }
    }

    ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage();
    v14 = 0;
    v49 = 3011;
  }

  else
  {
    ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage();
    v14 = 0;
    v49 = 3007;
  }

LABEL_29:
  CentauriTransport::closeBootDriver(this);
  if (v14)
  {
    CFRelease(v14);
  }

  v51 = *(this + 7);
  v50 = *(this + 8);
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  *a4 = v51;
  *(a4 + 8) = v50;
  *(a4 + 16) = v49;
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_2433879A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::openInterfaceDriver(CentauriTransport *this)
{
  v2 = CentauriTransport::kTimeouts[6 * *(this + 20) + 4];
  ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage();
  v4 = *(this + 6);
  ACFULogging::getLogInstance(v3);
  if (v4)
  {
    ACFULogging::handleMessage();
    return 1;
  }

  ACFULogging::handleMessage();
  v5 = airship_ch_interface_create();
  *(this + 6) = v5;
  if (v5)
  {
    v6 = airship_ch_interface_set_ring_sizes();
    ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage();
    v7 = *(this + 6);
    *(this + 98);
    v8 = airship_ch_interface_open();
    ACFULogging::getLogInstance(v8);
    if (!v8)
    {
      ACFULogging::handleMessage();
      *(this + 36) = 0;
      return 1;
    }

    ACFULogging::handleMessage();
  }

  else
  {
    CentauriTransport::openInterfaceDriver(0);
  }

  CentauriTransport::closeInterfaceDriver(this);
  return 0;
}

CFDataRef CentauriTransport::sendCCHICommand(CentauriTransport *this, CFDataRef theData, ACFULogging *a3, unsigned int a4)
{
  v43 = 0;
  if (!*(this + 6))
  {
    CentauriTransport::sendCCHICommand(this);
    goto LABEL_45;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    v9 = Length;
    if (Length >= 1017)
    {
      CentauriTransport::sendCCHICommand(Length);
LABEL_45:
      v35 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x100004077774924uLL);
  v11 = v10;
  if (!v10)
  {
    CentauriTransport::sendCCHICommand(0);
    goto LABEL_45;
  }

  *v10 = v9 + 8;
  v10[2] = a3;
  v12 = v10 + 2;
  v38 = a4;
  v10[3] = a4;
  v13 = v10 + 3;
  v14 = *(this + 72);
  *(this + 72) = v14 + 1;
  v10[4] = v14;
  v15 = v10 + 4;
  if (theData)
  {
    v44.location = 0;
    v44.length = v9;
    CFDataGetBytes(theData, v44, v10 + 8);
  }

  ACFULogging::getLogInstance(v10);
  v16 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v16);
  std::string::basic_string[abi:ne200100]<0>(&v39, "CentauriTransport");
  v17 = std::string::append(&v39, "::", 2uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v40, "sendCCHICommand", 0xFuLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v42 = v19->__r_.__value_.__r.__words[2];
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v21 = *(this + 6);
  v22 = airship_ch_interface_write();
  if (v22)
  {
    CentauriTransport::sendCCHICommand(v22);
    goto LABEL_45;
  }

  v23 = *(this + 6);
  v24 = airship_ch_interface_read();
  if (v24)
  {
    CentauriTransport::sendCCHICommand(v24);
    goto LABEL_45;
  }

  v25 = v43;
  ACFULogging::getLogInstance(v24);
  if (v25 >= 0x401)
  {
LABEL_40:
    ACFULogging::handleMessage();
    goto LABEL_45;
  }

  v26 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v26);
  std::string::basic_string[abi:ne200100]<0>(&v39, "CentauriTransport");
  v27 = std::string::append(&v39, "::", 2uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v40, "sendCCHICommand", 0xFuLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v42 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v25 <= 7)
  {
    CentauriTransport::sendCCHICommand(v25);
    goto LABEL_45;
  }

  if (v25 != *v11)
  {
    ACFULogging::getLogInstance(v31);
    v37 = *v11;
    goto LABEL_40;
  }

  v32 = *v15;
  v34 = *(this + 73);
  v33 = this + 73;
  if (v32 != v34)
  {
    CentauriTransport::sendCCHICommand((v11 + 4), v33);
    goto LABEL_45;
  }

  *v33 = v32 + 1;
  if (*v12 != a3)
  {
    CentauriTransport::sendCCHICommand(a3, v11 + 2);
    goto LABEL_45;
  }

  if (*v13 != v38)
  {
    CentauriTransport::sendCCHICommand(v38, v11 + 3);
    goto LABEL_45;
  }

  if (v11[5])
  {
    CentauriTransport::sendCCHICommand((v11 + 5));
    goto LABEL_45;
  }

  v35 = CFDataCreate(*MEMORY[0x277CBECE8], v11 + 8, v25 - 8);
  if (!v35)
  {
    CentauriTransport::sendCCHICommand(0);
  }

LABEL_32:
  AMSupportSafeFree();
  return v35;
}

void sub_243387F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::openBootDriver(uint64_t a1, int a2)
{
  CentauriTransport::bootStageToString(a2, &__p);
  ACFULogging::getLogInstance(v4);
  v5 = ACFULogging::handleMessage();
  if (*(a1 + 32))
  {
    if (*(a1 + 40) == a2)
    {
      goto LABEL_6;
    }

    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
    *(a1 + 40) = a2;
    v6 = airship_ch_boot_create();
    *(a1 + 32) = v6;
    if (v6)
    {
      ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage();
      v7 = *(a1 + 32);
      v5 = airship_ch_boot_open();
      if (!v5)
      {
LABEL_6:
        ACFULogging::getLogInstance(v5);
        ACFULogging::handleMessage();
        v8 = 1;
        goto LABEL_7;
      }

      ACFULogging::getLogInstance(v5);
    }

    else
    {
      ACFULogging::getLogInstance(0);
    }

    ACFULogging::handleMessage();
    CentauriTransport::closeBootDriver(a1);
  }

  v8 = 0;
LABEL_7:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_243388184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::generateBootNonce(CentauriTransport *this)
{
  v2 = CentauriTransport::writeRegister(this);
  if (v2)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    Register = CentauriTransport::readRegister(this);
    if (Register)
    {
      CentauriTransport::generateBootNonce(1);
    }

    else
    {
      CentauriTransport::generateBootNonce(Register);
    }
  }

  else
  {
    CentauriTransport::generateBootNonce(v2);
  }

  return 0;
}

uint64_t CentauriTransport::readRegister(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = airship_ch_boot_read_register();
    if (!v1)
    {
      return 1;
    }

    ACFULogging::getLogInstance(v1);
    ACFULogging::handleMessage();
  }

  else
  {
    CentauriTransport::readRegister(0);
  }

  return 0;
}

void *CentauriTransport::closeBootDriver(void *this)
{
  if (this[4])
  {
    v1 = this;
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    MEMORY[0x245D31AA0](v1[4]);
    v2 = v1[4];
    v3 = airship_ch_boot_destroy();
    v1[4] = 0;
    ACFULogging::getLogInstance(v3);
    return ACFULogging::handleMessage();
  }

  return this;
}

uint64_t CentauriTransport::pushFirmware(uint64_t a1, uint64_t a2)
{
  CentauriCommon::getTatsuTagToFileNameMap(v47);
  memset(v46, 0, sizeof(v46));
  ACFULogging::getLogInstance(v4);
  CentauriTransport::bootModeToString(*(a1 + 76), &__p);
  ACFULogging::handleMessage();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  if (!*a2 || (v6 = **v5, (v5 = __dynamic_cast(v5, MEMORY[0x277CECFB8], MEMORY[0x277CECFC0], 0)) == 0))
  {
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
LABEL_26:
    v25 = 3012;
    goto LABEL_53;
  }

  v7 = v5;
  v44 = CentauriTransport::tagForBootMode(*(a1 + 76));
  if (!v44)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_26;
  }

  v8 = std::map<__CFString const*,std::string>::at(v47, &v44);
  v9 = (*(*v7 + 40))(v7, v8);
  if (!v9)
  {
    ACFULogging::getLogInstance(v9);
    CentauriTransport::bootModeToString(*(a1 + 76), &__p);
    ACFUCommon::stringFromCFString(&v42, v44, v38);
    ACFULogging::handleMessage();
    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_26;
  }

  PlatformIdentifier = CentauriPlatform::getPlatformIdentifier(v9, v10, v11);
  v13 = PlatformIdentifier;
  if (!PlatformIdentifier)
  {
    goto LABEL_62;
  }

  CentauriTransport::setBootTimestamp(a1, "openROMStart");
  v14 = CentauriTransport::kTimeouts[6 * *(a1 + 80)];
  if (!CentauriTransport::openBootDriver(a1, 0))
  {
    goto LABEL_54;
  }

  CentauriTransport::setBootTimestamp(a1, "openROMEnd");
  v15 = CentauriTransport::bootFlagsForBootMode(*(a1 + 76));
  if (!CentauriTransport::setBootFlags(a1, v15))
  {
    v25 = 3010;
    goto LABEL_53;
  }

  PlatformIdentifier = CentauriTransport::setHostPlatformIdentifier(a1, v13);
  if ((PlatformIdentifier & 1) == 0)
  {
LABEL_62:
    ACFULogging::getLogInstance(PlatformIdentifier);
    ACFULogging::handleMessage();
LABEL_63:
    v25 = 3000;
    goto LABEL_53;
  }

  CentauriTransport::setBootTimestamp(a1, "firstSendImageStart");
  v16 = *(a2 + 8);
  v41[0] = *a2;
  v41[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 1];
  v18 = CentauriTransport::sendImage(a1, v41);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v18 & 1) == 0)
  {
    v25 = 3026;
    goto LABEL_53;
  }

  CentauriTransport::setBootTimestamp(a1, "firstSendImageEnd");
  CentauriTransport::closeBootDriver(a1);
  if (*(a1 + 24) != 1)
  {
    v25 = 0;
    goto LABEL_53;
  }

  CentauriTransport::setBootTimestamp(a1, "openSecondStageStart");
  v19 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  if (!*(a1 + 96))
  {
    v20 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  }

  if (*(a1 + 76) == 1)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if ((CentauriTransport::openBootDriver(a1, v21) & 1) == 0)
  {
LABEL_54:
    v25 = 3019;
    goto LABEL_53;
  }

  CentauriTransport::setBootTimestamp(a1, "openSecondStageEnd");
  if (*(a1 + 76))
  {
    SecondaryFtab = 0;
    v24 = 0;
    goto LABEL_34;
  }

  ACFULogging::getLogInstance(v22);
  ACFULogging::handleMessage();
  v26 = *a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "2ftb");
  v27 = ACFUFirmware::copyFWDataByFileName();
  v24 = v27;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v24)
  {
    ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage();
    goto LABEL_63;
  }

  v28 = CFGetTypeID(v24);
  TypeID = CFDataGetTypeID();
  if (v28 != TypeID)
  {
    ACFULogging::getLogInstance(TypeID);
    v39 = CFGetTypeID(v24);
    ACFUCommon::cfTypeDescription(v39);
    ACFULogging::handleMessage();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_73;
  }

  v30 = CentauriTransport::openControlDriver(a1);
  if ((v30 & 1) == 0)
  {
    ACFULogging::getLogInstance(v30);
LABEL_72:
    ACFULogging::handleMessage();
LABEL_73:
    v25 = 3000;
LABEL_52:
    CFRelease(v24);
    goto LABEL_53;
  }

  SecondaryFtab = CentauriTransport::createSecondaryFtab(a1, v24, v46);
  if (!SecondaryFtab)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_72;
  }

LABEL_34:
  CentauriTransport::setBootTimestamp(a1, "secondSendImageStart");
  if (*(a1 + 98))
  {
    v31 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3] + 8000;
  }

  else
  {
    v31 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3];
  }

  v32 = *a2;
  v33 = *(a2 + 8);
  v40[0] = v32;
  v40[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
  }

  v34 = CentauriTransport::sendImage(a1, v40);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v34)
  {
    CentauriTransport::setBootTimestamp(a1, "secondSendImageEnd");
    CentauriTransport::closeBootDriver(a1);
    if (*(a1 + 76))
    {
LABEL_48:
      v25 = 0;
      goto LABEL_49;
    }

    BytePtr = CFDataGetBytePtr(v24);
    Length = CFDataGetLength(v24);
    if (BytePtr)
    {
      if (Length > 0)
      {
        Length = memcmp(BytePtr, SecondaryFtab, Length);
        if (!Length)
        {
          CentauriTransport::setBootTimestamp(a1, "memswapHandOffStart");
          Length = CentauriTransport::handOffMemswapRegions(a1);
          if (Length)
          {
            CentauriTransport::setBootTimestamp(a1, "memswapHandOffEnd");
            goto LABEL_48;
          }
        }
      }
    }

    ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage();
    v25 = 3000;
  }

  else
  {
    v25 = 3027;
  }

LABEL_49:
  if (SecondaryFtab)
  {
    CentauriTransport::destroySecondaryFtab(a1, SecondaryFtab);
  }

  if (v24)
  {
    goto LABEL_52;
  }

LABEL_53:
  CentauriTransport::closeBootDriver(a1);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v47, v48);
  return v25;
}

void sub_2433889D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v30 - 88, *(v30 - 80));
  _Unwind_Resume(a1);
}

void CentauriTransport::bootModeToString(int a1@<W0>, std::string *a2@<X8>)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = 0;
  std::string::basic_string[abi:ne200100]<0>(v14, "normal");
  v15 = 1;
  std::string::basic_string[abi:ne200100]<0>(v16, "low power");
  v17 = 2;
  std::string::basic_string[abi:ne200100]<0>(v18, "remote");
  std::map<CentauriTransport::BootMode,std::string>::map[abi:ne200100](v10, &v13, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v18[i + 2]) < 0)
    {
      operator delete(v18[i]);
    }
  }

  v5 = v11[0];
  if (!v11[0])
  {
    goto LABEL_12;
  }

  v6 = v11;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v11 && *(v6 + 8) <= a1)
  {
    v8 = std::map<CentauriTransport::BootMode,std::string>::at(v10, &v12);
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      a2->__r_.__value_.__r.__words[2] = v8[2];
      *&a2->__r_.__value_.__l.__data_ = v9;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v10, v11[0]);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_243388BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CentauriTransport::tagForBootMode(int a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11[0] = xmmword_278DB05B0;
  v11[1] = unk_278DB05C0;
  v11[2] = xmmword_278DB05D0;
  std::map<CentauriTransport::BootMode,__CFString const*>::map[abi:ne200100](v8, v11, 3);
  v2 = v9[0];
  if (!v9[0])
  {
    goto LABEL_8;
  }

  v3 = v9;
  v4 = v9[0];
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v3 != v9 && *(v3 + 8) <= a1)
  {
    v5 = *std::map<CentauriTransport::BootMode,std::string>::at(v8, &v10);
    v2 = v9[0];
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(v8, v2);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void CentauriTransport::setBootTimestamp(CFMutableDictionaryRef *this, const char *a2)
{
  valuePtr = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CFDictionaryAddValue(this[13], v4, v5);
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
LABEL_6:
    CFRelease(v4);
    goto LABEL_7;
  }

  ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage();
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1, int a2)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  v3 = CentauriTransport::writeRegister(a1);
  if ((v3 & 1) == 0)
  {
    CentauriTransport::setBootFlags(v3);
    return 0;
  }

  Register = CentauriTransport::readRegister(a1);
  if ((Register & 1) == 0)
  {
    CentauriTransport::setBootFlags(Register);
    return 0;
  }

  ACFULogging::getLogInstance(Register);
  if (a2)
  {
    ACFULogging::handleMessage();
    return 0;
  }

  ACFULogging::handleMessage();
  return 1;
}

uint64_t CentauriTransport::bootFlagsForBootMode(int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = xmmword_24339A5C8;
  v12 = 0x100000002;
  std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::map[abi:ne200100](v8, &v11, 3);
  v2 = v9[0];
  if (!v9[0])
  {
    goto LABEL_8;
  }

  v3 = v9;
  v4 = v9[0];
  do
  {
    if (*(v4 + 28) >= a1)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a1));
  }

  while (v4);
  if (v3 != v9 && *(v3 + 7) <= a1)
  {
    v5 = *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(v8, &v10);
    v2 = v9[0];
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(v8, v2);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t CentauriTransport::setHostPlatformIdentifier(CentauriTransport *this, int a2)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v3 = CentauriTransport::writeRegister(this);
  if ((v3 & 1) == 0)
  {
    CentauriTransport::setHostPlatformIdentifier(v3);
    return 0;
  }

  Register = CentauriTransport::readRegister(this);
  if ((Register & 1) == 0)
  {
    CentauriTransport::setHostPlatformIdentifier(Register);
    return 0;
  }

  ACFULogging::getLogInstance(Register);
  if (a2)
  {
    ACFULogging::handleMessage();
    return 0;
  }

  ACFULogging::handleMessage();
  return 1;
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1, ACFUFirmware **a2)
{
  ACFULogging::getLogInstance(a1);
  v4 = ACFULogging::handleMessage();
  if (!*(a1 + 4))
  {
    CentauriTransport::sendImage(v4);
    return 0;
  }

  v5 = ACFUFirmware::copyFWContainer(*a2);
  if (!v5)
  {
    CentauriTransport::sendImage(0);
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  TypeID = CFDataGetTypeID();
  if (v7 != TypeID)
  {
    CentauriTransport::sendImage(TypeID);
LABEL_19:
    v20 = 0;
    goto LABEL_11;
  }

  Length = CFDataGetLength(v6);
  v10 = Length;
  if (!Length)
  {
    CentauriTransport::sendImage(Length);
    goto LABEL_19;
  }

  v11 = (Length + 4095) & 0xFFFFF000;
  ACFULogging::getLogInstance(Length);
  ACFULogging::handleMessage();
  v12 = airship_ch_boot_image_buffer_create();
  if (!v12)
  {
    CentauriTransport::sendImage(0);
    goto LABEL_19;
  }

  v13 = v12;
  size = airship_ch_boot_image_buffer_get_size();
  ACFULogging::getLogInstance(size);
  if (size < v11)
  {
    goto LABEL_22;
  }

  ACFULogging::handleMessage();
  v15 = MEMORY[0x245D31AF0](v13);
  if (!v15)
  {
    CentauriTransport::sendImage(0);
LABEL_23:
    v20 = 0;
    goto LABEL_10;
  }

  v16 = v15;
  v22.length = v10;
  v22.location = 0;
  CFDataGetBytes(v6, v22, v15);
  bzero(&v16[v10], size - v10);
  ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage();
  v18 = *(a1 + 4);
  v19 = airship_ch_boot_send_image();
  ACFULogging::getLogInstance(v19);
  if (v19)
  {
LABEL_22:
    ACFULogging::handleMessage();
    goto LABEL_23;
  }

  ACFULogging::handleMessage();
  v20 = 1;
LABEL_10:
  airship_ch_boot_image_buffer_destroy();
LABEL_11:
  CFRelease(v6);
  return v20;
}

uint64_t CentauriTransport::getSecondStageOpenTimeout(CentauriTransport *this)
{
  if (*(this + 96))
  {
    return CentauriTransport::kTimeouts[6 * *(this + 20) + 2] + 65000;
  }

  else
  {
    return CentauriTransport::kTimeouts[6 * *(this + 20) + 2];
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t CentauriTransport::openControlDriver(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  if (*(this + 11))
  {
    CentauriTransport::openControlDriver(v2);
    return 1;
  }

  v3 = CentauriControllerCreateWithParameters();
  if (!v3 && *(this + 11))
  {
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    return 1;
  }

  CentauriTransport::openControlDriver(v3, this);
  return 0;
}

UInt8 *CentauriTransport::createSecondaryFtab(ACFULogging *a1, ACFUFTABFile *a2, uint64_t *a3)
{
  buffer = 0;
  v45 = 0;
  if (a3)
  {
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
  }

  ACFULogging::getLogInstance(a1);
  v6 = ACFULogging::handleMessage();
  if (!*(a1 + 11) || !a2 || !a3)
  {
    ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage();
    if (!a3)
    {
      return 0;
    }

LABEL_44:
    v32 = 0;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    return v32;
  }

  v8 = ACFUFTABFile::createFromHeader(__p, a2, v7);
  v9 = __p[0];
  if (!__p[0])
  {
    CentauriTransport::createSecondaryFtab(v8);
    goto LABEL_44;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswc");
  FileOffsetByFileName = ACFUFTABFile::getFileOffsetByFileName();
  v11 = v43;
  v12 = v44;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswc");
  FileOffsetByFileName = (*(*v9 + 32))(v9, __p);
  v13 = FileOffsetByFileName;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v13)
  {
    goto LABEL_45;
  }

  *a3 = v11;
  *(a3 + 2) = v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "msww");
  FileOffsetByFileName = ACFUFTABFile::getFileOffsetByFileName();
  v14 = v43;
  v15 = v44;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "msww");
  FileOffsetByFileName = (*(*v9 + 32))(v9, __p);
  v16 = FileOffsetByFileName;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v16)
  {
    goto LABEL_45;
  }

  a3[2] = v14;
  *(a3 + 6) = v16;
  std::string::basic_string[abi:ne200100]<0>(__p, "mswb");
  FileOffsetByFileName = ACFUFTABFile::getFileOffsetByFileName();
  v17 = v43;
  v18 = v44;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswb");
  FileOffsetByFileName = (*(*v9 + 32))(v9, __p);
  v19 = FileOffsetByFileName;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v19)
  {
LABEL_45:
    ACFULogging::getLogInstance(FileOffsetByFileName);
    ACFULogging::handleMessage();
    v32 = 0;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    goto LABEL_35;
  }

  a3[4] = v17;
  *(a3 + 10) = v19;
  ACFULogging::getLogInstance(FileOffsetByFileName);
  v20 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v20);
  v35 = *a3;
  v38 = *(a3 + 2);
  v21 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v21);
  v36 = a3[2];
  v39 = *(a3 + 6);
  v22 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v22);
  v37 = a3[4];
  v40 = *(a3 + 10);
  ACFULogging::handleMessage();
  TypeID = (*(*v9 + 40))(v9);
  v24 = TypeID;
  if (TypeID && (v25 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v25 == TypeID))
  {
    Length = CFDataGetLength(v24);
    v27 = Length;
    if (Length <= 0 || HIDWORD(Length) || (ACFULogging::getLogInstance(Length), ACFULogging::handleMessage(), v28 = *(a1 + 11), Length = CentauriControllerAllocateSecondaryMemory(), Length))
    {
      ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage();
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
    }

    else
    {
      v29 = *(a1 + 11);
      v30 = CentauriControllerMapSecondaryMemory();
      if (!v30 && buffer && v27 == v45)
      {
        v47.length = CFDataGetLength(v24);
        v47.location = 0;
        CFDataGetBytes(v24, v47, buffer);
        ACFULogging::getLogInstance(v31);
        ACFULogging::handleMessage();
      }

      else
      {
        ACFULogging::getLogInstance(v30);
        ACFULogging::handleMessage();
        v34 = buffer;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *(a3 + 2) = 0u;
        if (v34)
        {
          CentauriTransport::destroySecondaryFtab(a1, v34);
          buffer = 0;
        }
      }
    }
  }

  else
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    if (!v24)
    {
      v32 = 0;
      goto LABEL_35;
    }
  }

  CFRelease(v24);
  v32 = buffer;
LABEL_35:
  (*(*v9 + 56))(v9);
  return v32;
}

void sub_243389B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  (*(*v18 + 56))(v18);
  _Unwind_Resume(a1);
}

uint64_t CentauriTransport::handOffMemswapRegions(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  if (*(a1 + 11))
  {
    v2 = CentauriControllerSetMemSwapRegions();
    ACFULogging::getLogInstance(v2);
    if (!v2)
    {
      ACFULogging::handleMessage();
      return 1;
    }

    ACFULogging::handleMessage();
  }

  else
  {
    CentauriTransport::handOffMemswapRegions(0);
  }

  return 0;
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

ACFULogging *CentauriTransport::destroySecondaryFtab(CentauriTransport *this, unsigned __int8 *a2)
{
  if (!*(this + 11))
  {
    return CentauriTransport::destroySecondaryFtab(0);
  }

  result = CentauriControllerUnmapSecondaryMemory();
  if (result)
  {
    return CentauriTransport::destroySecondaryFtab(result);
  }

  return result;
}

uint64_t CentauriTransport::reset(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  if (*(this + 20))
  {
    CentauriTransport::reset(v2);
    return 0;
  }

  v3 = CentauriTransport::openControlDriver(this);
  if (v3)
  {
    v4 = *(this + 11);
    v5 = CentauriControllerReset();
    ACFULogging::getLogInstance(v5);
    if (!v5)
    {
      ACFULogging::handleMessage();
      return 0;
    }

    ACFULogging::handleMessage();
  }

  else
  {
    CentauriTransport::reset(v3);
  }

  return 3014;
}

uint64_t CentauriTransport::pingCheck(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  v2 = ACFULogging::handleMessage();
  if ((*(this + 24) & 1) == 0)
  {
    CentauriTransport::pingCheck(v2);
    return 0;
  }

  CentauriTransport::setBootTimestamp(this, "openCCHIStart");
  v3 = CentauriTransport::openInterfaceDriver(this);
  if ((v3 & 1) == 0)
  {
    CentauriTransport::pingCheck(v3);
    return 3003;
  }

  CentauriTransport::setBootTimestamp(this, "openCCHIEnd");
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFDataCreate(*MEMORY[0x277CBECE8], "CentauriTransport", 18);
  if (!v5)
  {
    CentauriTransport::pingCheck(0);
    return 3003;
  }

  v6 = v5;
  CentauriTransport::setBootTimestamp(this, "ccpuPingStart");
  v7 = CentauriTransport::sendCCHICommand(this, v6, 0, 0);
  if (!v7)
  {
    CFRelease(v6);
    return 3003;
  }

  v8 = v7;
  Length = CFDataGetLength(v7);
  if (Length <= 0)
  {
    CentauriTransport::pingCheck(Length);
    v12 = 0;
  }

  else
  {
    CentauriTransport::setBootTimestamp(this, "ccpuPingEnd");
    BytePtr = CFDataGetBytePtr(v8);
    v11 = CFDataGetLength(v8);
    v12 = CFStringCreateWithBytes(v4, BytePtr, v11, 0x8000100u, 0);
    ACFULogging::getLogInstance(v12);
    if (v12)
    {
      ACFUCommon::stringFromCFString(&__p, v12, v13);
      ACFULogging::handleMessage();
      if (v17 < 0)
      {
        operator delete(__p);
      }

      v14 = 0;
      goto LABEL_10;
    }

    ACFULogging::handleMessage();
  }

  v14 = 3003;
LABEL_10:
  CFRelease(v6);
  CFRelease(v8);
  if (v12)
  {
    CFRelease(v12);
  }

  return v14;
}

void sub_243389FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::getDebugInfo(uint64_t a1)
{
  ACFULogging::getLogInstance(a1);
  v2 = ACFULogging::handleMessage();
  if ((*(a1 + 97) & 1) == 0)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    return 0;
  }

  v3 = CentauriTransport::openControlDriver(a1);
  if ((v3 & 1) == 0)
  {
    CentauriTransport::getDebugInfo(v3);
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = CentauriControllerCollectLogsWithOptions();
  if (v5)
  {
    CentauriTransport::getDebugInfo(v5);
    return 1;
  }

  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  v6 = *(a1 + 88);
  Crashlogs = CentauriControllerGetCrashlogs();
  if (Crashlogs != -536870160)
  {
    if (Crashlogs)
    {
      ACFULogging::getLogInstance(Crashlogs);
      ACFULogging::handleMessage();
    }

    else
    {
      CentauriTransport::getDebugInfo(Crashlogs);
    }

    return 1;
  }

  ACFULogging::getLogInstance(Crashlogs);
  ACFULogging::handleMessage();
  return 0;
}

void CentauriTransport::parseCrashlogs(CentauriTransport *this, CFArrayRef theArray)
{
  v65[3] = *MEMORY[0x277D85DE8];
  v65[0] = "Crashlog.CTRL.bin";
  v65[1] = "Crashlog.WFMAIN.bin";
  v65[2] = "Crashlog.BTMAIN.bin";
  valuePtr = 0;
  memset(&v63, 0, sizeof(v63));
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_88;
  }

  v55 = Count;
  v3 = 0;
  v4 = 0;
  v58 = 0;
  v59 = 0;
  alloc = *MEMORY[0x277CBECE8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
    v6 = ValueAtIndex;
    if (!ValueAtIndex)
    {
LABEL_67:
      ACFULogging::getLogInstance(0);
LABEL_71:
      ACFULogging::handleMessage();
      goto LABEL_59;
    }

    v7 = CFGetTypeID(ValueAtIndex);
    TypeID = CFDictionaryGetTypeID();
    if (v7 != TypeID)
    {
      goto LABEL_70;
    }

    v9 = v59;
    if (v59 || (v9 = CFStringCreateWithCString(alloc, "Metadata", 0x8000100u)) != 0)
    {
      v59 = v9;
      Value = CFDictionaryGetValue(v6, v9);
      v11 = Value;
      if (!Value)
      {
        goto LABEL_67;
      }

      v12 = CFGetTypeID(Value);
      TypeID = CFDictionaryGetTypeID();
      if (v12 != TypeID)
      {
        goto LABEL_70;
      }

      v13 = v58;
      if (v58 || (v13 = CFStringCreateWithCString(alloc, "SubsystemID", 0x8000100u)) != 0)
      {
        v58 = v13;
        v14 = CFDictionaryGetValue(v11, v13);
        v15 = v14;
        if (!v14)
        {
          goto LABEL_67;
        }

        v16 = CFGetTypeID(v14);
        TypeID = CFNumberGetTypeID();
        if (v16 != TypeID || (TypeID = CFNumberGetValue(v15, kCFNumberIntType, &valuePtr), !TypeID))
        {
LABEL_70:
          ACFULogging::getLogInstance(TypeID);
          goto LABEL_71;
        }

        v17 = valuePtr;
        if (valuePtr >= 3)
        {
          ACFULogging::getLogInstance(TypeID);
          ACFULogging::handleMessage();
        }

        else
        {
          if (v4)
          {
            CFRelease(v4);
            v17 = valuePtr;
          }

          v4 = CFStringCreateWithCString(alloc, v65[v17], 0x8000100u);
          if (v4)
          {
            v18 = CFDictionaryGetValue(v6, v4);
            v19 = v18;
            if (!v18)
            {
              goto LABEL_74;
            }

            v20 = CFGetTypeID(v18);
            Length = CFDataGetTypeID();
            if (v20 != Length)
            {
              goto LABEL_79;
            }

            Length = CFDataGetLength(v19);
            v22 = Length;
            if (Length <= 0)
            {
              goto LABEL_79;
            }

            if (Length > 0x50)
            {
              Length = CFDataGetBytePtr(v19);
              v23 = Length;
              if (Length)
              {
                if (*Length == 1129072709)
                {
                  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v63.__r_.__value_.__l.__size_ = 0;
                    v24 = v63.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    *(&v63.__r_.__value_.__s + 23) = 0;
                    v24 = &v63;
                  }

                  v24->__r_.__value_.__s.__data_[0] = 0;
                  v25 = 32;
                  while (2)
                  {
                    v26 = v23 + v25;
                    v27 = *(v23 + v25 + 12);
                    if (v27 <= 0xF)
                    {
                      ACFULogging::getLogInstance(Length);
                      v41 = (&off_278DB0598)[valuePtr];
                      v47 = v65[valuePtr];
                      ACFULogging::handleMessage();
                      goto LABEL_59;
                    }

                    if (*v26 == 1131639922)
                    {
                      if (*(v26 + 2) != 257)
                      {
                        ACFULogging::getLogInstance(Length);
                        v53 = *(v26 + 2);
                        v48 = v65[valuePtr];
                        v42 = (&off_278DB0598)[valuePtr];
                        ACFULogging::handleMessage();
                        goto LABEL_59;
                      }

                      if (v25 + v27 + 32 > v22)
                      {
                        ACFULogging::getLogInstance(Length);
                        v54 = *(v26 + 3);
                        v49 = v65[valuePtr];
                        v43 = (&off_278DB0598)[valuePtr];
                        ACFULogging::handleMessage();
                        goto LABEL_59;
                      }

                      if (v27 <= 0x14)
                      {
                        ACFULogging::getLogInstance(Length);
                        v50 = v65[valuePtr];
                        v52 = *(v26 + 3);
                        v44 = (&off_278DB0598)[valuePtr];
                        ACFULogging::handleMessage();
                        goto LABEL_59;
                      }

                      if (v26[16])
                      {
                        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
                        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          size = v63.__r_.__value_.__l.__size_;
                        }

                        if (size)
                        {
                          std::string::append(&v63, "-", 1uLL);
                          v27 = *(v26 + 3);
                        }

                        v29 = v27 - 20;
                        if ((v27 - 20) >= 0x7FFFFFFFFFFFFFF8)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        if (v29 >= 0x17)
                        {
                          if ((v29 | 7) == 0x17)
                          {
                            v31 = 25;
                          }

                          else
                          {
                            v31 = (v29 | 7) + 1;
                          }

                          p_dst = operator new(v31);
                          v61 = v29;
                          v62 = v31 | 0x8000000000000000;
                          __dst = p_dst;
                        }

                        else
                        {
                          HIBYTE(v62) = v27 - 20;
                          p_dst = &__dst;
                          if (v27 == 20)
                          {
LABEL_47:
                            *(p_dst + v29) = 0;
                            if (v62 >= 0)
                            {
                              v32 = &__dst;
                            }

                            else
                            {
                              v32 = __dst;
                            }

                            if (v62 >= 0)
                            {
                              v33 = HIBYTE(v62);
                            }

                            else
                            {
                              v33 = v61;
                            }

                            Length = std::string::append(&v63, v32, v33);
                            if (SHIBYTE(v62) < 0)
                            {
                              operator delete(__dst);
                            }

                            v27 = *(v26 + 3);
                            goto LABEL_56;
                          }
                        }

                        memmove(p_dst, v26 + 20, v29);
                        goto LABEL_47;
                      }
                    }

LABEL_56:
                    v25 += v27;
                    if (v25 + 48 >= v22)
                    {
                      ACFULogging::getLogInstance(Length);
                      v34 = &(&off_278DB0598)[valuePtr];
                      goto LABEL_58;
                    }

                    continue;
                  }
                }

LABEL_79:
                ACFULogging::getLogInstance(Length);
                v34 = &(&off_278DB0598)[valuePtr];
                v36 = v65[valuePtr];
              }

              else
              {
LABEL_74:
                ACFULogging::getLogInstance(0);
                v34 = &(&off_278DB0598)[valuePtr];
                v35 = v65[valuePtr];
              }

LABEL_58:
              v40 = *v34;
              ACFULogging::handleMessage();
              goto LABEL_59;
            }

            ACFULogging::getLogInstance(Length);
            v51 = v65[valuePtr];
            v46 = (&off_278DB0598)[valuePtr];
            ACFULogging::handleMessage();
          }

          else
          {
            ACFULogging::getLogInstance(0);
            v45 = (&off_278DB0598)[valuePtr];
            ACFULogging::handleMessage();
            v4 = 0;
          }
        }
      }

      else
      {
        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
        v58 = 0;
      }
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v59 = 0;
    }

LABEL_59:
    ++v3;
  }

  while (v3 != v55);
  v38 = v58;
  v37 = v59;
  if (v4)
  {
    CFRelease(v4);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

LABEL_88:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_24338A998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFData *CentauriTransport::runCertification@<X0>(CentauriTransport *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    result = CentauriTransport::copySiKPublicKey(a1);
  }

  else if (a2)
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    result = 0;
  }

  else
  {
    result = CentauriTransport::copySiKCertificateSigningRequest(a1);
  }

  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1011;
  }

  *a3 = result;
  *(a3 + 8) = v5;
  return result;
}

const __CFData *CentauriTransport::copySiKPublicKey(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = CentauriTransport::openInterfaceDriver(this);
  if ((v2 & 1) == 0)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    return 0;
  }

  v3 = CentauriTransport::sendCCHICommand(this, 0, 0, 5u);
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  Length = CFDataGetLength(v3);
  if (Length <= 0)
  {
    ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage();
    CFRelease(v4);
    return 0;
  }

  v6 = ACFUCommon::hexStringFromCFData(v4, 0);
  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  if (v9 < 0)
  {
    operator delete(v8);
  }

  return v4;
}

void sub_24338ABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriTransport::sendBootTimestamps(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = *(this + 13);
  v3 = CentauriControllerSendBootTimestamps();
  v4 = v3;
  if (v3)
  {
    CentauriTransport::sendBootTimestamps(v3);
  }

  return v4 == 0;
}

void CentauriTransport::~CentauriTransport(CentauriTransport *this)
{
  *this = &unk_28561A990;
  CentauriTransport::closeInterfaceDriver(this);
  CentauriTransport::closeBootDriver(this);
  CentauriTransport::closeControlDriver(this);
  v2 = *(this + 13);
  if (v2)
  {
    CFRelease(v2);
    *(this + 13) = 0;
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x28213EBC8](this);
}

{
  CentauriTransport::~CentauriTransport(this);

  operator delete(v1);
}

void *CentauriTransport::closeInterfaceDriver(void *this)
{
  if (this[6])
  {
    v1 = this;
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    MEMORY[0x245D31B50](v1[6]);
    v2 = v1[6];
    v3 = airship_ch_interface_destroy();
    v1[6] = 0;
    ACFULogging::getLogInstance(v3);
    return ACFULogging::handleMessage();
  }

  return this;
}

uint64_t CentauriTransport::closeControlDriver(uint64_t this)
{
  if (*(this + 88))
  {
    v1 = this;
    if ((*(this + 96) & 1) == 0)
    {
      ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage();
      v2 = *(v1 + 88);
      this = CentauriControllerFree();
      *(v1 + 88) = 0;
    }
  }

  return this;
}

uint64_t CentauriTransport::getPlatform(CentauriTransport *this)
{
  data_np = sysctlbyname_get_data_np();
  ACFULogging::getLogInstance(data_np);
  ACFULogging::handleMessage();
  return 3;
}

uint64_t CentauriTransport::parseDeviceBootArgs(CentauriTransport *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  data_np = sysctlbyname_get_data_np();
  if (data_np)
  {
    v2 = 1;
  }

  else
  {
    v2 = v49 == 0;
  }

  v3 = !v2;
  v37 = v3;
  if (v2)
  {
    ACFULogging::getLogInstance(data_np);
    v12 = 0;
    v39 = 0;
    v11 = 0;
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(data_np);
    ACFULogging::handleMessage();
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v49, "CentauriTransport", "parseDeviceBootArgs", v49}];
    v5 = [v4 componentsSeparatedByString:@" "];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v6 = v5;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v8)
    {
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v7 |= [*(*(&v44 + 1) + 8 * i) isEqualToString:@"-restore"];
        }

        v8 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v8);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = v6;
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v13)
    {
      v39 = 0;
      v14 = *v41;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v40 + 1) + 8 * j) componentsSeparatedByString:{@"=", v32, v33, v34}];

          v12 = v16;
          if ([v16 count] == 2)
          {
            v17 = [v16 objectAtIndexedSubscript:0];
            v18 = [v17 isEqualToString:@"centauri-second-stage"];

            if (v18)
            {
              v19 = [v12 objectAtIndexedSubscript:1];

              v39 = v19;
            }

            v20 = [v12 objectAtIndexedSubscript:0];
            v21 = [v20 isEqualToString:@"proxima-platform"];

            if (v21)
            {
              v22 = [v12 objectAtIndexedSubscript:1];
              v23 = [v22 intValue] == 3;

              if (v23)
              {
                ACFULogging::getLogInstance(v24);
                v33 = "parseDeviceBootArgs";
                v34 = [@"proxima-platform" UTF8String];
                v32 = "CentauriTransport";
                ACFULogging::handleMessage();
                *(this + 20) = 1;
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v13);
    }

    else
    {
      v39 = 0;
    }

    if (v7)
    {
      v26 = *(this + 20);
      if (v26 == 2 || v26 == 1)
      {
        ACFULogging::getLogInstance(v25);
        v25 = ACFULogging::handleMessage();
        *(this + 24) = 0;
      }
    }

    if (v39)
    {
      ACFULogging::getLogInstance(v25);
      v27 = [v39 BOOLValue];
      v28 = [@"centauri-second-stage" UTF8String];
      v29 = "disabled";
      if (v27)
      {
        v29 = "enabled";
      }

      v35 = v29;
      v36 = v28;
      ACFULogging::handleMessage();
      *(this + 24) = [v39 BOOLValue];
    }

    else
    {
      v39 = 0;
    }
  }

  if (v49)
  {
    free(v49);
    v49 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v37;
}

void CentauriTransport::platformToString(int a1@<W0>, std::string *a2@<X8>)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = 0;
  std::string::basic_string[abi:ne200100]<0>(v14, "silicon");
  v15 = 1;
  std::string::basic_string[abi:ne200100]<0>(v16, "FPGA");
  v17 = 2;
  std::string::basic_string[abi:ne200100]<0>(v18, "simulator");
  std::map<CentauriTransport::Platform,std::string>::map[abi:ne200100](v10, &v13, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v18[i + 2]) < 0)
    {
      operator delete(v18[i]);
    }
  }

  v5 = v11[0];
  if (!v11[0])
  {
    goto LABEL_12;
  }

  v6 = v11;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v11 && *(v6 + 8) <= a1)
  {
    v8 = std::map<CentauriTransport::BootMode,std::string>::at(v10, &v12);
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      a2->__r_.__value_.__r.__words[2] = v8[2];
      *&a2->__r_.__value_.__l.__data_ = v9;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v10, v11[0]);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_24338B660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void CentauriTransport::bootStageToString(int a1@<W0>, std::string *a2@<X8>)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = 0;
  std::string::basic_string[abi:ne200100]<0>(v14, "ROM");
  v15 = 1;
  std::string::basic_string[abi:ne200100]<0>(v16, "secondary boot");
  v17 = 2;
  std::string::basic_string[abi:ne200100]<0>(v18, "secondary lpm boot");
  std::map<airship_ch_boot_stage_id,std::string>::map[abi:ne200100](v10, &v13, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v18[i + 2]) < 0)
    {
      operator delete(v18[i]);
    }
  }

  v5 = v11[0];
  if (!v11[0])
  {
    goto LABEL_12;
  }

  v6 = v11;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v11 && *(v6 + 8) <= a1)
  {
    v8 = std::map<CentauriTransport::BootMode,std::string>::at(v10, &v12);
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      a2->__r_.__value_.__r.__words[2] = v8[2];
      *&a2->__r_.__value_.__l.__data_ = v9;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v10, v11[0]);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_24338B89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CentauriTransport::writeRegister(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = airship_ch_boot_write_register();
    if (!v1)
    {
      return 1;
    }

    ACFULogging::getLogInstance(v1);
    ACFULogging::handleMessage();
  }

  else
  {
    CentauriTransport::writeRegister(0);
  }

  return 0;
}

uint64_t *std::map<CentauriTransport::BootMode,std::string>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

char *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_24338BAB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<__CFString const*>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278DB0518, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> const&,0>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> const&,std::allocator<ACFUCommon::PersonalizeParams>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> const&,std::allocator<ACFUCommon::PersonalizeParams>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28561AA28;
  std::construct_at[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> const&,ACFUCommon::PersonalizeParams*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28561AA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> const&,ACFUCommon::PersonalizeParams*>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  MEMORY[0x245D31570](a1, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_24338BEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_24338BF5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278DB0520, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::map<CentauriTransport::BootMode,std::string>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__construct_node<std::pair<CentauriTransport::BootMode const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__construct_node<std::pair<CentauriTransport::BootMode const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_24338C3A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::map<CentauriTransport::BootMode,__CFString const*>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

void std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = *a4;
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__find_equal<CentauriTransport::BootMode>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::map<CentauriTransport::Platform,std::string>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::Platform,std::pair<CentauriTransport::Platform const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::Platform,std::pair<CentauriTransport::Platform const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__construct_node<std::pair<CentauriTransport::Platform const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__construct_node<std::pair<CentauriTransport::Platform const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_24338CBB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::map<airship_ch_boot_stage_id,std::string>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__emplace_hint_unique_key_args<airship_ch_boot_stage_id,std::pair<airship_ch_boot_stage_id const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__emplace_hint_unique_key_args<airship_ch_boot_stage_id,std::pair<airship_ch_boot_stage_id const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__construct_node<std::pair<airship_ch_boot_stage_id const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__construct_node<std::pair<airship_ch_boot_stage_id const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_24338CD60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t CentauriBooterCreate(uint64_t a1)
{
  v150[1] = *MEMORY[0x277D85DE8];
  v138 = 0;
  v139 = 0;
  context = xmmword_24339A64C;
  v144 = 0x200000002;
  v2 = std::map<CentauriBooterBootMode,CentauriTransport::BootMode>::map[abi:ne200100](v136, &context, 3);
  if (!a1)
  {
    goto LABEL_180;
  }

  v3 = (a1 + 40);
  if (*(a1 + 40) >= 3u)
  {
    ACFULogging::getLogInstance(v2);
    size = 0;
    v124 = *v3;
    v7 = ACFULogging::handleMessage();
    v59 = 0;
    Instance = 0;
    goto LABEL_154;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    LOBYTE(context) = 1;
    v5 = CFGetTypeID(v4);
    TypeID = CFDictionaryGetTypeID();
    if (v5 != TypeID)
    {
LABEL_182:
      ACFULogging::getLogInstance(TypeID);
      v7 = ACFULogging::handleMessage();
      goto LABEL_183;
    }

    CFDictionaryApplyFunction(*(a1 + 32), validateNVRAMOverride, &context);
    if ((context & 1) == 0)
    {
LABEL_183:
      size = 0;
      v59 = 0;
      Instance = 0;
      goto LABEL_154;
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    LOBYTE(context) = 1;
    v9 = CFGetTypeID(v8);
    TypeID = CFArrayGetTypeID();
    if (v9 != TypeID)
    {
      goto LABEL_182;
    }

    v10 = *(a1 + 48);
    v151.length = CFArrayGetCount(v10);
    v151.location = 0;
    CFArrayApplyFunction(v10, v151, validatePath, &context);
    if ((context & 1) == 0)
    {
      goto LABEL_182;
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    v2 = CFDataGetTypeID();
    if (v12 != v2)
    {
LABEL_180:
      ACFULogging::getLogInstance(v2);
      goto LABEL_181;
    }
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    LOBYTE(context) = 1;
    v14 = CFGetTypeID(v13);
    TypeID = CFArrayGetTypeID();
    if (v14 != TypeID)
    {
      goto LABEL_182;
    }

    v15 = *(a1 + 88);
    v152.length = CFArrayGetCount(v15);
    v152.location = 0;
    CFArrayApplyFunction(v15, v152, validatePath, &context);
    if ((context & 1) == 0)
    {
      goto LABEL_182;
    }
  }

  v16 = *a1;
  v17 = *(a1 + 8);
  v140 = *(a1 + 16);
  v18 = v140;
  *keys = xmmword_24339A664;
  keys[2] = 0x400000003;
  v19 = std::map<CentauriBooterLogLevel,ACFULogLevel>::map[abi:ne200100](&context, keys, 3);
  keys[0] = 0;
  values = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  v150[0] = 0;
  if (!v18)
  {
    goto LABEL_22;
  }

  v20 = *(&context + 1);
  if (!*(&context + 1))
  {
    goto LABEL_22;
  }

  v21 = &context + 8;
  do
  {
    if (*(v20 + 7) >= v18)
    {
      v21 = v20;
    }

    v20 = *&v20[8 * (*(v20 + 7) < v18)];
  }

  while (v20);
  if (v21 == &context + 8 || *(v21 + 7) > v18)
  {
LABEL_22:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_23;
  }

  v120 = std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(&context, &v140);
  v121 = *MEMORY[0x277CBECE8];
  v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s=%u", "logLevel", *v120);
  keys[0] = @"ACFUDebugArgs";
  __p.__r_.__value_.__r.__words[0] = v24;
  v122 = CFDictionaryCreate(v121, keys, &__p.__r_.__value_.__l.__data_, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = v122;
  if (v122)
  {
    v150[0] = @"Options";
    values = v122;
    v19 = CFDictionaryCreate(v121, v150, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v23 = v19;
    if (!v19)
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      v27 = 0;
      goto LABEL_28;
    }

LABEL_23:
    LogInstance = ACFULogging::getLogInstance(v19);
    inited = ACFULogging::initLog(LogInstance, v23, v16, v17);
    v27 = inited == 0;
    if (inited)
    {
      ACFULogging::getLogInstance(inited);
      ACFULogging::handleMessage();
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (!v22)
    {
LABEL_29:
      if (!v24)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_28:
    CFRelease(v22);
    goto LABEL_29;
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  v27 = 0;
  if (v24)
  {
LABEL_30:
    CFRelease(v24);
  }

LABEL_31:
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&context, *(&context + 1));
  if (!v27)
  {
    goto LABEL_183;
  }

  ACFULogging::getLogInstance(v7);
  v28 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v28);
  v29 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v29);
  *a1;
  v30 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v30);
  *(a1 + 8);
  v31 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v31);
  v123 = *(a1 + 16);
  v32 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v32);
  *(a1 + 24);
  v33 = ACFULogging::handleMessage();
  v34 = *(a1 + 32);
  ACFULogging::getLogInstance(v33);
  if (v34)
  {
    ACFULogging::handleMessage();
    CFDictionaryApplyFunction(*(a1 + 32), logNVRAMOverride, 0);
  }

  else
  {
    v35 = ACFULogging::handleMessage();
  }

  ACFULogging::getLogInstance(v35);
  v36 = *v3;
  LODWORD(v150[0]) = *v3;
  LODWORD(context) = 0;
  std::string::basic_string[abi:ne200100]<0>(&context + 1, "normal");
  v145 = 1;
  std::string::basic_string[abi:ne200100]<0>(v146, "low power");
  v147 = 2;
  std::string::basic_string[abi:ne200100]<0>(v148, "remote");
  std::map<CentauriBooterBootMode,std::string>::map[abi:ne200100](keys, &context, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v148[i + 2]) < 0)
    {
      operator delete(v148[i]);
    }
  }

  v38 = keys[1];
  if (!keys[1])
  {
    goto LABEL_46;
  }

  v39 = &keys[1];
  do
  {
    if (*(v38 + 8) >= v36)
    {
      v39 = v38;
    }

    v38 = v38[*(v38 + 8) < v36];
  }

  while (v38);
  if (v39 != &keys[1] && *(v39 + 8) <= v36)
  {
    v106 = std::map<CentauriTransport::BootMode,std::string>::at(keys, v150);
    if (*(v106 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v106, v106[1]);
    }

    else
    {
      v107 = *v106;
      __p.__r_.__value_.__r.__words[2] = v106[2];
      *&__p.__r_.__value_.__l.__data_ = v107;
    }
  }

  else
  {
LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(&__p, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(keys, keys[1]);
  v40 = ACFULogging::handleMessage();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v40);
  *(a1 + 44);
  v41 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v41);
  *(a1 + 45);
  v42 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v42);
  *(a1 + 46);
  v43 = ACFULogging::handleMessage();
  v44 = *(a1 + 48);
  ACFULogging::getLogInstance(v43);
  if (v44)
  {
    ACFULogging::handleMessage();
    v45 = *(a1 + 48);
    v153.length = CFArrayGetCount(v45);
    v153.location = 0;
    CFArrayApplyFunction(v45, v153, logPath, 0);
  }

  else
  {
    v46 = ACFULogging::handleMessage();
  }

  ACFULogging::getLogInstance(v46);
  *(a1 + 56);
  v47 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v47);
  *(a1 + 64);
  v48 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v48);
  *(a1 + 72);
  v49 = ACFULogging::handleMessage();
  v50 = *(a1 + 88);
  ACFULogging::getLogInstance(v49);
  if (v50)
  {
    ACFULogging::handleMessage();
    v51 = *(a1 + 88);
    v154.length = CFArrayGetCount(v51);
    v154.location = 0;
    CFArrayApplyFunction(v51, v154, logPath, 0);
  }

  else
  {
    v52 = ACFULogging::handleMessage();
  }

  ACFULogging::getLogInstance(v52);
  v53 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v53);
  v2 = ACFULogging::handleMessage();
  if (CentauriBooterCreate::only_once != -1)
  {
    CentauriBooterCreate_cold_1();
  }

  if (!kCentauriBooterTypeID)
  {
    goto LABEL_180;
  }

  v54 = *MEMORY[0x277CBECE8];
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    ACFULogging::getLogInstance(0);
LABEL_181:
    size = 0;
    v7 = ACFULogging::handleMessage();
    v59 = 0;
    Instance = 0;
    goto LABEL_154;
  }

  v56 = *(a1 + 64);
  if (v56)
  {
    v57 = CFStringCreateWithCString(v54, v56, 0x8000100u);
    if (!v57)
    {
      ACFULogging::getLogInstance(0);
      size = 0;
      v7 = ACFULogging::handleMessage();
      v59 = 0;
      goto LABEL_154;
    }
  }

  else
  {
    v57 = 0;
  }

  v127 = v57;
  ACFUDiagnostics::create(v57, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>((Instance + 24), &context);
  v62 = context;
  *&context = 0;
  if (v62)
  {
    v63 = MEMORY[0x245D31760](v62, v60, v61);
    operator delete(v63);
  }

  if (!*(Instance + 24))
  {
    ACFULogging::getLogInstance(v62);
LABEL_174:
    size = 0;
    v7 = ACFULogging::handleMessage();
    v59 = v127;
    goto LABEL_154;
  }

  v64 = *(Instance + 32);
  v134 = *(Instance + 24);
  v135 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(v136, (a1 + 40));
  v66 = *(a1 + 80);
  v67 = *(a1 + 32);
  if (v67 && (v68 = CFGetTypeID(*(a1 + 32)), v68 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v67, @"bootargs"), (v70 = Value) != 0) && (v71 = CFGetTypeID(Value), v71 == CFStringGetTypeID()))
  {
    ACFUCommon::stringFromCFString(&context, v70, v72);
    v73 = SHIBYTE(v144);
    v74 = *(&context + 1);
    p_context = context;
    v125 = context;
    if (v144 >= 0)
    {
      p_context = &context;
    }

    __s = p_context;
    if (v144 >= 0)
    {
      v74 = SHIBYTE(v144);
    }

    if (v74 >= 12)
    {
      v76 = p_context;
      v77 = p_context + v74;
      do
      {
        v78 = memchr(v76, 101, v74 - 11);
        if (!v78)
        {
          break;
        }

        if (*v78 == 0x735F656C62616E65 && *(v78 + 2) == 826108777)
        {
          if (v78 != v77 && v78 - __s != -1)
          {
            v80 = 1;
            goto LABEL_166;
          }

          break;
        }

        v76 = (v78 + 1);
        v74 = v77 - v76;
      }

      while (v77 - v76 >= 12);
    }

    v80 = 0;
LABEL_166:
    if (v73 < 0)
    {
      operator delete(v125);
    }
  }

  else
  {
    v80 = 0;
  }

  CentauriTransport::create(&v134, v65, v66, 1, v80, 0, keys);
  std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(&v138, keys);
  v82 = keys[0];
  keys[0] = 0;
  if (v82)
  {
    (*(*v82 + 64))(v82);
  }

  v83 = v135;
  if (v135)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v135);
  }

  if (!v138)
  {
    ACFULogging::getLogInstance(v83);
    goto LABEL_174;
  }

  v84 = *(a1 + 24);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  *(Instance + 84) = 0;
  if (v84)
  {
    v86 = CFStringCreateWithCString(v54, v84, 0x8000100u);
    if (!v86)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v87 = isPersonalizedFirmwarePresentInDefaultLocation(v83, v81);
    if (!v87)
    {
      ACFULogging::getLogInstance(v87);
      ACFULogging::handleMessage();
      v108 = *(Instance + 32);
      keys[0] = *(Instance + 24);
      keys[1] = v108;
      if (v108)
      {
        atomic_fetch_add_explicit(v108 + 1, 1uLL, memory_order_relaxed);
      }

      CentauriFirmware::createEmpty(&stru_28561B080, keys, v150);
      std::shared_ptr<CentauriFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(&__p, v150);
      v109 = v150[0];
      v150[0] = 0;
      if (v109)
      {
        (*(*v109 + 56))(v109);
      }

      v110 = keys[1];
      if (keys[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](keys[1]);
      }

      v105 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        size = __p.__r_.__value_.__l.__size_;
        goto LABEL_133;
      }

      ACFULogging::getLogInstance(v110);
      goto LABEL_191;
    }

    v86 = copyDefaultPersonalizedFirmwarePath(v87, v88);
    if (!v86)
    {
LABEL_93:
      ACFULogging::getLogInstance(0);
LABEL_191:
      ACFULogging::handleMessage();
      goto LABEL_119;
    }
  }

  FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(v86, v85);
  if (FileDatafromFilePath)
  {
    v90 = *(Instance + 32);
    *&context = *(Instance + 24);
    *(&context + 1) = v90;
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    CentauriFirmware::create(&context, v150);
    std::shared_ptr<CentauriFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(&__p, v150);
    v92 = v150[0];
    v150[0] = 0;
    if (v92)
    {
      (*(*v92 + 56))(v92);
    }

    v93 = *(&context + 1);
    if (*(&context + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&context + 1));
    }

    v94 = __p.__r_.__value_.__r.__words[0] != 0;
    if (__p.__r_.__value_.__r.__words[0])
    {
      if (v84)
      {
        v95 = CFURLCreateWithString(v54, v86, 0);
        if (v95)
        {
          v96 = CFURLCreateWithString(v54, @"/tmp/FTABHarvest/centauri-custom-ftab.bin", 0);
          v98 = v96;
          if (!v96)
          {
            ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage();
            v102 = 0;
LABEL_113:
            CFRelease(v95);
            if (v102)
            {
LABEL_117:
              CFRelease(FileDatafromFilePath);
              goto LABEL_118;
            }

LABEL_114:
            os_fault_with_payload();
            goto LABEL_117;
          }

          if (ACFUCommon::doesPathExist(v96, v97))
          {
            ACFUCommon::removeFileWithURL(v98, v99);
          }

          v100 = MEMORY[0x245D31100](v98);
          if (v100)
          {
            ACFULogging::getLogInstance(v100);
          }

          else
          {
            v101 = AMSupportCopyFile();
            ACFULogging::getLogInstance(v101);
            if (!v101)
            {
              ACFULogging::handleMessage();
              v102 = 1;
LABEL_112:
              CFRelease(v98);
              goto LABEL_113;
            }
          }

          ACFULogging::handleMessage();
          v102 = 0;
          goto LABEL_112;
        }

        ACFULogging::getLogInstance(0);
LABEL_188:
        ACFULogging::handleMessage();
        goto LABEL_114;
      }

      Symlink = ACFUCommon::createSymlink(@"/tmp/FTABHarvest/", v86, @"centauri-symlink-ftab.bin", v91);
      v104 = Symlink;
      ACFULogging::getLogInstance(Symlink);
      if ((v104 & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    else
    {
      ACFULogging::getLogInstance(v93);
    }

    ACFULogging::handleMessage();
    goto LABEL_117;
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  v94 = 0;
LABEL_118:
  CFRelease(v86);
  if (!v94)
  {
LABEL_119:
    v7 = __p.__r_.__value_.__l.__size_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    if (!v7)
    {
      size = __p.__r_.__value_.__l.__size_;
LABEL_153:
      v59 = v127;
      goto LABEL_154;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  size = __p.__r_.__value_.__l.__size_;
  v105 = __p.__r_.__value_.__r.__words[0];
  if (!__p.__r_.__value_.__r.__words[0])
  {
    goto LABEL_153;
  }

LABEL_133:
  v111 = *(Instance + 32);
  v132 = *(Instance + 24);
  v133 = v111;
  if (v111)
  {
    atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v130 = v138;
  v131 = v139;
  if (v139)
  {
    atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v128 = v105;
  v129 = size;
  if (size)
  {
    atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(Instance + 16) = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(&v132, &v130, &v128);
  if (v129)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v129);
  }

  if (v131)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v131);
  }

  v112 = v133;
  if (v133)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v133);
  }

  if (*(Instance + 16))
  {
    v113 = *(a1 + 32);
    *(Instance + 40) = AMSupportSafeRetain();
    v114 = *(a1 + 72);
    *(Instance + 72) = AMSupportSafeRetain();
    v115 = *(a1 + 88);
    *(Instance + 88) = AMSupportSafeRetain();
    *(Instance + 48) = *(a1 + 44);
    *(Instance + 49) = *(a1 + 45);
    v116 = *(a1 + 48);
    v117 = AMSupportSafeRetain();
    *(Instance + 56) = v117;
    *(Instance + 64) = *(a1 + 56);
    *(Instance + 80) = *(a1 + 40);
    ACFULogging::getLogInstance(v117);
    ACFULogging::handleMessage();
    goto LABEL_147;
  }

  ACFULogging::getLogInstance(v112);
  v59 = v127;
  v7 = ACFULogging::handleMessage();
LABEL_154:
  ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage();
  if (v59)
  {
    CFRelease(v59);
  }

  if (Instance)
  {
    CFRelease(Instance);
    Instance = 0;
  }

LABEL_147:
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(v136, v137);
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  if (v139)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v139);
  }

  v118 = *MEMORY[0x277D85DE8];
  return Instance;
}

void sub_24338E114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, void *a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  v34 = *(v32 - 112);
  *(v32 - 112) = 0;
  if (v34)
  {
    CentauriBooterCreate_cold_3(v34);
  }

  v35 = *(v32 - 136);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&a24, a25);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(a1);
}

uint64_t __CentauriBooterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kCentauriBooterTypeID = result;
  return result;
}

void CentauriBooterFinalize(ACFULogging *a1)
{
  if (a1)
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    v2 = *(a1 + 2);
    if (v2)
    {
      v3 = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::~ACFUBootInterface(v2);
      operator delete(v3);
      *(a1 + 2) = 0;
    }

    v4 = *(a1 + 5);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 5) = 0;
    }

    v5 = *(a1 + 7);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 7) = 0;
    }

    v6 = *(a1 + 9);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 9) = 0;
    }

    v7 = *(a1 + 11);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 11) = 0;
    }

    v8 = *(a1 + 4);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

CFStringRef CentauriBooterCopyDebugDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<CentauriBooter %p [%p]>{}", v1, v3);
  }

  return result;
}

void *std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28561AB58;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28561ABB8;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

ACFULogging *ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  v8 = a1[1];
  v17 = *a1;
  v18 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a2[1];
  v15 = *a2;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v6, &v17, &v15, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if ((v11 & 1) == 0)
  {
    ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(v7);
    return 0;
  }

  return v7;
}

void sub_24338E614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t CentauriBooterCopyPreflightParameters(ACFULogging *a1)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  ACFUDiagnostics::create(0, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(&v20, &v13);
  v3 = v13;
  v13 = 0;
  if (v3)
  {
    v4 = MEMORY[0x245D31760](v3, v1, v2);
    operator delete(v4);
  }

  if (!v20)
  {
    ACFULogging::getLogInstance(v3);
LABEL_33:
    ACFULogging::handleMessage();
    goto LABEL_34;
  }

  v16 = v20;
  v17 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CentauriTransport::create(&v16, 0, 0, 1, 0, 0, &v13);
  std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(&v18, &v13);
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 64))(v5);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (!v18)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_33;
  }

  (**v18)(&v13);
  v7 = v13;
  v6 = v14;
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_17;
    }

LABEL_34:
    v11 = 0;
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = v15;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v8)
  {
    v11 = 0;
    goto LABEL_25;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_17:
  v9 = (*(*v7 + 8))(v7);
  v10 = v9;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if ((v10 & 1) == 0)
    {
      goto LABEL_35;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_35;
  }

  v9 = (**v7)(v7);
  v11 = v9;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v11)
  {
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_35:
  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  v11 = 0;
  if (v6)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_26:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v11;
}

void sub_24338E928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriBooterBootChip(uint64_t a1)
{
  v208 = *MEMORY[0x277D85DE8];
  v196 = 0;
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  if (!a1)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    v166 = 0;
    goto LABEL_259;
  }

  v1 = CFGetTypeID(a1);
  if (v1 != kCentauriBooterTypeID || (v2 = *(a1 + 16)) == 0)
  {
    ACFULogging::getLogInstance(v1);
    v188 = 0;
    ACFULogging::handleMessage();
    goto LABEL_272;
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v187 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (**v3)(v206);
  v188 = *&v206[8];
  v6 = *v206;
  if (*&v206[8])
  {
    atomic_fetch_add_explicit((*&v206[8] + 8), 1uLL, memory_order_relaxed);
    v5 = *&v206[8];
    v7 = *&v206[16];
    if (*&v206[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v206[8]);
    }

    if (v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *&v206[16];
    if (v4)
    {
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (v7)
  {
    ACFULogging::getLogInstance(v5);
LABEL_271:
    ACFULogging::handleMessage();
    goto LABEL_272;
  }

  if (v188)
  {
    atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v6 + 168, &v196);
  v9 = v188;
  if (v188)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v188);
  }

  if ((DataAs & 1) == 0)
  {
    ACFULogging::getLogInstance(v9);
    goto LABEL_271;
  }

  v10 = v187[4];
  v11 = v187[5];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isChipRevisionSupported = CentauriFirmware::isChipRevisionSupported(v10, v196);
  v13 = isChipRevisionSupported;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13)
  {
    if (v188)
    {
      atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v199 = 0;
    v198 = 0;
    v197 = 0;
    ACFULogging::getLogInstance(isChipRevisionSupported);
    v173 = "populateRuntimeDataInFirmware";
    ACFULogging::handleMessage();
    v14 = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v6 + 8, &v199);
    if (v14)
    {
      v14 = ACFUCommon::Parameter::GetDataAsType<unsigned long long>(v6 + 40, &v198);
      if (v14)
      {
        v15 = *(a1 + 16);
        v16 = *(v15 + 32);
        v17 = *(v15 + 40);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Manifest = ACFUFirmware::getManifest(v16);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (Manifest)
        {
          goto LABEL_40;
        }

        v14 = ACFUCommon::Parameter::GetDataAsType<unsigned char>(v6 + 104, &v197);
        if (v14)
        {
          v19 = v197;
          ACFULogging::getLogInstance(v14);
          if (v19)
          {
            goto LABEL_294;
          }

          v173 = "populateRuntimeDataInFirmware";
          ACFULogging::handleMessage();
          v20 = CFDataCreate(*MEMORY[0x277CBECE8], dummyManifest, 2690);
          if (!v20)
          {
            ACFULogging::getLogInstance(0);
            goto LABEL_294;
          }

          v21 = *(a1 + 16);
          v22 = *(v21 + 32);
          v23 = *(v21 + 40);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = (*(*v22 + 72))(v22, v20);
          v25 = v24;
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if ((v25 & 1) == 0)
          {
            ACFULogging::getLogInstance(v24);
            ACFULogging::handleMessage();
            CFRelease(v20);
            goto LABEL_295;
          }

          CFRelease(v20);
LABEL_40:
          *(&v201 + 1) = 0;
          *&v202 = 0;
          *&v201 = &v201 + 8;
          v26 = *(a1 + 40);
          if (v26)
          {
            Count = CFDictionaryGetCount(v26);
            v28 = Count;
            if (Count <= 0)
            {
              ACFULogging::getLogInstance(Count);
              ACFULogging::handleMessage();
              std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v201, *(&v201 + 1));
              goto LABEL_295;
            }

            v29 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
            v30 = malloc_type_calloc(v28, 8uLL, 0xC0040B8AA526DuLL);
            v31 = v30;
            if (v29 && v30)
            {
              CFDictionaryGetKeysAndValues(*(a1 + 40), v29, v30);
              v32 = 0;
              while (1)
              {
                v33 = CFGetTypeID(v29[v32]);
                TypeID = CFStringGetTypeID();
                if (v33 != TypeID)
                {
                  break;
                }

                ACFUCommon::stringFromCFString(&v205, v29[v32], v35);
                if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v206, v205.__r_.__value_.__l.__data_, v205.__r_.__value_.__l.__size_);
                }

                else
                {
                  *v206 = v205;
                }

                *&v206[24] = v31[v32];
                v36 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(&v201, v206, v206);
                v38 = v37;
                if ((v206[23] & 0x80000000) != 0)
                {
                  operator delete(*v206);
                }

                if ((v38 & 1) == 0)
                {
                  ACFULogging::getLogInstance(v36);
                  v173 = "populateNVRAMInFirmware";
                  ACFULogging::handleMessage();
                }

                if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v205.__r_.__value_.__l.__data_);
                }

                if ((v38 & 1) == 0)
                {
                  v43 = 0;
                  goto LABEL_71;
                }

                if (v28 == ++v32)
                {
                  goto LABEL_61;
                }
              }

              ACFULogging::getLogInstance(TypeID);
              ACFUCommon::cfTypeDescription(v33);
              v173 = "populateNVRAMInFirmware";
              ACFULogging::handleMessage();
              if ((v206[23] & 0x80000000) != 0)
              {
                operator delete(*v206);
              }

LABEL_263:
              v43 = 0;
              if (!v31)
              {
LABEL_67:
                if (v29)
                {
                  goto LABEL_68;
                }

LABEL_72:
                std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v201, *(&v201 + 1));
                if (v43)
                {
LABEL_73:
                  v44 = v199;
                  v45 = v198;
                  v46 = *(a1 + 16);
                  v47 = *(v46 + 32);
                  v48 = *(v46 + 40);
                  if (v48)
                  {
                    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v49 = CentauriFirmware::setCalibration(v47, *(a1 + 56), v44, v45, (*(a1 + 84) & 1) == 0, *(a1 + 48), *(a1 + 49), *(a1 + 50));
                  if (v48)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                  }

                  if (!v49)
                  {
                    goto LABEL_295;
                  }

                  if (*(a1 + 72))
                  {
                    v50 = *(a1 + 24);
                    ACFUDiagnostics::addItem();
                    v51 = *(a1 + 16);
                    v53 = *(v51 + 32);
                    v52 = *(v51 + 40);
                    if (v52)
                    {
                      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    std::string::basic_string[abi:ne200100]<0>(v206, "_lpm");
                    v54 = *(a1 + 72);
                    v55 = RTKitFirmware::addTagWithData();
                    v56 = v55;
                    if ((v206[23] & 0x80000000) != 0)
                    {
                      operator delete(*v206);
                    }

                    if (v52)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                    }

                    ACFULogging::getLogInstance(v55);
                    if (v56)
                    {
                      goto LABEL_294;
                    }

                    v173 = "populateLPMConfigDataInFirmware";
                    CFDataGetLength(*(a1 + 72));
                    ACFULogging::handleMessage();
                  }

                  v57 = copyPatchBayData("/System/Library/PrivateFrameworks/CentauriAlphaPatchBay.framework/CentauriAlphaPatchBay", "CentauriAlphaPatchBayCopyData", "alpha");
                  v58 = copyPatchBayData("/System/Library/PrivateFrameworks/CentauriBetaPatchBay.framework/CentauriBetaPatchBay", "CentauriBetaPatchBayCopyData", "beta");
                  v59 = *(a1 + 16);
                  v60 = *(v59 + 32);
                  v61 = *(v59 + 40);
                  if (v61)
                  {
                    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v62 = CentauriFirmware::setPatchBay(v60, v57, v58);
                  if (v61)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
                  }

                  if (v57)
                  {
                    CFRelease(v57);
                  }

                  if (v58)
                  {
                    CFRelease(v58);
                  }

                  if (!v62)
                  {
                    goto LABEL_295;
                  }

                  v63 = *(a1 + 88);
                  if (v63)
                  {
                    v64 = *(a1 + 16);
                    v66 = *(v64 + 32);
                    v65 = *(v64 + 40);
                    v183 = v65;
                    if (v65)
                    {
                      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
                      v63 = *(a1 + 88);
                    }

                    v67 = CFArrayGetCount(v63);
                    v68 = v67;
                    if (v67 <= 0)
                    {
                      ACFULogging::getLogInstance(v67);
                      v173 = "populatePowerTablesInFirmware";
                      ACFULogging::handleMessage();
                    }

                    obj = 0;
                    v69 = 0;
                    idx = 0;
                    v70 = 0;
                    v182 = v68;
                    v184 = v68 & ~(v68 >> 63);
                    while (1)
                    {
                      if (idx == v184)
                      {
                        LODWORD(v99) = 1;
                        goto LABEL_131;
                      }

                      v190 = CFArrayGetValueAtIndex(*(a1 + 88), idx);

                      if (!v190)
                      {
                        ACFULogging::getLogInstance(v71);
                        ACFULogging::handleMessage();
                        v70 = 0;
                        LODWORD(v99) = 0;
                        goto LABEL_131;
                      }

                      ACFULogging::getLogInstance(v71);
                      v72 = v190;
                      v175 = [v190 UTF8String];
                      ACFULogging::handleMessage();
                      v73 = [MEMORY[0x277CCAA00] defaultManager];
                      v200[0] = v69;
                      v74 = [v73 contentsOfDirectoryAtPath:v190 error:v200];
                      v185 = v200[0];

                      if (!v74)
                      {
                        break;
                      }

                      v203 = 0u;
                      v204 = 0u;
                      v201 = 0u;
                      v202 = 0u;
                      obj = v74;
                      v76 = [obj countByEnumeratingWithState:&v201 objects:v206 count:16];
                      if (v76)
                      {
                        v193 = 0;
                        v191 = 0;
                        v77 = *v202;
                        do
                        {
                          v78 = 0;
                          do
                          {
                            if (*v202 != v77)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v79 = *(*(&v201 + 1) + 8 * v78);
                            v80 = [v79 pathExtension];
                            v81 = [v80 length] == 0;

                            if (v81)
                            {
                              v82 = v79;
                              std::string::basic_string[abi:ne200100]<0>(&v205, [v79 UTF8String]);
                              v83 = (*(*v66 + 40))(v66, &v205);
                              v84 = v83;
                              if (v83)
                              {
                                v85 = objc_autoreleasePoolPush();
                                v86 = [v190 stringByAppendingPathComponent:v79];
                                v87 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v86];
                                v88 = v87;
                                if (v87)
                                {
                                  ACFULogging::getLogInstance(v87);
                                  v89 = v79;
                                  v90 = [v79 UTF8String];
                                  v179 = v84;
                                  v180 = [(ACFULogging *)v88 length];
                                  v174 = "populatePowerTablesInFirmware";
                                  v176 = v90;
                                  v172 = "ACFUBootInterface";
                                  ACFULogging::handleMessage();
                                  updated = RTKitFirmware::updateTagWithData();
                                  v92 = updated == 0;
                                  v93 = 4 * (updated != 0);
                                }

                                else
                                {
                                  ACFULogging::getLogInstance(0);
                                  v96 = v86;
                                  v174 = "populatePowerTablesInFirmware";
                                  v176 = [v86 UTF8String];
                                  v172 = "ACFUBootInterface";
                                  ACFULogging::handleMessage();
                                  v92 = 0;
                                  v93 = 4;
                                }

                                objc_autoreleasePoolPop(v85);
                                v191 = (v191 + v92);
                                if (v92)
                                {
                                  v94 = 0;
                                }

                                else
                                {
                                  v94 = v93;
                                }
                              }

                              else
                              {
                                ACFULogging::getLogInstance(v83);
                                v95 = v79;
                                v174 = "populatePowerTablesInFirmware";
                                v176 = [v79 UTF8String];
                                v172 = "ACFUBootInterface";
                                ACFULogging::handleMessage();
                                v94 = 13;
                              }

                              if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v205.__r_.__value_.__l.__data_);
                              }

                              v193 = (v193 + 1);
                              if (v94 != 13)
                              {
                                if (v94)
                                {
                                  v99 = obj;
                                  goto LABEL_130;
                                }
                              }
                            }

                            ++v78;
                          }

                          while (v76 != v78);
                          v97 = [obj countByEnumeratingWithState:&v201 objects:v206 count:16];
                          v76 = v97;
                        }

                        while (v97);
                      }

                      else
                      {
                        v193 = 0;
                        v191 = 0;
                      }

                      ACFULogging::getLogInstance(v98);
                      v180 = v191;
                      v181 = v193;
                      v179 = v182;
                      ++idx;
                      v69 = v185;
                      v70 = v190;
                      v173 = "populatePowerTablesInFirmware";
                      ACFULogging::handleMessage();
                    }

                    ACFULogging::getLogInstance(v75);
                    v99 = [v185 description];
                    v171 = v99;
                    [v99 UTF8String];
                    ACFULogging::handleMessage();
                    obj = 0;
LABEL_130:

                    LODWORD(v99) = 0;
                    v69 = v185;
                    v70 = v190;
                  }

                  else
                  {
                    ACFULogging::getLogInstance(0);
                    v183 = 0;
                    ACFULogging::handleMessage();
                    LODWORD(v99) = 1;
                    v70 = 0;
                    obj = 0;
                    v69 = 0;
                  }

LABEL_131:

                  if (v183)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v183);
                  }

                  if (!v99)
                  {
                    goto LABEL_154;
                  }

                  *v206 = xmmword_278DB0600;
                  *&v206[16] = unk_278DB0610;
                  v207 = xmmword_278DB0620;
                  std::map<CentauriBooterBootMode,__CFString const*>::map[abi:ne200100](&v201, v206, 3);
                  CentauriCommon::getTatsuTagToFileNameMap(v206);
                  memset(&v205, 0, sizeof(v205));
                  v101 = *(&v201 + 1);
                  if (!*(&v201 + 1))
                  {
                    goto LABEL_141;
                  }

                  v102 = *(a1 + 80);
                  v103 = &v201 + 8;
                  do
                  {
                    if (*(v101 + 8) >= v102)
                    {
                      v103 = v101;
                    }

                    v101 = *&v101[8 * (*(v101 + 8) < v102)];
                  }

                  while (v101);
                  if (v103 == &v201 + 8 || v102 < *(v103 + 8))
                  {
                    goto LABEL_141;
                  }

                  v144 = std::map<CentauriTransport::BootMode,std::string>::at(&v201, (a1 + 80));
                  v145 = std::map<__CFString const*,std::string>::at(v206, v144);
                  std::string::operator=(&v205, v145);
                  v146 = *(a1 + 16);
                  v147 = *(v146 + 32);
                  v148 = *(v146 + 40);
                  if (v148)
                  {
                    atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v100 = RTKitFirmware::moveTagToTop();
                  v149 = v100;
                  if (v148)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v148);
                  }

                  if (v149)
                  {
LABEL_141:
                    ACFULogging::getLogInstance(v100);
                    ACFULogging::handleMessage();
                    LODWORD(v99) = 0;
                  }

                  else
                  {
                    LODWORD(v99) = 1;
                  }

                  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v205.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v206, *&v206[8]);
                  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&v201, *(&v201 + 1));
                  if (!v99)
                  {
LABEL_154:
                    v110 = v188;
                    if (v188)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
                    }

                    if ((v99 & 1) == 0)
                    {
                      ACFULogging::getLogInstance(v110);
                      goto LABEL_279;
                    }

                    v112 = v187[4];
                    v111 = v187[5];
                    if (v111)
                    {
                      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v113 = *(a1 + 40);
                    if (v113 && (v114 = CFGetTypeID(*(a1 + 40)), v114 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v113, @"bootargs"), (v116 = Value) != 0) && (v117 = CFGetTypeID(Value), v117 == CFStringGetTypeID()))
                    {
                      v119 = v206;
                      ACFUCommon::stringFromCFString(v206, v116, v118);
                      v120 = v206[23];
                      v121 = *&v206[8];
                      v122 = *v206;
                      if (v206[23] < 0)
                      {
                        v119 = *v206;
                      }

                      if (v206[23] >= 0)
                      {
                        v121 = v206[23];
                      }

                      v123 = &v119[v121];
                      if (v121 >= 17)
                      {
                        v124 = v119;
                        do
                        {
                          v125 = memchr(v124, 109, v121 - 16);
                          if (!v125)
                          {
                            break;
                          }

                          if (*v125 == 0x662D656C75646F6DLL && v125[1] == 0x3D657261776D7269 && *(v125 + 16) == 49)
                          {
                            goto LABEL_179;
                          }

                          v124 = v125 + 1;
                          v121 = v123 - v124;
                        }

                        while (v123 - v124 > 16);
                      }

                      v125 = v123;
LABEL_179:
                      v129 = v125 == v123 || v125 - v119 == -1;
                      if (v120 < 0)
                      {
                        operator delete(v122);
                      }
                    }

                    else
                    {
                      v129 = 1;
                    }

                    v130 = *MEMORY[0x277CBECE8];
                    v131 = CFURLCreateWithString(*MEMORY[0x277CBECE8], @"/tmp/Centauri/wifi-assert-strings.bin", 0);
                    if (v131)
                    {
                      if (v129)
                      {
                        v132 = "_wfa";
                      }

                      else
                      {
                        v132 = "_wma";
                      }

                      std::string::basic_string[abi:ne200100]<0>(v206, v132);
                      v133 = ACFUFirmware::copyFWDataByFileName();
                      v134 = v133;
                      if ((v206[23] & 0x80000000) != 0)
                      {
                        operator delete(*v206);
                        if (v134)
                        {
LABEL_194:
                          v135 = CFURLCreateWithString(v130, @"/tmp/Centauri/", 0);
                          v137 = v135;
                          if (!v135)
                          {
                            ACFULogging::getLogInstance(0);
                            ACFULogging::handleMessage();
                            LOBYTE(v143) = 0;
                            v137 = v131;
LABEL_229:
                            CFRelease(v137);
                            CFRelease(v134);
                            if (!v111)
                            {
LABEL_231:
                              if ((v143 & 1) == 0)
                              {
                                os_fault_with_payload();
                              }

                              v155 = v187[2];
                              v156 = v187[3];
                              if (v156)
                              {
                                atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v158 = v187[4];
                              v157 = v187[5];
                              if (v157)
                              {
                                atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              v194 = v158;
                              v195 = v157;
                              v159 = (*(*v155 + 16))(v155, &v194);
                              v160 = v195;
                              if (v195)
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](v195);
                              }

                              if (v156)
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](v156);
                              }

                              if (!v159)
                              {
                                v161 = v187[2];
                                v162 = v187[3];
                                if (v162)
                                {
                                  atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
                                }

                                v160 = (*(*v161 + 24))(v161);
                                v163 = v160;
                                if (v162)
                                {
                                  std::__shared_weak_count::__release_shared[abi:ne200100](v162);
                                }

                                if (!v163)
                                {
                                  ACFULogging::getLogInstance(v160);
                                  ACFULogging::handleMessage();
                                  v164 = v187[2];
                                  v165 = v187[3];
                                  if (v165)
                                  {
                                    atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  v166 = CentauriTransport::sendBootTimestamps(v164);
                                  if (v165)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](v165);
                                  }

LABEL_251:
                                  v167 = *(a1 + 24);
                                  if (!v167)
                                  {
                                    goto LABEL_257;
                                  }

                                  if (v166)
                                  {
                                    v168 = 1;
                                    v166 = 1;
                                    if (*(a1 + 64) != 1)
                                    {
                                      goto LABEL_257;
                                    }
                                  }

                                  else
                                  {
                                    v168 = 0;
                                  }

LABEL_256:
                                  ACFUDiagnostics::perform(v167);
                                  v166 = v168;
                                  goto LABEL_257;
                                }
                              }

                              ACFULogging::getLogInstance(v160);
LABEL_279:
                              ACFULogging::handleMessage();
                              v166 = 0;
                              goto LABEL_251;
                            }

LABEL_230:
                            std::__shared_weak_count::__release_shared[abi:ne200100](v111);
                            goto LABEL_231;
                          }

                          if (ACFUCommon::doesPathExist(v135, v136))
                          {
LABEL_218:
                            v138 = AMSupportWriteDataToFileURL();
                            if (!v138)
                            {
                              v152 = ACFUCommon::stringFromCFString(v206, @"/tmp/Centauri/wifi-assert-strings.bin", v151);
                              if ((v206[23] & 0x80000000) != 0)
                              {
                                if (*&v206[8])
                                {
                                  v153 = *v206;
                                  goto LABEL_224;
                                }
                              }

                              else if (v206[23])
                              {
                                v153 = v206;
LABEL_224:
                                v154 = chmod(v153, 0x1B6u);
                                if (!v154)
                                {
                                  ACFULogging::getLogInstance(v154);
                                  ACFULogging::handleMessage();
                                  LOBYTE(v143) = 1;
                                  goto LABEL_226;
                                }

                                ACFULogging::getLogInstance(v154);
                                v177 = *__error();
                                ACFULogging::handleMessage();
LABEL_290:
                                LOBYTE(v143) = 0;
LABEL_226:
                                if ((v206[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v206);
                                }

                                goto LABEL_228;
                              }

                              ACFULogging::getLogInstance(v152);
                              ACFULogging::handleMessage();
                              goto LABEL_290;
                            }

                            goto LABEL_300;
                          }

                          v138 = MEMORY[0x245D31100](v137);
                          if (v138)
                          {
LABEL_300:
                            ACFULogging::getLogInstance(v138);
                            ACFULogging::handleMessage();
                            LOBYTE(v143) = 0;
                            goto LABEL_228;
                          }

                          v140 = ACFUCommon::stringFromCFString(v206, @"/tmp/Centauri/", v139);
                          if ((v206[23] & 0x80000000) != 0)
                          {
                            if (*&v206[8])
                            {
                              v141 = *v206;
                              goto LABEL_212;
                            }
                          }

                          else if (v206[23])
                          {
                            v141 = v206;
LABEL_212:
                            v150 = chmod(v141, 0x1FFu);
                            if (!v150)
                            {
                              v143 = 1;
                              goto LABEL_214;
                            }

                            ACFULogging::getLogInstance(v150);
                            v178 = *__error();
                            ACFULogging::handleMessage();
LABEL_303:
                            v143 = 0;
LABEL_214:
                            if ((v206[23] & 0x80000000) != 0)
                            {
                              operator delete(*v206);
                              if (!v143)
                              {
LABEL_228:
                                CFRelease(v131);
                                goto LABEL_229;
                              }
                            }

                            else if (!v143)
                            {
                              goto LABEL_228;
                            }

                            goto LABEL_218;
                          }

                          ACFULogging::getLogInstance(v140);
                          ACFULogging::handleMessage();
                          goto LABEL_303;
                        }
                      }

                      else if (v133)
                      {
                        goto LABEL_194;
                      }

                      v142 = AMSupportRemoveFile();
                      ACFULogging::getLogInstance(v142);
                      if (!v142)
                      {
                        ACFULogging::handleMessage();
                        CFRelease(v131);
                        LOBYTE(v143) = 1;
                        if (!v111)
                        {
                          goto LABEL_231;
                        }

                        goto LABEL_230;
                      }

                      ACFULogging::handleMessage();
                      CFRelease(v131);
                    }

                    else
                    {
                      ACFULogging::getLogInstance(0);
                      ACFULogging::handleMessage();
                    }

                    LOBYTE(v143) = 0;
                    if (!v111)
                    {
                      goto LABEL_231;
                    }

                    goto LABEL_230;
                  }

                  v104 = *(a1 + 16);
                  v105 = *(v104 + 32);
                  v106 = *(v104 + 40);
                  if (v106)
                  {
                    atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v14 = ACFUFirmware::copyFWContainer(v105);
                  v107 = v14;
                  if (v106)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                  }

                  if (v107)
                  {
                    v99 = CFGetTypeID(v107);
                    v108 = CFDataGetTypeID();
                    LOBYTE(v99) = v99 == v108;
                    if (v99)
                    {
                      v109 = *(a1 + 24);
                      v108 = ACFUDiagnostics::addItem();
                    }

                    ACFULogging::getLogInstance(v108);
                    ACFULogging::handleMessage();
                    CFRelease(v107);
                    goto LABEL_154;
                  }

                  goto LABEL_281;
                }

LABEL_295:
                LOBYTE(v99) = 0;
                goto LABEL_154;
              }

LABEL_71:
              free(v31);
              if (v29)
              {
LABEL_68:
                free(v29);
                std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v201, *(&v201 + 1));
                if ((v43 & 1) == 0)
                {
                  goto LABEL_295;
                }

                goto LABEL_73;
              }

              goto LABEL_72;
            }
          }

          else
          {
            v31 = 0;
            v29 = 0;
LABEL_61:
            v39 = *(a1 + 16);
            v40 = *(v39 + 32);
            v41 = *(v39 + 40);
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::map<std::string,void const*>::map[abi:ne200100](v200, &v201);
            v42 = CentauriFirmware::setNVRAM(v40, v200);
            std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(v200, v200[1]);
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }

            if (v42)
            {
              v43 = 1;
              if (!v31)
              {
                goto LABEL_67;
              }

              goto LABEL_71;
            }
          }

          ACFULogging::getLogInstance(v30);
          v173 = "populateNVRAMInFirmware";
          ACFULogging::handleMessage();
          goto LABEL_263;
        }
      }
    }

LABEL_281:
    ACFULogging::getLogInstance(v14);
LABEL_294:
    ACFULogging::handleMessage();
    goto LABEL_295;
  }

LABEL_272:
  v168 = 0;
  v166 = 0;
  v167 = *(a1 + 24);
  if (v167)
  {
    goto LABEL_256;
  }

LABEL_257:
  if (v188)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v188);
  }

LABEL_259:
  v169 = *MEMORY[0x277D85DE8];
  return v166;
}

void sub_243390244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, void *a23)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

ACFULogging *isPersonalizedFirmwarePresentInDefaultLocation(uint64_t a1, const __CFString *a2)
{
  v2 = copyDefaultPersonalizedFirmwarePath(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = CFURLCreateWithString(*MEMORY[0x277CBECE8], v2, 0);
    if (v4)
    {
      v6 = v4;
      doesPathExist = ACFUCommon::doesPathExist(v4, v5);
      ACFULogging::getLogInstance(doesPathExist);
      ACFULogging::handleMessage();
      CFRelease(v6);
    }

    else
    {
      isPersonalizedFirmwarePresentInDefaultLocation(0);
      doesPathExist = 0;
    }

    CFRelease(v3);
  }

  else
  {
    isPersonalizedFirmwarePresentInDefaultLocation(0);
    return 0;
  }

  return doesPathExist;
}

CFTypeID validateNVRAMOverride(const void *a1, const void *a2, _BYTE *a3)
{
  CFNullGetTypeID();
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    v9 = "%s::%s: key has wrong type\n";
    return validateNVRAMOverride(v9, a3);
  }

  if (!a2)
  {
    v9 = "%s::%s: no value\n";
    return validateNVRAMOverride(v9, a3);
  }

  v7 = CFGetTypeID(a2);
  result = CFBooleanGetTypeID();
  if (v7 != result)
  {
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      result = CFStringGetTypeID();
      if (v7 != result)
      {
        result = CFNumberGetTypeID();
        if (v7 != result)
        {
          v9 = "%s::%s: value has wrong type\n";
          return validateNVRAMOverride(v9, a3);
        }
      }
    }
  }

  return result;
}

CFTypeID validatePath(const void *a1, ACFULogging *a2)
{
  if (!a1)
  {
    return validatePath(a2);
  }

  v3 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v3 != result)
  {
    return validatePath(a2);
  }

  return result;
}

void *ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::~ACFUBootInterface(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::map<CentauriBooterLogLevel,ACFULogLevel>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void logNVRAMOverride(void *a1, void *a2, void *a3)
{
  v43[2] = *MEMORY[0x277D85DE8];
  memset(&v41, 0, sizeof(v41));
  memset(&v40, 0, sizeof(v40));
  TypeID = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v34);
  if (!a1 || (v6 = CFGetTypeID(a1), TypeID = CFStringGetTypeID(), v6 != TypeID) || !a2)
  {
    ACFULogging::getLogInstance(TypeID);
    goto LABEL_33;
  }

  ACFUCommon::stringFromCFString(&v33, a1, v7);
  v41 = v33;
  v8 = CFGetTypeID(a2);
  if (v8 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a2);
    if (!BytePtr)
    {
      ACFULogging::getLogInstance(0);
      goto LABEL_33;
    }

    Length = CFDataGetLength(a2);
    v11 = Length;
    if (Length < 1)
    {
      goto LABEL_32;
    }

    do
    {
      *(&v37[-1].__locale_ + *(v35 - 24)) |= 0x4000u;
      v33.__r_.__value_.__s.__data_[0] = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v35, &v33);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 2;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      v14 = *BytePtr;
      MEMORY[0x245D318F0]();
      ++BytePtr;
      --v11;
    }

    while (v11);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v34, &v33);
    Length = std::string::insert(&v33, 0, "0x", 2uLL);
    v15 = *Length;
    valuePtr.__r_.__value_.__r.__words[0] = *(Length + 8);
    *(valuePtr.__r_.__value_.__r.__words + 7) = *(Length + 15);
    v16 = *(Length + 23);
    *(Length + 8) = 0;
    *(Length + 16) = 0;
    *Length = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v40.__r_.__value_.__r.__words[0] = v15;
    v40.__r_.__value_.__l.__size_ = valuePtr.__r_.__value_.__r.__words[0];
    *(&v40.__r_.__value_.__r.__words[1] + 7) = *(valuePtr.__r_.__value_.__r.__words + 7);
    *(&v40.__r_.__value_.__s + 23) = v16;
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v17 = v33.__r_.__value_.__r.__words[0];
LABEL_19:
    operator delete(v17);
LABEL_32:
    ACFULogging::getLogInstance(Length);
LABEL_33:
    ACFULogging::handleMessage();
    goto LABEL_34;
  }

  v18 = CFGetTypeID(a2);
  if (v18 == CFStringGetTypeID())
  {
    ACFUCommon::stringFromCFString(&valuePtr, a2, v19);
    v20 = std::string::insert(&valuePtr, 0, "", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    Length = std::string::append(&v33, "", 1uLL);
    v22 = *Length;
    v43[0] = *(Length + 8);
    *(v43 + 7) = *(Length + 15);
    v23 = *(Length + 23);
    *(Length + 8) = 0;
    *(Length + 16) = 0;
    *Length = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v40.__r_.__value_.__r.__words[0] = v22;
    v40.__r_.__value_.__l.__size_ = v43[0];
    *(&v40.__r_.__value_.__r.__words[1] + 7) = *(v43 + 7);
    *(&v40.__r_.__value_.__s + 23) = v23;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v17 = valuePtr.__r_.__value_.__r.__words[0];
    goto LABEL_19;
  }

  v24 = CFGetTypeID(a2);
  if (v24 == CFBooleanGetTypeID())
  {
    if (CFBooleanGetValue(a2))
    {
      v25 = "true";
    }

    else
    {
      v25 = "false";
    }

    Length = std::string::__assign_external(&v40, v25);
    goto LABEL_32;
  }

  v26 = CFGetTypeID(a2);
  v27 = CFNumberGetTypeID();
  if (v26 == v27)
  {
    valuePtr.__r_.__value_.__r.__words[0] = 0;
    Type = CFNumberGetType(a2);
    if (Type <= kCFNumberNSIntegerType && ((1 << Type) & 0xCF9E) != 0)
    {
      Type = CFNumberGetValue(a2, Type, &valuePtr);
      if (Type)
      {
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "0x", 2);
        *(v29 + *(*v29 - 24) + 8) |= 0x4000u;
        v33.__r_.__value_.__s.__data_[0] = 48;
        v30 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, &v33);
        *(v30 + *(*v30 - 24) + 8) = *(v30 + *(*v30 - 24) + 8) & 0xFFFFFFB5 | 8;
        MEMORY[0x245D31910]();
        Length = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v34, &v33);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        v40 = v33;
        goto LABEL_32;
      }
    }

    ACFULogging::getLogInstance(Type);
    ACFULogging::handleMessage();
  }

  else
  {
    ACFULogging::getLogInstance(v27);
    CFGetTypeID(a2);
    ACFULogging::handleMessage();
  }

LABEL_34:
  v34[0] = *MEMORY[0x277D82818];
  v31 = *(MEMORY[0x277D82818] + 72);
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v35 = v31;
  v36 = MEMORY[0x277D82878] + 16;
  if (v38 < 0)
  {
    operator delete(v37[7].__locale_);
  }

  v36 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v37);
  std::iostream::~basic_iostream();
  MEMORY[0x245D319A0](&v39);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_243390EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x277D82818]);
  MEMORY[0x245D319A0](va);
  if (*(v27 - 169) < 0)
  {
    operator delete(*(v27 - 192));
  }

  if (*(v27 - 137) < 0)
  {
    operator delete(*(v27 - 160));
  }

  _Unwind_Resume(a1);
}

void logPath(ACFULogging *TypeID, void *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (TypeID && (v2 = TypeID, v3 = CFGetTypeID(TypeID), TypeID = CFStringGetTypeID(), v3 == TypeID))
  {
    v5 = ACFUCommon::stringFromCFString(&v6, v2, v4);
    *__p = v6;
    v9 = v7;
    ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage();
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
  }
}

void sub_243391038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2433912D0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245D319A0](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  v6 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a2, v5, v6);
LABEL_10:
  *(a2 + v6) = 0;
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D31950](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2433914EC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D318D0](v13, a1);
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

  MEMORY[0x245D318E0](v13);
  return a1;
}

void sub_2433918AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245D318E0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24339188CLL);
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
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
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

void sub_243391AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::map<CentauriBooterBootMode,std::string>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriBooterBootMode,std::pair<CentauriBooterBootMode const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriBooterBootMode,std::pair<CentauriBooterBootMode const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__construct_node<std::pair<CentauriBooterBootMode const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<CentauriBooterBootMode,std::string>,std::__map_value_compare<CentauriBooterBootMode,std::__value_type<CentauriBooterBootMode,std::string>,std::less<CentauriBooterBootMode>,true>,std::allocator<std::__value_type<CentauriBooterBootMode,std::string>>>::__construct_node<std::pair<CentauriBooterBootMode const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_243391DCC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<CentauriFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28561AAF8;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void std::__shared_ptr_pointer<CentauriFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CentauriFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CentauriFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
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

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(uint64_t **a1, void **a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*>>(a1, a3, &v7);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_2433920EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::map<std::string,void const*>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,void const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,void const*>,std::__tree_node<std::__value_type<std::string,void const*>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<std::string,void const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,void const*>,std::__tree_node<std::__value_type<std::string,void const*>,void *> *,long>>>(uint64_t *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,void const*> const&>(v5, (v5 + 1), v4 + 4, (v4 + 4));
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

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,void const*> const&>(uint64_t **a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void **std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_243392588(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

const void *copyPatchBayData(const char *a1, const char *a2, ACFULogging *a3)
{
  v5 = dlopen(a1, 1);
  if (!v5)
  {
    copyPatchBayData(a3);
    return 0;
  }

  v6 = v5;
  v7 = dlsym(v5, a2);
  if (!v7)
  {
    copyPatchBayData(a3);
LABEL_16:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v7();
  v9 = v8;
  if (!v8)
  {
    copyPatchBayData(a3);
    goto LABEL_7;
  }

  v10 = CFGetTypeID(v8);
  TypeID = CFDataGetTypeID();
  if (v10 != TypeID)
  {
    ACFULogging::getLogInstance(TypeID);
    v14 = CFGetTypeID(v9);
    ACFUCommon::cfTypeDescription(v14);
    ACFULogging::handleMessage();
    if (v16 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_15;
  }

  Length = CFDataGetLength(v9);
  ACFULogging::getLogInstance(Length);
  if (!Length)
  {
    ACFULogging::handleMessage();
LABEL_15:
    CFRelease(v9);
    goto LABEL_16;
  }

  ACFULogging::handleMessage();
LABEL_7:
  dlclose(v6);
  return v9;
}

void sub_24339279C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<CentauriBooterBootMode,__CFString const*>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::map<CentauriBooterBootMode,CentauriTransport::BootMode>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x245D31760]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CentauriTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CentauriTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CentauriTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v7 = *(a1 + 48);
  }

  if (v7)
  {
    v10 = *a3;
    v11 = a3[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 24);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v10 = *(a1 + 16);
    }

    if (v10)
    {
      v13 = *a4;
      v14 = a4[1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      *(a1 + 32) = v13;
      *(a1 + 40) = v14;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        v13 = *(a1 + 32);
      }

      if (v13)
      {
        v16 = *(a1 + 24);
        v26 = *(a1 + 16);
        v27 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *(a1 + 32);
        }

        v18 = *(a1 + 40);
        v25 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *(a1 + 56);
        v23 = *(a1 + 48);
        v24 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ACFURTKitROM::create();
        v20 = *(a1 + 8);
        *a1 = v28;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        v21 = v27;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (*a1)
        {
          return 1;
        }

        ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v21);
      }

      else
      {
        ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v15);
      }
    }

    else
    {
      ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v12);
    }
  }

  else
  {
    ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(v9);
  }

  return 0;
}

void sub_243392B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create((v11 + 8), (v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t CentauriPlatform::getPlatformIdentifier(CentauriPlatform *this, uint64_t a2, unsigned __int16 *a3)
{
  if (qword_27ED71C70 != -1)
  {
    CentauriPlatform::getPlatformIdentifier();
  }

  if ((_MergedGlobals & 1) == 0)
  {
    CentauriPlatform::getPlatformIdentifier(this);
    return 0;
  }

  if (HIBYTE(_MergedGlobals) != 1)
  {
    *v13 = 0;
    ThunderboltDeviceInfo = CentauriPlatform::getThunderboltDeviceInfo(&v13[1], v13, a3);
    if (ThunderboltDeviceInfo)
    {
      ThunderboltIdentifier = CentauriPlatform::getThunderboltIdentifier(v13[1], v13[0]);
      v10 = ThunderboltIdentifier;
      ACFULogging::getLogInstance(ThunderboltIdentifier);
      CentauriPlatform::thunderboltIdentifierToString(v10, &__p);
      v6 = ACFULogging::handleMessage();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = v10 | 0x80000000;
      goto LABEL_14;
    }

    ACFULogging::getLogInstance(ThunderboltDeviceInfo);
    goto LABEL_19;
  }

  v3 = MGGetSInt64Answer();
  v4 = MGGetSInt64Answer();
  v5 = v4;
  if (!v3 || !v4)
  {
    ACFULogging::getLogInstance(v4);
LABEL_19:
    ACFULogging::handleMessage();
    return 0;
  }

  ACFULogging::getLogInstance(v4);
  if (v3 >= 0x10000 || v5 >= 0x8000)
  {
    goto LABEL_19;
  }

  v6 = ACFULogging::handleMessage();
  v7 = v3 | ((v5 & 0x7FFF) << 16);
LABEL_14:
  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  return v7;
}

void sub_243392DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(CentauriPlatform *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  parent = 0;
  v36 = 0;
  valuePtr = 0;
  if (!this || !a2)
  {
    CentauriPlatform::getThunderboltDeviceInfo(this);
    return 0;
  }

  v5 = IOServiceMatching("AppleCentauriManager");
  if (!v5)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    return 0;
  }

  v6 = *MEMORY[0x277CD2898];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v5);
  if (!MatchingService)
  {
    CentauriPlatform::getThunderboltDeviceInfo(MatchingService);
    return 0;
  }

  v8 = MatchingService;
  v9 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Thunderbolt Path", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    v29 = 0;
    goto LABEL_25;
  }

  v11 = CFProperty;
  v12 = CFGetTypeID(CFProperty);
  TypeID = CFStringGetTypeID();
  if (v12 != TypeID)
  {
    ACFULogging::getLogInstance(TypeID);
    v31 = CFGetTypeID(v11);
    ACFUCommon::cfTypeDescription(v31);
    ACFULogging::handleMessage();
    if (v35 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_35;
  }

  v14 = IORegistryEntryCopyFromPath(v6, v11);
  if (!v14)
  {
    CentauriPlatform::getThunderboltDeviceInfo(v14);
LABEL_35:
    v29 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  ParentEntry = IORegistryEntryGetParentEntry(v14, "IOService", &parent);
  if (ParentEntry)
  {
    v17 = 1;
  }

  else
  {
    v17 = parent == 0;
  }

  if (v17)
  {
    CentauriPlatform::getThunderboltDeviceInfo(ParentEntry);
LABEL_38:
    v29 = 0;
    goto LABEL_23;
  }

  v18 = IORegistryEntryCreateCFProperty(parent, @"Device Vendor ID", v9, 0);
  if (!v18)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  v21 = CFNumberGetTypeID();
  if (v20 != v21)
  {
    ACFULogging::getLogInstance(v21);
    v32 = CFGetTypeID(v19);
    ACFUCommon::cfTypeDescription(v32);
    ACFULogging::handleMessage();
    if (v35 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_42;
  }

  v22 = IORegistryEntryCreateCFProperty(parent, @"Device Model ID", v9, 0);
  if (!v22)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
LABEL_42:
    v29 = 0;
    goto LABEL_22;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  v25 = CFNumberGetTypeID();
  if (v24 != v25)
  {
    ACFULogging::getLogInstance(v25);
    v33 = CFGetTypeID(v23);
    ACFUCommon::cfTypeDescription(v33);
    ACFULogging::handleMessage();
    if (v35 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_49;
  }

  Value = CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    CentauriPlatform::getThunderboltDeviceInfo(Value);
LABEL_49:
    v29 = 0;
    goto LABEL_21;
  }

  if (valuePtr >= 0x10000)
  {
    CentauriPlatform::getThunderboltDeviceInfo(&valuePtr);
    goto LABEL_49;
  }

  v27 = CFNumberGetValue(v23, kCFNumberSInt64Type, &v36);
  if (!v27)
  {
    CentauriPlatform::getThunderboltDeviceInfo(v27);
    goto LABEL_49;
  }

  v28 = v36;
  if (v36 >= 0x10000)
  {
    CentauriPlatform::getThunderboltDeviceInfo(&v36);
    goto LABEL_49;
  }

  *this = valuePtr;
  *a2 = v28;
  v29 = 1;
LABEL_21:
  CFRelease(v23);
LABEL_22:
  CFRelease(v19);
LABEL_23:
  IOObjectRelease(v15);
LABEL_24:
  CFRelease(v11);
LABEL_25:
  IOObjectRelease(v8);
  return v29;
}

void sub_2433931A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriPlatform::getThunderboltIdentifier(CentauriPlatform *this, int a2)
{
  if (a2 == 45067 && this == 238)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (a2 == 56869 && this == 90)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  return v5;
}

void CentauriPlatform::thunderboltIdentifierToString(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v17, "generic");
  v18 = 1;
  std::string::basic_string[abi:ne200100]<0>(v19, "Thunderstrike");
  v20 = 2;
  std::string::basic_string[abi:ne200100]<0>(v21, "TigrisCreek");
  std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](v13, v16, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v21[i + 2]) < 0)
    {
      operator delete(v21[i]);
    }
  }

  v5 = v14[0];
  if (!v14[0])
  {
    goto LABEL_13;
  }

  v6 = v14;
  do
  {
    v7 = v5[32];
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 != v14 && *(v6 + 32) <= a1)
  {
    v11 = std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(v13, &v15);
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v11, v11[1]);
    }

    else
    {
      v12 = *v11;
      a2->__r_.__value_.__r.__words[2] = v11[2];
      *&a2->__r_.__value_.__l.__data_ = v12;
    }
  }

  else
  {
LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v13, v14[0]);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2433933E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke()
{
  parent = 0;
  v0 = IOServiceMatching("AppleCentauriManager");
  if (v0)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v0);
    v2 = MatchingService;
    if (MatchingService)
    {
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v4 = 1;
      }

      else
      {
        v4 = parent == 0;
      }

      if (v4)
      {
        ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_1(ParentEntry);
      }

      else
      {
        v5 = *MEMORY[0x277CBECE8];
        CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin", *MEMORY[0x277CBECE8], 0);
        if (CFProperty)
        {
          _MergedGlobals = 257;
        }

        else
        {
          CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin-protium", v5, 0);
          HIBYTE(_MergedGlobals) = CFProperty != 0;
          LOBYTE(_MergedGlobals) = 1;
          if (!CFProperty)
          {
            goto LABEL_11;
          }
        }

        CFRelease(CFProperty);
      }
    }

    else
    {
      ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_2(MatchingService);
    }
  }

  else
  {
    ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_3(0);
    v2 = 0;
  }

LABEL_11:
  result = parent;
  if (parent)
  {
    result = IOObjectRelease(parent);
    parent = 0;
  }

  if (v2)
  {
    return IOObjectRelease(v2);
  }

  return result;
}

uint64_t *std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[32] = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_243393918(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriFirmware::create(uint64_t *a1@<X1>, RTKitFirmware **a2@<X8>)
{
  v4 = operator new(0x68uLL);
  RTKitFirmware::RTKitFirmware(v4);
  *v4 = &unk_28561AC38;
  *(v4 + 11) = 0;
  *(v4 + 12) = 0;
  *a2 = v4;
  CentauriCommon::getTatsuTagToFileNameMap(v9);
  v5 = RTKitFirmware::init();
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v9, v10);
  if (v5)
  {
    v7 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v4 + 12);
    *(v4 + 11) = v7;
    *(v4 + 12) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    *a2 = 0;
    (*(*v4 + 56))(v4);
  }
}

void sub_243393A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

void CentauriFirmware::CentauriFirmware(CentauriFirmware *this)
{
  RTKitFirmware::RTKitFirmware(this);
  *v1 = &unk_28561AC38;
  v1[11] = 0;
  v1[12] = 0;
}

void CentauriFirmware::createEmpty(ACFUCommon *a1@<X0>, uint64_t *a2@<X1>, RTKitFirmware **a3@<X8>)
{
  v6 = operator new(0x68uLL);
  RTKitFirmware::RTKitFirmware(v6);
  *v6 = &unk_28561AC38;
  *(v6 + 11) = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  CentauriCommon::getTatsuTagToFileNameMap(v14);
  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(a1, @"/usr/standalone/firmware/Centauri/", v7);
  if (URLByAppendingStrings)
  {
    std::map<__CFString const*,std::string>::map[abi:ne200100](v13, v14);
    v9 = RTKitFirmware::init();
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v13, v13[1]);
    if (v9)
    {
      v11 = *a2;
      v10 = a2[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(v6 + 12);
      *(v6 + 11) = v11;
      *(v6 + 12) = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    else
    {
      *a3 = 0;
      (*(*v6 + 56))(v6);
    }

    CFRelease(URLByAppendingStrings);
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    *a3 = 0;
    (*(*v6 + 56))(v6);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v14, v15);
}

void sub_243393C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, char a18, char *a19)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21 + 24, a16);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a18, a19);
  *v20 = 0;
  if (v19)
  {
    (*(*v19 + 56))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t CentauriFirmware::setNVRAM(uint64_t a1, uint64_t a2)
{
  v55 = 0;
  v54 = 0;
  cf = 0;
  isCentauriBuiltin = CentauriPlatform::isCentauriBuiltin(&v55, a2);
  if ((isCentauriBuiltin & 1) == 0)
  {
    ACFULogging::getLogInstance(isCentauriBuiltin);
LABEL_80:
    v17 = 0;
    ACFULogging::handleMessage();
    goto LABEL_86;
  }

  if (v55 != 1)
  {
    goto LABEL_13;
  }

  v6 = CentauriFirmware::copyRFEM(&v54, v5);
  if ((v6 & 1) == 0)
  {
    ACFULogging::getLogInstance(v6);
    goto LABEL_80;
  }

  if (v54)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rfem");
    v52 = v54;
    v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(a2, __p, __p);
    v9 = v7;
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  v10 = CentauriFirmware::copyWSKU(&cf, v7);
  if ((v10 & 1) == 0)
  {
LABEL_79:
    ACFULogging::getLogInstance(v10);
    goto LABEL_80;
  }

  if (cf)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "wsku");
    v52 = cf;
    v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(a2, __p, __p);
    v12 = v11;
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v12 & 1) == 0)
    {
LABEL_85:
      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
      v17 = 0;
      goto LABEL_86;
    }
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
  v13 = ACFUFirmware::copyFWDataByFileName();
  v15 = v13;
  if ((v51 & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_35:
    ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage();
    v10 = ACFURTKitNVRMGenerator::create();
    v17 = __p[0];
    if (__p[0])
    {
      v29 = ACFURTKitNVRMGenerator::copy(__p[0]);
      if (v29)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
        v32 = RTKitFirmware::addTagWithData();
        v33 = v32;
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v33)
        {
          ACFULogging::getLogInstance(v32);
          ACFULogging::handleMessage();
          goto LABEL_43;
        }

        ACFULogging::getLogInstance(v32);
        ACFULogging::handleMessage();
        goto LABEL_83;
      }

      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
LABEL_86:
      v42 = 0;
      goto LABEL_60;
    }

    goto LABEL_79;
  }

  operator delete(__p[0]);
  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_15:
  v16 = ACFURTKitNVRMGenerator::create(__p, v15, v14);
  v17 = __p[0];
  if (!__p[0])
  {
    ACFULogging::getLogInstance(v16);
    v17 = 0;
    ACFULogging::handleMessage();
    v42 = 0;
    goto LABEL_59;
  }

  if (!*(a2 + 16))
  {
    ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage();
    v29 = 0;
    goto LABEL_43;
  }

  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  v20 = *a2;
  v18 = (a2 + 8);
  v19 = v20;
  if (v20 == v18)
  {
LABEL_29:
    v29 = ACFURTKitNVRMGenerator::copy(v17);
    if (!v29)
    {
      goto LABEL_77;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
    updated = RTKitFirmware::updateTagWithData();
    v31 = updated;
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v31)
    {
      ACFULogging::getLogInstance(updated);
      ACFULogging::handleMessage();
LABEL_43:
      ACFURTKitNVRMGenerator::log(v17);
      if (v29 || (v29 = ACFURTKitNVRMGenerator::copy(v17)) != 0)
      {
        if (*(a1 + 88))
        {
          ACFUDiagnostics::addItem();
        }

        std::string::basic_string[abi:ne200100]<0>(&v46, "bootargs");
        Length = ACFURTKitNVRMGenerator::copyVariable();
        v35 = Length;
        if (v47 < 0)
        {
          operator delete(v46);
          if (!v35)
          {
            goto LABEL_56;
          }
        }

        else if (!Length)
        {
          goto LABEL_56;
        }

        Length = CFDataGetLength(v35);
        if (Length >= 1)
        {
          BytePtr = CFDataGetBytePtr(v35);
          v37 = CFDataGetLength(v35);
          v38 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], BytePtr, v37, 0x8000100u, 0);
          v40 = v38;
          if (v38)
          {
            v41 = ACFUCommon::stringFromCFString(__p, v38, v39);
            ACFULogging::getLogInstance(v41);
            ACFULogging::handleMessage();
            if (v51 < 0)
            {
              operator delete(__p[0]);
            }

            CFRelease(v40);
            v42 = 1;
          }

          else
          {
            ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage();
            v42 = 0;
          }

LABEL_57:
          CFRelease(v35);
          goto LABEL_58;
        }

LABEL_56:
        ACFULogging::getLogInstance(Length);
        ACFULogging::handleMessage();
        v42 = 1;
        if (!v35)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

LABEL_77:
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      goto LABEL_70;
    }

    ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage();
LABEL_83:
    v42 = 0;
LABEL_58:
    CFRelease(v29);
    if (!v15)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  while (1)
  {
    v21 = (v19 + 4);
    v22 = (v19 + 4);
    if (*(v19 + 55) < 0)
    {
      v22 = *v21;
    }

    std::string::basic_string[abi:ne200100]<0>(&v48, v22);
    v23 = v19[7];
    v24 = ACFURTKitNVRMGenerator::add();
    v25 = v24;
    if (v49 < 0)
    {
      operator delete(v48);
    }

    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = v19[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v19[2];
        v28 = *v27 == v19;
        v19 = v27;
      }

      while (!v28);
    }

    v19 = v27;
    if (v27 == v18)
    {
      goto LABEL_29;
    }
  }

  ACFULogging::getLogInstance(v24);
  if (*(v19 + 55) < 0)
  {
    v45 = *v21;
  }

  ACFULogging::handleMessage();
LABEL_70:
  v42 = 0;
  if (v15)
  {
LABEL_59:
    CFRelease(v15);
  }

LABEL_60:
  if (v54)
  {
    CFRelease(v54);
    v54 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    v43 = MEMORY[0x245D317D0](v17);
    operator delete(v43);
  }

  return v42;
}

uint64_t CentauriFirmware::copyRFEM(CentauriFirmware *this, const __CFData **a2)
{
  v2 = this;
  if (!this)
  {
    CentauriFirmware::copyRFEM(0);
    return v2;
  }

  v3 = IOServiceNameMatching("centauri");
  if (!v3)
  {
    CentauriFirmware::copyRFEM(0);
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
  if (!MatchingService)
  {
    CentauriFirmware::copyRFEM(MatchingService);
    return 0;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"wifi-rfem-info", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    TypeID = CFDataGetTypeID();
    if (v8 != TypeID)
    {
      CFRelease(v7);
      ACFULogging::getLogInstance(v15);
      ACFUCommon::cfTypeDescription(v8);
      ACFULogging::handleMessage();
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18);
      }

      v2 = 0;
      goto LABEL_15;
    }

    ACFULogging::getLogInstance(TypeID);
    std::string::basic_string[abi:ne200100]<0>(&v16, "CentauriFirmware");
    v10 = std::string::append(&v16, "::", 2uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v17, "copyRFEM", 8uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    v18 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    *v2 = v7;
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  v2 = 1;
LABEL_15:
  IOObjectRelease(v5);
  return v2;
}

void sub_243394704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::copyWSKU(CentauriFirmware *this, const __CFString **a2)
{
  v2 = this;
  if (this)
  {
    v3 = MGCopyAnswer();
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      TypeID = CFDataGetTypeID();
      if (v5 == TypeID)
      {
        Length = CFDataGetLength(v4);
        if (Length == 16)
        {
          BytePtr = CFDataGetBytePtr(v4);
          v9 = BytePtr;
          v10 = *BytePtr;
          if (*BytePtr == 0x1000000)
          {
            ACFULogging::getLogInstance(BytePtr);
            ACFULogging::handleMessage();
            *v9 = vrev32q_s8(*v9);
            v10 = v9->i32[0];
          }

          if (v10 == 1)
          {
            v11 = 0;
            v12 = &v9->i8[8];
            do
            {
              if (*(v11 + v12) < 0)
              {
                CentauriFirmware::copyWSKU(v11);
                goto LABEL_20;
              }

              v11 = (v11 + 1);
            }

            while (v11 != 8);
            v13 = *v12;
            ACFULogging::getLogInstance(8);
            if (!v13)
            {
              ACFULogging::handleMessage();
              goto LABEL_16;
            }

            ACFULogging::handleMessage();
            v14 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v12, 0x8000100u);
            if (v14)
            {
              *v2 = v14;
LABEL_16:
              v2 = 1;
              goto LABEL_17;
            }

            CentauriFirmware::copyWSKU(0);
          }

          else
          {
            CentauriFirmware::copyWSKU(v9);
          }
        }

        else
        {
          CentauriFirmware::copyWSKU(Length);
        }
      }

      else
      {
        ACFULogging::getLogInstance(TypeID);
        ACFUCommon::cfTypeDescription(v5);
        ACFULogging::handleMessage();
        if (v17 < 0)
        {
          operator delete(__p);
        }
      }

LABEL_20:
      v2 = 0;
LABEL_17:
      CFRelease(v4);
    }

    else
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      return 1;
    }
  }

  else
  {
    CentauriFirmware::copyWSKU(0);
  }

  return v2;
}

void sub_2433949A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::setCalibration(CentauriFirmware *this, const __CFArray *a2, uint64_t a3, uint64_t a4, int a5, char a6, char a7, char a8)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v8 = CentauriFirmware::copyCalibrationData(a2, a3, a4, a6, a7, a8, a5, &v46);
  if ((v8 & 1) == 0)
  {
    goto LABEL_49;
  }

  v9 = v46;
  v10 = v47;
  if (v46 == v47)
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(bytes, "_cal");
    v31 = (*(*this + 40))(this, bytes);
    v32 = v31;
    if (SBYTE3(v50) < 0)
    {
      operator delete(*bytes);
      if (!v32)
      {
LABEL_36:
        v34 = 1;
        goto LABEL_37;
      }
    }

    else if (!v31)
    {
      goto LABEL_36;
    }

    ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(bytes, "_cal");
    v8 = RTKitFirmware::removeTag();
    v35 = v8;
    if (SBYTE3(v50) < 0)
    {
      operator delete(*bytes);
    }

    if (!v35)
    {
      goto LABEL_36;
    }

LABEL_49:
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
    goto LABEL_50;
  }

  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v12 = Mutable;
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
LABEL_50:
    v34 = 0;
    goto LABEL_37;
  }

  v13 = v10 - v9;
  memset(v51, 0, sizeof(v51));
  v14 = 0x8E38E38E38E38E39 * v13;
  v50 = 0u;
  *&bytes[4] = 0u;
  *bytes = 954437177 * v13;
  CFDataAppendBytes(Mutable, bytes, 64);
  CFDataIncreaseLength(v12, v14 << 6);
  Length = CFDataGetLength(v12);
  v16 = 0;
  v17 = 0;
  v18 = v46;
  do
  {
    v19 = CFDataGetLength(v18[9 * v16]);
    if (v46[9 * v16 + 3])
    {
      v20 = "fdr";
    }

    else
    {
      v20 = "raw";
    }

    v21 = CFStringCreateWithFormat(alloc, 0, @"cal-file-%u-%s.bin", v17, v20, v40, v41);
    if (!v21)
    {
      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      goto LABEL_46;
    }

    if (*(this + 11))
    {
      v22 = v46[9 * v16];
      ACFUDiagnostics::addItem();
    }

    CFRelease(v21);
    ACFULogging::getLogInstance(v23);
    if (v46[9 * v16 + 3])
    {
      v24 = "fdr";
    }

    else
    {
      v24 = "raw";
    }

    v40 = v19;
    v41 = v24;
    ACFULogging::handleMessage();
    v25 = &v46[9 * v16];
    *(v25 + 4) = Length;
    *(v25 + 5) = v19;
    v53.location = (v16 << 6) + 64;
    v53.length = 64;
    CFDataReplaceBytes(v12, v53, v25 + 8, 64);
    BytePtr = CFDataGetBytePtr(v46[9 * v16]);
    CFDataAppendBytes(v12, BytePtr, v19);
    v18 = v46;
    Length += HIDWORD(v46[9 * v16 + 2]);
    v16 = (v17 + 1);
    v17 = v16;
  }

  while (v14 > v16);
  if (*(this + 11))
  {
    ACFUDiagnostics::addItem();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
  v27 = (*(*this + 40))(this, __p);
  v28 = v27;
  if (v45 < 0)
  {
    operator delete(__p[0]);
    if (!v28)
    {
      goto LABEL_27;
    }

LABEL_19:
    ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
    updated = RTKitFirmware::updateTagWithData();
    v30 = updated;
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v30)
    {
LABEL_30:
      ACFULogging::getLogInstance(updated);
      ACFULogging::handleMessage();
      v34 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
    updated = RTKitFirmware::addTagWithData();
    v33 = updated;
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v33)
    {
      goto LABEL_30;
    }
  }

  ACFULogging::getLogInstance(updated);
  ACFULogging::handleMessage();
LABEL_46:
  v34 = 0;
LABEL_31:
  CFRelease(v12);
LABEL_37:
  v36 = v46;
  v37 = v47;
  if (v46 != v47)
  {
    do
    {
      if (*v36)
      {
        CFRelease(*v36);
        *v36 = 0;
      }

      v36 += 9;
    }

    while (v36 != v37);
    v36 = v46;
  }

  if (v36)
  {
    v47 = v36;
    operator delete(v36);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v34;
}