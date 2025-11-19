void sub_1E50EAFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21QMIRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v2[6];
      if (v6)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, v2 + 1);
        v7 = *(a1 + 64);
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v8[0] = &unk_1F5EBDEF8;
        v8[1] = &_bambiDomain;
        v9 = 0;
        (**v6)(v6, &v14, a1 + 40, v7, v8);
        ImsResult::~ImsResult(v8);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E50EB180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

BOOL QMIRTPStackController::controllerInitialized(QMIRTPStackController *this)
{
  if (!*(this + 23))
  {
    return 0;
  }

  v1 = *(this + 21);
  v2 = this + 176;
  if (v1 == this + 176)
  {
    return 1;
  }

  do
  {
    v3 = *(v1 + 8);
    result = v3 == 2;
    if (v3 != 2)
    {
      break;
    }

    v5 = *(v1 + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(v1 + 2);
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

void QMIRTPStackController::cleanup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&ProfileByStackId, "rtp.qmistackcontroller");
  v85[0] = 0;
  v88 = 0;
  v7 = ims::debug(v6, v85);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "cleanup", 7);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [stackId=", 10);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", deinitialize=", 15);
  *(v8 + 17) = 0;
  if (a3)
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  (*(*v8 + 32))(v8, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v84 < 0)
  {
    operator delete(__p[0]);
  }

  if (v88 == 1 && v87 < 0)
  {
    operator delete(v86);
  }

  if (v91 < 0)
  {
    operator delete(ProfileByStackId);
  }

  v13 = *(a2 + 23);
  if (v13 < 0)
  {
    if (*(a2 + 8) != 15)
    {
      goto LABEL_21;
    }

    v14 = *a2;
  }

  else
  {
    v14 = a2;
    if (v13 != 15)
    {
      goto LABEL_21;
    }
  }

  v15 = *v14;
  v16 = *(v14 + 7);
  v17 = v15 == 0x536C6C41494D516BLL && v16 == 0x736E6F6973736553;
  if (v17)
  {
    v78 = a3;
    v40 = *(a1 + 120);
    for (i = *(a1 + 128); v40 != i; v40 += 2)
    {
      v42 = v40[1];
      if (v42)
      {
        v43 = *v40;
        atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v44 = std::__shared_weak_count::lock(v42);
        if (v44)
        {
          v45 = v44;
          if (v43)
          {
            v47 = *(v43 + 8);
            v46 = v43 + 8;
            (*(v47 + 152))(&ProfileByStackId, v46);
            if (v90)
            {
              v48 = std::__shared_weak_count::lock(v90);
              if (v48)
              {
                v49 = ProfileByStackId;
              }

              else
              {
                v49 = 0;
              }

              if (v90)
              {
                std::__shared_weak_count::__release_weak(v90);
              }

              if (v49)
              {
                v81 = v46;
                v82 = v45;
                atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
                (*(*v49 + 8))(v49, &v81, 13);
                if (v82)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v82);
                }
              }

              if (v48)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v48);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        std::__shared_weak_count::__release_weak(v42);
      }
    }

    std::vector<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100]((a1 + 120));
    v19 = 0;
    v18 = *(a1 + 128);
    LODWORD(a3) = v78;
    goto LABEL_87;
  }

LABEL_21:
  v18 = *(a1 + 120);
  if (v18 != *(a1 + 128))
  {
    v19 = 0;
    while (1)
    {
      v20 = *(v18 + 8);
      if (!v20)
      {
        break;
      }

      v21 = std::__shared_weak_count::lock(v20);
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = *v18;
      if (!*v18)
      {
        goto LABEL_41;
      }

      v23 = *(v22 + 87);
      if (v23 >= 0)
      {
        v24 = *(v22 + 87);
      }

      else
      {
        v24 = *(v22 + 72);
      }

      v25 = *(a2 + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a2 + 8);
      }

      if (v24 != v25 || (v23 >= 0 ? (v27 = (v22 + 64)) : (v27 = *(v22 + 64)), (v28 = *a2, v26 >= 0) ? (v29 = a2) : (v29 = *a2), memcmp(v27, v29, v24)))
      {
        v18 += 16;
LABEL_47:
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        goto LABEL_48;
      }

      v33 = v22 + 8;
      MediaSessionDriver::cancelAllTimers((v22 + 8));
      v34 = a3;
      v77 = *(v22 + 368);
      v35 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>((v18 + 16), *(a1 + 128), v18);
      for (j = *(a1 + 128); j != v35; j -= 16)
      {
        v37 = *(j - 8);
        if (v37)
        {
          std::__shared_weak_count::__release_weak(v37);
        }
      }

      *(a1 + 128) = v35;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      QMIRTPCommandDriver::sessionInternalUninitializeReq(*(a1 + 384), *(v22 + 362), (v22 + 64));
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      (*(*v33 + 152))(&ProfileByStackId, v22 + 8);
      a3 = v34;
      v19 = v77;
      if (v90)
      {
        v38 = std::__shared_weak_count::lock(v90);
        if (v38)
        {
          v39 = ProfileByStackId;
        }

        else
        {
          v39 = 0;
        }

        if (v90)
        {
          std::__shared_weak_count::__release_weak(v90);
        }

        if (v39)
        {
          v79 = v22 + 8;
          v80 = v21;
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          (*(*v39 + 8))(v39, &v79, 13);
          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }
        }

        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }
      }

      if ((*(*v33 + 176))(v22 + 8) == *(a1 + 104))
      {
        *(a1 + 104) = 0;
      }

LABEL_46:
      if (v21)
      {
        goto LABEL_47;
      }

LABEL_48:
      if (v18 == *(a1 + 128))
      {
        goto LABEL_87;
      }
    }

    v21 = 0;
LABEL_41:
    v30 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>((v18 + 16), *(a1 + 128), v18);
    for (k = *(a1 + 128); k != v30; k -= 16)
    {
      v32 = *(k - 8);
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }
    }

    *(a1 + 128) = v30;
    goto LABEL_46;
  }

  v19 = 0;
LABEL_87:
  if (*(a1 + 120) == v18)
  {
    *(a1 + 104) = 0;
    QMIRTPCommandDriver::sendAudioCallEvent(*(a1 + 384), 0, a2, 3u, v19 & 1);
    QMIRTPCommandDriver::uninitializeAllSessionsReq(*(a1 + 384), a2, 255);
    *(a1 + 112) = 0;
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v50 = *(a2 + 23);
  if (v50 < 0)
  {
    if (*(a2 + 8) != 15)
    {
      goto LABEL_100;
    }

    v51 = *a2;
LABEL_96:
    v52 = *v51;
    v53 = *(v51 + 7);
    if (v52 == 0x536C6C41494D516BLL && v53 == 0x736E6F6973736553)
    {
      SipTimerContainer::cancelAllTimers((a1 + 216));
      std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(a1 + 176));
      *(a1 + 168) = a1 + 176;
      *(a1 + 184) = 0;
      *(a1 + 176) = 0;
      std::__tree<unsigned int>::destroy(a1 + 192, *(a1 + 200));
      *(a1 + 192) = a1 + 200;
      *(a1 + 200) = 0;
      v69 = *(a1 + 152);
      v68 = (a1 + 152);
      v68[7] = 0;
      std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v69);
      *v68 = 0;
      v68[1] = 0;
      *(v68 - 1) = v68;
      return;
    }

    goto LABEL_100;
  }

  v51 = a2;
  if (v50 == 15)
  {
    goto LABEL_96;
  }

LABEL_100:
  HIDWORD(v90) = 0;
  ProfileByStackId = QMIRTPStackController::getProfileByStackId(a1, a2);
  LODWORD(v90) = v55;
  BYTE4(v90) = BYTE4(v55);
  if ((v55 & 0x100000000) != 0)
  {
    v56 = *(a1 + 144);
    if (v56 != (a1 + 152))
    {
      v57 = 0;
      do
      {
        if (*(v56 + 16) == v55)
        {
          ++v57;
        }

        v58 = v56[1];
        if (v58)
        {
          do
          {
            v59 = v58;
            v58 = *v58;
          }

          while (v58);
        }

        else
        {
          do
          {
            v59 = v56[2];
            v17 = *v59 == v56;
            v56 = v59;
          }

          while (!v17);
        }

        v56 = v59;
      }

      while (v59 != (a1 + 152));
      if (v57 == 1)
      {
        __p[0] = &v90;
        *(std::__tree<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 168, v55) + 8) = 0;
        if ((BYTE4(v90) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v60 = *(a1 + 200);
        if (v60)
        {
          v61 = a1 + 200;
          v62 = *(a1 + 200);
          do
          {
            v63 = *(v62 + 28);
            v64 = v63 >= v90;
            v65 = v63 < v90;
            if (v64)
            {
              v61 = v62;
            }

            v62 = *(v62 + 8 * v65);
          }

          while (v62);
          if (v61 != a1 + 200 && *(v61 + 28) <= v90)
          {
            v66 = *(v61 + 8);
            if (v66)
            {
              do
              {
                v67 = v66;
                v66 = *v66;
              }

              while (v66);
            }

            else
            {
              v70 = v61;
              do
              {
                v67 = v70[2];
                v17 = *v67 == v70;
                v70 = v67;
              }

              while (!v17);
            }

            if (*(a1 + 192) == v61)
            {
              *(a1 + 192) = v67;
            }

            --*(a1 + 208);
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v60, v61);
            operator delete(v61);
          }
        }
      }
    }
  }

  v71 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 144, a2);
  if (a1 + 152 != v71)
  {
    v72 = v71;
    v73 = *(v71 + 8);
    if (v73)
    {
      do
      {
        v74 = v73;
        v73 = *v73;
      }

      while (v73);
    }

    else
    {
      v75 = v71;
      do
      {
        v74 = v75[2];
        v17 = *v74 == v75;
        v75 = v74;
      }

      while (!v17);
    }

    if (*(a1 + 144) == v71)
    {
      *(a1 + 144) = v74;
    }

    v76 = *(a1 + 152);
    --*(a1 + 160);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v76, v72);
    if (*(v72 + 55) < 0)
    {
      operator delete(*(v72 + 32));
    }

    operator delete(v72);
  }
}

void sub_1E50EBADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void QMIRTPStackController::handleStackInitializeResponse(QMIRTPStackController *this, unsigned int a2, int a3)
{
  v52 = a2;
  v5 = std::string::basic_string[abi:ne200100]<0>(v42, "rtp.qmistackcontroller");
  v48[0] = 0;
  v51 = 0;
  v6 = ims::debug(v5, v48);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleStackInitializeResponse", 29);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [instance=", 11);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), v52);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", result= ", 10);
  *(v7 + 17) = 0;
  if (a3)
  {
    v11 = "true";
  }

  else
  {
    v11 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v11);
  (*(*v7 + 32))(v7, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if ((v41[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v42[0] = &unk_1F5EBDEF8;
  v42[1] = &_bambiDomain;
  v43 = 0;
  if ((a3 & 1) == 0)
  {
    memset(&v41[8], 0, 64);
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    *v41 = 0x40000000;
    ImsResult::operator=(v42, __p);
    ImsResult::~ImsResult(__p);
  }

  __p[0] = &v52;
  *(std::__tree<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 168, v52) + 8) = 2;
  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  v12 = *(this + 18);
  if (v12 != (this + 152))
  {
    v13 = 0;
    v14 = v39;
    while (1)
    {
      __p[0] = 0;
      if (v14 == v39)
      {
        v16 = v39;
        if (!v13)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v15 = v39;
        if (v13)
        {
          do
          {
            v16 = v13;
            v13 = *(v13 + 1);
          }

          while (v13);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v17 = *v16 == v15;
            v15 = v16;
          }

          while (v17);
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, v12 + 4) & 0x80) == 0)
        {
          v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v38, __p, v12 + 4);
          goto LABEL_25;
        }

        if (!v39[0])
        {
LABEL_28:
          __p[0] = v39;
LABEL_29:
          operator new();
        }
      }

      __p[0] = v16;
      v18 = v16 + 1;
LABEL_25:
      if (!*v18)
      {
        goto LABEL_29;
      }

      v19 = *(v12 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v12 + 2);
          v17 = *v20 == v12;
          v12 = v20;
        }

        while (!v17);
      }

      if (v20 == (this + 152))
      {
        v21 = v38;
        if (v38 != v39)
        {
          do
          {
            *__p = 0u;
            memset(v41, 0, 24);
            if (*(v21 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(__p, v21[4], v21[5]);
            }

            else
            {
              *__p = *(v21 + 2);
              *v41 = v21[6];
            }

            *&v41[16] = *(v21 + 16);
            *&v41[8] = v21[7];
            if (*&v41[16] == v52)
            {
              std::string::basic_string[abi:ne200100]<0>(&v37, "rtp.qmistackcontroller");
              v33[0] = 0;
              v36 = 0;
              v22 = ims::debug(&v37, v33);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "QMI Stack Controller initialized!", 33);
              *(v22 + 17) = 0;
              (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v22 + 17) = 0;
              if (v36 == 1 && v35 < 0)
              {
                operator delete(v34);
              }

              if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v37.__r_.__value_.__l.__data_);
              }

              memset(&v37, 0, sizeof(v37));
              if ((v41[7] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(&v37, __p[0], __p[1]);
              }

              else
              {
                *&v37.__r_.__value_.__l.__data_ = *__p;
                v37.__r_.__value_.__r.__words[2] = *v41;
              }

              v23 = *(this + 7);
              if (v23)
              {
                v24 = std::__shared_weak_count::lock(v23);
                if (v24)
                {
                  v25 = v24;
                  v26 = *(this + 6);
                  if (v26)
                  {
                    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v31, this + 1);
                    v27 = v41[8];
                    ImsResult::ImsResult(v30, v42);
                    (**v26)(v26, &v31, &v37, v27, v30);
                    ImsResult::~ImsResult(v30);
                    if (v32)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                    }
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                }
              }

              if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v37.__r_.__value_.__l.__data_);
              }
            }

            if ((v41[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            v28 = v21[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v21[2];
                v17 = *v29 == v21;
                v21 = v29;
              }

              while (!v17);
            }

            v21 = v29;
          }

          while (v29 != v39);
        }

        break;
      }

      v14 = v38;
      v13 = v39[0];
      v12 = v20;
    }
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v39[0]);
  ImsResult::~ImsResult(v42);
}

void sub_1E50EC240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  ImsResult::~ImsResult(&a41);
  ImsResult::~ImsResult((v46 - 232));
  _Unwind_Resume(a1);
}

void QMIRTPStackController::initializeQMISession(uint64_t a1, char **a2, uint64_t a3, int a4, uint64_t *a5, int a6)
{
  if (*a2)
  {
    v9 = a5[1];
    if (v9)
    {
      v13 = std::__shared_weak_count::lock(v9);
      if (v13)
      {
        v14 = *a5;
        if (*a5)
        {
          memset(&v64, 0, sizeof(v64));
          v15 = *(v14 + 128);
          if (v15)
          {
            v16 = std::__shared_weak_count::lock(v15);
            if (v16)
            {
              v17 = *(v14 + 120);
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
            v16 = 0;
          }

          if (*(v17 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v64, *(v17 + 4432), *(v17 + 4440));
          }

          else
          {
            v64 = *(v17 + 4432);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (a1 + 152 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 144, &v64.__r_.__value_.__l.__data_))
          {
            std::string::basic_string[abi:ne200100]<0>(&v51, "rtp.qistackcontroller");
            v47[0] = 0;
            v50 = 0;
            v32 = ims::error(&v51, v47);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Driver for stack ", 17);
            *(v32 + 17) = 0;
            (*(*v32 + 32))(v32, &v64);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " does not exist or has not been initialized", 43);
            *(v32 + 17) = 0;
            (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v32 + 17) = 0;
            if (v50 == 1 && v49 < 0)
            {
              operator delete(v48);
            }

            if (v53 < 0)
            {
              operator delete(v51);
            }

            (*(*(*a2 + 1) + 152))(&v51);
            if (!v52)
            {
              goto LABEL_81;
            }

            v33 = std::__shared_weak_count::lock(v52);
            if (v33)
            {
              v34 = v51;
            }

            else
            {
              v34 = 0;
            }

            if (v52)
            {
              std::__shared_weak_count::__release_weak(v52);
            }

            if (v34)
            {
              v35 = a2[1];
              if (*a2)
              {
                v36 = (*a2 + 8);
              }

              else
              {
                v36 = 0;
              }

              v45 = v36;
              v46 = v35;
              if (v35)
              {
                atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (**v34)(v34, &v45, 9);
              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }
            }

            if (!v33)
            {
              goto LABEL_81;
            }

            v37 = v33;
          }

          else
          {
            v30 = *a2;
            if (a4 == 2)
            {
              v30[364] = 1;
              if (a6)
              {
                v30[365] = 1;
                if ((*(a1 + 112) & 1) == 0)
                {
                  QMIRTPCommandDriver::sendAudioCallEvent(*(a1 + 384), v30[362], &v64.__r_.__value_.__l.__data_, 5u, v30[368]);
                }
              }

              if (*(v14 + 584))
              {
                v31 = (*(*(v14 + 152) + 24))();
                v30 = *a2;
                if (v31)
                {
                  v30[363] = 1;
                }
              }

              else
              {
                v30 = *a2;
              }
            }

            v38 = *(a1 + 384);
            v39 = a2[1];
            v43 = v30;
            v44 = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v51 = &v64;
            v40 = *(std::__tree<std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::__map_value_compare<std::string,std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,QMIRTPStackController::ProfileData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 144, &v64.__r_.__value_.__l.__data_) + 56);
            v41 = v14;
            v42 = v13;
            atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            QMIRTPCommandDriver::sessionInitializeReq(v38, &v43, v40, a3, a4, &v41);
            if (v42)
            {
              std::__shared_weak_count::__release_weak(v42);
            }

            v37 = v44;
            if (!v44)
            {
              goto LABEL_81;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
LABEL_81:
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }

LABEL_83:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          return;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v24 = std::string::basic_string[abi:ne200100]<0>(&v64, "rtp.qmistackcontroller");
    v56[0] = 0;
    v59 = 0;
    v25 = ims::error(v24, v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "SDPSession expired in QMIRTPStackController::initializeQMISession", 65);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v59 == 1 && v58 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    (*(*(*a2 + 1) + 152))(&v64);
    if (v64.__r_.__value_.__l.__size_)
    {
      v26 = std::__shared_weak_count::lock(v64.__r_.__value_.__l.__size_);
      if (v26)
      {
        v27 = v64.__r_.__value_.__r.__words[0];
      }

      else
      {
        v27 = 0;
      }

      if (v64.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_weak(v64.__r_.__value_.__l.__size_);
      }

      if (v27)
      {
        v28 = a2[1];
        if (*a2)
        {
          v29 = (*a2 + 8);
        }

        else
        {
          v29 = 0;
        }

        v54 = v29;
        v55 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (**v27)(v27, &v54, 9);
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    if (v13)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v18 = std::string::basic_string[abi:ne200100]<0>(&v64, "rtp.qmistackcontroller");
    v60[0] = 0;
    v63 = 0;
    v19 = ims::error(v18, v60);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "initializeQMISession", 20);
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " session is null", 16);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v63 == 1 && v62 < 0)
    {
      operator delete(v61);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E50EC9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void QMIRTPStackController::handleInitializeRequestReceipt(void *a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v19, "rtp.qmistackcontroller");
    v15[0] = 0;
    v18 = 0;
    v5 = ims::debug(v4, v15);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleInitializeRequestReceipt", 30);
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
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    v11 = *a2;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(v11, &v13);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZN21QMIRTPStackController30handleInitializeRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
    v12[3] = &__block_descriptor_tmp_29;
    v12[4] = a1;
    MediaSessionDriver::startTimerForRequest(v11 + 1, 65, &v13, v12);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_1E50ECD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21QMIRTPStackController30handleInitializeRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = std::string::basic_string[abi:ne200100]<0>(&v14, "rtp.qmistackcontroller");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::error(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Request timer fired for initialize request", 42);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  RTPManager::logRTPError(v1[9], 23);
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4[0] = &unk_1F5EBDEF8;
  v4[1] = &_bambiDomain;
  v5 = 0x40000000;
  (*(*v1 + 7))(v1, v4);
  ImsResult::~ImsResult(v4);
}

void QMIRTPStackController::sessionDidUninitialize(QMIRTPStackController *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.qmistackcontroller");
  v24[0] = 0;
  v27 = 0;
  v7 = ims::debug(v6, v24);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sessionDidUninitialize", 22);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [qmiSessionId=", 15);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v22 = 0;
  v23 = 0;
  QMIRTPStackController::getSessionByQMIid(a1, a2, &v22);
  if (v22)
  {
    v12 = v23;
    v17[0] = v22;
    v17[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMIRTPStackController::sessionDidUninitialize(a1, v17, a3);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.qmistackcontroller");
    v18[0] = 0;
    v21 = 0;
    v14 = ims::error(v13, v18);
    v15 = *(*(*a1 - 8) + 8);
    v16 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15 & 0x7FFFFFFFFFFFFFFFLL, v16);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "sessionDidUninitialize", 22);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " session is null", 16);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v12 = v23;
    if (v23)
    {
      goto LABEL_18;
    }
  }
}

void sub_1E50ED21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::uninitializeQMISession(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 384);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::sessionUninitializeReq(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E50ED308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::handleUninitializeRequestReceipt(void *a1, void **a2)
{
  if (*a2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v22, "rtp.qmistackcontroller");
    v18[0] = 0;
    v21 = 0;
    v5 = ims::debug(v4, v18);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleUninitializeRequestReceipt", 32);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
    *(v6 + 17) = 0;
    v10 = (*((*a2)[1] + 176))();
    MEMORY[0x1E69233B0](*(v6 + 8), v10);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    v11 = *a2;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(*a2, &v16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1174405120;
    v14[2] = ___ZN21QMIRTPStackController32handleUninitializeRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_34_2;
    v13 = *a2;
    v12 = a2[1];
    v14[4] = a1;
    v14[5] = v13;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((v11 + 8), 66, &v16, v14);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E50ED568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21QMIRTPStackController32handleUninitializeRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(void *a1)
{
  v2 = a1[4];
  std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmistackcontroller");
  v9[0] = 0;
  v12 = 0;
  v3 = ims::error(block, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Request timer is being ignored for session termination timing out", 65);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(block[0]);
  }

  RTPManager::logRTPError(*(v2 + 72), 23);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1174405120;
  v7[2] = ___ZN21QMIRTPStackController32handleUninitializeRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_31_2;
  v5 = a1[5];
  v4 = a1[6];
  v7[4] = v2;
  v7[5] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 0;
  v20 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v19, (v2 + 8));
  v6 = *(v2 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v14 = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_1;
  v15 = &unk_1F5EF4258;
  v17 = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v7;
  dispatch_async(v6, block);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E50ED7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21QMIRTPStackController32handleUninitializeRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPStackController::sessionDidUninitialize(v2, v4, 4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E50ED860(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPStackController::sessionDidUninitialize(uint64_t a1, void *a2, int a3)
{
  if (*a2)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v63, "rtp.qmistackcontroller");
    v59[0] = 0;
    v62 = 0;
    v7 = ims::debug(v6, v59);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sessionDidUninitialize", 22);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
    *(v8 + 17) = 0;
    v12 = (*(*(*a2 + 8) + 176))();
    MEMORY[0x1E69233B0](*(v8 + 8), v12);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v62 == 1 && v61 < 0)
    {
      operator delete(v60);
    }

    if (v65 < 0)
    {
      operator delete(v63);
    }

    MediaSessionDriver::cancelTimerForRequest((*a2 + 8), 66);
    v13 = *(a1 + 120);
    if (v13 != *(a1 + 128))
    {
      v14 = 0;
      while (1)
      {
        v15 = *(v13 + 8);
        if (!v15)
        {
          break;
        }

        v16 = std::__shared_weak_count::lock(v15);
        if (!v16 || !*v13)
        {
          goto LABEL_16;
        }

        if (*v13 != *a2)
        {
          v13 += 16;
LABEL_26:
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          v19 = *(a1 + 128);
          goto LABEL_27;
        }

        v22 = std::string::basic_string[abi:ne200100]<0>(&v63, "rtp.qmistackcontroller");
        v55[0] = 0;
        v58 = 0;
        v23 = ims::debug(v22, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Remove session from _sessions", 29);
        *(v23 + 17) = 0;
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v23 + 17) = 0;
        if (v58 == 1 && v57 < 0)
        {
          operator delete(v56);
        }

        if (v65 < 0)
        {
          operator delete(v63);
        }

        v24 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>((v13 + 16), *(a1 + 128), v13);
        v25 = *(a1 + 128);
        if (v25 == v24)
        {
          v14 = 1;
          goto LABEL_26;
        }

        v19 = v24;
        do
        {
          v26 = *(v25 - 8);
          if (v26)
          {
            std::__shared_weak_count::__release_weak(v26);
          }

          v25 -= 16;
        }

        while (v25 != v19);
LABEL_25:
        *(a1 + 128) = v19;
        v14 = 1;
        if (v16)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (v13 == v19)
        {
          goto LABEL_49;
        }
      }

      v16 = 0;
LABEL_16:
      v17 = std::string::basic_string[abi:ne200100]<0>(&v63, "rtp.qmistackcontroller");
      v51[0] = 0;
      v54 = 0;
      v18 = ims::debug(v17, v51);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Remove expired session from _sessions", 37);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v54 == 1 && v53 < 0)
      {
        operator delete(__p);
      }

      if (v65 < 0)
      {
        operator delete(v63);
      }

      v19 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>((v13 + 16), *(a1 + 128), v13);
      for (i = *(a1 + 128); i != v19; i -= 16)
      {
        v21 = *(i - 8);
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }
      }

      goto LABEL_25;
    }

    v14 = 0;
LABEL_49:
    (*(*(*a2 + 8) + 152))(&v63);
    if (v64)
    {
      v33 = std::__shared_weak_count::lock(v64);
      if (v33)
      {
        v34 = v63;
      }

      else
      {
        v34 = 0;
      }

      if (v64)
      {
        std::__shared_weak_count::__release_weak(v64);
      }

      if (v34)
      {
        v35 = a2[1];
        if (*a2)
        {
          v36 = *a2 + 8;
        }

        else
        {
          v36 = 0;
        }

        v49 = v36;
        v50 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a3)
        {
          v37 = 9;
        }

        else
        {
          v37 = 0;
        }

        (*(*v34 + 8))(v34, &v49, v37);
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }
    }
  }

  else
  {
    v27 = std::string::basic_string[abi:ne200100]<0>(&v63, "rtp.qmistackcontroller");
    v45[0] = 0;
    v48 = 0;
    v28 = ims::error(v27, v45);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v29 = v28;
    v30 = *(*(*a1 - 8) + 8);
    v31 = *(v28 + 8);
    v32 = strlen((v30 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v30 & 0x7FFFFFFFFFFFFFFFLL, v32);
    *(v29 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "::", 2);
    *(v29 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "sessionDidUninitialize", 22);
    *(v29 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), " session is null", 16);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (v65 < 0)
    {
      operator delete(v63);
    }

    v14 = 0;
  }

  v38 = std::string::basic_string[abi:ne200100]<0>(&v63, "rtp.qmistackcontroller");
  v41[0] = 0;
  v44 = 0;
  v39 = ims::debug(v38, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "_sessions [count=", 17);
  *(v39 + 17) = 0;
  MEMORY[0x1E6923370](*(v39 + 8), (*(a1 + 128) - *(a1 + 120)) >> 4);
  *(v39 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "]", 1);
  *(v39 + 17) = 0;
  (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v39 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v65 < 0)
  {
    operator delete(v63);
  }

  if (*(a1 + 120) == *(a1 + 128))
  {
    *(a1 + 112) = 0;
    QMIRTPCommandDriver::sendAudioCallEvent(*(a1 + 384), *(*a2 + 362), (*a2 + 64), 3u, *(*a2 + 368));
  }

  return v14 & 1;
}

void sub_1E50EDF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(int8x8_t *this, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = std::string::basic_string[abi:ne200100]<0>(&v31, "rtp.qmistackcontroller");
  v27[0] = 0;
  v30 = 0;
  v5 = ims::debug(v4, v27);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*this - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleUninitializeAllSessionsRequestReceipt", 43);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [isError=", 10);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923320](*(v6 + 8), a2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v31);
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else if (a2)
  {
LABEL_7:
    SipTimerContainer::cancelTimer(this + 27, "UninitializeAllTimer");
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20[0] = &unk_1F5EBDEF8;
    v20[1] = &_bambiDomain;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    RTPStackController::stackError(this, v20);
    ImsResult::~ImsResult(v20);
    goto LABEL_22;
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v31, &this[1]);
  v10 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[28], "UninitializeAllTimer"))
  {
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = 0;
    operator new();
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(&v31, "rtp.qmistackcontroller");
  v16[0] = 0;
  v19 = 0;
  v12 = ims::error(v11, v16);
  v13 = *(*(*this - 8) + 8);
  v14 = strlen((v13 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), v13 & 0x7FFFFFFFFFFFFFFFLL, v14);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "::", 2);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "handleUninitializeAllSessionsRequestReceipt", 43);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " Uninitialize all request timer already exists!", 47);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v33 < 0)
  {
    operator delete(v31);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E50EE46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v44 - 88);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

  _Unwind_Resume(a1);
}

void QMIRTPStackController::configureRTPLinkMonitor(uint64_t a1, uint64_t *a2, int a3, __int16 a4)
{
  v4 = *(a1 + 384);
  v5 = *a2;
  if (a3)
  {
    v6 = a2[1];
    v11 = *a2;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMIRTPCommandDriver::configureRTPLinkMonitorReq(v4, &v11, a4);
    v7 = v12;
    if (!v12)
    {
      return;
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    return;
  }

  v8 = a2[1];
  v9 = *a2;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::configureRTPLinkMonitorReq(v4, &v9, 0);
  v7 = v10;
  if (v10)
  {
    goto LABEL_9;
  }
}

void sub_1E50EE5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50EE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x1E50EE5D4);
  }

  JUMPOUT(0x1E50EE5D0);
}

void QMIRTPStackController::configureRTCPLinkMonitor(uint64_t a1, uint64_t *a2, int a3, __int16 a4)
{
  v4 = *(a1 + 384);
  v5 = *a2;
  if (a3)
  {
    v6 = a2[1];
    v11 = *a2;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMIRTPCommandDriver::configureRTCPLinkMonitorReq(v4, &v11, a4);
    v7 = v12;
    if (!v12)
    {
      return;
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    return;
  }

  v8 = a2[1];
  v9 = *a2;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::configureRTCPLinkMonitorReq(v4, &v9, 0);
  v7 = v10;
  if (v10)
  {
    goto LABEL_9;
  }
}

void sub_1E50EE67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50EE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x1E50EE68CLL);
  }

  JUMPOUT(0x1E50EE688);
}

void QMIRTPStackController::sessionDidInitialize(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(&v33, "rtp.qmistackcontroller");
  LOBYTE(v29[0]) = 0;
  v32 = 0;
  v9 = ims::debug(v8, v29);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "getSessionById", 14);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=", 12);
  *(v10 + 17) = 0;
  MEMORY[0x1E69233B0](*(v10 + 8), a2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  v14 = *(a1 + 120);
  if (v14 != *(a1 + 128))
  {
    while (1)
    {
      v15 = *(v14 + 8);
      if (!v15)
      {
        break;
      }

      v16 = std::__shared_weak_count::lock(v15);
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = *v14;
      if (!*v14)
      {
        goto LABEL_14;
      }

      if ((*(*(v17 + 8) + 176))() == a2)
      {
        *(v17 + 367) = 1;
        v24[0] = v17;
        v24[1] = v16;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        QMIRTPStackController::sessionDidInitialize(a1, v24, a3, a4);
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        return;
      }

      v14 += 16;
LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      v18 = *(a1 + 128);
LABEL_20:
      if (v14 == v18)
      {
        goto LABEL_21;
      }
    }

    v16 = 0;
LABEL_14:
    v18 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>((v14 + 16), *(a1 + 128), v14);
    for (i = *(a1 + 128); i != v18; i -= 16)
    {
      v20 = *(i - 8);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }
    }

    *(a1 + 128) = v18;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmistackcontroller");
  v25[0] = 0;
  v28 = 0;
  v21 = ims::error(v29, v25);
  v22 = *(*(*a1 - 8) + 8);
  v23 = strlen((v22 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), v22 & 0x7FFFFFFFFFFFFFFFLL, v23);
  *(v21 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "::", 2);
  *(v21 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "sessionDidInitialize", 20);
  *(v21 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " session is null", 16);
  *(v21 + 17) = 0;
  (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v21 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(__p) < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_1E50EEA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  _Unwind_Resume(a1);
}

void QMIRTPStackController::sessionDidInitialize(uint64_t a1, void *a2, char a3, int a4)
{
  if (*a2)
  {
    MediaSessionDriver::cancelTimerForRequest((*a2 + 8), 65);
    v8 = *a2;
    if (a4)
    {
      if (*(v8 + 365) == 1 && (*(a1 + 112) & 1) == 0)
      {
        QMIRTPCommandDriver::sendAudioCallEvent(*(a1 + 384), a3, (v8 + 64), 3u, *(v8 + 368));
      }

      goto LABEL_23;
    }

    QMIRTPSession::setQMISessionId(v8, a3);
    v15 = *a2;
    v16 = *(a1 + 112);
    if (*(*a2 + 363) == 1)
    {
      if ((*(a1 + 112) & 1) == 0 && v15[364] == 1)
      {
        v17 = *(a1 + 384);
        v18 = v15[368];
        if (v15[365])
        {
          v19 = 6;
        }

        else
        {
          v19 = 0;
        }

        v20 = (v15 + 64);
        v21 = a3;
        goto LABEL_22;
      }
    }

    else if ((*(a1 + 112) & 1) == 0 && v15[364] == 1)
    {
      v17 = *(a1 + 384);
      v18 = v15[368];
      v20 = (v15 + 64);
      v21 = a3;
      v19 = 0;
LABEL_22:
      QMIRTPCommandDriver::sendAudioCallEvent(v17, v21, v20, v19, v18);
      *(a1 + 112) = 1;
    }

LABEL_23:
    (*(*(*a2 + 8) + 152))(&v32);
    if (v33)
    {
      v22 = std::__shared_weak_count::lock(v33);
      if (v22)
      {
        v23 = v32;
      }

      else
      {
        v23 = 0;
      }

      if (v33)
      {
        std::__shared_weak_count::__release_weak(v33);
      }

      if (v23)
      {
        v24 = a2[1];
        if (*a2)
        {
          v25 = *a2 + 8;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        v27 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (**v23)(v23, &v26, 8 * (a4 != 0));
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }
    }

    return;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v32, "rtp.qmistackcontroller");
  v28[0] = 0;
  v31 = 0;
  v10 = ims::error(v9, v28);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v11 = v10;
  v12 = *(*(*a1 - 8) + 8);
  v13 = *(v10 + 8);
  v14 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12 & 0x7FFFFFFFFFFFFFFFLL, v14);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "sessionDidInitialize", 20);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " session is null", 16);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v32);
  }
}

void sub_1E50EEDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sessionDidStart(void *a1, void *a2, int a3)
{
  if (*a2)
  {
    v6 = (*(*(*a2 + 8) + 96))();
    if (!a3 && v6 == 4 && ((*(**a2 + 104))() & 1) == 0)
    {
      v7 = a1[48];
      v8 = a2[1];
      v22 = *a2;
      v23 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QMIRTPCommandDriver::sessionSetStreamDirectionReq(v7, &v22, 2, 1);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    (*(*(*a2 + 8) + 152))(&v28);
    if (v29)
    {
      v9 = std::__shared_weak_count::lock(v29);
      if (v9)
      {
        v10 = v28;
      }

      else
      {
        v10 = 0;
      }

      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      if (v10)
      {
        v11 = a2[1];
        if (*a2)
        {
          v12 = *a2 + 8;
        }

        else
        {
          v12 = 0;
        }

        v20 = v12;
        v21 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a3)
        {
          v13 = 9;
        }

        else
        {
          v13 = 0;
        }

        (*(*v10 + 24))(v10, &v20, v13);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(&v28, "rtp.qmistackcontroller");
    v24[0] = 0;
    v27 = 0;
    v15 = ims::error(v14, v24);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "sessionDidStart", 15);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " session is null", 16);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v28);
    }
  }
}

void sub_1E50EF0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sessionDidStop(void *a1, void *a2, int a3)
{
  if (*a2)
  {
    (*(*(*a2 + 8) + 152))(&v23);
    if (v24)
    {
      v6 = std::__shared_weak_count::lock(v24);
      if (v6)
      {
        v7 = v23;
      }

      else
      {
        v7 = 0;
      }

      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }

      if (v7)
      {
        v8 = a2[1];
        if (*a2)
        {
          v9 = *a2 + 8;
        }

        else
        {
          v9 = 0;
        }

        v17 = v9;
        v18 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a3)
        {
          v10 = 9;
        }

        else
        {
          v10 = 0;
        }

        (*(*v7 + 32))(v7, &v17, v10);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(&v23, "rtp.qmistackcontroller");
    v19[0] = 0;
    v22 = 0;
    v12 = ims::error(v11, v19);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "sessionDidStop", 14);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " session is null", 16);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v23);
    }
  }
}

void sub_1E50EF34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::handleConfigureRequestReceipt(void *a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmistackcontroller");
    v21[0] = 0;
    v24 = 0;
    v5 = ims::debug(v4, v21);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleConfigureRequestReceipt", 29);
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
    if (v24 == 1 && v23 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    v11 = *a2;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(v11, &v19);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZN21QMIRTPStackController29handleConfigureRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke;
    v18[3] = &__block_descriptor_tmp_42_1;
    v18[4] = a1;
    MediaSessionDriver::startTimerForRequest(v11 + 1, 67, &v19, v18);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmistackcontroller");
    v25[0] = 0;
    v28 = 0;
    v13 = ims::error(v12, v25);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleConfigureRequestReceipt", 29);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " session is null", 16);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void sub_1E50EF6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21QMIRTPStackController29handleConfigureRequestReceiptENSt3__110shared_ptrI13QMIRTPSessionEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = std::string::basic_string[abi:ne200100]<0>(&v14, "rtp.qmistackcontroller");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::error(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Request timer fired for configure request", 41);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  RTPManager::logRTPError(v1[9], 23);
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4[0] = &unk_1F5EBDEF8;
  v4[1] = &_bambiDomain;
  v5 = 0x40000000;
  (*(*v1 + 7))(v1, v4);
  ImsResult::~ImsResult(v4);
}

void QMIRTPStackController::sessionDidConfigure(QMIRTPStackController *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmistackcontroller");
  v25[0] = 0;
  v28 = 0;
  v7 = ims::debug(v6, v25);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sessionDidConfigure", 19);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [qmiSessionId=", 15);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v23 = 0;
  v24 = 0;
  QMIRTPStackController::getSessionByQMIid(a1, a2, &v23);
  v12 = v23;
  if (v23)
  {
    if ((*(*v23 + 136))(v23) == 2)
    {
      *(a1 + 13) = (*(*(v12 + 8) + 176))();
    }

    v13 = v24;
    v18[0] = v12;
    v18[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    QMIRTPStackController::sessionDidConfigure(a1, v18, a3);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v29, "rtp.qmistackcontroller");
    v19[0] = 0;
    v22 = 0;
    v15 = ims::error(v14, v19);
    v16 = *(*(*a1 - 8) + 8);
    v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "sessionDidConfigure", 19);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " session is null", 16);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    v13 = v24;
    if (v24)
    {
      goto LABEL_20;
    }
  }
}

void sub_1E50EFC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sessionDidConfigure(void *a1, uint64_t *a2, int a3)
{
  if (*a2)
  {
    MediaSessionDriver::cancelTimerForRequest((*a2 + 8), 67);
    if ((*(**a2 + 136))() == 2)
    {
      a1[13] = (*(*(*a2 + 8) + 176))();
    }

    v6 = *a2;
    if (a3)
    {
      v7 = 9;
    }

    else
    {
      v7 = 0;
    }

    QMIRTPSession::didConfigure(v6, v7);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "rtp.qmistackcontroller");
    v13[0] = 0;
    v16 = 0;
    v8 = ims::error(v17, v13);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v9 = v8;
    v10 = *(*(*a1 - 8) + 8);
    v11 = *(v8 + 8);
    v12 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10 & 0x7FFFFFFFFFFFFFFFLL, v12);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "sessionDidConfigure", 19);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " session is null", 16);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }
}

void sub_1E50EFEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void QMIRTPStackController::handleStackUninitializeAllSessions(uint64_t a1, uint64_t *a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(v24, "rtp.qmistackcontroller");
  v20[0] = 0;
  v23 = 0;
  v6 = ims::debug(v24, v20);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v7 = v6;
  v8 = *(*(*a1 - 8) + 8);
  v9 = *(v6 + 8);
  v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleStackUninitializeAllSessions", 34);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  SipTimerContainer::cancelTimer((a1 + 216), "UninitializeAllTimer");
  v11 = *(a1 + 120);
  if (v11 != *(a1 + 128))
  {
    while (1)
    {
      v12 = v11[1];
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = std::__shared_weak_count::lock(v12);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v13;
      v15 = *v11;
      if (!*v11)
      {
        break;
      }

      if (*(v15 + 367) != 1)
      {
        break;
      }

      if (*(v15 + 361) != a3)
      {
        break;
      }

      v19[0] = *v11;
      v19[1] = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = QMIRTPStackController::sessionDidUninitialize(a1, v19, 0);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v11 = *(a1 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_17:
      if (v11 == *(a1 + 128))
      {
        goto LABEL_18;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_16:
    v11 += 2;
    goto LABEL_17;
  }

LABEL_18:
  v17 = *(a2 + 23);
  if (v17 < 0)
  {
    if (a2[1] != 15)
    {
      return;
    }

    a2 = *a2;
  }

  else if (v17 != 15)
  {
    return;
  }

  if (*a2 == 0x536C6C41494D516BLL && *(a2 + 7) == 0x736E6F6973736553)
  {
    std::vector<std::weak_ptr<BambiConferenceParticipant>>::clear[abi:ne200100]((a1 + 120));
  }
}

void sub_1E50F0174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

void QMIRTPStackController::configureQMISession(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = a1[48];
    v4 = a2[1];
    v11 = *a2;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMIRTPCommandDriver::sessionConfigureReq(v3, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v17, "rtp.qmistackcontroller");
    v13[0] = 0;
    v16 = 0;
    v6 = ims::error(v5, v13);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v7 = v6;
    v8 = *(*(*a1 - 8) + 8);
    v9 = *(v6 + 8);
    v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "configureQMISession", 19);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " session is null", 16);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }
}

void sub_1E50F0348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::setQMISessionDirection(void *a1, void *a2, unsigned int a3)
{
  v42 = a3;
  if (*a2)
  {
    if (a3 == 3 && (*(*(*a2 + 8) + 176))() != a1[13])
    {
      v21 = std::string::basic_string[abi:ne200100]<0>(v40, "rtp.qmistackcontroller");
      v32[0] = 0;
      v35 = 0;
      v22 = ims::debug(v21, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Configure session and only then start it [sessionId=", 52);
      *(v22 + 17) = 0;
      v23 = (*(*(*a2 + 8) + 176))();
      MEMORY[0x1E69233B0](*(v22 + 8), v23);
      *(v22 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " direction=", 11);
      *(v22 + 17) = 0;
      ims::toString<ms::MediaServiceDirection>(&v42, &__p);
      (*(*v22 + 32))(v22, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "]", 1);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v35 == 1 && v34 < 0)
      {
        operator delete(v33);
      }

      if (v41 < 0)
      {
        operator delete(v40[0]);
      }

      v24 = *a2;
      v24[434] = 1;
      (*(*v24 + 64))(v24, 0);
    }

    else
    {
      v6 = std::string::basic_string[abi:ne200100]<0>(v40, "rtp.qmistackcontroller");
      v27[0] = 0;
      v30 = 0;
      v7 = ims::debug(v6, v27);
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "setQMISessionDirection", 22);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
      *(v8 + 17) = 0;
      v12 = (*(*(*a2 + 8) + 176))();
      MEMORY[0x1E69233B0](*(v8 + 8), v12);
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " direction=", 11);
      *(v8 + 17) = 0;
      ims::toString<ms::MediaServiceDirection>(&v42, &__p);
      (*(*v8 + 32))(v8, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v30 == 1 && v29 < 0)
      {
        operator delete(v28);
      }

      if (v41 < 0)
      {
        operator delete(v40[0]);
      }

      v13 = a1[48];
      v14 = a2[1];
      v25 = *a2;
      v26 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QMIRTPCommandDriver::sessionSetStreamDirectionReq(v13, &v25, a3, 0);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }
  }

  else
  {
    v15 = std::string::basic_string[abi:ne200100]<0>(v40, "rtp.qmistackcontroller");
    v36[0] = 0;
    v39 = 0;
    v16 = ims::error(v15, v36);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "setQMISessionDirection", 22);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " session is null", 16);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }
  }
}

void sub_1E50F08C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  if (a36 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 73) < 0)
  {
    operator delete(*(v46 - 96));
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sessionDirectionChangeFailed(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v31, "rtp.qmistackcontroller");
    v27[0] = 0;
    v30 = 0;
    v5 = ims::debug(v4, v27);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sessionDirectionChangeFailed", 28);
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
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (v33 < 0)
    {
      operator delete(v31);
    }

    (*(*(*a2 + 8) + 152))(&v31);
    if (v32)
    {
      v11 = std::__shared_weak_count::lock(v32);
      if (v11)
      {
        v12 = v31;
      }

      else
      {
        v12 = 0;
      }

      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      if (v12)
      {
        v13 = a2[1];
        if (*a2)
        {
          v14 = *a2 + 8;
        }

        else
        {
          v14 = 0;
        }

        v25 = v14;
        v26 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v12 + 24))(v12, &v25, 9);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  else
  {
    v15 = std::string::basic_string[abi:ne200100]<0>(&v31, "rtp.qmistackcontroller");
    v21[0] = 0;
    v24 = 0;
    v16 = ims::error(v15, v21);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "sessionDirectionChangeFailed", 28);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " session is null", 16);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (v33 < 0)
    {
      operator delete(v31);
    }
  }
}

void sub_1E50F0D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sessionMediaError(QMIRTPStackController *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.qmistackcontroller");
  v24[0] = 0;
  v27 = 0;
  v7 = ims::debug(v6, v24);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sessionMediaError", 17);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [qmiSessionId=", 15);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v22 = 0;
  v23 = 0;
  QMIRTPStackController::getSessionByQMIid(a1, a2, &v22);
  if (v22)
  {
    v12 = v23;
    v17[0] = v22;
    v17[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMIRTPStackController::sessionMediaError(a1, v17, a3);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.qmistackcontroller");
    v18[0] = 0;
    v21 = 0;
    v14 = ims::error(v13, v18);
    v15 = *(*(*a1 - 8) + 8);
    v16 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15 & 0x7FFFFFFFFFFFFFFFLL, v16);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "sessionMediaError", 17);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " session is null", 16);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v12 = v23;
    if (v23)
    {
      goto LABEL_18;
    }
  }
}

void sub_1E50F1074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sessionMediaError(void *a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v33, "rtp.qmistackcontroller");
    v25[0] = 0;
    v28 = 0;
    v7 = ims::debug(v6, v25);
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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "sessionMediaError", 17);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
    *(v8 + 17) = 0;
    v12 = (*(*(*a2 + 8) + 176))();
    MEMORY[0x1E69233B0](*(v8 + 8), v12);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (v35 < 0)
    {
      operator delete(v33);
    }

    (*(*(*a2 + 8) + 152))(&v33);
    if (v34)
    {
      v13 = std::__shared_weak_count::lock(v34);
      if (v13)
      {
        v14 = v33;
      }

      else
      {
        v14 = 0;
      }

      if (v34)
      {
        std::__shared_weak_count::__release_weak(v34);
      }

      if (v14)
      {
        v15 = a2[1];
        if (*a2)
        {
          v16 = *a2 + 8;
        }

        else
        {
          v16 = 0;
        }

        v23 = v16;
        v24 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v14 + 40))(v14, &v23, a3);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  else
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(&v33, "rtp.qmistackcontroller");
    v29[0] = 0;
    v32 = 0;
    v18 = ims::error(v17, v29);
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    v19 = v18;
    v20 = *(*(*a1 - 8) + 8);
    v21 = *(v18 + 8);
    v22 = strlen((v20 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v20 & 0x7FFFFFFFFFFFFFFFLL, v22);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "::", 2);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "sessionMediaError", 17);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " session is null", 16);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if (v35 < 0)
    {
      operator delete(v33);
    }
  }
}

void sub_1E50F1498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::configureRTCPReports(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 384);
  v7 = a2[1];
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::configureRTCPReportsReq(v6, &v8, a3, a4, a5, a6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E50F1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::sendDTMFDigit(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 384);
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIRTPCommandDriver::sendDTMFDigit(v3, &v5, a3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E50F15D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QMIRTPStackController::stackError(void *a1, const ImsResult *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "kQMIAllSessions");
  (*(*a1 + 32))(a1, v5, 1);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  ImsResult::ImsResult(v4, a2);
  RTPStackController::stackError(a1, v4);
  ImsResult::~ImsResult(v4);
}

void QMIRTPStackController::startAudio(uint64_t a1, void **a2, char a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    QMIRTPCommandDriver::sendAudioCallEvent(*(a1 + 384), 0, a2, 0, a3);
    *(a1 + 112) = 1;
  }
}

void QMIRTPStackController::stopAudio(uint64_t a1, void **a2, char a3)
{
  if (*(a1 + 120) == *(a1 + 128))
  {
    QMIRTPCommandDriver::sendAudioCallEvent(*(a1 + 384), 0, a2, 3u, a3);
    *(a1 + 112) = 0;
  }
}

void QMIRTPStackController::handleTimer(uint64_t a1, uint64_t **a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if (v3 < 0)
  {
    v3 = a2[1];
  }

  if (v3 == 20 && (v4 >= 0 ? (v5 = a2) : (v5 = *a2), (v6 = *v5, v7 = v5[1], v8 = *(v5 + 4), v6 == 0x616974696E696E55) ? (v9 = v7 == 0x546C6C41657A696CLL) : (v9 = 0), v9 ? (v10 = v8 == 1919249769) : (v10 = 0), v10))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN21QMIRTPStackController11handleTimerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v19[3] = &__block_descriptor_tmp_46_1;
    v19[4] = a1;
    v26 = 0;
    v27 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v26, (a1 + 8));
    v14 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v21 = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke_1;
    v22 = &unk_1F5EF4258;
    v24 = v26;
    v25 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v19;
    dispatch_async(v14, block);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  else
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.qmistackcontroller");
    v15[0] = 0;
    v18 = 0;
    v12 = ims::warn(v11, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Unknown timer fired [timerId=", 29);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "]", 1);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(block[0]);
    }
  }
}

void sub_1E50F19B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 65) < 0)
  {
    operator delete(*(v19 - 88));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21QMIRTPStackController11handleTimerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = std::string::basic_string[abi:ne200100]<0>(&v14, "rtp.qmistackcontroller");
  v10[0] = 0;
  v13 = 0;
  v3 = ims::error(v2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Uninitialize all sessions request timed out", 43);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4[0] = &unk_1F5EBDEF8;
  v4[1] = &_bambiDomain;
  v5 = 0x40000000;
  RTPStackController::stackError(v1, v4);
  ImsResult::~ImsResult(v4);
}

BOOL QMIRTPStackController::isAssertEnabled(QMIRTPStackController *this)
{
  IPTelephonyManager::getBambiClient(&v4);
  (*(*v4 + 184))(&v6);
  v1 = SipStack::prefs(v6);
  v2 = ImsPrefs::EnableBasebandAssertOnInitializationFailure(v1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E50F1BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMIRTPStackController::sessionExists(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = v3[1];
    if (v6)
    {
      break;
    }

LABEL_8:
    v3 += 2;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v7 = *v3;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v6);
    goto LABEL_8;
  }

  v9 = v8;
  if (!v7 || (*(*(v7 + 8) + 176))(v7 + 8) != a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  std::__shared_weak_count::__release_weak(v6);
  return 1;
}

void sub_1E50F1CDC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *,std::weak_ptr<QMIRTPSession> *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      ++v5;
      a3 += 16;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__shared_ptr_emplace<QMIRTPCommandDriver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF41C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<QMIRTPSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF4210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::__map_value_compare<std::string,std::__value_type<std::string,QMIRTPStackController::ProfileData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,QMIRTPStackController::ProfileData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RTPStackController::RTPStackControllerState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
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
      v4 = *(v2 + 28);
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

void *std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF4298;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EF4298;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EF4298;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 120))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0,std::allocator<QMIRTPStackController::handleUninitializeAllSessionsRequestReceipt(BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MediaSessionStateMachine::~MediaSessionStateMachine(MediaSessionStateMachine *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  *(this + 1) = &unk_1F5EF4458;
  v4 = this + 96;
  *(this + 12) = &unk_1F5EF4530;
  *(this + 13) = &unk_1F5EF4570;
  *(this + 14) = &unk_1F5EF45A8;
  std::string::basic_string[abi:ne200100]<0>(&v18, "rtp.statemachine");
  v14[0] = 0;
  v17 = 0;
  v5 = ims::debug(&v18, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "~MediaSessionStateMachine", 25);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v18);
  }

  v6 = *(this + 19);
  if (v6)
  {
    (*(*v6 + 152))(&v18);
    if (v19)
    {
      v7 = std::__shared_weak_count::lock(v19);
      v8 = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      if (v7 && v8 == v4)
      {
        (*(**(this + 19) + 168))(*(this + 19));
      }

      else if (!v7)
      {
        goto LABEL_15;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

LABEL_15:
  v9 = *(this + 17);
  if (v9)
  {
    (*(*v9 + 200))(v9);
  }

  MediaSessionStateMachine::detachFromSocket(this);
  v10 = *(this + 34);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v12 = *(this + 20);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 18);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  MediaSessionInterface::~MediaSessionInterface(this + 1);
}

void MediaSessionStateMachine::detachFromSocket(RTPTransportManager **this)
{
  v21 = 0;
  v22 = 0;
  RTPTransportManager::getTransport(this[4], *(this + 144), &v21);
  if (v21)
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v18, "rtp.statemachine");
    v14[0] = 0;
    v17 = 0;
    v3 = ims::debug(v2, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "For the RTP socket, set delegate back to RTPManager.", 52);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    v4 = v21;
    v6 = this[5];
    v5 = this[6];
    if (v6)
    {
      v7 = v6 + 24;
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;
    v13 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 144))(v4, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v8 = v21;
    aBlock = _Block_copy(&__block_literal_global_13);
    (*(*v8 + 104))(v8, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  v18 = 0;
  v19 = 0;
  RTPTransportManager::getTransport(this[4], (*(this + 144) + 1), &v18);
  v9 = v18;
  if (v18)
  {
    v10 = _Block_copy(&__block_literal_global_142);
    (*(*v9 + 104))(v9, &v10);
    if (v10)
    {
      _Block_release(v10);
    }
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1E50F2854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v24 = *(v22 - 48);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v22 - 24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionStateMachine::~MediaSessionStateMachine(MediaSessionStateMachine *this)
{
  MEMORY[0x1E69225A0](v2 + 344);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 39);
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMediaSessionStateMachine::~MediaSessionStateMachine(MediaSessionStateMachine *this)
{
  MediaSessionStateMachine::~MediaSessionStateMachine((this - 8));
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((this - 104));
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((this - 112));
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((this - 104));

  JUMPOUT(0x1E69235B0);
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((this - 112));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMediaSessionStateMachine::~MediaSessionStateMachine(MediaSessionStateMachine *this)
{
  MediaSessionStateMachine::~MediaSessionStateMachine((this + *(*this - 24)));
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void sub_1E50F33B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12, uint64_t a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  shared_owners = v33[6].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__list_imp<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::clear(v32);
  MediaSessionInterface::~MediaSessionInterface(a11);
  MEMORY[0x1E69225A0](&v33[8].__shared_weak_owners_);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(&v33[7].__shared_owners_);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v35)
    {
LABEL_5:
      if (!v34)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v35)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v35);
  if (!v34)
  {
LABEL_7:
    std::__shared_weak_count::~__shared_weak_count(v33);
    operator delete(v38);
    if (object)
    {
      dispatch_release(object);
    }

    if (a16)
    {
      std::__shared_weak_count::__release_weak(a16);
    }

    if (a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v34);
  goto LABEL_7;
}

void MediaSessionStateMachine::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v69[0] = 0;
  v72 = 0;
  v15 = ims::debug(v14, v69);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "MediaSessionStateMachine::", 26);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "initialize", 10);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v72 == 1 && v71 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(block);
  }

  *(a1 + 286) = a3;
  if (*(a1 + 285) == 1 && a3 && (*(*a1 + 144))(a1) == 2 && (*(a1 + 290) & 1) == 0)
  {
    v67 = 0;
    v68 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v67);
    v26 = *(*a1 - 24);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 1174405120;
    v63[2] = ___ZN24MediaSessionStateMachine10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke;
    v63[3] = &__block_descriptor_tmp_63;
    v28 = *a7;
    v27 = a7[1];
    v63[4] = a1;
    v63[5] = v28;
    v64 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = a1 + v26;
    v65 = v67;
    v66 = v68;
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v79 = 0;
    v80 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v79, (v29 + 8));
    v30 = *(v29 + 24);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 1174405120;
    v74 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v75 = &unk_1F5EF4FF0;
    v77 = v79;
    v78 = v80;
    if (v80)
    {
      atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = v63;
    dispatch_async(v30, &block);
    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }

    block = 0uLL;
    if (*(a1 + 168) == 1)
    {
      RTPManager::getStackControllerByType(*(a1 + 40), 1, &block);
    }

    else
    {
      RTPManager::getActiveStackController(&block, *(a1 + 40), (a1 + 64));
    }

    v31 = block;
    v32 = *block;
    v33 = **block;
    {
      v34 = *(&block + 1);
      if (*(&block + 1))
      {
        atomic_fetch_add_explicit((*(&block + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v35 = *(a1 + 152);
      if (v35)
      {
        v36 = **v35;
        if (v37)
        {
          v38 = *(a1 + 160);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v31 + 72))(v31, a1 + 64, v37[368]);
          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }
        }
      }

      if (!v34)
      {
LABEL_45:
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (v64)
        {
          std::__shared_weak_count::__release_weak(v64);
        }

        v39 = v68;
        if (v68)
        {
          goto LABEL_94;
        }

        return;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      (*(v32 + 72))(v31, a1 + 64, 0);
      v34 = *(&block + 1);
      if (!*(&block + 1))
      {
        goto LABEL_45;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    goto LABEL_45;
  }

  v16 = a7[1];
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = v17;
      v19 = *a7;
      if (!*a7)
      {
        goto LABEL_80;
      }

      v20 = *(v19 + 128);
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          v22 = *(v19 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          if (v22)
          {
            v23 = *(v19 + 128);
            if (v23 && (v24 = std::__shared_weak_count::lock(v23)) != 0)
            {
              v56 = v24;
              v25 = *(v19 + 120);
            }

            else
            {
              v25 = 0;
              v56 = 0;
            }

            std::string::operator=((a1 + 176), (v25 + 3432));
            std::string::operator=((a1 + 200), (v25 + 3456));
            v40 = *(v25 + 3480);
            *(a1 + 240) = *(v25 + 3496);
            *(a1 + 224) = v40;
            if (v56)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v56);
            }
          }
        }
      }

      if (*(a1 + 168) != 1)
      {
        goto LABEL_80;
      }

      v41 = (*(*a1 + 144))(a1);
      if (v41 == 2)
      {
        if (*(v19 + 584))
        {
          v42 = v19 + 152;
          goto LABEL_63;
        }
      }

      else if (v41 == 6 && (*(v19 + 1856) & 1) != 0)
      {
        v42 = v19 + 1496;
        goto LABEL_63;
      }

      if (*(v19 + 1328) != 1)
      {
LABEL_78:
        if (!ims::AccessNetwork::isWifi((a1 + 176)))
        {
          MediaSessionStateMachine::reportAPSession(a1, 1);
        }

LABEL_80:
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        goto LABEL_81;
      }

      v42 = v19 + 1032;
LABEL_63:
      v44 = *(v42 + 8);
      v43 = *(v42 + 16);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        if (v44)
        {
          v44 = *(v42 + 8);
          v45 = *(v42 + 16);
          if (v45)
          {
            v57 = 0;
            v55 = *(v42 + 16);
            atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
            goto LABEL_69;
          }

LABEL_68:
          v55 = 0;
          v57 = 1;
LABEL_69:
          (*(*v44 + 32))(&block, v44);
          v46 = block;
          block = 0uLL;
          v47 = *(a1 + 256);
          *(a1 + 248) = v46;
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
            if (*(&block + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&block + 1));
            }
          }

          if ((v57 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v55);
          }
        }
      }

      else if (v44)
      {
        goto LABEL_68;
      }

      *(a1 + 280) = *(v42 + 26);
      (*(**a2 + 32))(&block);
      v48 = block;
      block = 0uLL;
      v49 = *(a1 + 272);
      *(a1 + 264) = v48;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        if (*(&block + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&block + 1));
        }
      }

      *(a1 + 282) = *(v42 + 24);
      goto LABEL_78;
    }
  }

LABEL_81:
  block = 0uLL;
  RTPSharedPointerBase::getShared<MediaSessionDelegate>(a1, &block);
  v50 = *(a1 + 152);
  v62 = block;
  if (*(&block + 1))
  {
    atomic_fetch_add_explicit((*(&block + 1) + 16), 1uLL, memory_order_relaxed);
  }

  (*(*v50 + 160))(v50, &v62);
  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v62 + 1));
  }

  v51 = *(a1 + 152);
  v52 = a7[1];
  v60 = *a7;
  v61 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionDriver::setRTCPInterval(v51, &v60);
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  *(a1 + 122) = 1;
  v53 = *(a1 + 152);
  v54 = a7[1];
  v58 = *a7;
  v59 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v53 + 16))(v53, a2, a3, a4, a5, a6, &v58);
  if (v59)
  {
    std::__shared_weak_count::__release_weak(v59);
  }

  v39 = *(&block + 1);
  if (*(&block + 1))
  {
LABEL_94:
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

void sub_1E50F3D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[5];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(v2 + 16);
      if (!v5)
      {
LABEL_19:
        if (!v8)
        {
LABEL_20:
          std::string::basic_string[abi:ne200100]<0>(v18, "rtp.statemachine");
          v14[0] = 0;
          v17 = 0;
          v12 = ims::debug(v18, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "SDPSession and Delegate are gone [sessionId=", 44);
          *(v12 + 17) = 0;
          MEMORY[0x1E69233B0](*(v12 + 8), *(v2 + 32));
          *(v12 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "]", 1);
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

          goto LABEL_30;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v8 = 0;
      if (!v5)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  if (*(v5 + 584))
  {
    v9 = (*(*(v5 + 152) + 24))(v5 + 152);
    *(v2 + 293) = v9;
    if (v9)
    {
      v10 = a1[8];
      v22 = a1[7];
      v23 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 16))(v8, &v22, 0);
      v11 = v23;
      if (v23)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else
  {
    *(v2 + 293) = 0;
  }

LABEL_26:
  v13 = a1[8];
  v20 = a1[7];
  v21 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v8)(v8, &v20, 0);
  v11 = v21;
  if (v21)
  {
LABEL_29:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_30:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E50F40DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c36_ZTSKNSt3__18weak_ptrI10SDPSessionEE56c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c36_ZTSKNSt3__18weak_ptrI10SDPSessionEE56c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t RTPManager::getActiveStackController(void *a1, uint64_t a2, void **a3)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 280, a3);
  if (a2 + 288 == result)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(result + 56);
  }

  v12 = v6;
  v9 = *(a2 + 192);
  v8 = a2 + 192;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  result = v8 - 8;
  v10 = v8;
  do
  {
    if (*(v7 + 32) >= v6)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v6));
  }

  while (v7);
  if (v10 != v8 && v6 >= *(v10 + 32))
  {
    v13 = &v12;
    result = std::__tree<std::__value_type<RTPStackType,std::shared_ptr<RTPStackController>>,std::__map_value_compare<RTPStackType,std::__value_type<RTPStackType,std::shared_ptr<RTPStackController>>,std::less<RTPStackType>,true>,std::allocator<std::__value_type<RTPStackType,std::shared_ptr<RTPStackController>>>>::__emplace_unique_key_args<RTPStackType,std::piecewise_construct_t const&,std::tuple<RTPStackType const&>,std::tuple<>>(result, &v12);
    v11 = *(result + 48);
    *a1 = *(result + 40);
    a1[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

void MediaSessionStateMachine::reportAPSession(MediaSessionStateMachine *this, uint64_t a2)
{
  if (*(this + 33))
  {
    if (*(this + 31))
    {
      v24 = 0;
      v25 = 0;
      RTPManager::getStackControllerByType(*(this + 5), 2, &v24);
      v4 = v24;
      if (v24)
      {
        v5 = std::string::basic_string[abi:ne200100]<0>(v34, "rtp.statemachine");
        v20[0] = 0;
        v23 = 0;
        v6 = ims::debug(v5, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Reporting the ", 14);
        *(v6 + 17) = 0;
        if (a2)
        {
          v7 = "start";
        }

        else
        {
          v7 = "end";
        }

        if (a2)
        {
          v8 = 5;
        }

        else
        {
          v8 = 3;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7, v8);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " of the VoLTE session [sessionId=", 33);
        *(v6 + 17) = 0;
        MEMORY[0x1E69233B0](*(v6 + 8), *(this + 4));
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v23 == 1 && v22 < 0)
        {
          operator delete(__p);
        }

        if (v35 < 0)
        {
          operator delete(v34[0]);
        }

        v9 = *(this + 34);
        v18 = *(this + 33);
        v19 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(this + 32);
        v16 = *(this + 31);
        v17 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v4 + 96))(v4, &v18, &v16, *(this + 141), *(this + 140), a2);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      return;
    }

    v14 = std::string::basic_string[abi:ne200100]<0>(v34, "rtp.statemachine");
    v26[0] = 0;
    v29 = 0;
    v15 = ims::debug(v14, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Remote address is null. Unable to report AP session to the baseband", 67);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      v13 = v27;
      goto LABEL_31;
    }
  }

  else
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(v34, "rtp.statemachine");
    v30[0] = 0;
    v33 = 0;
    v12 = ims::debug(v11, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Local address is null. Unable to report AP session to the baseband", 66);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      v13 = v31;
LABEL_31:
      operator delete(v13);
    }
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_1E50F45F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void RTPSharedPointerBase::getShared<MediaSessionDelegate>(void *a1@<X0>, char ***a2@<X8>)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (a1 + *(*a1 - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<MediaSessionDelegate,RTPSharedPointerBase>(&v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void MediaSessionStateMachine::internalTerminate(MediaSessionStateMachine *this)
{
  v2 = *(this + 121);
  if ((v2 - 4) < 2)
  {
    v6 = *(**(this + 19) + 24);

    v6();
  }

  else
  {
    if (v2 != 3)
    {
      if (*(this + 121))
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(v20, "rtp.statemachine");
        v10[0] = 0;
        v13 = 0;
        v9 = ims::debug(v8, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Terminate requested on [sessionId=", 34);
        *(v9 + 17) = 0;
        MEMORY[0x1E69233B0](*(v9 + 8), *(this + 4));
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "] when state is ", 16);
        *(v9 + 17) = 0;
        MEMORY[0x1E6923340](*(v9 + 8), *(this + 121));
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          v5 = __p;
          goto LABEL_17;
        }
      }

      else
      {
        v3 = std::string::basic_string[abi:ne200100]<0>(v20, "rtp.statemachine");
        v16[0] = 0;
        v19 = 0;
        v4 = ims::debug(v3, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Terminate requested on [sessionId=", 34);
        *(v4 + 17) = 0;
        MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
        *(v4 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "] when state is ", 16);
        *(v4 + 17) = 0;
        MEMORY[0x1E6923340](*(v4 + 8), *(this + 121));
        *(v4 + 17) = 0;
        (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v4 + 17) = 0;
        if (v19 == 1 && v18 < 0)
        {
          v5 = v17;
LABEL_17:
          operator delete(v5);
        }
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      *(this + 122) = 0;
      return;
    }

    v7 = *(this + 20);
    v14 = *(this + 19);
    v15 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 200))(this, &v14, 2);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E50F49A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::terminate(MediaSessionStateMachine *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
  v99[0] = 0;
  v102 = 0;
  v5 = ims::debug(v4, v99);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "MediaSessionStateMachine::", 26);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "terminate", 9);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "  [sessionId=", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v102 == 1 && v101 < 0)
  {
    operator delete(v100);
  }

  if (v105 < 0)
  {
    operator delete(v103);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 292) & 1) == 0)
  {
    v103 = 0;
    v104 = 0;
    if (*(this + 168) == 1)
    {
      RTPManager::getStackControllerByType(*(this + 5), 1, &v103);
    }

    else
    {
      RTPManager::getActiveStackController(&v103, *(this + 5), this + 8);
    }

    v6 = v103;
    v7 = *v103;
    v8 = **v103;
    {
      (*(v7 + 10))(v6, this + 64, 0);
      v9 = v104;
      if (!v104)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v9 = v104;
    if (v104)
    {
      atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(this + 19);
    {
      v13 = *(this + 20);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 10))(v6, this + 64, v12[368]);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    else
    {
      (*(*v6 + 10))(v6, this + 64, 0);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_26:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

LABEL_27:
  if (*(this + 17))
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
    v95[0] = 0;
    v98 = 0;
    v15 = ims::debug(v14, v95);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "MediaSessionStateMachine::", 26);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "terminate", 9);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " [actionQueueSize=", 18);
    *(v15 + 17) = 0;
    v16 = (*(**(this + 17) + 216))(*(this + 17));
    MEMORY[0x1E6923370](*(v15 + 8), v16);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v98 == 1 && v97 < 0)
    {
      v17 = v96;
LABEL_34:
      operator delete(v17);
    }
  }

  else
  {
    v18 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
    v91[0] = 0;
    v94 = 0;
    v19 = ims::debug(v18, v91);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "MediaSessionStateMachine::", 26);
    *(v19 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "terminate", 9);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v94 == 1 && v93 < 0)
    {
      v17 = __p;
      goto LABEL_34;
    }
  }

  if (v105 < 0)
  {
    operator delete(v103);
  }

  v20 = *(this + 17);
  if (v20)
  {
    (*(*v20 + 200))(v20);
  }

  v21 = *(this + 122);
  if (v21 == 1)
  {
    v22 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
    v87[0] = 0;
    v90 = 0;
    v23 = ims::debug(v22, v87);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Queuing terminate [sessionId=", 29);
    *(v23 + 17) = 0;
    MEMORY[0x1E69233B0](*(v23 + 8), *(this + 4));
    *(v23 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "]", 1);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (v90 == 1 && v89 < 0)
    {
      operator delete(v88);
    }

    if (v105 < 0)
    {
      operator delete(v103);
    }

    v24 = *(this + 17);
    if (v24)
    {
      (*(*v24 + 24))(v24, a2);
    }

    return v21 ^ 1u;
  }

  *(this + 122) = 1;
  if (*(this + 120) == 2)
  {
    v25 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
    v83[0] = 0;
    v86 = 0;
    v26 = ims::debug(v25, v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Queuing terminate and calling stop [sessionId=", 46);
    *(v26 + 17) = 0;
    MEMORY[0x1E69233B0](*(v26 + 8), *(this + 4));
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "]", 1);
    *(v26 + 17) = 0;
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v86 == 1 && v85 < 0)
    {
      operator delete(v84);
    }

    if (v105 < 0)
    {
      operator delete(v103);
    }

    v27 = *(this + 17);
    if (v27)
    {
      (*(*v27 + 24))(v27, a2);
    }

    if (*(this + 120))
    {
      (*(*this + 88))(this);
    }

    else
    {
      v39 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
      v79[0] = 0;
      v82 = 0;
      v40 = ims::debug(v39, v79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "flowstate is None. Clearing the state in CommandDrivers and calling handleMediaSessionTerminated() for upper layer sessions", 123);
      *(v40 + 17) = 0;
      (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v40 + 17) = 0;
      if (v82 == 1 && v81 < 0)
      {
        operator delete(v80);
      }

      if (v105 < 0)
      {
        operator delete(v103);
      }

      v41 = *(this + 17);
      if (v41)
      {
        (*(*v41 + 200))(v41);
      }

      v103 = 0;
      v104 = 0;
      v42 = *(this + 5);
      v43 = *(this + 6);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RTPManager::getActiveStackController(&v103, v42, this + 8);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      v44 = v103;
      if (v103)
      {
        v45 = **v103;
        if (v46)
        {
          v47 = v46;
          v48 = v104;
          if (v104)
          {
            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = *(this + 19);
          if (v49)
          {
            v50 = **v49;
            if (v51)
            {
              v52 = *(this + 20);
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                v78 = v52;
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v78 = 0;
              }

              v77 = v51;
              QMIRTPStackController::sessionDidUninitialize(v47, &v77, 0);
              if (v78)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v78);
              }

              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }
            }
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }
        }

        v56 = **v44;
        if (v57)
        {
          v58 = v57;
          v59 = v104;
          if (v104)
          {
            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v60 = *(this + 19);
          if (v60)
          {
            v61 = **v60;
            if (v62)
            {
              v63 = *(this + 20);
              if (v63)
              {
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              IBIRTPStackController::handleTerminateMediaSessionResponse(v58, 0, v62[89]);
              if (v63)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              }
            }
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }
        }
      }

      v64 = *(this + 20);
      *(this + 19) = 0;
      *(this + 20) = 0;
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

      v75 = 0;
      v76 = 0;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v75);
      v65 = *(this + 3);
      if (v65)
      {
        v66 = std::__shared_weak_count::lock(v65);
        if (v66)
        {
          v67 = v66;
          v68 = *(this + 2);
          if (v68)
          {
            v73 = v75;
            v74 = v76;
            if (v76)
            {
              atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v68 + 8))(v68, &v73, 0);
            if (v74)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v74);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }
      }

      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }
    }
  }

  else
  {
    v28 = std::string::basic_string[abi:ne200100]<0>(&v103, "rtp.statemachine");
    v69[0] = 0;
    v72 = 0;
    v29 = ims::debug(v28, v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Terminating session [sessionId=", 31);
    *(v29 + 17) = 0;
    MEMORY[0x1E69233B0](*(v29 + 8), *(this + 4));
    *(v29 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "]", 1);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (v72 == 1 && v71 < 0)
    {
      operator delete(v70);
    }

    if (v105 < 0)
    {
      operator delete(v103);
    }

    (*(*this + 72))(this);
  }

  v103 = 0;
  v104 = 0;
  v30 = *(this + 5);
  v31 = *(this + 6);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RTPManager::getActiveStackController(&v75, v30, this + 8);
  std::dynamic_pointer_cast[abi:ne200100]<AVCRTPStackController,RTPStackController>(&v75, &v103);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = v103;
  if (v103)
  {
    v33 = *(this + 19);
    if (v33)
    {
      v34 = *v33;
      v35 = **v33;
      if (v36)
      {
        v37 = *(this + 20);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *(this + 19);
          if (!v33)
          {
LABEL_102:
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
            goto LABEL_103;
          }

          v34 = *v33;
        }
      }

      else
      {
        v37 = 0;
      }

      v53 = *v34;
      {
        v54 = *(this + 20);
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

LABEL_101:
        if (!v37)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v36)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = (*(*this + 184))(this);
    AVCRTPStackController::removeSessionFromCache(v32, this + 8, v38);
    goto LABEL_101;
  }

LABEL_103:
  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v104);
  }

  return v21 ^ 1u;
}

void sub_1E50F57D4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<AVCRTPStackController,RTPStackController>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void MediaSessionStateMachine::internalStart(MediaSessionStateMachine *this)
{
  v2 = *(this + 120);
  if (v2 > 2)
  {
    if (v2 - 3 > 2)
    {
      goto LABEL_15;
    }

LABEL_10:
    v4 = std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.statemachine");
    v9[0] = 0;
    v12 = 0;
    v5 = ims::debug(v4, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Start requested on [sessionId=", 30);
    *(v5 + 17) = 0;
    MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "] when state is ", 16);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923340](*(v5 + 8), *(this + 120));
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    goto LABEL_15;
  }

  if (!*(this + 120))
  {
    goto LABEL_10;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = *(this + 20);
      v7 = *(this + 19);
      v8 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*this + 216))(this, &v7, 2);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      return;
    }

LABEL_15:
    *(this + 122) = 0;
    return;
  }

  v6 = *(**(this + 19) + 32);

  v6();
}

void sub_1E50F5C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::start(MediaSessionStateMachine *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v48[0] = 0;
  v51 = 0;
  v5 = ims::debug(v4, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "MediaSessionStateMachine::", 26);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "start", 5);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "  [sessionId=", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(block);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 291) & 1) == 0)
  {
    RTPManager::sdpSessionForSession(*(this + 5), *(this + 4), &block);
    v22 = v53;
    v47[0] = block;
    v47[1] = v53;
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 16), 1uLL, memory_order_relaxed);
    }

    MediaSessionStateMachine::autoStart(this, v47, 1);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    return 1;
  }

  v6 = *(this + 19);
  if (v6)
  {
    if (((*(*v6 + 120))(v6) & 1) == 0 && (*(**(this + 17) + 208))(*(this + 17), 2))
    {
      v7 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
      v43[0] = 0;
      v46 = 0;
      v8 = ims::debug(v7, v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Session start is already queued. Drop this one [sessionId=", 58);
      *(v8 + 17) = 0;
      MEMORY[0x1E69233B0](*(v8 + 8), *(this + 4));
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(block);
      }

      return 1;
    }

    v9 = *(this + 19);
    if (v9)
    {
      if (((*(*v9 + 120))(v9) & 1) == 0)
      {
        v15 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
        v39[0] = 0;
        v42 = 0;
        v16 = ims::debug(v15, v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "New start request; session will be started when audio ready notification is received [sessionId=", 96);
        *(v16 + 17) = 0;
        MEMORY[0x1E69233B0](*(v16 + 8), *(this + 4));
        *(v16 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "]", 1);
        *(v16 + 17) = 0;
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
        if (v42 == 1 && v41 < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(block);
        }

        v17 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
        v35[0] = 0;
        v38 = 0;
        v18 = ims::debug(v17, v35);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Queuing start [sessionId=", 25);
        *(v18 + 17) = 0;
        MEMORY[0x1E69233B0](*(v18 + 8), *(this + 4));
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "]", 1);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v38 == 1 && v37 < 0)
        {
          operator delete(v36);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(block);
        }

        v19 = *(this + 17);
        if (v19)
        {
          (*(*v19 + 32))(v19, a2);
        }

        v33 = 0;
        v34 = 0;
        RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v33);
        v20 = this + *(*this - 24);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 1174405120;
        v31[2] = ___ZN24MediaSessionStateMachine5startEb_block_invoke;
        v31[3] = &__block_descriptor_tmp_19_2;
        v31[4] = this;
        v31[5] = v33;
        v32 = v34;
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v59 = 0;
        v60 = 0;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v59, v20 + 1);
        v21 = *(v20 + 3);
        block = MEMORY[0x1E69E9820];
        v53 = 1174405120;
        v54 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
        v55 = &unk_1F5EF4FF0;
        v57 = v59;
        v58 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v56 = v31;
        dispatch_async(v21, &block);
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        return 0;
      }
    }
  }

  if (*(this + 122) != 1)
  {
    *(this + 61) = 257;
    v13 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
    v23[0] = 0;
    v26 = 0;
    v14 = ims::debug(v13, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Starting session [sessionId=", 28);
    *(v14 + 17) = 0;
    MEMORY[0x1E69233B0](*(v14 + 8), *(this + 4));
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "]", 1);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(block);
    }

    (*(*this + 80))(this);
    return 1;
  }

  if (*(this + 123) == 1 && !(*(**(this + 17) + 208))(*(this + 17), 3))
  {
    return 1;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v27[0] = 0;
  v30 = 0;
  v11 = ims::debug(v10, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Queuing start [sessionId=", 25);
  *(v11 + 17) = 0;
  MEMORY[0x1E69233B0](*(v11 + 8), *(this + 4));
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(block);
  }

  result = *(this + 17);
  if (result)
  {
    (*(*result + 32))(result, a2);
    return 0;
  }

  return result;
}

void sub_1E50F64DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{
  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  v60 = *(v58 - 112);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionStateMachine::autoStart(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v39, "rtp.statemachine");
  v35[0] = 0;
  v38 = 0;
  v7 = ims::debug(v6, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "autoStart", 9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "  [sessionId=", 13);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), *(a1 + 32));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isBasebandInitialized=", 23);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), (*(a1 + 121) & 0xFE) == 4);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " force=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(__p);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  started = MediaSessionStateMachine::startConditionsMet(a1);
  v9 = started;
  if ((a3 & 1) != 0 || (*(a1 + 291) & 1) == 0 && ((started ^ 1) & 1) == 0)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(v39, "rtp.statemachine");
    v31[0] = 0;
    v34 = 0;
    v11 = ims::debug(v10, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Autostart conditions have been met for session [sessionId=", 58);
    *(v11 + 17) = 0;
    MEMORY[0x1E69233B0](*(v11 + 8), *(a1 + 32));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " force=", 7);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923320](*(v11 + 8), a3);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " _startSent=", 12);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923320](*(v11 + 8), *(a1 + 291));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " startConditionMet=", 19);
    *(v11 + 17) = 0;
    MEMORY[0x1E6923320](*(v11 + 8), v9);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    *(a1 + 290) = 1;
    if ((*(a1 + 121) & 0xFE) != 4)
    {
      v29 = 0;
      v30 = 0;
      RTPManager::addressForSession(*(a1 + 40), *(a1 + 32), &v29);
      v12 = RTPManager::sessionMobileOriginated(*(a1 + 40), *(a1 + 32));
      v13 = *(a1 + 32);
      RTPManager::interfaceForSession(*(a1 + 40), v39);
      RTPManager::awdCallIdForSession(*(a1 + 40), *(a1 + 32), v27);
      v14 = *(a1 + 296);
      v15 = a2[1];
      v25 = *a2;
      v26 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 16))(a1, &v29, v12, v39, v27, v14, &v25);
      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    *(a1 + 291) = 1;
    (*(*a1 + 48))(a1, a1 + 296, 0);
    (*(**(a1 + 40) + 48))(*(a1 + 40), *(a1 + 32));
    (*(*a1 + 32))(a1, 0);
    MediaSessionStateMachine::detachFromSocket(a1);
    v16 = *(a1 + 40);
    v17 = (*(*a1 + 144))(a1);
    v20 = *(v16 + 72);
    v19 = v16 + 72;
    v18 = v20;
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = v19;
    do
    {
      if (*(v18 + 32) >= v17)
      {
        v21 = v18;
      }

      v18 = *(v18 + 8 * (*(v18 + 32) < v17));
    }

    while (v18);
    if (v21 == v19 || *(v21 + 32) > v17 || !*(v21 + 40))
    {
LABEL_33:
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = (*(*a1 + 144))(a1);
      RTPActiveSessionSet::setActive(v23 + 64, v22, v24);
    }
  }
}

void sub_1E50F6AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine5startEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = a1[6];
        v14 = a1[5];
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 24))(v5, &v14, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50F6D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MediaSessionStateMachine::internalStop(MediaSessionStateMachine *this)
{
  v2 = *(this + 120);
  if (v2 > 2)
  {
    if (v2 - 3 > 2)
    {
      goto LABEL_14;
    }

LABEL_9:
    v4 = std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.statemachine");
    v9[0] = 0;
    v12 = 0;
    v5 = ims::debug(v4, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Stop requested on [sessionId=", 29);
    *(v5 + 17) = 0;
    MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "] when state is ", 16);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923340](*(v5 + 8), *(this + 120));
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    goto LABEL_14;
  }

  if (!*(this + 120))
  {
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = *(**(this + 19) + 40);

      v3();
      return;
    }

LABEL_14:
    *(this + 122) = 0;
    return;
  }

  v6 = *(this + 20);
  v7 = *(this + 19);
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 224))(this, &v7, 2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E50F6F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::stop(MediaSessionStateMachine *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v40[0] = 0;
  v43 = 0;
  v5 = ims::debug(v4, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "MediaSessionStateMachine::", 26);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "stop", 4);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "  [sessionId=", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(block);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 292) & 1) == 0)
  {
    v38 = 0;
    v39 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v38);
    if (!*(this + 5))
    {
      goto LABEL_51;
    }

    v20 = this + *(*this - 24);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1174405120;
    v36[2] = ___ZN24MediaSessionStateMachine4stopEb_block_invoke;
    v36[3] = &__block_descriptor_tmp_24_3;
    v36[4] = this;
    v36[5] = v38;
    v37 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = 0;
    v52 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v51, v20 + 1);
    v21 = *(v20 + 3);
    block = MEMORY[0x1E69E9820];
    v45 = 1174405120;
    v46 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v47 = &unk_1F5EF4FF0;
    v49 = v51;
    v50 = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = v36;
    dispatch_async(v21, &block);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v19 = v37;
    if (!v37)
    {
      goto LABEL_51;
    }

LABEL_50:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_51:
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    return 1;
  }

  v6 = *(this + 19);
  if (v6 && ((*(*v6 + 120))(v6) & 1) == 0)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
    v32[0] = 0;
    v35 = 0;
    v13 = ims::debug(v12, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Stop request negates an earlier start request. Flushing the queue for session ", 78);
    *(v13 + 17) = 0;
    MEMORY[0x1E69233B0](*(v13 + 8), *(this + 4));
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(block);
    }

    if (*(this + 17))
    {
      v14 = std::string::basic_string[abi:ne200100]<0>(&v51, "rtp.statemachine");
      LOBYTE(block) = 0;
      LOBYTE(v50) = 0;
      v15 = ims::debug(v14, &block);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "MediaSessionStateMachine::", 26);
      *(v15 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "flush", 5);
      *(v15 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " [actionQueueSize=", 18);
      *(v15 + 17) = 0;
      v16 = (*(**(this + 17) + 216))(*(this + 17));
      MEMORY[0x1E6923370](*(v15 + 8), v16);
      *(v15 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      if (v50 == 1 && SHIBYTE(v48) < 0)
      {
        operator delete(v46);
      }

      if (v53 < 0)
      {
        operator delete(v51);
      }

        ;
      }
    }

    v38 = 0;
    v39 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v38);
    v17 = this + *(*this - 24);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 1174405120;
    v30[2] = ___ZN24MediaSessionStateMachine4stopEb_block_invoke_26;
    v30[3] = &__block_descriptor_tmp_29_1;
    v30[4] = this;
    v30[5] = v38;
    v31 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = 0;
    v52 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v51, v17 + 1);
    v18 = *(v17 + 3);
    block = MEMORY[0x1E69E9820];
    v45 = 1174405120;
    v46 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v47 = &unk_1F5EF4FF0;
    v49 = v51;
    v50 = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = v30;
    dispatch_async(v18, &block);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v19 = v31;
    if (!v31)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (*(this + 122) != 1)
  {
    if (*(this + 124) == 1 && (*(*this + 120))(this))
    {
      (*(**(this + 19) + 200))(*(this + 19), 0, 0);
    }

    *(this + 122) = 1;
    v10 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
    v22[0] = 0;
    v25 = 0;
    v11 = ims::debug(v10, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Stopping session [sessionId=", 28);
    *(v11 + 17) = 0;
    MEMORY[0x1E69233B0](*(v11 + 8), *(this + 4));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(block);
    }

    (*(*this + 88))(this);
    return 1;
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v26[0] = 0;
  v29 = 0;
  v8 = ims::debug(v7, v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Queuing stop [sessionId=", 24);
  *(v8 + 17) = 0;
  MEMORY[0x1E69233B0](*(v8 + 8), *(this + 4));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v29 == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(block);
  }

  result = *(this + 17);
  if (result)
  {
    (*(*result + 40))(result, a2);
    return 0;
  }

  return result;
}

void sub_1E50F7868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine4stopEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = a1[6];
        v14 = a1[5];
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 32))(v5, &v14, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50F7AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine4stopEb_block_invoke_26(void *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = a1[6];
        v14 = a1[5];
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 32))(v5, &v14, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50F7C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::internalSetDirection(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 > 2)
  {
    if (v2 - 3 > 2)
    {
LABEL_14:
      *(a1 + 122) = 0;
      return;
    }

LABEL_9:
    v4 = std::string::basic_string[abi:ne200100]<0>(&v10, "rtp.statemachine");
    v6[0] = 0;
    v9 = 0;
    v5 = ims::debug(v4, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Set direction requested on [sessionId=", 38);
    *(v5 + 17) = 0;
    MEMORY[0x1E69233B0](*(v5 + 8), *(a1 + 32));
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "] when state is ", 16);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923340](*(v5 + 8), *(a1 + 120));
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    goto LABEL_14;
  }

  if (!*(a1 + 120))
  {
    goto LABEL_9;
  }

  if (v2 != 1 && v2 != 2)
  {
    goto LABEL_14;
  }

  v3 = *(**(a1 + 152) + 48);

  v3();
}

void sub_1E50F7E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t MediaSessionStateMachine::setDirection(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a1 + 285) == 1 && *(a1 + 286) == 1 && (*(*a1 + 144))(a1) == 2 && (*(a1 + 292) & 1) == 0 && (MediaSessionStateMachine::startConditionsMet(a1) & 1) == 0)
  {
    if (*(a1 + 296) != *a2)
    {
      *(a1 + 296) = *a2;
      RTPManager::sdpSessionForSession(*(a1 + 40), *(a1 + 32), &v24);
      v15 = v25;
      v27[0] = v24;
      v27[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      MediaSessionStateMachine::autoStart(a1, v27, 0);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }

    return 1;
  }

  v6 = *(a1 + 152);
  if ((!v6 || !*(a1 + 136) || ((*(*v6 + 120))(v6) & 1) != 0 || ((*(**(a1 + 136) + 208))(*(a1 + 136), 2) & 1) == 0) && *(a1 + 122) != 1)
  {
    v11 = *a2;
    result = 1;
    if (*(a1 + 128) == *a2)
    {
      return result;
    }

    *(a1 + 122) = 1;
    if (*(a1 + 120) == 1)
    {
      *(a1 + 128) = v11;
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&v24, "rtp.statemachine");
    v16[0] = 0;
    v19 = 0;
    v14 = ims::debug(v13, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Calling setDirection ", 21);
    *(v14 + 17) = 0;
    MEMORY[0x1E69233B0](*(v14 + 8), *(a1 + 32));
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v24);
    }

    (*(*a1 + 104))(a1, a2);
    return 1;
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(&v24, "rtp.statemachine");
  v20[0] = 0;
  v23 = 0;
  v8 = ims::debug(v7, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Queuing setDirection [sessionId=", 32);
  *(v8 + 17) = 0;
  MEMORY[0x1E69233B0](*(v8 + 8), *(a1 + 32));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " isAudioReady=", 14);
  *(v8 + 17) = 0;
  v9 = *(a1 + 152);
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9);
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E6923340](*(v8 + 8), v10);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " isTransactionPending=", 22);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923320](*(v8 + 8), *(a1 + 122));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }

  result = *(a1 + 136);
  if (result)
  {
    (*(*result + 48))(result, a2, a3);
    return 0;
  }

  return result;
}

void sub_1E50F82B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  v32 = *(v30 - 64);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::startConditionsMet(MediaSessionStateMachine *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "rtp.statemachine");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "startConditionsMet", 18);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " _configurable=", 15);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 293));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " _trafficDetected=", 18);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 294));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " _directionActive=", 18);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 74) != 4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " startSent=", 11);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 291));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (*(this + 293) == 1 && *(this + 294) == 1 && *(this + 74) != 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(this + 291);
  }

  return v4 & 1;
}

void sub_1E50F8518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void MediaSessionStateMachine::internalConfigure(MediaSessionStateMachine *this)
{
  v2 = *(this + 121);
  if ((v2 - 4) < 2)
  {
    v6 = *(**(this + 19) + 64);

    v6();
  }

  else
  {
    if (v2 != 3)
    {
      if (*(this + 121))
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(v20, "rtp.statemachine");
        v10[0] = 0;
        v13 = 0;
        v9 = ims::debug(v8, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Configure requested on [sessionId=", 34);
        *(v9 + 17) = 0;
        MEMORY[0x1E69233B0](*(v9 + 8), *(this + 4));
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "] when state is ", 16);
        *(v9 + 17) = 0;
        MEMORY[0x1E6923340](*(v9 + 8), *(this + 121));
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v13 == 1 && v12 < 0)
        {
          v5 = __p;
          goto LABEL_17;
        }
      }

      else
      {
        v3 = std::string::basic_string[abi:ne200100]<0>(v20, "rtp.statemachine");
        v16[0] = 0;
        v19 = 0;
        v4 = ims::debug(v3, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Configure requested on [sessionId=", 34);
        *(v4 + 17) = 0;
        MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
        *(v4 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "] when state is ", 16);
        *(v4 + 17) = 0;
        MEMORY[0x1E6923340](*(v4 + 8), *(this + 121));
        *(v4 + 17) = 0;
        (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v4 + 17) = 0;
        if (v19 == 1 && v18 < 0)
        {
          v5 = v17;
LABEL_17:
          operator delete(v5);
        }
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      *(this + 122) = 0;
      return;
    }

    v7 = *(this + 20);
    v14 = *(this + 19);
    v15 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 200))(this, &v14, 2);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1E50F87DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::configure(MediaSessionStateMachine *this, uint64_t a2)
{
  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 292) & 1) == 0 && (MediaSessionStateMachine::startConditionsMet(this) & 1) == 0)
  {
    v30 = 0;
    v31 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v30);
    if (*(this + 5))
    {
      v16 = this + *(*this - 24);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1174405120;
      v28[2] = ___ZN24MediaSessionStateMachine9configureEb_block_invoke;
      v28[3] = &__block_descriptor_tmp_40_3;
      v28[4] = this;
      v28[5] = v30;
      v29 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = 0;
      v40 = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v39, v16 + 1);
      v17 = *(v16 + 3);
      block = MEMORY[0x1E69E9820];
      v33 = 1174405120;
      v34 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
      v35 = &unk_1F5EF4FF0;
      v37 = v39;
      v38 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = v28;
      dispatch_async(v17, &block);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    return 1;
  }

  if (*(this + 168) == 1 && *(this + 284) == 1)
  {
    *(this + 284) = 0;
    if (!ims::AccessNetwork::isWifi((this + 176)))
    {
      MediaSessionStateMachine::reportAPSession(this, 1);
    }
  }

  v4 = *(this + 19);
  if ((!v4 || ((*(*v4 + 120))(v4) & 1) != 0 || ((*(**(this + 17) + 208))(*(this + 17), 2) & 1) == 0) && *(this + 122) != 1)
  {
    *(this + 122) = 1;
    v9 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
    v18[0] = 0;
    v21 = 0;
    v10 = ims::debug(v9, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Configuring session ", 20);
    *(v10 + 17) = 0;
    v11 = (*(*this + 184))(this);
    MEMORY[0x1E69233B0](*(v10 + 8), v11);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(block);
    }

    (*(*this + 96))(this);
    return 1;
  }

  v5 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v24[0] = 0;
  v27 = 0;
  v6 = ims::debug(v5, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Queuing configure [sessionId=", 29);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(this + 4));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " isAudioReady=", 14);
  *(v6 + 17) = 0;
  v7 = *(this + 19);
  if (v7)
  {
    v8 = (*(*v7 + 120))(v7);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E6923340](*(v6 + 8), v8);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(block);
  }

  v13 = *(this + 17);
  if (v13)
  {
    (*(*v13 + 64))(v13, a2);
  }

  v30 = 0;
  v31 = 0;
  RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v30);
  v14 = this + *(*this - 24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1174405120;
  v22[2] = ___ZN24MediaSessionStateMachine9configureEb_block_invoke_42;
  v22[3] = &__block_descriptor_tmp_45_0;
  v22[4] = this;
  v22[5] = v30;
  v23 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v39, v14 + 1);
  v15 = *(v14 + 3);
  block = MEMORY[0x1E69E9820];
  v33 = 1174405120;
  v34 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
  v35 = &unk_1F5EF4FF0;
  v37 = v39;
  v38 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v22;
  dispatch_async(v15, &block);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  return 0;
}

void sub_1E50F8E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 97) < 0)
  {
    operator delete(*(v36 - 120));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine9configureEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = a1[6];
        v14 = a1[5];
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 16))(v5, &v14, *(v2 + 293) ^ 1u);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), *(v2 + 32));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50F9044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine9configureEb_block_invoke_42(void *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = a1[6];
        v14 = a1[5];
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 16))(v5, &v14, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50F9228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::setConfiguration(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v40, "rtp.statemachine");
  v36[0] = 0;
  v39 = 0;
  v7 = ims::debug(v6, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "setConfiguration", 16);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  v8 = a2[1];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = std::__shared_weak_count::lock(v8);
  if (!v9)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = *a2;
LABEL_11:
  if (a1[285] == 1 && a1[286] == 1 && (*(*a1 + 144))(a1) == 2 && (a1[293] & 1) == 0 && v10)
  {
    if (*(v10 + 584) == 1)
    {
      v11 = *(v10 + 182);
      a1[293] = v11 != 255;
      if (v11 != 255)
      {
        v33 = v10;
        v34 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*a1 + 56))(v35, a1, &v33);
        ImsResult::~ImsResult(v35);
        if (v34)
        {
          std::__shared_weak_count::__release_weak(v34);
        }
      }
    }

    else
    {
      a1[293] = 0;
    }

    v32[0] = v10;
    v32[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionStateMachine::autoStart(a1, v32, 0);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else if (a1[285] == 1 && a1[286] == 1 && (*(*a1 + 144))(a1) == 2 && (a1[292] & 1) == 0 && (MediaSessionStateMachine::startConditionsMet(a1) & 1) == 0)
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    goto LABEL_74;
  }

  if (a1[168] == 1 && v10)
  {
    v12 = (*(*a1 + 144))(a1);
    if (v12 == 2)
    {
      if (*(v10 + 584))
      {
        v13 = v10 + 152;
        goto LABEL_43;
      }
    }

    else if (v12 == 6 && (*(v10 + 1856) & 1) != 0)
    {
      v13 = v10 + 1496;
      goto LABEL_43;
    }

    if (*(v10 + 1328) == 1)
    {
      v13 = v10 + 1032;
LABEL_43:
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v14)
      {
        v16 = *(a1 + 31);
        if (!v16)
        {
          v18 = 1;
          if (!v15)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v17 = *(v13 + 16);
        *&v40 = *(v13 + 8);
        *(&v40 + 1) = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v18 = (*(*v16 + 104))(v16, &v40, 0) ^ 1;
        if (*(&v40 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
          if (!v15)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v18 = 0;
      }

      if (!v15)
      {
LABEL_55:
        if (v18)
        {
          v19 = *(v13 + 8);
          v20 = *(v13 + 16);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v19 + 32))(&v40);
          v21 = v40;
          v40 = 0uLL;
          v22 = *(a1 + 32);
          *(a1 + 248) = v21;
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            if (*(&v40 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
            }
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          a1[284] = 1;
        }

        v23 = *(v13 + 26);
        if (*(a1 + 140) != v23)
        {
          *(a1 + 140) = v23;
          a1[284] = 1;
        }

        goto LABEL_66;
      }

LABEL_54:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_55;
    }
  }

LABEL_66:
  v24 = *(a1 + 19);
  v25 = a2[1];
  v30 = *a2;
  v31 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionDriver::setRTCPInterval(v24, &v30);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  v26 = *(a1 + 19);
  v27 = a2[1];
  v28 = *a2;
  v29 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v26 + 56))(v26, &v28);
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_74:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E50F978C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionStateMachine::transactionComplete(MediaSessionStateMachine *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
  v21[0] = 0;
  v24 = 0;
  v5 = ims::debug(v4, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "MediaSessionStateMachine::", 26);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "transactionComplete", 19);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [isSuccess=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923320](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " isTransactionPending=", 22);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923320](*(v5 + 8), *(this + 122));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " actionQueueSize=", 17);
  *(v5 + 17) = 0;
  v6 = (*(**(this + 17) + 216))(*(this + 17));
  MEMORY[0x1E6923370](*(v5 + 8), v6);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(block[0]);
  }

  *(this + 122) = 0;
  if (a2)
  {
    do
    {
      if (*(this + 122))
      {
        break;
      }

      v7 = *(this + 17);
      if (!v7)
      {
        break;
      }
    }

    while (((*(*v7 + 184))(v7) & 1) != 0);
  }

  else
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
    v17[0] = 0;
    v20 = 0;
    v9 = ims::debug(v8, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Clearing action queue due to error", 34);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(block[0]);
    }

    v10 = *(this + 17);
    if (v10)
    {
      (*(*v10 + 200))(v10);
    }

    v15 = 0;
    v16 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(this, &v15);
    v11 = this + *(*this - 24);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1174405120;
    v13[2] = ___ZN24MediaSessionStateMachine19transactionCompleteEb_block_invoke;
    v13[3] = &__block_descriptor_tmp_52_1;
    v13[4] = this;
    v13[5] = v15;
    v14 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = 0;
    v32 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v31, v11 + 1);
    v12 = *(v11 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v26 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v27 = &unk_1F5EF4FF0;
    v29 = v31;
    v30 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v13;
    dispatch_async(v12, block);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void sub_1E50F9C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a27 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 97) < 0)
  {
    operator delete(*(v37 - 120));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine19transactionCompleteEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = a1[6];
        v14 = a1[5];
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 40))(v5, &v14, 9);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50F9E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::handleMediaSessionInitialized(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
  v33[0] = 0;
  v36 = 0;
  v7 = ims::debug(v6, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionInitialized", 29);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isTransactionPending=", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), *(a1 + 122));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " actionQueueSize=", 17);
  *(v7 + 17) = 0;
  v8 = (*(**(a1 + 136) + 216))(*(a1 + 136));
  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(block[0]);
  }

  if (*(a1 + 121) == 3)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
    v29[0] = 0;
    v32 = 0;
    v10 = ims::debug(v9, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Session ", 8);
    *(v10 + 17) = 0;
    if (a3)
    {
      v11 = " failed to initialize ";
    }

    else
    {
      v11 = "initialized ";
    }

    if (a3)
    {
      v12 = 22;
    }

    else
    {
      v12 = 12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, v12);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=", 12);
    *(v10 + 17) = 0;
    v13 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v10 + 8), v13);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(block[0]);
      if (a3)
      {
        goto LABEL_18;
      }
    }

    else if (a3)
    {
LABEL_18:
      if (*(a1 + 285) == 1 && *(a1 + 286) == 1 && (v14 = (*(*a1 + 144))(a1), !a3) && v14 == 2)
      {
        MediaSessionStateMachine::transactionComplete(a1, 1);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v27);
        v18 = a1 + *(*a1 - 24);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 1174405120;
        v24[2] = ___ZN24MediaSessionStateMachine29handleMediaSessionInitializedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke;
        v24[3] = &__block_descriptor_tmp_61_2;
        v24[4] = a1;
        v24[5] = v27;
        v25 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = a3;
        v43 = 0;
        v44 = 0;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v43, (v18 + 8));
        v19 = *(v18 + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 1174405120;
        v38 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
        v39 = &unk_1F5EF4FF0;
        v41 = v43;
        v42 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = v24;
        dispatch_async(v19, block);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        MediaSessionStateMachine::transactionComplete(a1, a3 == 0);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      return;
    }

    *(a1 + 121) = 4;
    goto LABEL_18;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
  v20[0] = 0;
  v23 = 0;
  v16 = ims::warn(v15, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Received an initialized event while already initialized [sessonId=", 66);
  *(v16 + 17) = 0;
  v17 = (*(**a2 + 176))();
  MEMORY[0x1E69233B0](*(v16 + 8), v17);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "]", 1);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(block[0]);
  }
}

void sub_1E50FA454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine29handleMediaSessionInitializedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (**v5)(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FA674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::handleMediaSessionTerminated(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v34, "rtp.statemachine");
  v30[0] = 0;
  v33 = 0;
  v7 = ims::debug(v6, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionTerminated", 28);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isTransactionPending=", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), *(a1 + 122));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " actionQueueSize=", 17);
  *(v7 + 17) = 0;
  v8 = (*(**(a1 + 136) + 216))(*(a1 + 136));
  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v34);
  }

  if (*(a1 + 121) == 3)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v34, "rtp.statemachine");
    v22[0] = 0;
    v25 = 0;
    v10 = ims::warn(v9, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Session terminated notification received while uninitialized ", 61);
    *(v10 + 17) = 0;
    v11 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v10 + 8), v11);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      v12 = v23;
LABEL_13:
      operator delete(v12);
    }
  }

  else
  {
    *(a1 + 121) = 3;
    v13 = std::string::basic_string[abi:ne200100]<0>(&v34, "rtp.statemachine");
    v26[0] = 0;
    v29 = 0;
    v14 = ims::debug(v13, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Session terminated ", 19);
    *(v14 + 17) = 0;
    v15 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v14 + 8), v15);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      v12 = v27;
      goto LABEL_13;
    }
  }

  if (v36 < 0)
  {
    operator delete(v34);
  }

  if (*(a1 + 168) == 1 && !ims::AccessNetwork::isWifi((a1 + 176)))
  {
    MediaSessionStateMachine::reportAPSession(a1, 0);
  }

  v34 = 0;
  v35 = 0;
  RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v34);
  v16 = *(a1 + 24);
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = v17;
      v19 = *(a1 + 16);
      if (v19)
      {
        v20 = v34;
        v21 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v19 + 8))(v19, &v20, a3);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  *(a1 + 122) = 0;
  (*(**(a1 + 136) + 200))(*(a1 + 136));
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }
}

void sub_1E50FAB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  v43 = *(v41 - 64);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::handleMediaSessionConfigured(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v54[0] = 0;
  v57 = 0;
  v7 = ims::debug(v6, v54);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionConfigured", 28);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isTransactionPending=", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), *(a1 + 122));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " actionQueueSize=", 17);
  *(v7 + 17) = 0;
  v8 = (*(**(a1 + 136) + 216))(*(a1 + 136));
  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v57 == 1 && v56 < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(block);
  }

  v9 = *(a1 + 121);
  if (v9 == 3)
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
    v41[0] = 0;
    v44 = 0;
    v18 = ims::debug(v17, v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Session initialized ", 20);
    *(v18 + 17) = 0;
    v19 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v18 + 8), v19);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v44 == 1 && v43 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(block);
    }

    if (*(a1 + 285) == 1 && *(a1 + 286) == 1)
    {
      v20 = (*(*a1 + 144))(a1);
      if (!a3 && v20 == 2)
      {
        goto LABEL_77;
      }
    }

    v48 = 0;
    v49 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v48);
    v21 = a1 + *(*a1 - 24);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1174405120;
    v38[2] = ___ZN24MediaSessionStateMachine28handleMediaSessionConfiguredENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_70;
    v38[3] = &__block_descriptor_tmp_73_1;
    v38[4] = a1;
    v38[5] = v48;
    v39 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v40 = a3;
    v65 = 0;
    v66 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v65, (v21 + 8));
    v22 = *(v21 + 24);
    block = MEMORY[0x1E69E9820];
    v59 = 1174405120;
    v60 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v61 = &unk_1F5EF4FF0;
    v63 = v65;
    v64 = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v62 = v38;
    dispatch_async(v22, &block);
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }
  }

  else if (v9 == 5)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
    v50[0] = 0;
    v53 = 0;
    v11 = ims::debug(v10, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Session configured ", 19);
    *(v11 + 17) = 0;
    v12 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v11 + 8), v12);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v53 == 1 && v52 < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(block);
    }

    if (*(a1 + 285) != 1 || *(a1 + 286) != 1 || (v13 = (*(*a1 + 144))(a1), a3) || v13 != 2 || (*(a1 + 292) & 1) != 0)
    {
      v48 = 0;
      v49 = 0;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v48);
      v14 = a1 + *(*a1 - 24);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 1174405120;
      v45[2] = ___ZN24MediaSessionStateMachine28handleMediaSessionConfiguredENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke;
      v45[3] = &__block_descriptor_tmp_68_2;
      v45[4] = a1;
      v45[5] = v48;
      v46 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = a3;
      v65 = 0;
      v66 = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v65, (v14 + 8));
      v15 = *(v14 + 24);
      block = MEMORY[0x1E69E9820];
      v59 = 1174405120;
      v60 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
      v61 = &unk_1F5EF4FF0;
      v63 = v65;
      v64 = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = v45;
      dispatch_async(v15, &block);
      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

LABEL_78:
    v30 = 1;
    goto LABEL_76;
  }

  v23 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v34[0] = 0;
  v37 = 0;
  v24 = ims::debug(v23, v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Session configured ", 19);
  *(v24 + 17) = 0;
  v25 = (*(**a2 + 176))();
  MEMORY[0x1E69233B0](*(v24 + 8), v25);
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(block);
  }

  if (*(a1 + 285) == 1 && (*(a1 + 286) & 1) != 0)
  {
    v26 = (*(*a1 + 144))(a1);
    v27 = a3 == 0;
    if (!a3 && v26 == 2)
    {
      if (*(a1 + 292))
      {
        v27 = 1;
        goto LABEL_61;
      }

LABEL_77:
      *(a1 + 121) = 5;
      goto LABEL_78;
    }
  }

  else
  {
    v27 = a3 == 0;
  }

LABEL_61:
  v48 = 0;
  v49 = 0;
  RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v48);
  v28 = a1 + *(*a1 - 24);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1174405120;
  v31[2] = ___ZN24MediaSessionStateMachine28handleMediaSessionConfiguredENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_74;
  v31[3] = &__block_descriptor_tmp_77_0;
  v31[4] = a1;
  v31[5] = v48;
  v32 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = a3;
  v65 = 0;
  v66 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v65, (v28 + 8));
  v29 = *(v28 + 24);
  block = MEMORY[0x1E69E9820];
  v59 = 1174405120;
  v60 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
  v61 = &unk_1F5EF4FF0;
  v63 = v65;
  v64 = v66;
  if (v66)
  {
    atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v62 = v31;
  dispatch_async(v29, &block);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v27)
  {
    *(a1 + 121) = 5;
  }

  v16 = v32;
  if (!v32)
  {
    goto LABEL_73;
  }

LABEL_72:
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_73:
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v30 = a3 == 0;
LABEL_76:
  MediaSessionStateMachine::transactionComplete(a1, v30);
}

void sub_1E50FB560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a43 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 113) < 0)
  {
    operator delete(*(v45 - 136));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine28handleMediaSessionConfiguredENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 16))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FB77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine28handleMediaSessionConfiguredENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (**v5)(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FB960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine28handleMediaSessionConfiguredENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 16))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FBB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::handleMediaSessionActivated(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
  v120[0] = 0;
  v123 = 0;
  v7 = ims::debug(v6, v120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionActivated", 27);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isTransactionPending=", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), *(a1 + 122));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " actionQueueSize=", 17);
  *(v7 + 17) = 0;
  v8 = (*(**(a1 + 136) + 216))(*(a1 + 136));
  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v123 == 1 && v122 < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  *(a1 + 123) = 0;
  if (a3 != 2)
  {
    v11 = (*(**a2 + 96))();
    v12 = v11;
    v119 = v11;
    v13 = *(a1 + 152);
    v14 = *(v13 + 296);
    v15 = *(v13 + 300);
    v16 = *(v13 + 308);
    if (*(v13 + 310) <= v16)
    {
      v17 = *(v13 + 308);
    }

    else
    {
      v17 = *(v13 + 310);
    }

    if (v11 == 4)
    {
      goto LABEL_12;
    }

    v18 = (v13 + 312);
    if (v11 >= 2)
    {
      if (*(v13 + 335) < 0)
      {
        std::string::__init_copy_ctor_external(&block, *(v13 + 312), *(v13 + 320));
      }

      else
      {
        *&block.__r_.__value_.__l.__data_ = *v18;
        block.__r_.__value_.__r.__words[2] = *(v13 + 328);
      }

      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        if (block.__r_.__value_.__l.__size_ == 3)
        {
          v23 = bswap32(*block.__r_.__value_.__l.__data_ | (*(block.__r_.__value_.__r.__words[0] + 2) << 16));
          v20 = v23 >= 0x52545000;
          v24 = v23 > 0x52545000;
          v25 = !v20;
          v26 = v24 - v25;
          operator delete(block.__r_.__value_.__l.__data_);
          if (!v26)
          {
            goto LABEL_45;
          }
        }

        else
        {
          operator delete(block.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(block.__r_.__value_.__r.__words[2]) == 3)
      {
        v19 = bswap32(LOWORD(block.__r_.__value_.__l.__data_) | (block.__r_.__value_.__s.__data_[2] << 16));
        v20 = v19 >= 0x52545000;
        v21 = v19 > 0x52545000;
        v22 = !v20;
        if (v21 == v22)
        {
          goto LABEL_45;
        }
      }

LABEL_12:
      v16 = 0;
LABEL_46:
      if (*(a1 + 285) == 1 && *(a1 + 286) == 1 && (*(*a1 + 144))(a1) == 2 && !a3 && (*(a1 + 292) & 1) == 0)
      {
        v31 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
        v115[0] = 0;
        v118 = 0;
        v32 = ims::debug(v31, v115);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Autostart complete for session ", 31);
        *(v32 + 17) = 0;
        MEMORY[0x1E69233B0](*(v32 + 8), *(a1 + 32));
        *(v32 + 17) = 0;
        (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v32 + 17) = 0;
        if (v118 == 1 && v117 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
        }

        v33 = (a1 + 120);
        v34 = *(a1 + 120);
        *(a1 + 292) = 1;
        if (v34 != 1)
        {
          if (v12 - 1 <= 1)
          {
LABEL_127:
            if (v12 == 1)
            {
              v56 = *(a1 + 152);
              if (*(a1 + 124) == 1)
              {
                (*(*v56 + 200))(v56, v16, v17);
                v56 = *(a1 + 152);
              }

              if (v14 != v15)
              {
                (*(*v56 + 216))(v56, v14 != 0, v14);
                v56 = *(a1 + 152);
              }

              if (v56[76])
              {
                (*(*v56 + 208))(v56, 1, v56[76]);
              }
            }

            else if (*(a1 + 128) == 1)
            {
              if (*(a1 + 124) == 1)
              {
                (*(**(a1 + 152) + 200))(*(a1 + 152), v16, v17);
              }

              if (v14 != v15)
              {
                (*(**(a1 + 152) + 216))(*(a1 + 152), 1, v15);
              }
            }

            if ((*(a1 + 128) - 3) > 1)
            {
              goto LABEL_85;
            }

            v65 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
            v98[0] = 0;
            v101 = 0;
            v66 = ims::debug(v65, v98);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v66 + 8), "Session active ", 15);
            *(v66 + 17) = 0;
            v67 = (*(**a2 + 176))();
            MEMORY[0x1E69233B0](*(v66 + 8), v67);
            *(v66 + 17) = 0;
            (*(*v66 + 64))(v66, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v66 + 17) = 0;
            if (v101 == 1 && v100 < 0)
            {
              operator delete(v99);
            }

            if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(block.__r_.__value_.__l.__data_);
            }

            *&v109.__r_.__value_.__l.__data_ = 0uLL;
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v109);
            v68 = a1 + *(*a1 - 24);
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 1174405120;
            v95[2] = ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_88;
            v95[3] = &__block_descriptor_tmp_91_2;
            v95[4] = a1;
            v96 = *&v109.__r_.__value_.__l.__data_;
            if (v109.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v97 = 0;
            *&v110.__r_.__value_.__l.__data_ = 0uLL;
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v110, (v68 + 8));
            v69 = *(v68 + 24);
            block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
            block.__r_.__value_.__l.__size_ = 1174405120;
            block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
            v125 = &unk_1F5EF4FF0;
            v127 = *&v110.__r_.__value_.__l.__data_;
            if (v110.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v110.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v126 = v95;
            dispatch_async(v69, &block);
            if (*(&v127 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
            }

            if (v110.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110.__r_.__value_.__l.__size_);
            }

            v43 = *(&v96 + 1);
            if (!*(&v96 + 1))
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          goto LABEL_134;
        }
      }

      else
      {
        v33 = (a1 + 120);
        if (*(a1 + 120) != 1)
        {
          if (v12 - 1 < 2)
          {
            if (a3)
            {
              v38 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
              v91[0] = 0;
              v94 = 0;
              v39 = ims::warn(v38, v91);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Unable to change direction for session ", 39);
              *(v39 + 17) = 0;
              v40 = (*(**a2 + 176))();
              MEMORY[0x1E69233B0](*(v39 + 8), v40);
              *(v39 + 17) = 0;
              (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v39 + 17) = 0;
              if (v94 == 1 && v93 < 0)
              {
                operator delete(v92);
              }

              if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(block.__r_.__value_.__l.__data_);
              }

              *&v109.__r_.__value_.__l.__data_ = 0uLL;
              RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v109);
              v41 = a1 + *(*a1 - 24);
              v88[0] = MEMORY[0x1E69E9820];
              v88[1] = 1174405120;
              v88[2] = ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_93;
              v88[3] = &__block_descriptor_tmp_96_0;
              v88[4] = a1;
              v89 = *&v109.__r_.__value_.__l.__data_;
              if (v109.__r_.__value_.__l.__size_)
              {
                atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
              }

              v90 = a3;
              *&v110.__r_.__value_.__l.__data_ = 0uLL;
              std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v110, (v41 + 8));
              v42 = *(v41 + 24);
              block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
              block.__r_.__value_.__l.__size_ = 1174405120;
              block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
              v125 = &unk_1F5EF4FF0;
              v127 = *&v110.__r_.__value_.__l.__data_;
              if (v110.__r_.__value_.__l.__size_)
              {
                atomic_fetch_add_explicit((v110.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
              }

              v126 = v88;
              dispatch_async(v42, &block);
              if (*(&v127 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
              }

              if (v110.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v110.__r_.__value_.__l.__size_);
              }

              v43 = *(&v89 + 1);
              if (!*(&v89 + 1))
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

            goto LABEL_127;
          }

          if (a3)
          {
            v46 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
            v84[0] = 0;
            v87 = 0;
            v47 = ims::warn(v46, v84);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "Unable to change direction for session ", 39);
            *(v47 + 17) = 0;
            v48 = (*(**a2 + 176))();
            MEMORY[0x1E69233B0](*(v47 + 8), v48);
            *(v47 + 17) = 0;
            (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v47 + 17) = 0;
            if (v87 == 1 && v86 < 0)
            {
              operator delete(v85);
            }

            if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(block.__r_.__value_.__l.__data_);
            }

            *&v109.__r_.__value_.__l.__data_ = 0uLL;
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v109);
            v49 = a1 + *(*a1 - 24);
            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 1174405120;
            v81[2] = ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_97;
            v81[3] = &__block_descriptor_tmp_100_1;
            v81[4] = a1;
            v82 = *&v109.__r_.__value_.__l.__data_;
            if (v109.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v83 = a3;
            *&v110.__r_.__value_.__l.__data_ = 0uLL;
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v110, (v49 + 8));
            v50 = *(v49 + 24);
            block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
            block.__r_.__value_.__l.__size_ = 1174405120;
            block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
            v125 = &unk_1F5EF4FF0;
            v127 = *&v110.__r_.__value_.__l.__data_;
            if (v110.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v110.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v126 = v81;
            dispatch_async(v50, &block);
            if (*(&v127 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
            }

            if (v110.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v110.__r_.__value_.__l.__size_);
            }

            v43 = *(&v82 + 1);
            if (!*(&v82 + 1))
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

LABEL_134:
          v57 = *(a1 + 128);
          if ((v57 - 1) > 1)
          {
LABEL_85:
            v44 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
            v70[0] = 0;
            v73 = 0;
            v45 = ims::debug(v44, v70);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "Session direction changed to ", 29);
            *(v45 + 17) = 0;
            ims::toString<MediaDirection>(&v119, &v109);
            LoggableString::LoggableString(&v110, &v109);
            (*(*v45 + 40))(v45, &v110);
            (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v45 + 17) = 0;
            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v109.__r_.__value_.__l.__data_);
            }

            if (v73 == 1 && v72 < 0)
            {
              operator delete(v71);
            }

            if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(block.__r_.__value_.__l.__data_);
            }

            v12 = v119;
LABEL_170:
            *(a1 + 128) = v12;
            v10 = a3 == 0;
            v9 = a1;
            goto LABEL_171;
          }

          if (v57 == 1 && (*(a1 + 124) & 1) != 0)
          {
            (*(**(a1 + 152) + 200))(*(a1 + 152), v16, v17);
          }

          if (v14 != v15)
          {
            (*(**(a1 + 152) + 216))(*(a1 + 152), 1, v15);
          }

          v58 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
          v77[0] = 0;
          v80 = 0;
          v59 = ims::debug(v58, v77);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "Session inactive ", 17);
          *(v59 + 17) = 0;
          v60 = (*(**a2 + 176))();
          MEMORY[0x1E69233B0](*(v59 + 8), v60);
          *(v59 + 17) = 0;
          (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v59 + 17) = 0;
          if (v80 == 1 && v79 < 0)
          {
            operator delete(v78);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(block.__r_.__value_.__l.__data_);
          }

          *&v109.__r_.__value_.__l.__data_ = 0uLL;
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v109);
          v61 = a1 + *(*a1 - 24);
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 1174405120;
          v74[2] = ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_102;
          v74[3] = &__block_descriptor_tmp_105_1;
          v74[4] = a1;
          v75 = *&v109.__r_.__value_.__l.__data_;
          if (v109.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v76 = 0;
          *&v110.__r_.__value_.__l.__data_ = 0uLL;
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v110, (v61 + 8));
          v62 = *(v61 + 24);
          block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
          block.__r_.__value_.__l.__size_ = 1174405120;
          block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
          v125 = &unk_1F5EF4FF0;
          v127 = *&v110.__r_.__value_.__l.__data_;
          if (v110.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v110.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v126 = v74;
          dispatch_async(v62, &block);
          if (*(&v127 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
          }

          if (v110.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v110.__r_.__value_.__l.__size_);
          }

          v43 = *(&v75 + 1);
          if (!*(&v75 + 1))
          {
LABEL_83:
            if (v109.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v109.__r_.__value_.__l.__size_);
            }

            goto LABEL_85;
          }

LABEL_82:
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          goto LABEL_83;
        }

        if (a3)
        {
          v35 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
          v105[0] = 0;
          v108 = 0;
          v36 = ims::warn(v35, v105);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "Session ", 8);
          *(v36 + 17) = 0;
          v37 = (*(**a2 + 176))();
          MEMORY[0x1E69233B0](*(v36 + 8), v37);
          *(v36 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), " failed to start.", 17);
          *(v36 + 17) = 0;
          (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v36 + 17) = 0;
          if (v108 == 1 && v107 < 0)
          {
            operator delete(v106);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(block.__r_.__value_.__l.__data_);
          }

          goto LABEL_158;
        }
      }

      *v33 = 2;
      v51 = std::string::basic_string[abi:ne200100]<0>(&block, "rtp.statemachine");
      v111[0] = 0;
      v114 = 0;
      v52 = ims::debug(v51, v111);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), "Session started ", 16);
      *(v52 + 17) = 0;
      v53 = (*(**a2 + 176))();
      MEMORY[0x1E69233B0](*(v52 + 8), v53);
      *(v52 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v52 + 8), " with direction ", 16);
      *(v52 + 17) = 0;
      ims::toString<MediaDirection>(&v119, &v109);
      LoggableString::LoggableString(&v110, &v109);
      (*(*v52 + 40))(v52, &v110);
      (*(*v52 + 64))(v52, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v52 + 17) = 0;
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (v114 == 1 && v113 < 0)
      {
        operator delete(v112);
      }

      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
      }

      v54 = *(a1 + 124);
      if (v12 == 1)
      {
        if (*(a1 + 124))
        {
          (*(**(a1 + 152) + 200))(*(a1 + 152), v16, v17);
        }

        if (v14)
        {
          (*(**(a1 + 152) + 216))(*(a1 + 152), 1, v14);
        }

        v55 = *(a1 + 152);
        if (v55[76])
        {
          (*(*v55 + 208))(v55, 1, v55[76]);
        }
      }

      else
      {
        if (*(a1 + 124))
        {
          (*(**(a1 + 152) + 200))(*(a1 + 152), v16, v17);
        }

        (*(**(a1 + 152) + 216))(*(a1 + 152), 1, v15);
      }

LABEL_158:
      *&v109.__r_.__value_.__l.__data_ = 0uLL;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v109);
      v63 = a1 + *(*a1 - 24);
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 1174405120;
      v102[2] = ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke;
      v102[3] = &__block_descriptor_tmp_86_2;
      v102[4] = a1;
      v103 = *&v109.__r_.__value_.__l.__data_;
      if (v109.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v109.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v104 = a3;
      *&v110.__r_.__value_.__l.__data_ = 0uLL;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v110, (v63 + 8));
      v64 = *(v63 + 24);
      block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      block.__r_.__value_.__l.__size_ = 1174405120;
      block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
      v125 = &unk_1F5EF4FF0;
      v127 = *&v110.__r_.__value_.__l.__data_;
      if (v110.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v110.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v126 = v102;
      dispatch_async(v64, &block);
      if (*(&v127 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
      }

      if (v110.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v110.__r_.__value_.__l.__size_);
      }

      if (*(&v103 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v103 + 1));
      }

      if (v109.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109.__r_.__value_.__l.__size_);
      }

      goto LABEL_170;
    }

    if (*(v13 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(&block, *(v13 + 312), *(v13 + 320));
    }

    else
    {
      *&block.__r_.__value_.__l.__data_ = *v18;
      block.__r_.__value_.__r.__words[2] = *(v13 + 328);
    }

    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      if (block.__r_.__value_.__l.__size_ == 4)
      {
        v27 = bswap32(*block.__r_.__value_.__l.__data_);
        v20 = v27 >= 0x52544350;
        v28 = v27 > 0x52544350;
        v29 = !v20;
        v30 = v28 - v29;
        operator delete(block.__r_.__value_.__l.__data_);
        if (v30)
        {
          goto LABEL_45;
        }

        goto LABEL_12;
      }

      operator delete(block.__r_.__value_.__l.__data_);
    }

    else if (SHIBYTE(block.__r_.__value_.__r.__words[2]) == 4 && LODWORD(block.__r_.__value_.__l.__data_) == 1346589778)
    {
      goto LABEL_12;
    }

LABEL_45:
    v17 = 0;
    goto LABEL_46;
  }

  v9 = a1;
  v10 = 1;
LABEL_171:
  MediaSessionStateMachine::transactionComplete(v9, v10);
}