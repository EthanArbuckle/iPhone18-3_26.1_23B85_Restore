void ImsTlsNw::initializeSocket(ImsTlsNw *this@<X0>, ImsTcpSocketInterface::TcpTlsInitParams *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 14);
  *(this + 13) = v6;
  *(this + 14) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::string::operator=((this + 160), (a2 + 64));
  std::string::operator=((this + 136), (a2 + 32));
  objc_storeStrong(this + 24, *(a2 + 7));
  *(this + 50) = *(a2 + 35);
  *(this + 280) = *(a2 + 144);
  memset(v54, 0, 88);
  v8 = *(a2 + 88);
  v9 = *(a2 + 13);
  v52 = &unk_1F5EF3658;
  cf = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v52 = &unk_1F5EBE6A8;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, this + 2);
  {
    *buf = v11;
    v73 = v61;
    p_lpsrc = &lpsrc;
  }

  else
  {
    p_lpsrc = buf;
  }

  *p_lpsrc = 0;
  p_lpsrc[1] = 0;
  v14 = *buf;
  v13 = v73;
  if (v73)
  {
    atomic_fetch_add_explicit(v73 + 2, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_56_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTlsNwEE_e81_v32__0__NSObject_OS_sec_protocol_metadata__8__NSObject_OS_sec_trust__16___v__B_24l;
  aBlock[4] = this;
  aBlock[5] = v14;
  v70 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = _Block_copy(aBlock);
  lpsrc = MEMORY[0x1E69E9820];
  v61 = 3321888768;
  v62 = ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke_2;
  v63 = &unk_1F5EE6B10;
  v65 = this;
  v48 = v15;
  v64 = v48;
  v68 = v8;
  v66 = a2 + 112;
  v67[0] = &unk_1F5EF3658;
  v67[1] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v67[0] = &unk_1F5EBE6A8;
  configure_tls = _Block_copy(&lpsrc);
  if (*(this + 50))
  {
    configure_tcp = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v16 = ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke_6;
  }

  else
  {
    configure_tcp = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v16 = ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke_7;
  }

  v57 = v16;
  v58 = &__block_descriptor_40_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
  v59 = this;
  v17 = nw_parameters_create_secure_tcp(configure_tls, &configure_tcp);
  v18 = *(this + 7);
  *(this + 7) = v17;

  if (!*(this + 7))
  {
    v28 = dispatch::queue::get(this + 6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      ImsTlsNw::logPrefixStr(this);
    }

    v29 = 0x40000000;
    goto LABEL_63;
  }

  v19 = dispatch::queue::get(this + 6);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(this);
  }

  v20 = *(this + 7);
  v21 = *(this + 280);
  nw_parameters_set_allow_ultra_constrained();
  v22 = *(this + 7);
  nw_parameters_set_traffic_class();
  v23 = *(this + 7);
  nw_parameters_set_indefinite();
  v24 = *(this + 7);
  nw_parameters_set_server_mode();
  if ((*(this + 183) & 0x8000000000000000) != 0)
  {
    if (*(this + 21))
    {
      goto LABEL_27;
    }
  }

  else if (*(this + 183))
  {
LABEL_27:
    v25 = dispatch::queue::get(this + 6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      ImsTlsNw::logPrefixStr(this);
    }

    v26 = *(this + 7);
    if (*(this + 183) < 0)
    {
      v27 = *(this + 20);
    }

    nw_parameters_set_source_application_by_bundle_id();
    goto LABEL_38;
  }

  v30 = dispatch::queue::get(this + 6);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(this);
  }

LABEL_38:
  if ((*(this + 159) & 0x8000000000000000) != 0)
  {
    if (*(this + 18))
    {
      goto LABEL_40;
    }

LABEL_46:
    v33 = dispatch::queue::get(this + 6);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      ImsTlsNw::logPrefixStr(this);
    }

    goto LABEL_48;
  }

  if (!*(this + 159))
  {
    goto LABEL_46;
  }

LABEL_40:
  v31 = dispatch::queue::get(this + 6);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(this);
  }

  if (*(this + 159) < 0)
  {
    v32 = *(this + 17);
  }

  v33 = nw_interface_create_with_name();
  nw_parameters_require_interface(*(this + 7), v33);
LABEL_48:

  v34 = *(this + 13);
  if (!v34 || !(*(*v34 + 56))(v34))
  {
    ImsTcpNw::bind(this, buf);
    ImsResult::~ImsResult(buf);
  }

  if (*(this + 13))
  {
    IpAddress::asString(v71);
  }

  v35 = *(this + 8);
  if (v35)
  {
    nw_parameters_set_local_endpoint(*(this + 7), v35);
  }

  if (!*(this + 67))
  {
    v29 = 0;
    goto LABEL_65;
  }

  v36 = nw_parameters_copy_default_protocol_stack(*(this + 7));
  v28 = v36;
  if (v36)
  {
    v37 = nw_protocol_stack_copy_internet_protocol(v36);
    if (v37)
    {
      v38 = *(this + 67);
      v39 = dispatch::queue::get(this + 6);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        ImsTlsNw::logPrefixStr(this);
      }

      nw_ip_options_set_dscp_value();
    }
  }

  v29 = 0;
LABEL_63:

LABEL_65:
  memset(&v54[1] + 8, 0, 64);
  *&v54[0] = &unk_1F5EBDEF8;
  *(&v54[0] + 1) = &_bambiDomain;
  LODWORD(v54[1]) = v29;

  ims::CFType::~CFType(v67);
  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  ims::CFType::~CFType(&v52);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  *buf = &unk_1F5EBDEF8;
  v73 = &_bambiDomain;
  v74 = 0;
  if (*(&v54[0] + 1) != &_bambiDomain)
  {
    goto LABEL_70;
  }

  v40 = v54[1];
  ImsResult::~ImsResult(buf);
  if (v40)
  {
    goto LABEL_72;
  }

  v42 = *(a2 + 3);
  v50 = *(a2 + 2);
  v51 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsTcpNw::connect(this, &v50, buf);
  ImsResult::operator=(v54, buf);
  ImsResult::~ImsResult(buf);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  *buf = &unk_1F5EBDEF8;
  v73 = &_bambiDomain;
  v74 = 0;
  if (*(&v54[0] + 1) != &_bambiDomain)
  {
LABEL_70:
    ImsResult::~ImsResult(buf);
LABEL_72:
    ImsResult::ImsResult(a3, v54);
    goto LABEL_73;
  }

  v43 = v54[1];
  ImsResult::~ImsResult(buf);
  if (v43)
  {
    goto LABEL_72;
  }

  v45 = *(a2 + 2);
  v44 = *(a2 + 3);
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  v46 = *(this + 16);
  *(this + 15) = v45;
  *(this + 16) = v44;
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
LABEL_73:
  ImsResult::~ImsResult(v54);
  v41 = *MEMORY[0x1E69E9840];
}

void sub_1E4FE4514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ims::CFType *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType(a11);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  ims::CFType::~CFType(&a17);
  _Unwind_Resume(a1);
}

void ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v68 = a2;
  v7 = a3;
  v8 = a4;
  v9 = a1[6];
  if (!v9)
  {
    goto LABEL_139;
  }

  v10 = a1[4];
  v67 = std::__shared_weak_count::lock(v9);
  if (!v67)
  {
    goto LABEL_139;
  }

  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_138;
  }

  if (*(v10 + 320) == *(v10 + 328))
  {
    *(v10 + 313) = 1;
    v17 = dispatch::queue::get(v11 + 6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      ImsTlsNw::logPrefixStr(v11);
    }

    v8[2](v8, *(v10 + 313));
    goto LABEL_138;
  }

  v12 = sec_trust_copy_ref(v7);
  v13 = v12;
  if (!v12)
  {
    v18 = dispatch::queue::get(v11 + 6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ImsTlsNw::logPrefixStr(v11);
    }

    v8[2](v8, 0);
    goto LABEL_138;
  }

  error = 0;
  if (!SecTrustEvaluateWithError(v12, &error))
  {
    v19 = dispatch::queue::get(v11 + 6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ImsTlsNw::logPrefixStr(v11);
    }

    v8[2](v8, 0);
    goto LABEL_138;
  }

  v14 = SecTrustCopyCertificateChain(v13);
  theArray = v14;
  if (!v14)
  {
    v16 = dispatch::queue::get(v11 + 6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      ImsTlsNw::logPrefixStr(v11);
    }

    goto LABEL_10;
  }

  Count = CFArrayGetCount(v14);
  if (Count < 3)
  {
    v16 = dispatch::queue::get(v11 + 6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      ImsTlsNw::logPrefixStr(v11);
    }

LABEL_10:

    v8[2](v8, 0);
    goto LABEL_137;
  }

  v20 = 1;
  v65 = *MEMORY[0x1E697AD68];
  v66 = Count - 2;
  v64 = *MEMORY[0x1E697AD50];
  v62 = *MEMORY[0x1E697ADA8];
  v63 = *MEMORY[0x1E697AD78];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
    if (ValueAtIndex)
    {
      key = SecCertificateCopyKey(ValueAtIndex);
      theData = SecKeyCopyExternalRepresentation(key, 0);
      theDict = SecKeyCopyAttributes(key);
      CFDictionaryGetValue(theDict, v65);
      buf = 0uLL;
      v77 = 0;
      ctu::cf::assign();
      *__p = buf;
      v75 = v77;
      Value = CFDictionaryGetValue(theDict, v64);
      LODWORD(buf) = 0;
      ctu::cf::assign(&buf, Value, v23);
      if (buf <= 2047)
      {
        if (buf == 256)
        {
          buf = 0uLL;
          v77 = 0;
          ctu::cf::assign();
          v79 = v77;
          md = buf;
          v37 = SHIBYTE(v75);
          if (v75 >= 0)
          {
            v38 = HIBYTE(v75);
          }

          else
          {
            v38 = __p[1];
          }

          v39 = HIBYTE(v79);
          v40 = SHIBYTE(v79);
          if (v79 < 0)
          {
            v39 = *(&md + 1);
          }

          if (v38 == v39)
          {
            if (v75 >= 0)
            {
              v41 = __p;
            }

            else
            {
              v41 = __p[0];
            }

            if (v79 >= 0)
            {
              p_md = &md;
            }

            else
            {
              p_md = md;
            }

            memcmp(v41, p_md, v38);
          }

          if (v40 < 0)
          {
            operator delete(md);
          }

          buf = 0uLL;
          v77 = 0;
          ctu::cf::assign();
          v79 = v77;
          md = buf;
          v51 = HIBYTE(v77);
          v52 = SHIBYTE(v77);
          if (v77 < 0)
          {
            v51 = *(&md + 1);
          }

          if (v38 == v51)
          {
            if (v37 >= 0)
            {
              v53 = __p;
            }

            else
            {
              v53 = __p[0];
            }

            if (v77 >= 0)
            {
              v54 = &md;
            }

            else
            {
              v54 = md;
            }

            memcmp(v53, v54, v38);
          }

          if (v52 < 0)
          {
            goto LABEL_128;
          }
        }

        else if (buf == 384)
        {
          buf = 0uLL;
          v77 = 0;
          ctu::cf::assign();
          v79 = v77;
          md = buf;
          v24 = SHIBYTE(v75);
          if (v75 >= 0)
          {
            v25 = HIBYTE(v75);
          }

          else
          {
            v25 = __p[1];
          }

          v26 = HIBYTE(v79);
          v27 = SHIBYTE(v79);
          if (v79 < 0)
          {
            v26 = *(&md + 1);
          }

          if (v25 == v26)
          {
            if (v75 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            if (v79 >= 0)
            {
              v29 = &md;
            }

            else
            {
              v29 = md;
            }

            memcmp(v28, v29, v25);
          }

          if (v27 < 0)
          {
            operator delete(md);
          }

          buf = 0uLL;
          v77 = 0;
          ctu::cf::assign();
          v79 = v77;
          md = buf;
          v47 = HIBYTE(v77);
          v48 = SHIBYTE(v77);
          if (v77 < 0)
          {
            v47 = *(&md + 1);
          }

          if (v25 == v47)
          {
            if (v24 >= 0)
            {
              v49 = __p;
            }

            else
            {
              v49 = __p[0];
            }

            if (v77 >= 0)
            {
              v50 = &md;
            }

            else
            {
              v50 = md;
            }

            memcmp(v49, v50, v25);
          }

          if (v48 < 0)
          {
LABEL_128:
            operator delete(md);
          }
        }

LABEL_129:
        CFDataGetLength(theData);
        operator new[]();
      }

      if (buf == 4096)
      {
        buf = 0uLL;
        v77 = 0;
        ctu::cf::assign();
        v79 = v77;
        md = buf;
        v31 = SHIBYTE(v75);
        if (v75 >= 0)
        {
          v32 = HIBYTE(v75);
        }

        else
        {
          v32 = __p[1];
        }

        v43 = HIBYTE(v79);
        v44 = SHIBYTE(v79);
        if (v79 < 0)
        {
          v43 = *(&md + 1);
        }

        if (v32 == v43)
        {
          if (v75 >= 0)
          {
            v45 = __p;
          }

          else
          {
            v45 = __p[0];
          }

          if (v79 >= 0)
          {
            v46 = &md;
          }

          else
          {
            v46 = md;
          }

          memcmp(v45, v46, v32);
        }

        if (v44 < 0)
        {
          operator delete(md);
        }
      }

      else
      {
        if (buf != 2048)
        {
          goto LABEL_129;
        }

        buf = 0uLL;
        v77 = 0;
        ctu::cf::assign();
        v79 = v77;
        md = buf;
        v31 = SHIBYTE(v75);
        if (v75 >= 0)
        {
          v32 = HIBYTE(v75);
        }

        else
        {
          v32 = __p[1];
        }

        v33 = HIBYTE(v79);
        v34 = SHIBYTE(v79);
        if (v79 < 0)
        {
          v33 = *(&md + 1);
        }

        if (v32 == v33)
        {
          if (v75 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          if (v79 >= 0)
          {
            v36 = &md;
          }

          else
          {
            v36 = md;
          }

          memcmp(v35, v36, v32);
        }

        if (v34 < 0)
        {
          operator delete(md);
        }
      }

      buf = 0uLL;
      v77 = 0;
      ctu::cf::assign();
      v79 = v77;
      md = buf;
      v55 = HIBYTE(v77);
      v56 = SHIBYTE(v77);
      if (v77 < 0)
      {
        v55 = *(&md + 1);
      }

      if (v32 == v55)
      {
        if (v31 >= 0)
        {
          v57 = __p;
        }

        else
        {
          v57 = __p[0];
        }

        if (v77 >= 0)
        {
          v58 = &md;
        }

        else
        {
          v58 = md;
        }

        memcmp(v57, v58, v32);
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_129;
        }
      }

      else if ((SHIBYTE(v77) & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

      operator delete(md);
      goto LABEL_129;
    }

    v30 = dispatch::queue::get(v11 + 6);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      ImsTlsNw::logPrefixStr(v11);
    }

    *(v10 + 313) = 0;
  }

  while (v20++ != v66);
  v60 = dispatch::queue::get(v11 + 6);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(v11);
  }

  v8[2](v8, *(v10 + 313));
LABEL_137:
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
LABEL_138:
  std::__shared_weak_count::__release_shared[abi:ne200100](v67);
LABEL_139:

  v61 = *MEMORY[0x1E69E9840];
}

void sub_1E4FE5634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, const void *a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&a37);
  std::__shared_weak_count::__release_shared[abi:ne200100](a18);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTlsNwEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTlsNwEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke_2(uint64_t a1, id a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = dispatch::queue::get((v3 + 184));
  sec_protocol_options_set_verify_block(v4, v5, v6);

  v7 = *(a1 + 48);
  if (v7[23] < 0)
  {
    if (!*(v7 + 1))
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (v7[23])
  {
LABEL_6:
    sec_protocol_options_set_tls_server_name(v4, v7);
  }

LABEL_7:
  sec_protocol_options_set_pqtls_mode();
  if (_os_feature_enabled_impl())
  {
    v8 = dispatch::queue::get((v3 + 48));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      ImsTlsNw::logPrefixStr(v3);
    }

    if (*(v3 + 312))
    {
      v9 = tls_protocol_version_TLSv13;
    }

    else
    {
      v9 = tls_protocol_version_TLSv12;
    }

    sec_protocol_options_set_min_tls_protocol_version(v4, v9);
    v10 = tls_protocol_version_TLSv13;
  }

  else
  {
    v11 = dispatch::queue::get((v3 + 48));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      ImsTlsNw::logPrefixStr(v3);
    }

    v10 = tls_protocol_version_TLSv12;
    sec_protocol_options_set_min_tls_protocol_version(v4, tls_protocol_version_TLSv12);
  }

  sec_protocol_options_set_max_tls_protocol_version(v4, v10);
  if (*(a1 + 72) == 1 && (v12 = *(a1 + 64)) != 0 && CFArrayGetCount(v12) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), 0);
    v14 = sec_identity_create(ValueAtIndex);
    sec_protocol_options_set_local_identity(v4, v14);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

CFTypeRef __copy_helper_block_ea8_56c26_ZTSN3ims14CFMutableArrayE(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 56);
  result = *(a2 + 64);
  *(a1 + 56) = &unk_1F5EF3658;
  *(a1 + 64) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *v3 = &unk_1F5EBE6A8;
  return result;
}

void ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke_6(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 200);
  MEMORY[0x1E6923EE0]();
  v6 = dispatch::queue::get((v4 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(v4);
  }

  MEMORY[0x1E6923EF0](v3, 10);
  v7 = dispatch::queue::get((v4 + 48));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(v4);
  }

  MEMORY[0x1E6923ED0](v3, 4);
  v8 = dispatch::queue::get((v4 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ImsTlsNw::logPrefixStr(v4);
  }

  MEMORY[0x1E6923EC0](v3, 1);
  MEMORY[0x1E6923F00](v3, *(v4 + 276));
  MEMORY[0x1E6923EB0](v3, 8);

  v9 = *MEMORY[0x1E69E9840];
}

void ___ZN8ImsTlsNw20configureTlsEndpointEbN3ims14CFMutableArrayERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 276);
  v5 = v3;
  MEMORY[0x1E6923F00]();
  MEMORY[0x1E6923EB0](v5, 8);
}

void ImsTlsNw::socketName(ImsTlsNw *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4FE60C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

double ImsTlsNw::initializeSocket@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

uint64_t ImsTlsNw::_handshakeDone@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 313);
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x40000000;
  }

  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return this;
}

const void **ctu::SharedRef<__SecKey,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__SecKey>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SipSignedDigestAuthScheme::SipSignedDigestAuthScheme(SipSignedDigestAuthScheme *this, const SipStandardDigestAuthScheme *a2)
{
  SipDigestAuthScheme::SipDigestAuthScheme(this, a2);
  *v3 = &unk_1F5EE6B68;
  *(v3 + 184) = 0u;
  *(v3 + 232) = 0u;
  v4 = (v3 + 232);
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 248) = 0;
  std::string::operator=((v3 + 184), (a2 + 184));
  std::string::operator=(v4, (a2 + 208));
}

void sub_1E4FE628C(_Unwind_Exception *a1)
{
  if (*(v1 + 255) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  if (*(v1 + 207) < 0)
  {
    operator delete(*v2);
  }

  SipDigestAuthScheme::~SipDigestAuthScheme(v1);
  _Unwind_Resume(a1);
}

BOOL SipSignedDigestAuthScheme::hasValidNonce(SipSignedDigestAuthScheme *this)
{
  v1 = *(this + 207);
  if (v1 < 0)
  {
    v1 = *(this + 24);
  }

  return v1 != 0;
}

void SipSignedDigestAuthScheme::computeResponse(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if ((*(a1 + 255) & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 232);
    v4 = *(a1 + 240);
  }

  (*(*v3 + 120))(v3);
  v6 = v3[14];
  SipDigestAuthScheme::_computeResponse();
}

void sub_1E4FE6410(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipSignedDigestAuthScheme::computeResponse(uint64_t a1)
{
  if ((*(a1 + 255) & 0x8000000000000000) != 0)
  {
    v1 = *(a1 + 232);
    v2 = *(a1 + 240);
  }

  SipDigestAuthScheme::_computeResponse();
}

{
  if ((*(a1 + 255) & 0x8000000000000000) != 0)
  {
    v1 = *(a1 + 232);
    v2 = *(a1 + 240);
  }

  SipDigestAuthScheme::_computeResponse(a1);
}

std::string *SipSignedDigestAuthScheme::setOpaque(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 208), a2);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), "opaque");
  return std::string::operator=((v3 + 5), (a1 + 208));
}

void SipSignedDigestAuthScheme::~SipSignedDigestAuthScheme(void **this)
{
  *this = &unk_1F5EE6B68;
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  *this = &unk_1F5ED0AC8;
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 1));
}

{
  *this = &unk_1F5EE6B68;
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  *this = &unk_1F5ED0AC8;
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 1));
  MEMORY[0x1E69235B0](this, 0x10B3C408C9D372BLL);
}

void std::__shared_ptr_emplace<anonymous namespace::MessageSessionSendReceiveEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE6C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::MessageSessionSendReceiveEventImpl::~MessageSessionSendReceiveEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5EE6C80;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5EE6C80;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::MessageSessionSendReceiveEventImpl::getDict@<X0>(_anonymous_namespace_::MessageSessionSendReceiveEventImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

std::string *LazuliHeader::LazuliHeader(std::string *a1, const std::string *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F5EE6CE8;
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__s.__data_[0] = 1;
  std::string::operator=(a1 + 1, a2);
  return a1;
}

void sub_1E4FE706C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void LazuliHeader::valueAsString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4FE71E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliHeader::encode(const std::string *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(__p, this + 1);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (this[2].__r_.__value_.__s.__data_[0] != 1)
  {
    v7 = 0;
    *__p = 0u;
    v6 = 0u;
    ImsStringOutStream::ImsStringOutStream(__p);
  }

  return (*(this->__r_.__value_.__r.__words[0] + 40))(this, a2);
}

void sub_1E4FE7410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, char a23, int a24, __int16 a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a23 == 1)
  {
    if (a22)
    {
      (*(*a22 + 8))(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogEventClient::SipDialogEventClient(uint64_t a1, std::__shared_weak_count **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v31, "sip.dialog-event");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v26, &(*a2)[8].__shared_owners_);
  ImsLogContainer::ImsLogContainer(a1, &v31, v26);
  if (v29 == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  *(a1 + 136) = &unk_1F5EE6F98;
  std::string::basic_string[abi:ne200100]<0>(v24, "sip.dialog-event");
  v5 = a2[1];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  shared_owners = v7[8].__shared_owners_;
  shared_weak_owners = v7[8].__shared_weak_owners_;
  if (SHIBYTE(v7[9].__shared_weak_owners_) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v7[9].__vftable, v7[9].__shared_owners_);
  }

  else
  {
    v22 = v7[9];
  }

  v23 = v7[10].__vftable;
  ims::getQueue(&v33);
  ClientConfig::getLogTag(&shared_owners, &v30);
  if ((v25 & 0x80u) == 0)
  {
    v8 = v24;
  }

  else
  {
    v8 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v9 = v25;
  }

  else
  {
    v9 = v24[1];
  }

  v10 = std::string::insert(&v30, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v32 = v10->__r_.__value_.__r.__words[2];
  v31 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v12 = &v31;
  }

  else
  {
    v12 = v31;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v13 = v33;
  *(a1 + 168) = v33;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v12);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 144) = &unk_1F5EE6FE8;
  if (SHIBYTE(v22.__shared_weak_owners_) < 0)
  {
    operator delete(v22.__vftable);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  *a1 = &unk_1F5EE6D90;
  *(a1 + 136) = &unk_1F5EE6E30;
  *(a1 + 144) = &unk_1F5EE6E80;
  *(a1 + 192) = *a2;
  v14 = a2[1];
  *(a1 + 200) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = a2[1];
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v14 = *a2;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  if (SHIBYTE(v14[185].__shared_owners_) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 224), v14[184].__shared_weak_owners_, v14[185].__vftable);
  }

  else
  {
    p_shared_weak_owners = &v14[184].__shared_weak_owners_;
    v18 = *p_shared_weak_owners;
    *(a1 + 240) = p_shared_weak_owners[2];
    *(a1 + 224) = v18;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 272) = 1;
  *(a1 + 276) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 313) = 0u;
  return a1;
}

void sub_1E4FE787C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v27 = *(v24 + 200);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  MEMORY[0x1E69225A0](v24 + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v24 + 152));
  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void sub_1E4FE7940(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  JUMPOUT(0x1E4FE7938);
}

void SipDialogEventClient::~SipDialogEventClient(SipDialogEventClient *this)
{
  *this = &unk_1F5EE6D90;
  *(this + 17) = &unk_1F5EE6E30;
  *(this + 18) = &unk_1F5EE6E80;
  SipDialogEventClient::terminateExistingDialogs(this);
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "~SipDialogEventClient", 21);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = *(this + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(this + 248, *(this + 32));
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  v4 = *(this + 25);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
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

{
  SipDialogEventClient::~SipDialogEventClient(this);

  JUMPOUT(0x1E69235B0);
}

void SipDialogEventClient::terminateExistingDialogs(SipDialogEventClient *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "terminateExistingDialogs", 24);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), " : ", 3);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923370](*(v2 + 8), *(this + 33));
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  SipDialogTable::getAllDialogs(this + 31, &v33);
  v3 = v33;
  if (v34 != v33)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "");
      std::string::basic_string[abi:ne200100]<0>(v30, "");
      SipDialogState::SipDialogState(__p, 5, &__str, v30);
      v6 = v3 + v4;
      *(v3 + v4 + 136) = __p[0];
      std::string::operator=((v3 + v4 + 144), &__p[1]);
      *(v6 + 168) = v13;
      *(v6 + 170) = BYTE2(v13);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[1]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *__p = 0u;
      v12 = 0u;
      SipDialogInfo::event((v3 + v4), __p);
      v7 = *(this + 40);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(this + 39);
          if (v10)
          {
            (*(*v10 + 16))(v10, this + 224, __p);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      SipDialogEventData::~SipDialogEventData(__p);
      ++v5;
      v3 = v33;
      v4 += 600;
    }

    while (v5 < 0x2FC962FC962FC963 * ((v34 - v33) >> 3));
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(this + 248, *(this + 32));
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = this + 256;
  *(this + 280) = 0;
  __p[0] = &v33;
  std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1E4FE7E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  a9 = v15 - 104;
  std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void non-virtual thunk toSipDialogEventClient::~SipDialogEventClient(SipDialogEventClient *this)
{
  SipDialogEventClient::~SipDialogEventClient((this - 144));
}

{
  SipDialogEventClient::~SipDialogEventClient((this - 144));

  JUMPOUT(0x1E69235B0);
}

uint64_t SipDialogEventClient::handleNotification(SipDialogEventClient *this, const SipDialogInfoBody *a2)
{
  v3 = *(a2 + 240);
  if (v3)
  {
    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleNotification", 18);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " : incoming dialog info: ", 25);
    *(v5 + 17) = 0;
    SipDialogTable::str((a2 + 248), __p);
    (*(*v5 + 32))(v5, __p);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (SBYTE7(v114) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleNotification", 18);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " : incoming dialog state: ", 26);
    *(v6 + 17) = 0;
    MEMORY[0x1E6923320](*(v6 + 8), *(a2 + 272));
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v101 = SipDialogTable::update(this + 248, a2 + 248, &v108);
    v100 = v3;
    if (v109 != v108)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(MEMORY[0x1E69E54D8] + 64);
      v103 = v9;
      v104 = *MEMORY[0x1E69E54D8];
      v102 = *(MEMORY[0x1E69E54D8] + 72);
      while (1)
      {
        v10 = (*(*this + 64))(this);
        (*(*this + 16))(this, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleNotification", 18);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " event[", 7);
        *(v10 + 17) = 0;
        MEMORY[0x1E6923370](*(v10 + 8), v8);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]=", 2);
        *(v10 + 17) = 0;
        v11 = v108;
        v122 = 0;
        v120 = 0u;
        memset(v121, 0, sizeof(v121));
        *v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        *__src = 0u;
        v114 = 0u;
        v115 = 0u;
        *__p = 0u;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        v12 = *(v11 + v7 + 23);
        if (v12 >= 0)
        {
          v13 = v11 + v7;
        }

        else
        {
          v13 = *(v11 + v7);
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + v7 + 23);
        }

        else
        {
          v14 = *(v11 + v7 + 8);
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v114, v13, v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ":: call-id : ", 13);
        v17 = *(v11 + v7 + 47);
        if (v17 >= 0)
        {
          v18 = v11 + v7 + 24;
        }

        else
        {
          v18 = *(v11 + v7 + 24);
        }

        if (v17 >= 0)
        {
          v19 = *(v11 + v7 + 47);
        }

        else
        {
          v19 = *(v11 + v7 + 32);
        }

        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", local : ", 10);
        v22 = *(v11 + v7 + 71);
        if (v22 >= 0)
        {
          v23 = v11 + v7 + 48;
        }

        else
        {
          v23 = *(v11 + v7 + 48);
        }

        if (v22 >= 0)
        {
          v24 = *(v11 + v7 + 71);
        }

        else
        {
          v24 = *(v11 + v7 + 56);
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", remote : ", 11);
        v27 = *(v11 + v7 + 95);
        if (v27 >= 0)
        {
          v28 = v11 + v7 + 72;
        }

        else
        {
          v28 = *(v11 + v7 + 72);
        }

        if (v27 >= 0)
        {
          v29 = *(v11 + v7 + 95);
        }

        else
        {
          v29 = *(v11 + v7 + 80);
        }

        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", localSessionDescription : ", 28);
        v32 = *(v11 + v7 + 119);
        if (v32 >= 0)
        {
          v33 = v11 + v7 + 96;
        }

        else
        {
          v33 = *(v11 + v7 + 96);
        }

        if (v32 >= 0)
        {
          v34 = *(v11 + v7 + 119);
        }

        else
        {
          v34 = *(v11 + v7 + 104);
        }

        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", remoteSessionDescription : ", 29);
        v37 = *(v11 + v7 + 143);
        if (v37 >= 0)
        {
          v38 = v11 + v7 + 120;
        }

        else
        {
          v38 = *(v11 + v7 + 120);
        }

        if (v37 >= 0)
        {
          v39 = *(v11 + v7 + 143);
        }

        else
        {
          v39 = *(v11 + v7 + 128);
        }

        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", localURI : ", 13);
        v42 = *(v11 + v7 + 167);
        if (v42 >= 0)
        {
          v43 = v11 + v7 + 144;
        }

        else
        {
          v43 = *(v11 + v7 + 144);
        }

        if (v42 >= 0)
        {
          v44 = *(v11 + v7 + 167);
        }

        else
        {
          v44 = *(v11 + v7 + 152);
        }

        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ", remoteURI : ", 14);
        v47 = *(v11 + v7 + 191);
        if (v47 >= 0)
        {
          v48 = v11 + v7 + 168;
        }

        else
        {
          v48 = *(v11 + v7 + 168);
        }

        if (v47 >= 0)
        {
          v49 = *(v11 + v7 + 191);
        }

        else
        {
          v49 = *(v11 + v7 + 176);
        }

        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ", duration : ", 13);
        v52 = MEMORY[0x1E6923350](v51, *(v11 + v7 + 192));
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ", ", 2);
        SipDialogDirection::str((v11 + v7 + 200), &v123);
        if (SHIBYTE(v123.__end_) >= 0)
        {
          first = &v123;
        }

        else
        {
          first = v123.__first_;
        }

        if (SHIBYTE(v123.__end_) >= 0)
        {
          end_high = HIBYTE(v123.__end_);
        }

        else
        {
          end_high = v123.__begin_;
        }

        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, first, end_high);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", state : ", 10);
        SipDialogState::stateStr((v11 + v7 + 248), &v111);
        if (v112 >= 0)
        {
          v58 = &v111;
        }

        else
        {
          v58 = v111;
        }

        if (v112 >= 0)
        {
          v59 = HIBYTE(v112);
        }

        else
        {
          v59 = v112;
        }

        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ", onHold : ", 11);
        v62 = MEMORY[0x1E6923320](v61, *(v11 + v7 + 240));
        v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ", emergency : ", 14);
        MEMORY[0x1E6923320](v63, *(v11 + v7 + 288));
        if (SHIBYTE(v112) < 0)
        {
          operator delete(v111);
        }

        if (SHIBYTE(v123.__end_) < 0)
        {
          operator delete(v123.__first_);
        }

        if ((BYTE8(v120) & 0x10) != 0)
        {
          break;
        }

        if ((BYTE8(v120) & 8) != 0)
        {
          v66 = *(&v115 + 1);
          v65 = *(&v116 + 1);
LABEL_77:
          v64 = v65 - v66;
          if ((v65 - v66) >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v64 >= 0x17)
          {
            operator new();
          }

          v107 = v65 - v66;
          if (v64)
          {
            memmove(&__dst, v66, v64);
          }

          goto LABEL_83;
        }

        v64 = 0;
        v107 = 0;
LABEL_83:
        *(&__dst + v64) = 0;
        __p[0] = v104;
        *(__p + *(v104 - 3)) = v103;
        *&v114 = v102;
        *(&v114 + 1) = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v119) < 0)
        {
          operator delete(v118[1]);
        }

        *(&v114 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v115);
        std::iostream::~basic_iostream();
        MEMORY[0x1E6923510](v121);
        (*(*v10 + 32))(v10, &__dst);
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v107 < 0)
        {
          operator delete(__dst);
        }

        v67 = *(this + 40);
        if (v67)
        {
          v68 = std::__shared_weak_count::lock(v67);
          if (v68)
          {
            v69 = v68;
            v70 = *(this + 39);
            if (v70)
            {
              (*(*v70 + 16))(v70, this + 224, v108 + v7);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }
        }

        ++v8;
        v7 += 296;
        if (v8 >= 0x14C1BACF914C1BADLL * ((v109 - v108) >> 3))
        {
          goto LABEL_93;
        }
      }

      v65 = v120;
      if (v120 < __src[1])
      {
        *&v120 = __src[1];
        v65 = __src[1];
      }

      v66 = __src[0];
      goto LABEL_77;
    }

LABEL_93:
    if (v101)
    {
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 0x40000000;
      v105[2] = ___ZN20SipDialogEventClient18handleNotificationERK17SipDialogInfoBody_block_invoke;
      v105[3] = &__block_descriptor_tmp_18;
      v105[4] = this;
      v71 = *(this + 20);
      if (!v71 || (v72 = *(this + 19), (v73 = std::__shared_weak_count::lock(v71)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v74 = v73;
      v75 = *(this + 21);
      __p[0] = MEMORY[0x1E69E9820];
      __p[1] = 1174405120;
      *&v114 = ___ZNK3ctu20SharedSynchronizableI20SipDialogEventClientE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      *(&v114 + 1) = &unk_1F5EE7008;
      *(&v115 + 1) = v72;
      *&v116 = v74;
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v115 = v105;
      dispatch_async(v75, __p);
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    v76 = (*(*this + 64))(this);
    (*(*this + 16))(this, v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "handleNotification", 18);
    *(v76 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), " : updated dialog info: ", 24);
    *(v76 + 17) = 0;
    SipDialogTable::str((this + 248), __p);
    (*(*v76 + 32))(v76, __p);
    (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v76 + 17) = 0;
    if (SBYTE7(v114) < 0)
    {
      operator delete(__p[0]);
    }

    v111 = 0;
    v112 = 0uLL;
    v77 = *(this + 31);
    if (v77 != (this + 256))
    {
      do
      {
        v78 = v112;
        if (v112 >= *(&v112 + 1))
        {
          v80 = v112 - v111;
          v81 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 3);
          v82 = v81 + 1;
          if (v81 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v112 + 1) - v111) >> 3) > v82)
          {
            v82 = 0x5555555555555556 * ((*(&v112 + 1) - v111) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v112 + 1) - v111) >> 3) >= 0x555555555555555)
          {
            v83 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v83 = v82;
          }

          v123.__end_cap_.__value_ = &v111;
          if (v83)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v111, v83);
          }

          v84 = (8 * ((v112 - v111) >> 3));
          v123.__first_ = 0;
          v123.__begin_ = v84;
          v123.__end_ = v84;
          v123.__end_cap_.__value_ = 0;
          if (!v81)
          {
            if (v80 < 1)
            {
              *&v115 = &v111;
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v111, v111 == v112);
            }

            v85 = 0xAAAAAAAAAAAAAAABLL * (v80 >> 3) + 1;
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(__p, v84, v84, &v84[-(v85 >> 1)]);
            v123.__begin_ -= v85 >> 1;
            v123.__end_ = v84;
          }

          if (*(v77 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(v84, *(v77 + 4), *(v77 + 5));
          }

          else
          {
            v86 = *(v77 + 2);
            v84->__r_.__value_.__r.__words[2] = *(v77 + 6);
            *&v84->__r_.__value_.__l.__data_ = v86;
          }

          begin = v123.__begin_;
          v88 = v123.__end_ + 1;
          v89 = v112 - v78;
          memcpy(&v123.__end_[1], v78, v112 - v78);
          v123.__end_ = (v88 + v89);
          *&v112 = v78;
          v90 = v78 - v111;
          v91 = begin - (v78 - v111);
          memcpy(v91, v111, v90);
          v92 = v111;
          v93 = *(&v112 + 1);
          v111 = v91;
          v112 = *&v123.__end_;
          v123.__end_ = v92;
          v123.__end_cap_.__value_ = v93;
          v123.__first_ = v92;
          v123.__begin_ = v92;
          std::__split_buffer<std::string>::~__split_buffer(&v123);
        }

        else
        {
          if (*(v77 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(v112, *(v77 + 4), *(v77 + 5));
          }

          else
          {
            v79 = *(v77 + 2);
            *(v112 + 16) = *(v77 + 6);
            *v78 = v79;
          }

          *&v112 = v78 + 24;
        }

        v94 = *(v77 + 1);
        if (v94)
        {
          do
          {
            v95 = v94;
            v94 = *v94;
          }

          while (v94);
        }

        else
        {
          do
          {
            v95 = *(v77 + 2);
            v96 = *v95 == v77;
            v77 = v95;
          }

          while (!v96);
        }

        v77 = v95;
      }

      while (v95 != (this + 256));
    }

    v97 = (*(*this + 64))(this);
    (*(*this + 16))(this, v97);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v97 + 8), "handleNotification", 18);
    *(v97 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v97 + 8), " : updated dialog id container, size: ", 38);
    *(v97 + 17) = 0;
    MEMORY[0x1E6923370](*(v97 + 8), 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 3));
    *(v97 + 17) = 0;
    (*(*v97 + 64))(v97, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v97 + 17) = 0;
    __p[0] = &v111;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v108;
    std::vector<SipDialogEventData>::__destroy_vector::operator()[abi:ne200100](__p);
    return v100;
  }

  else
  {
    v98 = (*(*this + 64))(this);
    (*(*this + 16))(this, v98);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v98 + 8), "handleNotification", 18);
    *(v98 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v98 + 8), " : wrong dialog info ", 21);
    *(v98 + 17) = 0;
    (*(*v98 + 64))(v98, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v98 + 17) = 0;
  }

  return v3;
}

void sub_1E4FE8E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  a29 = &a26;
  std::vector<SipDialogEventData>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void SipDialogEventClient::subscribe(SipDialogEventClient *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(this + 25);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v3 = std::__shared_weak_count::lock(v2);
  v4 = v3;
  if (!v3 || (v5 = *(this + 24)) == 0)
  {
LABEL_7:
    v7 = *(this + 23);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      (*(*(this + 18) + 16))(v24);
      v21 = v25 >= 0 ? v24 : v24[0];
      __p[0] = 141558275;
      *&__p[1] = 1752392040;
      v27 = 2081;
      v28 = v21;
      _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 296);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (v6)
  {
    goto LABEL_50;
  }

LABEL_10:
  v8 = *(this + 25);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(this + 24);
      if (v10)
      {
        v12 = *(v10 + 248);
        v11 = *(v10 + 256);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v12)
        {
          v18 = *(this + 23);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 18) + 16))(v24, this + 144);
            v19 = v25 >= 0 ? v24 : v24[0];
            __p[0] = 141558275;
            *&__p[1] = 1752392040;
            v27 = 2081;
            v28 = v19;
            _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u);
            if (v25 < 0)
            {
              operator delete(v24[0]);
            }
          }

          goto LABEL_47;
        }

        if (*(v10 + 320) == 2)
        {
          if (*(v12 + 704))
          {
            v13 = *(this + 26);
            if (!v13)
            {
              operator new();
            }

            if ((SipDialogEventPackage::subscribe(v13, 600000) & 1) == 0)
            {
              v14 = (*(*this + 48))(this);
              (*(*this + 16))(this, v14);
              v24[0] = "unable to subscribe to dialog events";
              v15 = ImsOutStream::putStreamable<char const*&>(v14, v24);
              (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v15[17] = 0;
              v16 = *(this + 26);
              if (v16)
              {
                (*(*v16 + 8))(v16);
              }

              *(this + 26) = 0;
            }

            goto LABEL_47;
          }

          v20 = (*(*this + 64))(this);
          (*(*this + 16))(this, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Thumper is disabled.  Skipping dialog-event subscription.", 57);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        else
        {
          v20 = (*(*this + 64))(this);
          (*(*this + 16))(this, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "stack is not initialized.  Skipping dialog-event subscription.", 62);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        }

        *(v20 + 17) = 0;
LABEL_47:
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

LABEL_49:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_50;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = *(this + 23);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 18) + 16))(v24, this + 144);
    v22 = v25 >= 0 ? v24 : v24[0];
    __p[0] = 141558275;
    *&__p[1] = 1752392040;
    v27 = 2081;
    v28 = v22;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  if (v9)
  {
    goto LABEL_49;
  }

LABEL_50:
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E4FE95A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

void SipDialogEventClient::registered(SipDialogEventClient *this, char a2)
{
  *(this + 216) = a2;
  if ((a2 & 1) == 0)
  {
    *(this + 328) = 1;
    SipDialogEventClient::subscribe(this);
  }
}

void non-virtual thunk toSipDialogEventClient::registered(SipDialogEventClient *this, char a2)
{
  *(this + 80) = a2;
  if ((a2 & 1) == 0)
  {
    *(this + 192) = 1;
    SipDialogEventClient::subscribe((this - 136));
  }
}

void SipDialogEventClient::terminate(SipDialogEventClient *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    SipEventPackage::terminateWithoutUnsubscribing(v2);
  }

  SipDialogEventClient::terminateExistingDialogs(this);
}

void SipDialogEventClient::beforeRegEventUnsubscription(SipDialogEventClient *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    SipDialogEventPackage::unsubscribe(v2);
    *(this + 26) = 0;
  }
}

void non-virtual thunk toSipDialogEventClient::beforeRegEventUnsubscription(SipDialogEventClient *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    SipDialogEventPackage::unsubscribe(v2);
    *(this + 9) = 0;
  }
}

void SipDialogEventClient::beforeDeregistration(SipDialogEventClient *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    SipDialogEventPackage::unsubscribe(v2);
    *(this + 26) = 0;
  }
}

void non-virtual thunk toSipDialogEventClient::beforeDeregistration(SipDialogEventClient *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    SipDialogEventPackage::unsubscribe(v2);
    *(this + 9) = 0;
  }
}

void SipDialogEventClient::setThumperEnabled(SipDialogEventPackage **this, int a2)
{
  if (*(this + 328) == 1)
  {
    if (a2)
    {

      SipDialogEventClient::subscribe(this);
    }

    else
    {
      v3 = this[26];
      if (v3)
      {
        SipDialogEventPackage::unsubscribe(v3);
        this[26] = 0;
      }
    }
  }
}

uint64_t SipDialogEventClient::dialogEventSubscriptionFailed(SipDialogEventClient *this, SipDialogEventPackage *a2, ImsResult *a3)
{
  v4 = (*(*this + 64))(this, a2, a3);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "dialog event subscription failed", 32);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  *(this + 26) = 0;
  return result;
}

void SipDialogEventClient::dialogEventSubscriptionTerminated(SipDialogEventClient *this, SipDialogEventPackage *a2)
{
  v3 = (*(*this + 64))(this, a2);
  (*(*this + 16))(this, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "dialog event subscription terminated", 36);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  SipDialogEventClient::terminateExistingDialogs(this);
  *(this + 26) = 0;
}

void SipDialogTable::getAllDialogs(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v5 = *a2;
      ;
    }

    a2[1] = v5;
    v8 = *a1;
    v6 = a1 + 1;
    v7 = v8;
    if (v8 != v6)
    {
      do
      {
        std::vector<SipDialogInfo>::insert(a2, a2[1], (v7 + 7));
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<SipDialogEventData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        SipDialogEventData::~SipDialogEventData(v4 - 37);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **std::vector<SipDialogInfo>::insert(uint64_t a1, uint64_t a2, SipDialogInfo *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = 0x2FC962FC962FC963 * ((v7 - *a1) >> 3) + 1;
    if (v11 > 0x6D3A06D3A06D3ALL)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = 0x2FC962FC962FC963 * ((v6 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0x2FC962FC962FC963 * ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x369D0369D0369DLL)
    {
      v15 = 0x6D3A06D3A06D3ALL;
    }

    else
    {
      v15 = v14;
    }

    v21 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogInfo>>(a1, v15);
    }

    v17 = 0;
    v18 = 8 * (v12 >> 3);
    v19 = v18;
    v20 = 0;
    std::__split_buffer<SipDialogInfo>::emplace_back<SipDialogInfo const&>(&v17, a3);
    v4 = std::vector<SipDialogInfo>::__swap_out_circular_buffer(a1, &v17, v4);
    std::__split_buffer<SipDialogInfo>::~__split_buffer(&v17);
  }

  else if (a2 == v7)
  {
    SipDialogInfo::SipDialogInfo(*(a1 + 8), a3);
    *(a1 + 8) = v7 + 600;
  }

  else
  {
    std::vector<SipDialogInfo>::__move_range(a1, a2, *(a1 + 8), a2 + 600);
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 600;
    if (v8)
    {
      v9 = 0;
    }

    SipDialogInfo::operator=(v4, a3 + v9);
  }

  return v4;
}

uint64_t std::vector<SipDialogInfo>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = SipDialogInfo::SipDialogInfo(v10, v8);
      v8 = (v8 + 600);
      v10 += 600;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 600;
    v12 = a4 - v7;
    v13 = (a2 + v7 - 600 - a4);
    do
    {
      result = SipDialogInfo::operator=(v11, v13);
      v11 -= 600;
      v13 = (v13 - 600);
      v12 += 600;
    }

    while (v12);
  }

  return result;
}

void std::__split_buffer<SipDialogInfo>::emplace_back<SipDialogInfo const&>(std::string **a1, SipDialogInfo *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5F92C5F92C5F92C6 * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v11 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogInfo>>(v10, v9);
    }

    v8 = (0x2FC962FC962FC963 * (v7 >> 3) + 1) / -2;
    v5 = (v6 - 600 * ((0x2FC962FC962FC963 * (v7 >> 3) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        SipDialogInfo::operator=(v5, v6);
        v6 = (v6 + 600);
        v5 += 25;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = (v6 + 600 * v8);
    a1[2] = v5;
  }

  SipDialogInfo::SipDialogInfo(v5, a2);
  a1[2] += 25;
}

void sub_1E4FEA00C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<SipDialogInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SipDialogInfo>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipDialogInfo>,SipDialogInfo*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipDialogInfo>,SipDialogInfo*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t SipDialogInfo::SipDialogInfo(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  SipDialogDirection::SipDialogDirection((a1 + 96), (a2 + 6));
  SipDialogState::SipDialogState(a1 + 136, a2 + 136);
  v8 = *(a2 + 22);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v8;
  v9 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v9;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 24) = 0;
  v10 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v10;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 27) = 0;
  v11 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v11;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a1 + 264) = *(a2 + 264);
  v12 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v12;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  *(a2 + 34) = 0;
  v13 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v13;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  *(a2 + 37) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = a2[21];
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  v14 = a2[22];
  *(a1 + 368) = *(a2 + 46);
  *(a1 + 352) = v14;
  *(a2 + 45) = 0;
  *(a2 + 46) = 0;
  *(a2 + 44) = 0;
  *(a1 + 376) = *(a2 + 47);
  v15 = a1 + 384;
  v16 = *(a2 + 48);
  v17 = *(a2 + 49);
  *(a1 + 384) = v16;
  *(a1 + 392) = v17;
  if (v17)
  {
    *(v16 + 16) = v15;
    *(a2 + 47) = a2 + 24;
    *(a2 + 48) = 0;
    *(a2 + 49) = 0;
  }

  else
  {
    *(a1 + 376) = v15;
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = a2[25];
  *(a1 + 416) = *(a2 + 52);
  *(a2 + 50) = 0;
  *(a2 + 51) = 0;
  *(a2 + 52) = 0;
  *(a1 + 424) = *(a2 + 424);
  v18 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v18;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *(a2 + 54) = 0;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  *(a1 + 464) = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a2 + 58) = 0;
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  v19 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 63);
  *(a1 + 488) = v19;
  *(a2 + 62) = 0;
  *(a2 + 63) = 0;
  *(a2 + 61) = 0;
  *(a1 + 512) = *(a2 + 64);
  v20 = a1 + 520;
  v21 = *(a2 + 65);
  *(a1 + 520) = v21;
  v22 = *(a2 + 66);
  *(a1 + 528) = v22;
  if (v22)
  {
    *(v21 + 16) = v20;
    *(a2 + 64) = a2 + 520;
    *(a2 + 65) = 0;
    *(a2 + 66) = 0;
  }

  else
  {
    *(a1 + 512) = v20;
  }

  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 536) = *(a2 + 67);
  *(a1 + 544) = a2[34];
  *(a2 + 69) = 0;
  *(a2 + 536) = 0u;
  *(a1 + 560) = *(a2 + 560);
  v23 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 73);
  *(a1 + 568) = v23;
  *(a2 + 73) = 0;
  *(a2 + 72) = 0;
  *(a2 + 71) = 0;
  *(a1 + 592) = *(a2 + 592);
  return a1;
}

void sub_1E4FEA3A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

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

uint64_t SipDialogInfo::operator=(uint64_t a1, __int128 *a2)
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 34);
  std::string::operator=((a1 + 144), a2 + 6);
  *(a1 + 168) = *(a2 + 84);
  *(a1 + 170) = *(a2 + 170);
  v8 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 184) = v8;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v9 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v9;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v10 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v10;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v11 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v11;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  *(a1 + 264) = *(a2 + 264);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  v13 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *v13 = v14;
  *(a2 + 319) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = *(a2 + 320);
  std::vector<SipDialogParticipantIdentity>::__vdeallocate((a1 + 328));
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = a2[21];
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  v15 = a2[22];
  *(a1 + 368) = *(a2 + 46);
  *(a1 + 352) = v15;
  *(a2 + 375) = 0;
  *(a2 + 352) = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(a1 + 376, a2 + 47);
  std::vector<unsigned char>::__move_assign(a1 + 400, a2 + 25);
  *(a1 + 424) = *(a2 + 424);
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v16 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v16;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  *(a1 + 456) = *(a2 + 456);
  std::vector<SipDialogParticipantIdentity>::__vdeallocate((a1 + 464));
  *(a1 + 464) = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a2 + 58) = 0;
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  v17 = (a1 + 488);
  if (*(a1 + 511) < 0)
  {
    operator delete(*v17);
  }

  v18 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 63);
  *v17 = v18;
  *(a2 + 511) = 0;
  *(a2 + 488) = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__move_assign(a1 + 512, a2 + 64);
  std::vector<unsigned char>::__move_assign(a1 + 536, (a2 + 536));
  *(a1 + 560) = *(a2 + 560);
  v19 = (a1 + 568);
  if (*(a1 + 591) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 73);
  *v19 = v20;
  *(a2 + 591) = 0;
  *(a2 + 568) = 0;
  *(a1 + 592) = *(a2 + 592);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x6D3A06D3A06D3BLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipDialogInfo>,SipDialogInfo*>(int a1, void **a2, SipDialogInfo *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      SipDialogInfo::SipDialogInfo(this, v8);
      v8 = (v8 + 600);
      this += 25;
      v7 -= 600;
    }

    while (v8 != a3);
    do
    {
      SipDialogInfo::~SipDialogInfo(v6);
      v6 += 75;
    }

    while (v6 != a3);
  }
}

void sub_1E4FEA824(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 600);
    do
    {
      SipDialogInfo::~SipDialogInfo(v4);
      v4 = (v5 - 600);
      v2 += 600;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SipDialogInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 600;
    SipDialogInfo::~SipDialogInfo((i - 600));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<SipDialogInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        SipDialogInfo::~SipDialogInfo(v4 - 75);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ims::SharedLoggable<SipDialogEventClient>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipDialogEventClient>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIK20SipDialogEventClientEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIK20SipDialogEventClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AVCRTPSession<AVCAudioStream>::AVCRTPSession(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, ImsPrefs *a6, void *a7, __int128 *a8, NSObject **a9)
{
  v12 = a2[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = a2[2];
  v13 = a3[1];
  v27 = *a3;
  v28 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  v25 = *a5;
  v26 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionDriver::MediaSessionDriver(a1 + 8, &v27, a4, &v25, a6, a8, a9);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  v15 = *a2;
  *a1 = *a2;
  *(a1 + *(v15 - 24)) = a2[3];
  *(a1 + 8) = &unk_1F5EE70B8;
  *(a1 + 96) = &unk_1F5EE71C0;
  *(a1 + 353) = 0;
  *(a1 + 357) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  v16 = a7[1];
  *(a1 + 384) = *a7;
  *(a1 + 392) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 416) = 0;
  std::string::basic_string[abi:ne200100]<0>(v23, "avc.rtp.session");
  v19[0] = 0;
  v22 = 0;
  v17 = ims::debug(v23, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "AVCRTPSession", 13);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return a1;
}

void sub_1E4FEACB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (*(v26 + 423) < 0)
  {
    operator delete(*(v26 + 400));
  }

  v29 = *(v26 + 392);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  MediaSessionDriver::~MediaSessionDriver(v27);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCAudioStream>::~AVCRTPSession(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = &unk_1F5EE70B8;
  *(a1 + 96) = &unk_1F5EE71C0;
  std::string::basic_string[abi:ne200100]<0>(v11, "avc.rtp.session");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::debug(v11, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "~AVCRTPSession", 14);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v5 = *(a1 + 392);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MediaSessionDriver::~MediaSessionDriver((a1 + 8));
  return a1;
}

uint64_t AVCRTPSession<AVCAudioStream>::terminate(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v25, "avc.rtp.session");
  v21[0] = 0;
  v24 = 0;
  v3 = ims::debug(v2, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "terminate", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  v5 = objc_autoreleasePoolPush();
  if (*(a1 + 353) == 1)
  {
    *(a1 + 355) = 0;
    v25 = 0;
    v26 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v25);
    v6 = (*(*(a1 + 8) + 104))(a1 + 8);
    RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(v18, a1);
    if (v6 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (v18[0])
    {
      v8 = v18[0] + 8;
    }

    else
    {
      v8 = 0;
    }

    v19 = v8;
    v20 = v18[1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE9terminateEb_block_invoke;
    v16[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
    v16[4] = a1;
    v16[5] = v25;
    v17 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((a1 + 8), v7, &v19, v16);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    [*(a1 + 360) stop];
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  v25 = 0;
  v26 = 0;
  RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v25);
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 16);
      if (v12)
      {
        v14 = v25;
        v15 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v12 + 8))(v12, &v14, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

void sub_1E4FEB248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  v35 = *(v33 - 48);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(void **p_lpsrc, void *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, (a2 + *(*a2 - 24) + 8));
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v5 = v7;
      *p_lpsrc = v4;
      p_lpsrc[1] = v5;
      p_lpsrc = &lpsrc;
    }
  }

  *p_lpsrc = 0;
  p_lpsrc[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE9terminateEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FEB43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AVCRTPSession<AVCAudioStream>::start(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
  v108[0] = 0;
  v111 = 0;
  v3 = ims::debug(v2, v108);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "start", 5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v111 == 1 && v110 < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103[0].__r_.__value_.__l.__data_);
  }

  v6 = objc_autoreleasePoolPush();
  if (!*(a1 + 368))
  {
    goto LABEL_63;
  }

  if ((*(*v4 + 104))(a1 + 8) == 2)
  {
    v106 = 0;
    v107 = 0;
    RTPManager::sdpSessionForSession(*(a1 + 40), *(a1 + 32), &v106);
    v7 = v106;
    if (v106)
    {
      v8 = v106[16];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v7[15];
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          if (v10)
          {
            v105 = 0;
            v104 = 0u;
            memset(v103, 0, sizeof(v103));
            v11 = v106;
            v12 = v106[16];
            if (v12)
            {
              v13 = std::__shared_weak_count::lock(v12);
              if (v13)
              {
                v14 = v11[15];
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

            if (v14[3455] < 0)
            {
              std::string::__init_copy_ctor_external(v103, *(v14 + 429), *(v14 + 430));
            }

            else
            {
              v103[0] = *(v14 + 143);
            }

            if (v14[3479] < 0)
            {
              std::string::__init_copy_ctor_external(&v103[1], *(v14 + 432), *(v14 + 433));
            }

            else
            {
              v103[1] = *(v14 + 144);
            }

            LOBYTE(v105) = v14[3496];
            v104 = *(v14 + 3480);
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            v15 = *(a1 + 32);
            v16 = *(a1 + 40);
            v17 = *(v16 + 216);
            if (v17)
            {
              v18 = v16 + 216;
              do
              {
                v19 = *(v17 + 32);
                v20 = v19 >= v15;
                v21 = v19 < v15;
                if (v20)
                {
                  v18 = v17;
                }

                v17 = *(v17 + 8 * v21);
              }

              while (v17);
              if (v18 != v16 + 216 && *(v18 + 32) <= v15)
              {
                goto LABEL_44;
              }
            }

            v24 = *(v16 + 240);
            v22 = v16 + 240;
            v23 = v24;
            if (!v24)
            {
              goto LABEL_41;
            }

            v25 = v22;
            do
            {
              v26 = *(v23 + 32);
              v20 = v26 >= v15;
              v27 = v26 < v15;
              if (v20)
              {
                v25 = v23;
              }

              v23 = *(v23 + 8 * v27);
            }

            while (v23);
            if (v25 != v22 && *(v25 + 32) <= v15)
            {
LABEL_44:
              isWifi = ims::AccessNetwork::isWifi(v103);
              v29 = [*(a1 + 368) audio];
              v30 = v29;
              if (isWifi)
              {
                v31 = 2;
              }

              else
              {
                v31 = 9;
              }
            }

            else
            {
LABEL_41:
              v28 = ims::AccessNetwork::isWifi(v103);
              v29 = [*(a1 + 368) audio];
              v30 = v29;
              if (v28)
              {
                v31 = 0;
              }

              else
              {
                v31 = 6;
              }
            }

            [v29 setAudioStreamMode:v31];

            [*(a1 + 368) setJitterBufferMode:ims::AccessNetwork::isWifi(v103)];
            v33 = *(a1 + 40);
            v36 = *(v33 + 240);
            v34 = v33 + 240;
            v35 = v36;
            if (!v36)
            {
              goto LABEL_55;
            }

            v37 = *(a1 + 32);
            v38 = v34;
            do
            {
              v39 = *(v35 + 32);
              v20 = v39 >= v37;
              v40 = v39 < v37;
              if (v20)
              {
                v38 = v35;
              }

              v35 = *(v35 + 8 * v40);
            }

            while (v35);
            if (v38 == v34 || *(v38 + 32) > v37)
            {
LABEL_55:
              v38 = v34;
            }

            [*(a1 + 368) setOutOfProcessCodecsEnabled:v38 != v34];
            if (SHIBYTE(v103[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103[1].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    if (v107)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v107);
    }
  }

  v41 = *(a1 + 368);
  if (!v41)
  {
LABEL_63:
    if ((*(*v4 + 104))(a1 + 8) == 4)
    {
      v42 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v99[0] = 0;
      v102 = 0;
      v43 = ims::warn(v42, v99);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "Text media session is not configured, possibly due to incomplete upgrade.  Waiting for upper layers to generate new offer.", 122);
      *(v43 + 17) = 0;
      (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v43 + 17) = 0;
      if (v102 == 1 && v101 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      *&v103[0].__r_.__value_.__l.__data_ = 0uLL;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, v103);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE5startEb_block_invoke;
      block[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
      block[4] = a1;
      v98 = *&v103[0].__r_.__value_.__l.__data_;
      if (v103[0].__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v103[0].__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      dispatch_async(*(a1 + 56), block);
      if (*(&v98 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v98 + 1));
      }

      size = v103[0].__r_.__value_.__l.__size_;
      if (!v103[0].__r_.__value_.__l.__size_)
      {
        goto LABEL_122;
      }

LABEL_121:
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      goto LABEL_122;
    }

    v41 = *(a1 + 368);
  }

  objc_storeStrong((a1 + 376), v41);
  v45 = *(a1 + 376);
  if (v45)
  {
    v46 = *(a1 + 360);
    v96 = 0;
    [v46 configure:v45 error:&v96];
    v47 = v96;
    if (v47)
    {
      v48 = v47;
      v49 = [v47 description];
      v50 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v86[0] = 0;
      v89 = 0;
      v51 = ims::error(v50, v86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Session config error: ", 22);
      *(v51 + 17) = 0;
      v52 = [v49 UTF8String];
      v53 = strlen(v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), v52, v53);
      *(v51 + 17) = 0;
      (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v51 + 17) = 0;
      if (v89 == 1 && v88 < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      v54 = *(a1 + 24);
      if (v54)
      {
        v55 = std::__shared_weak_count::lock(v54);
        if (v55)
        {
          v56 = v55;
          v57 = *(a1 + 16);
          if (v57)
          {
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v84);
            (*(*v57 + 24))(v57, &v84, 9);
            if (v85)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v85);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }
      }
    }

    else
    {
      v64 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v80[0] = 0;
      v83 = 0;
      v65 = ims::debug(v64, v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v65 + 8), "Clear reconfigureNeeded", 23);
      *(v65 + 17) = 0;
      (*(*v65 + 64))(v65, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v65 + 17) = 0;
      if (v83 == 1 && v82 < 0)
      {
        operator delete(v81);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      *(a1 + 356) = 0;
      v106 = 0;
      v107 = 0;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v106);
      v66 = (*(*v4 + 104))(a1 + 8);
      RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(&v103[0].__r_.__value_.__l.__data_, a1);
      if (v103[0].__r_.__value_.__r.__words[0])
      {
        v67 = (v103[0].__r_.__value_.__r.__words[0] + 8);
      }

      else
      {
        v67 = 0;
      }

      v78 = v67;
      v79 = v103[0].__r_.__value_.__l.__size_;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3321888768;
      v76[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE5startEb_block_invoke_2;
      v76[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
      v76[4] = a1;
      v76[5] = v106;
      v77 = v107;
      if (v107)
      {
        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MediaSessionDriver::startTimerForRequest((a1 + 8), v66 != 2, &v78, v76);
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      v68 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v72[0] = 0;
      v75 = 0;
      v69 = ims::debug(v68, v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v69 + 8), "Starting session ", 17);
      *(v69 + 17) = 0;
      v70 = (*(*v4 + 176))(a1 + 8);
      MEMORY[0x1E69233B0](*(v69 + 8), v70);
      *(v69 + 17) = 0;
      (*(*v69 + 64))(v69, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v69 + 17) = 0;
      if (v75 == 1 && v74 < 0)
      {
        operator delete(v73);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      [*(a1 + 360) start];
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      size = v107;
      if (v107)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
    v58 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
    v92[0] = 0;
    v95 = 0;
    v59 = ims::error(v58, v92);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "_activeAvcSessionConfig is null", 31);
    *(v59 + 17) = 0;
    (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v59 + 17) = 0;
    if (v95 == 1 && v94 < 0)
    {
      operator delete(v93);
    }

    if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103[0].__r_.__value_.__l.__data_);
    }

    v60 = *(a1 + 24);
    if (v60)
    {
      v61 = std::__shared_weak_count::lock(v60);
      if (v61)
      {
        v62 = v61;
        v63 = *(a1 + 16);
        if (v63)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v90);
          (*(*v63 + 24))(v63, &v90, 9);
          if (v91)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v91);
          }
        }

        size = v62;
        goto LABEL_121;
      }
    }
  }

LABEL_122:
  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_1E4FEBF20(_Unwind_Exception *a1)
{
  ims::AccessNetwork::~AccessNetwork((v2 - 208));
  v4 = *(v2 - 128);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE5startEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 24))(v6, &v8, 2);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FEC1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE5startEb_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 24))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FEC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCAudioStream>::stop(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v34, "avc.rtp.session");
  v30[0] = 0;
  v33 = 0;
  v3 = ims::debug(v2, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "stop", 4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v36 < 0)
  {
    operator delete(v34);
  }

  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 353) == 1)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v34, "avc.rtp.session");
    v26[0] = 0;
    v29 = 0;
    v8 = ims::debug(v7, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Stopping session ", 17);
    *(v8 + 17) = 0;
    v9 = (*(*v4 + 176))(a1 + 8);
    MEMORY[0x1E69233B0](*(v8 + 8), v9);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }

    *(a1 + 355) = 0;
    v34 = 0;
    v35 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v34);
    v10 = (*(*(a1 + 8) + 104))(a1 + 8);
    RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(v23, a1);
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    if (v23[0])
    {
      v12 = v23[0] + 8;
    }

    else
    {
      v12 = 0;
    }

    v24 = v12;
    v25 = v23[1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE4stopEb_block_invoke;
    v21[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
    v21[4] = a1;
    v21[5] = v34;
    v22 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((a1 + 8), v11, &v24, v21);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    [*(a1 + 360) stop];
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }
  }

  else
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(&v34, "avc.rtp.session");
    v17[0] = 0;
    v20 = 0;
    v14 = ims::warn(v13, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Stop called on session ", 23);
    *(v14 + 17) = 0;
    v15 = (*(*v4 + 176))(v4);
    MEMORY[0x1E69233B0](*(v14 + 8), v15);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " which isn't active. Ignoring.", 30);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }
  }

  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_1E4FEC6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v42 = *(v40 - 64);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE4stopEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FEC864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCAudioStream>::setDirection(uint64_t a1, int *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v74, "avc.rtp.session");
  v70[0] = 0;
  v73 = 0;
  v5 = ims::debug(v4, v70);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setDirection", 12);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  v6 = a1 + 8;
  v7 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v5 + 8), v7);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v73 == 1 && v72 < 0)
  {
    operator delete(v71);
  }

  if (v76 < 0)
  {
    operator delete(v74);
  }

  v8 = *a2;
  if (*a2 == 2)
  {
    v9 = 0;
    v10 = 2;
  }

  else if (v8 == 4)
  {
    v9 = 0;
    v10 = 0;
  }

  else if (v8 == 3)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v9 = 1;
    v10 = 3;
  }

  v11 = [*(a1 + 360) direction];
  *(a1 + 104) = *a2;
  v12 = std::string::basic_string[abi:ne200100]<0>(&v74, "avc.rtp.session");
  v66[0] = 0;
  v69 = 0;
  v13 = ims::debug(v12, v66);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Setting direction to ", 21);
  *(v13 + 17) = 0;
  ims::toString<MediaDirection>((a1 + 104), &__p);
  LoggableString::LoggableString(&v65, &__p);
  (*(*v13 + 40))(v13, &v65);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " for session ", 13);
  *(v13 + 17) = 0;
  v14 = (*(*v6 + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v13 + 8), v14);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v69 == 1 && v68 < 0)
  {
    operator delete(v67);
  }

  if (v76 < 0)
  {
    operator delete(v74);
  }

  if (*(a1 + 353) != 1)
  {
    if (*(a1 + 368))
    {
      v20 = std::string::basic_string[abi:ne200100]<0>(&v74, "avc.rtp.session");
      v46[0] = 0;
      v49 = 0;
      v21 = ims::debug(v20, v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Setting direction on session configuration for session ", 55);
      *(v21 + 17) = 0;
      v22 = (*(*v6 + 176))(a1 + 8);
      MEMORY[0x1E69233B0](*(v21 + 8), v22);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v49 == 1 && v48 < 0)
      {
        operator delete(v47);
      }

      if (v76 < 0)
      {
        operator delete(v74);
      }

      [*(a1 + 368) setDirection:v10];
      [*(a1 + 368) setRtpTimeOutEnabled:*(a1 + 104) == 1];
      [*(a1 + 368) setRtcpTimeOutEnabled:*(a1 + 104) != 1];
      v23 = *(a1 + 104) != 1 || *(a1 + 304) != 0;
      [*(a1 + 368) setRtcpEnabled:v23];
      v26 = 308;
      if (*(a1 + 104) == 1)
      {
        v26 = 304;
      }

      LODWORD(v25) = *(a1 + v26);
      [*(a1 + 368) setRtcpSendInterval:v25];
    }

    v27 = *(a1 + 24);
    if (!v27)
    {
      return 1;
    }

    v28 = std::__shared_weak_count::lock(v27);
    if (!v28)
    {
      return 1;
    }

    v17 = v28;
    v29 = *(a1 + 16);
    if (!v29)
    {
      goto LABEL_49;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v44);
    (*(*v29 + 32))(v29, &v44, 0);
    v19 = v45;
    if (!v45)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v10 != [*(a1 + 360) direction])
  {
    v24 = [*(a1 + 360) direction];
    [*(a1 + 360) setDirection:v10];
    [*(a1 + 368) setDirection:v10];
    if (v24)
    {
      if (*a2 == 4)
      {
        [*(a1 + 360) pause];
        return 1;
      }

      v35 = v9 ^ 1;
      if (v11 == 3)
      {
        v35 = 1;
      }

      if (v35)
      {
        v74 = 0;
        v75 = 0;
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
        v43 = a1 + *(*a1 - 24);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3321888768;
        v50[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE12setDirectionERK14MediaDirectionb_block_invoke_3;
        v50[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
        v50[4] = a1;
        v50[5] = v74;
        v51 = v75;
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ctu::SharedSynchronizable<RTPSharedPointerBase>::execute_wrapped((v43 + 8), v50);
        v39 = v51;
        if (!v51)
        {
LABEL_92:
          v30 = v75;
          if (!v75)
          {
            return 1;
          }

          goto LABEL_50;
        }
      }

      else
      {
        *(a1 + 356) = 1;
        v74 = 0;
        v75 = 0;
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
        v36 = (*(*(a1 + 8) + 104))(a1 + 8);
        RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(&v65.__r_.__value_.__l.__data_, a1);
        if (v36 == 2)
        {
          v37 = 2;
        }

        else
        {
          v37 = 3;
        }

        if (v65.__r_.__value_.__r.__words[0])
        {
          v38 = (v65.__r_.__value_.__r.__words[0] + 8);
        }

        else
        {
          v38 = 0;
        }

        v54 = v38;
        size = v65.__r_.__value_.__l.__size_;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3321888768;
        v52[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE12setDirectionERK14MediaDirectionb_block_invoke_2;
        v52[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
        v52[4] = a1;
        v52[5] = v74;
        v53 = v75;
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MediaSessionDriver::startTimerForRequest((a1 + 8), v37, &v54, v52);
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }

        [*(a1 + 360) stop];
        v39 = v53;
        if (!v53)
        {
          goto LABEL_92;
        }
      }

LABEL_91:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      goto LABEL_92;
    }

    if (AVCRTPStackController::audioSessionCount(*(a1 + 384)) >= 2)
    {
      *(a1 + 356) = 1;
    }

    if (*a2 != 4)
    {
      if (*(a1 + 356) != 1)
      {
        [*(a1 + 360) resume];
        return 1;
      }

      v74 = 0;
      v75 = 0;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
      v40 = (*(*(a1 + 8) + 104))(a1 + 8);
      RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(&v65.__r_.__value_.__l.__data_, a1);
      if (v40 == 2)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }

      if (v65.__r_.__value_.__r.__words[0])
      {
        v42 = (v65.__r_.__value_.__r.__words[0] + 8);
      }

      else
      {
        v42 = 0;
      }

      v60 = v42;
      v61 = v65.__r_.__value_.__l.__size_;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3321888768;
      v58[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE12setDirectionERK14MediaDirectionb_block_invoke;
      v58[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
      v58[4] = a1;
      v58[5] = v74;
      v59 = v75;
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MediaSessionDriver::startTimerForRequest((a1 + 8), v41, &v60, v58);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      [*(a1 + 360) stop];
      v39 = v59;
      if (!v59)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    v32 = *(a1 + 24);
    if (!v32)
    {
      return 1;
    }

    v33 = std::__shared_weak_count::lock(v32);
    if (!v33)
    {
      return 1;
    }

    v17 = v33;
    v34 = *(a1 + 16);
    if (!v34)
    {
      goto LABEL_49;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v56);
    (*(*v34 + 24))(v34, &v56, 0);
    v19 = v57;
    if (!v57)
    {
      goto LABEL_49;
    }

LABEL_48:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_49:
    v30 = v17;
LABEL_50:
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    return 1;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_49;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v62);
      (*(*v18 + 24))(v18, &v62, 0);
      v19 = v63;
      if (!v63)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  return 1;
}

void sub_1E4FED188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE12setDirectionERK14MediaDirectionb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FED3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE12setDirectionERK14MediaDirectionb_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FED468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE12setDirectionERK14MediaDirectionb_block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 24))(v6, &v8, 0);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FED530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void AVCRTPSession<AVCAudioStream>::setConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.rtp.session");
  v67[0] = 0;
  v70 = 0;
  v7 = ims::debug(v6, v67);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "setConfiguration", 16);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  v8 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v70 == 1 && v69 < 0)
  {
    operator delete(v68);
  }

  if (v72 < 0)
  {
    operator delete(v71);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = a2[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*(a1 + 8) + 104))(a1 + 8);
  if (v13 == 2)
  {
    if (*(v12 + 584))
    {
      v14 = v12 + 152;
      goto LABEL_19;
    }
  }

  else if (v13 == 6 && (*(v12 + 1856) & 1) != 0)
  {
    v14 = v12 + 1496;
    goto LABEL_19;
  }

  if (*(v12 + 1328))
  {
    v14 = v12 + 1032;
LABEL_19:
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      v17 = *(v12 + 128);
      if (v17)
      {
        v17 = std::__shared_weak_count::lock(v17);
        v18 = v17;
        if (v17)
        {
          v17 = *(v12 + 120);
        }
      }

      else
      {
        v18 = 0;
      }

      v21 = SipStack::prefs(v17);
      v22 = ImsPrefs::IgnoreLocalhostRemoteRtpAddress(v21);
      v23 = v22;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        if (!v23)
        {
LABEL_44:
          IpAddress::asString(&v71);
        }
      }

      else if (!v22)
      {
        goto LABEL_44;
      }

      IpAddress::asString(&v71);
    }

    if ((*(a1 + 423) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 408))
      {
        goto LABEL_41;
      }
    }

    else if (!*(a1 + 423))
    {
LABEL_41:
      v24 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.rtp.session");
      v59[0] = 0;
      v62 = 0;
      v25 = ims::error(v24, v59);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "No remote connection found for session", 38);
      *(v25 + 17) = 0;
      (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v25 + 17) = 0;
      if (v62 != 1 || (v61 & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      v26 = v60;
      goto LABEL_76;
    }

    if (*(a1 + 368))
    {
      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      v28 = (a1 + 400);
      if (*(a1 + 423) < 0)
      {
        v28 = *v28;
      }

      v29 = [v27 initWithUTF8String:v28];
      v30 = [*(a1 + 368) remoteAddress];
      [v30 setIp:v29];

      v31 = *(a1 + 424);
      v32 = [*(a1 + 368) remoteAddress];
      [v32 setIsIPv6:v31];

      v33 = [*(a1 + 368) remoteAddress];
      [v33 setInterfaceName:&stru_1F5EFB6F8];

      v34 = *(v14 + 26);
      v35 = [*(a1 + 368) remoteAddress];
      [v35 setPort:v34];

      v36 = (*(a1 + 104) - 2);
      if (v36 >= 3)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2 - v36;
      }

      [*(a1 + 368) setDirection:v37];
      v38 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.rtp.session");
      v51[0] = 0;
      v54 = 0;
      v39 = ims::debug(v38, v51);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "direction set to ", 17);
      *(v39 + 17) = 0;
      ims::toString<MediaDirection>((a1 + 104), &v49);
      LoggableString::LoggableString(&v50, &v49);
      (*(*v39 + 40))(v39, &v50);
      (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v39 + 17) = 0;
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (v54 == 1 && v53 < 0)
      {
        operator delete(v52);
      }

      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (*(v14 + 184) == 1)
      {
        v40 = 2;
        if (*(v14 + 179))
        {
          v40 = 3;
        }

        if (*(v14 + 177))
        {
          v41 = v40;
        }

        else
        {
          v41 = *(v14 + 179);
        }

        [*(a1 + 368) setSRTPCipherSuite:v41];
        if (*(v14 + 178))
        {
          v42 = 3;
        }

        else
        {
          v42 = 1;
        }

        [*(a1 + 368) setSRTCPCipherSuite:v42];
        v43 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v14 + 152) length:*(v14 + 160) - *(v14 + 152)];
        [*(a1 + 368) setSendMasterKey:v43];
      }

      if (*(v14 + 272) == 1)
      {
        v44 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v14 + 240) length:*(v14 + 248) - *(v14 + 240)];
        [*(a1 + 368) setReceiveMasterKey:v44];
      }

      isConfigEqualToActiveConfig = AVCRTPSession<AVCAudioStream>::isConfigEqualToActiveConfig(a1, *(a1 + 368));
      v46 = 0;
      *(a1 + 356) = isConfigEqualToActiveConfig ^ 1;
      goto LABEL_80;
    }

    v47 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.rtp.session");
    v55[0] = 0;
    v58 = 0;
    v48 = ims::error(v47, v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), "AVC config is null. Was supposed to be allocated in Audio or RTT session.", 73);
    *(v48 + 17) = 0;
    (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v48 + 17) = 0;
    if (v58 != 1 || (v57 & 0x80000000) == 0)
    {
LABEL_77:
      if (v72 < 0)
      {
        operator delete(v71);
      }

      v46 = 1073741825;
LABEL_80:
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = v46;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      goto LABEL_82;
    }

    v26 = v56;
LABEL_76:
    operator delete(v26);
    goto LABEL_77;
  }

  v19 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.rtp.session");
  v63[0] = 0;
  v66 = 0;
  v20 = ims::warn(v19, v63);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Not enough information to configure with", 40);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v66 == 1 && v65 < 0)
  {
    operator delete(__p);
  }

  if (v72 < 0)
  {
    operator delete(v71);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741825;
LABEL_82:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1E4FEDDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, char a60)
{
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVCRTPSession<AVCAudioStream>::isConfigEqualToActiveConfig(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.rtp.session");
    v24[0] = 0;
    v27 = 0;
    v11 = ims::warn(v10, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "isConfigEqualToActiveConfig", 27);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=", 12);
    *(v11 + 17) = 0;
    MEMORY[0x1E69233B0](*(v11 + 8), *(a1 + 32));
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " config is null", 15);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v27 != 1 || (v26 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v12 = v25;
    goto LABEL_15;
  }

  if (*(a1 + 376))
  {
    v5 = [v3 description];
    v6 = [*(a1 + 376) description];
    v7 = [v5 isEqualToString:v6];
    v8 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.rtp.session");
    v16[0] = 0;
    v19 = 0;
    v9 = ims::debug(v8, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "isConfigEqualToActiveConfig", 27);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [sessionId=", 12);
    *(v9 + 17) = 0;
    MEMORY[0x1E69233B0](*(v9 + 8), *(a1 + 32));
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " isEqual=", 9);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923320](*(v9 + 8), v7);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(__p);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    goto LABEL_19;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.rtp.session");
  v20[0] = 0;
  v23 = 0;
  v14 = ims::warn(v13, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "isConfigEqualToActiveConfig", 27);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [sessionId=", 12);
  *(v14 + 17) = 0;
  MEMORY[0x1E69233B0](*(v14 + 8), *(a1 + 32));
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " activeAvcSessionConfig is null", 31);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    v12 = v21;
LABEL_15:
    operator delete(v12);
  }

LABEL_16:
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v7 = 0;
LABEL_19:

  return v7;
}

uint64_t AVCRTPSession<AVCAudioStream>::configure(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v40, "avc.rtp.session");
  v36[0] = 0;
  v39 = 0;
  v3 = ims::debug(v2, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "configure", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " _reconfigureNeeded=", 20);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(a1 + 356));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

  if (*(a1 + 353) == 1 && *(a1 + 356) == 1)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v40, "avc.rtp.session");
    v32[0] = 0;
    v35 = 0;
    v7 = ims::debug(v6, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Reconfiguring session ", 22);
    *(v7 + 17) = 0;
    v8 = (*(*v4 + 176))(a1 + 8);
    MEMORY[0x1E69233B0](*(v7 + 8), v8);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }

    *(a1 + 355) = 1;
    v40 = 0;
    v41 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v40);
    v9 = (*(*(a1 + 8) + 104))(a1 + 8);
    RTPSharedPointerBase::getShared<AVCRTPSession<AVCAudioStream>>(v29, a1);
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v29[0])
    {
      v11 = v29[0] + 8;
    }

    else
    {
      v11 = 0;
    }

    v30 = v11;
    v31 = v29[1];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3321888768;
    v27[2] = ___ZN13AVCRTPSessionI14AVCAudioStreamE9configureEb_block_invoke;
    v27[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
    v27[4] = a1;
    v27[5] = v40;
    v28 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((a1 + 8), v10, &v30, v27);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    [*(a1 + 360) stop];
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v12 = v41;
    if (!v41)
    {
      return 1;
    }

LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    return 1;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(&v40, "avc.rtp.session");
  v23[0] = 0;
  v26 = 0;
  v14 = ims::debug(v13, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Ignoring configure request for session ", 39);
  *(v14 + 17) = 0;
  v15 = (*(*v4 + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v14 + 8), v15);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

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
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v21);
        (*(*v19 + 16))(v19, &v21, 0);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      v12 = v18;
      goto LABEL_38;
    }
  }

  return 1;
}

void sub_1E4FEE858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI14AVCAudioStreamE9configureEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FEE9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCAudioStream>::active(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "avc.rtp.session");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "active", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " active=", 8);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(a1 + 353));
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

  return *(a1 + 353);
}

void sub_1E4FEEB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t AVCRTPSession<AVCAudioStream>::paused(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "avc.rtp.session");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "paused", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " paused=", 8);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(a1 + 354));
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

  return *(a1 + 354);
}

void sub_1E4FEED08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void AVCRTPSession<AVCAudioStream>::pauseAVCSession(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v17, "avc.rtp.session");
  v13[0] = 0;
  v16 = 0;
  v3 = ims::debug(v2, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "pauseAVCSession", 15);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = std::string::basic_string[abi:ne200100]<0>(v17, "avc.rtp.session");
  v9[0] = 0;
  v12 = 0;
  v7 = ims::debug(v6, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Pausing session ", 16);
  *(v7 + 17) = 0;
  v8 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  [*(a1 + 360) pause];
  objc_autoreleasePoolPop(v5);
}

void sub_1E4FEEF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *AVCRTPSession<AVCAudioStream>::toTimerIdString@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = "AUDIO_SESSION_STOP";
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_8;
      }

      v2 = "TEXT_SESSION_STOP";
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = "TEXT_SESSION_START";
        goto LABEL_11;
      }

LABEL_8:
      ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
    }

    v2 = "AUDIO_SESSION_START";
  }

LABEL_11:

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t AVCRTPSession<AVCTextStream>::AVCRTPSession(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, ImsPrefs *a6, void *a7, __int128 *a8, NSObject **a9)
{
  v12 = a2[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = a2[2];
  v13 = a3[1];
  v27 = *a3;
  v28 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  v25 = *a5;
  v26 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionDriver::MediaSessionDriver(a1 + 8, &v27, a4, &v25, a6, a8, a9);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  v15 = *a2;
  *a1 = *a2;
  *(a1 + *(v15 - 24)) = a2[3];
  *(a1 + 8) = &unk_1F5EE72C8;
  *(a1 + 96) = &unk_1F5EE73D0;
  *(a1 + 353) = 0;
  *(a1 + 357) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  v16 = a7[1];
  *(a1 + 384) = *a7;
  *(a1 + 392) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 416) = 0;
  std::string::basic_string[abi:ne200100]<0>(v23, "avc.rtp.session");
  v19[0] = 0;
  v22 = 0;
  v17 = ims::debug(v23, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "AVCRTPSession", 13);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return a1;
}

void sub_1E4FEF348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (*(v26 + 423) < 0)
  {
    operator delete(*(v26 + 400));
  }

  v29 = *(v26 + 392);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  MediaSessionDriver::~MediaSessionDriver(v27);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCTextStream>::~AVCRTPSession(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = &unk_1F5EE72C8;
  *(a1 + 96) = &unk_1F5EE73D0;
  std::string::basic_string[abi:ne200100]<0>(v11, "avc.rtp.session");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::debug(v11, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "~AVCRTPSession", 14);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v5 = *(a1 + 392);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MediaSessionDriver::~MediaSessionDriver((a1 + 8));
  return a1;
}

uint64_t AVCRTPSession<AVCTextStream>::terminate(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v25, "avc.rtp.session");
  v21[0] = 0;
  v24 = 0;
  v3 = ims::debug(v2, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "terminate", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  v5 = objc_autoreleasePoolPush();
  if (*(a1 + 353) == 1)
  {
    *(a1 + 355) = 0;
    v25 = 0;
    v26 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v25);
    v6 = (*(*(a1 + 8) + 104))(a1 + 8);
    RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(v18, a1);
    if (v6 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (v18[0])
    {
      v8 = v18[0] + 8;
    }

    else
    {
      v8 = 0;
    }

    v19 = v8;
    v20 = v18[1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE9terminateEb_block_invoke;
    v16[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
    v16[4] = a1;
    v16[5] = v25;
    v17 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((a1 + 8), v7, &v19, v16);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    [*(a1 + 360) stop];
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  v25 = 0;
  v26 = 0;
  RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v25);
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 16);
      if (v12)
      {
        v14 = v25;
        v15 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v12 + 8))(v12, &v14, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

void sub_1E4FEF8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  v35 = *(v33 - 48);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(void **p_lpsrc, void *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, (a2 + *(*a2 - 24) + 8));
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v5 = v7;
      *p_lpsrc = v4;
      p_lpsrc[1] = v5;
      p_lpsrc = &lpsrc;
    }
  }

  *p_lpsrc = 0;
  p_lpsrc[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE9terminateEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FEFAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCTextStream>::start(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
  v108[0] = 0;
  v111 = 0;
  v3 = ims::debug(v2, v108);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "start", 5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v111 == 1 && v110 < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103[0].__r_.__value_.__l.__data_);
  }

  v6 = objc_autoreleasePoolPush();
  if (!*(a1 + 368))
  {
    goto LABEL_63;
  }

  if ((*(*v4 + 104))(a1 + 8) == 2)
  {
    v106 = 0;
    v107 = 0;
    RTPManager::sdpSessionForSession(*(a1 + 40), *(a1 + 32), &v106);
    v7 = v106;
    if (v106)
    {
      v8 = v106[16];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v7[15];
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          if (v10)
          {
            v105 = 0;
            v104 = 0u;
            memset(v103, 0, sizeof(v103));
            v11 = v106;
            v12 = v106[16];
            if (v12)
            {
              v13 = std::__shared_weak_count::lock(v12);
              if (v13)
              {
                v14 = v11[15];
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

            if (v14[3455] < 0)
            {
              std::string::__init_copy_ctor_external(v103, *(v14 + 429), *(v14 + 430));
            }

            else
            {
              v103[0] = *(v14 + 143);
            }

            if (v14[3479] < 0)
            {
              std::string::__init_copy_ctor_external(&v103[1], *(v14 + 432), *(v14 + 433));
            }

            else
            {
              v103[1] = *(v14 + 144);
            }

            LOBYTE(v105) = v14[3496];
            v104 = *(v14 + 3480);
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            v15 = *(a1 + 32);
            v16 = *(a1 + 40);
            v17 = *(v16 + 216);
            if (v17)
            {
              v18 = v16 + 216;
              do
              {
                v19 = *(v17 + 32);
                v20 = v19 >= v15;
                v21 = v19 < v15;
                if (v20)
                {
                  v18 = v17;
                }

                v17 = *(v17 + 8 * v21);
              }

              while (v17);
              if (v18 != v16 + 216 && *(v18 + 32) <= v15)
              {
                goto LABEL_44;
              }
            }

            v24 = *(v16 + 240);
            v22 = v16 + 240;
            v23 = v24;
            if (!v24)
            {
              goto LABEL_41;
            }

            v25 = v22;
            do
            {
              v26 = *(v23 + 32);
              v20 = v26 >= v15;
              v27 = v26 < v15;
              if (v20)
              {
                v25 = v23;
              }

              v23 = *(v23 + 8 * v27);
            }

            while (v23);
            if (v25 != v22 && *(v25 + 32) <= v15)
            {
LABEL_44:
              isWifi = ims::AccessNetwork::isWifi(v103);
              v29 = [*(a1 + 368) audio];
              v30 = v29;
              if (isWifi)
              {
                v31 = 2;
              }

              else
              {
                v31 = 9;
              }
            }

            else
            {
LABEL_41:
              v28 = ims::AccessNetwork::isWifi(v103);
              v29 = [*(a1 + 368) audio];
              v30 = v29;
              if (v28)
              {
                v31 = 0;
              }

              else
              {
                v31 = 6;
              }
            }

            [v29 setAudioStreamMode:v31];

            [*(a1 + 368) setJitterBufferMode:ims::AccessNetwork::isWifi(v103)];
            v33 = *(a1 + 40);
            v36 = *(v33 + 240);
            v34 = v33 + 240;
            v35 = v36;
            if (!v36)
            {
              goto LABEL_55;
            }

            v37 = *(a1 + 32);
            v38 = v34;
            do
            {
              v39 = *(v35 + 32);
              v20 = v39 >= v37;
              v40 = v39 < v37;
              if (v20)
              {
                v38 = v35;
              }

              v35 = *(v35 + 8 * v40);
            }

            while (v35);
            if (v38 == v34 || *(v38 + 32) > v37)
            {
LABEL_55:
              v38 = v34;
            }

            [*(a1 + 368) setOutOfProcessCodecsEnabled:v38 != v34];
            if (SHIBYTE(v103[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103[1].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    if (v107)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v107);
    }
  }

  v41 = *(a1 + 368);
  if (!v41)
  {
LABEL_63:
    if ((*(*v4 + 104))(a1 + 8) == 4)
    {
      v42 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v99[0] = 0;
      v102 = 0;
      v43 = ims::warn(v42, v99);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "Text media session is not configured, possibly due to incomplete upgrade.  Waiting for upper layers to generate new offer.", 122);
      *(v43 + 17) = 0;
      (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v43 + 17) = 0;
      if (v102 == 1 && v101 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      *&v103[0].__r_.__value_.__l.__data_ = 0uLL;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, v103);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE5startEb_block_invoke;
      block[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
      block[4] = a1;
      v98 = *&v103[0].__r_.__value_.__l.__data_;
      if (v103[0].__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v103[0].__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      dispatch_async(*(a1 + 56), block);
      if (*(&v98 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v98 + 1));
      }

      size = v103[0].__r_.__value_.__l.__size_;
      if (!v103[0].__r_.__value_.__l.__size_)
      {
        goto LABEL_122;
      }

LABEL_121:
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      goto LABEL_122;
    }

    v41 = *(a1 + 368);
  }

  objc_storeStrong((a1 + 376), v41);
  v45 = *(a1 + 376);
  if (v45)
  {
    v46 = *(a1 + 360);
    v96 = 0;
    [v46 configure:v45 error:&v96];
    v47 = v96;
    if (v47)
    {
      v48 = v47;
      v49 = [v47 description];
      v50 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v86[0] = 0;
      v89 = 0;
      v51 = ims::error(v50, v86);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Session config error: ", 22);
      *(v51 + 17) = 0;
      v52 = [v49 UTF8String];
      v53 = strlen(v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), v52, v53);
      *(v51 + 17) = 0;
      (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v51 + 17) = 0;
      if (v89 == 1 && v88 < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      v54 = *(a1 + 24);
      if (v54)
      {
        v55 = std::__shared_weak_count::lock(v54);
        if (v55)
        {
          v56 = v55;
          v57 = *(a1 + 16);
          if (v57)
          {
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v84);
            (*(*v57 + 24))(v57, &v84, 9);
            if (v85)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v85);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }
      }
    }

    else
    {
      v64 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v80[0] = 0;
      v83 = 0;
      v65 = ims::debug(v64, v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v65 + 8), "Clear reconfigureNeeded", 23);
      *(v65 + 17) = 0;
      (*(*v65 + 64))(v65, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v65 + 17) = 0;
      if (v83 == 1 && v82 < 0)
      {
        operator delete(v81);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      *(a1 + 356) = 0;
      v106 = 0;
      v107 = 0;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v106);
      v66 = (*(*v4 + 104))(a1 + 8);
      RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(&v103[0].__r_.__value_.__l.__data_, a1);
      if (v103[0].__r_.__value_.__r.__words[0])
      {
        v67 = (v103[0].__r_.__value_.__r.__words[0] + 8);
      }

      else
      {
        v67 = 0;
      }

      v78 = v67;
      v79 = v103[0].__r_.__value_.__l.__size_;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3321888768;
      v76[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE5startEb_block_invoke_2;
      v76[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
      v76[4] = a1;
      v76[5] = v106;
      v77 = v107;
      if (v107)
      {
        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MediaSessionDriver::startTimerForRequest((a1 + 8), v66 != 2, &v78, v76);
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      v68 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
      v72[0] = 0;
      v75 = 0;
      v69 = ims::debug(v68, v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v69 + 8), "Starting session ", 17);
      *(v69 + 17) = 0;
      v70 = (*(*v4 + 176))(a1 + 8);
      MEMORY[0x1E69233B0](*(v69 + 8), v70);
      *(v69 + 17) = 0;
      (*(*v69 + 64))(v69, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v69 + 17) = 0;
      if (v75 == 1 && v74 < 0)
      {
        operator delete(v73);
      }

      if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103[0].__r_.__value_.__l.__data_);
      }

      [*(a1 + 360) start];
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      size = v107;
      if (v107)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
    v58 = std::string::basic_string[abi:ne200100]<0>(v103, "avc.rtp.session");
    v92[0] = 0;
    v95 = 0;
    v59 = ims::error(v58, v92);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v59 + 8), "_activeAvcSessionConfig is null", 31);
    *(v59 + 17) = 0;
    (*(*v59 + 64))(v59, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v59 + 17) = 0;
    if (v95 == 1 && v94 < 0)
    {
      operator delete(v93);
    }

    if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103[0].__r_.__value_.__l.__data_);
    }

    v60 = *(a1 + 24);
    if (v60)
    {
      v61 = std::__shared_weak_count::lock(v60);
      if (v61)
      {
        v62 = v61;
        v63 = *(a1 + 16);
        if (v63)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v90);
          (*(*v63 + 24))(v63, &v90, 9);
          if (v91)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v91);
          }
        }

        size = v62;
        goto LABEL_121;
      }
    }
  }

LABEL_122:
  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_1E4FF058C(_Unwind_Exception *a1)
{
  ims::AccessNetwork::~AccessNetwork((v2 - 208));
  v4 = *(v2 - 128);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE5startEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 24))(v6, &v8, 2);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE5startEb_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 24))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF0904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCTextStream>::stop(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v34, "avc.rtp.session");
  v30[0] = 0;
  v33 = 0;
  v3 = ims::debug(v2, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "stop", 4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v36 < 0)
  {
    operator delete(v34);
  }

  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 353) == 1)
  {
    v7 = std::string::basic_string[abi:ne200100]<0>(&v34, "avc.rtp.session");
    v26[0] = 0;
    v29 = 0;
    v8 = ims::debug(v7, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Stopping session ", 17);
    *(v8 + 17) = 0;
    v9 = (*(*v4 + 176))(a1 + 8);
    MEMORY[0x1E69233B0](*(v8 + 8), v9);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }

    *(a1 + 355) = 0;
    v34 = 0;
    v35 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v34);
    v10 = (*(*(a1 + 8) + 104))(a1 + 8);
    RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(v23, a1);
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    if (v23[0])
    {
      v12 = v23[0] + 8;
    }

    else
    {
      v12 = 0;
    }

    v24 = v12;
    v25 = v23[1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE4stopEb_block_invoke;
    v21[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
    v21[4] = a1;
    v21[5] = v34;
    v22 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((a1 + 8), v11, &v24, v21);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    [*(a1 + 360) stop];
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }
  }

  else
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(&v34, "avc.rtp.session");
    v17[0] = 0;
    v20 = 0;
    v14 = ims::warn(v13, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Stop called on session ", 23);
    *(v14 + 17) = 0;
    v15 = (*(*v4 + 176))(v4);
    MEMORY[0x1E69233B0](*(v14 + 8), v15);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " which isn't active. Ignoring.", 30);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }
  }

  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_1E4FF0D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v42 = *(v40 - 64);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE4stopEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF0ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCTextStream>::setDirection(uint64_t a1, int *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v74, "avc.rtp.session");
  v70[0] = 0;
  v73 = 0;
  v5 = ims::debug(v4, v70);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setDirection", 12);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  v6 = a1 + 8;
  v7 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v5 + 8), v7);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v73 == 1 && v72 < 0)
  {
    operator delete(v71);
  }

  if (v76 < 0)
  {
    operator delete(v74);
  }

  v8 = *a2;
  if (*a2 == 2)
  {
    v9 = 0;
    v10 = 2;
  }

  else if (v8 == 4)
  {
    v9 = 0;
    v10 = 0;
  }

  else if (v8 == 3)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v9 = 1;
    v10 = 3;
  }

  v11 = [*(a1 + 360) direction];
  *(a1 + 104) = *a2;
  v12 = std::string::basic_string[abi:ne200100]<0>(&v74, "avc.rtp.session");
  v66[0] = 0;
  v69 = 0;
  v13 = ims::debug(v12, v66);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Setting direction to ", 21);
  *(v13 + 17) = 0;
  ims::toString<MediaDirection>((a1 + 104), &__p);
  LoggableString::LoggableString(&v65, &__p);
  (*(*v13 + 40))(v13, &v65);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " for session ", 13);
  *(v13 + 17) = 0;
  v14 = (*(*v6 + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v13 + 8), v14);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v69 == 1 && v68 < 0)
  {
    operator delete(v67);
  }

  if (v76 < 0)
  {
    operator delete(v74);
  }

  if (*(a1 + 353) != 1)
  {
    if (*(a1 + 368))
    {
      v20 = std::string::basic_string[abi:ne200100]<0>(&v74, "avc.rtp.session");
      v46[0] = 0;
      v49 = 0;
      v21 = ims::debug(v20, v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Setting direction on session configuration for session ", 55);
      *(v21 + 17) = 0;
      v22 = (*(*v6 + 176))(a1 + 8);
      MEMORY[0x1E69233B0](*(v21 + 8), v22);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v49 == 1 && v48 < 0)
      {
        operator delete(v47);
      }

      if (v76 < 0)
      {
        operator delete(v74);
      }

      [*(a1 + 368) setDirection:v10];
      [*(a1 + 368) setRtpTimeOutEnabled:*(a1 + 104) == 1];
      [*(a1 + 368) setRtcpTimeOutEnabled:*(a1 + 104) != 1];
      v23 = *(a1 + 104) != 1 || *(a1 + 304) != 0;
      [*(a1 + 368) setRtcpEnabled:v23];
      v26 = 308;
      if (*(a1 + 104) == 1)
      {
        v26 = 304;
      }

      LODWORD(v25) = *(a1 + v26);
      [*(a1 + 368) setRtcpSendInterval:v25];
    }

    v27 = *(a1 + 24);
    if (!v27)
    {
      return 1;
    }

    v28 = std::__shared_weak_count::lock(v27);
    if (!v28)
    {
      return 1;
    }

    v17 = v28;
    v29 = *(a1 + 16);
    if (!v29)
    {
      goto LABEL_49;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v44);
    (*(*v29 + 32))(v29, &v44, 0);
    v19 = v45;
    if (!v45)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v10 != [*(a1 + 360) direction])
  {
    v24 = [*(a1 + 360) direction];
    [*(a1 + 360) setDirection:v10];
    [*(a1 + 368) setDirection:v10];
    if (v24)
    {
      if (*a2 == 4)
      {
        [*(a1 + 360) pause];
        return 1;
      }

      v35 = v9 ^ 1;
      if (v11 == 3)
      {
        v35 = 1;
      }

      if (v35)
      {
        v74 = 0;
        v75 = 0;
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
        v43 = a1 + *(*a1 - 24);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3321888768;
        v50[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE12setDirectionERK14MediaDirectionb_block_invoke_3;
        v50[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
        v50[4] = a1;
        v50[5] = v74;
        v51 = v75;
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ctu::SharedSynchronizable<RTPSharedPointerBase>::execute_wrapped((v43 + 8), v50);
        v39 = v51;
        if (!v51)
        {
LABEL_92:
          v30 = v75;
          if (!v75)
          {
            return 1;
          }

          goto LABEL_50;
        }
      }

      else
      {
        *(a1 + 356) = 1;
        v74 = 0;
        v75 = 0;
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
        v36 = (*(*(a1 + 8) + 104))(a1 + 8);
        RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(&v65.__r_.__value_.__l.__data_, a1);
        if (v36 == 2)
        {
          v37 = 2;
        }

        else
        {
          v37 = 3;
        }

        if (v65.__r_.__value_.__r.__words[0])
        {
          v38 = (v65.__r_.__value_.__r.__words[0] + 8);
        }

        else
        {
          v38 = 0;
        }

        v54 = v38;
        size = v65.__r_.__value_.__l.__size_;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3321888768;
        v52[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE12setDirectionERK14MediaDirectionb_block_invoke_2;
        v52[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
        v52[4] = a1;
        v52[5] = v74;
        v53 = v75;
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MediaSessionDriver::startTimerForRequest((a1 + 8), v37, &v54, v52);
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }

        [*(a1 + 360) stop];
        v39 = v53;
        if (!v53)
        {
          goto LABEL_92;
        }
      }

LABEL_91:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      goto LABEL_92;
    }

    if (AVCRTPStackController::audioSessionCount(*(a1 + 384)) >= 2)
    {
      *(a1 + 356) = 1;
    }

    if (*a2 != 4)
    {
      if (*(a1 + 356) != 1)
      {
        [*(a1 + 360) resume];
        return 1;
      }

      v74 = 0;
      v75 = 0;
      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v74);
      v40 = (*(*(a1 + 8) + 104))(a1 + 8);
      RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(&v65.__r_.__value_.__l.__data_, a1);
      if (v40 == 2)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }

      if (v65.__r_.__value_.__r.__words[0])
      {
        v42 = (v65.__r_.__value_.__r.__words[0] + 8);
      }

      else
      {
        v42 = 0;
      }

      v60 = v42;
      v61 = v65.__r_.__value_.__l.__size_;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3321888768;
      v58[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE12setDirectionERK14MediaDirectionb_block_invoke;
      v58[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
      v58[4] = a1;
      v58[5] = v74;
      v59 = v75;
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MediaSessionDriver::startTimerForRequest((a1 + 8), v41, &v60, v58);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      [*(a1 + 360) stop];
      v39 = v59;
      if (!v59)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    v32 = *(a1 + 24);
    if (!v32)
    {
      return 1;
    }

    v33 = std::__shared_weak_count::lock(v32);
    if (!v33)
    {
      return 1;
    }

    v17 = v33;
    v34 = *(a1 + 16);
    if (!v34)
    {
      goto LABEL_49;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v56);
    (*(*v34 + 24))(v34, &v56, 0);
    v19 = v57;
    if (!v57)
    {
      goto LABEL_49;
    }

LABEL_48:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_49:
    v30 = v17;
LABEL_50:
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    return 1;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_49;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v62);
      (*(*v18 + 24))(v18, &v62, 0);
      v19 = v63;
      if (!v63)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  return 1;
}

void sub_1E4FF17F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE12setDirectionERK14MediaDirectionb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF1A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE12setDirectionERK14MediaDirectionb_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF1AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE12setDirectionERK14MediaDirectionb_block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 24))(v6, &v8, 0);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF1B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void AVCRTPSession<AVCTextStream>::setConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v80, "avc.rtp.session");
  v76[0] = 0;
  v79 = 0;
  v7 = ims::debug(v6, v76);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "setConfiguration", 16);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  v8 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v79 == 1 && v78 < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = a2[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*(a1 + 8) + 104))(a1 + 8);
  if (v13 == 2)
  {
    if (*(v12 + 584))
    {
      v14 = v12 + 152;
      goto LABEL_19;
    }
  }

  else if (v13 == 6 && (*(v12 + 1856) & 1) != 0)
  {
    v14 = v12 + 1496;
    goto LABEL_19;
  }

  if (*(v12 + 1328))
  {
    v14 = v12 + 1032;
LABEL_19:
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      v17 = *(v12 + 128);
      if (v17)
      {
        v17 = std::__shared_weak_count::lock(v17);
        v18 = v17;
        if (v17)
        {
          v17 = *(v12 + 120);
        }
      }

      else
      {
        v18 = 0;
      }

      v21 = SipStack::prefs(v17);
      v22 = ImsPrefs::IgnoreLocalhostRemoteRtpAddress(v21);
      v23 = v22;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        if (!v23)
        {
LABEL_44:
          IpAddress::asString(&v80);
        }
      }

      else if (!v22)
      {
        goto LABEL_44;
      }

      IpAddress::asString(&v80);
    }

    if ((*(a1 + 423) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 408))
      {
        goto LABEL_41;
      }
    }

    else if (!*(a1 + 423))
    {
LABEL_41:
      v24 = std::string::basic_string[abi:ne200100]<0>(&v80, "avc.rtp.session");
      v68[0] = 0;
      v71 = 0;
      v25 = ims::error(v24, v68);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "No remote connection found for session", 38);
      *(v25 + 17) = 0;
      (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v25 + 17) = 0;
      if (v71 != 1 || (v70 & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      v26 = v69;
LABEL_83:
      operator delete(v26);
LABEL_84:
      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80);
      }

      v55 = 1073741825;
      goto LABEL_96;
    }

    if (!*(a1 + 368))
    {
      v53 = std::string::basic_string[abi:ne200100]<0>(&v80, "avc.rtp.session");
      v64[0] = 0;
      v67 = 0;
      v54 = ims::error(v53, v64);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v54 + 8), "AVC config is null. Was supposed to be allocated in Audio or RTT session.", 73);
      *(v54 + 17) = 0;
      (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v54 + 17) = 0;
      if (v67 != 1 || (v66 & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      v26 = v65;
      goto LABEL_83;
    }

    v27 = objc_alloc(MEMORY[0x1E696AEC0]);
    v28 = (a1 + 400);
    if (*(a1 + 423) < 0)
    {
      v28 = *v28;
    }

    v29 = [v27 initWithUTF8String:v28];
    v30 = [*(a1 + 368) remoteAddress];
    [v30 setIp:v29];

    v31 = *(a1 + 424);
    v32 = [*(a1 + 368) remoteAddress];
    [v32 setIsIPv6:v31];

    v33 = [*(a1 + 368) remoteAddress];
    [v33 setInterfaceName:&stru_1F5EFB6F8];

    v34 = *(v14 + 26);
    v35 = [*(a1 + 368) remoteAddress];
    [v35 setPort:v34];

    v36 = (*(a1 + 104) - 2);
    if (v36 >= 3)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2 - v36;
    }

    [*(a1 + 368) setDirection:v37];
    v38 = std::string::basic_string[abi:ne200100]<0>(&v80, "avc.rtp.session");
    v60[0] = 0;
    v63 = 0;
    v39 = ims::debug(v38, v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "direction set to ", 17);
    *(v39 + 17) = 0;
    ims::toString<MediaDirection>((a1 + 104), &v59);
    LoggableString::LoggableString(&v84, &v59);
    (*(*v39 + 40))(v39, &v84);
    (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v39 + 17) = 0;
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(v61);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    if (*(v14 + 184) == 1)
    {
      v40 = 2;
      if (*(v14 + 179))
      {
        v40 = 3;
      }

      if (*(v14 + 177))
      {
        v41 = v40;
      }

      else
      {
        v41 = *(v14 + 179);
      }

      [*(a1 + 368) setSRTPCipherSuite:v41];
      if (*(v14 + 178))
      {
        v42 = 3;
      }

      else
      {
        v42 = 1;
      }

      [*(a1 + 368) setSRTCPCipherSuite:v42];
      v43 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v14 + 152) length:*(v14 + 160) - *(v14 + 152)];
      [*(a1 + 368) setSendMasterKey:v43];
    }

    if (*(v14 + 272) == 1)
    {
      v44 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v14 + 240) length:*(v14 + 248) - *(v14 + 240)];
      [*(a1 + 368) setReceiveMasterKey:v44];
    }

    v45 = *(a1 + 368);
    v46 = v45;
    if (v45)
    {
      if (*(a1 + 376))
      {
        v47 = [v45 description];
        v48 = [*(a1 + 376) description];
        v49 = [v47 isEqualToString:v48];
        v50 = std::string::basic_string[abi:ne200100]<0>(&v84, "avc.rtp.session");
        LOBYTE(v80) = 0;
        v83 = 0;
        v51 = ims::debug(v50, &v80);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "isConfigEqualToActiveConfig", 27);
        *(v51 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), " [sessionId=", 12);
        *(v51 + 17) = 0;
        MEMORY[0x1E69233B0](*(v51 + 8), *(a1 + 32));
        *(v51 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), " isEqual=", 9);
        *(v51 + 17) = 0;
        MEMORY[0x1E6923320](*(v51 + 8), v49);
        *(v51 + 17) = 0;
        (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v51 + 17) = 0;
        if (v83 == 1 && v82 < 0)
        {
          operator delete(v81);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        v52 = v49 ^ 1;
LABEL_95:

        v55 = 0;
        *(a1 + 356) = v52;
LABEL_96:
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *a3 = &unk_1F5EBDEF8;
        *(a3 + 8) = &_bambiDomain;
        *(a3 + 16) = v55;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        goto LABEL_98;
      }

      v58 = std::string::basic_string[abi:ne200100]<0>(&v84, "avc.rtp.session");
      LOBYTE(v80) = 0;
      v83 = 0;
      v57 = ims::warn(v58, &v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "isConfigEqualToActiveConfig", 27);
      *(v57 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " [sessionId=", 12);
      *(v57 + 17) = 0;
      MEMORY[0x1E69233B0](*(v57 + 8), *(a1 + 32));
      *(v57 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " activeAvcSessionConfig is null", 31);
      *(v57 + 17) = 0;
      (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      v56 = std::string::basic_string[abi:ne200100]<0>(&v84, "avc.rtp.session");
      LOBYTE(v80) = 0;
      v83 = 0;
      v57 = ims::warn(v56, &v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "isConfigEqualToActiveConfig", 27);
      *(v57 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " [sessionId=", 12);
      *(v57 + 17) = 0;
      MEMORY[0x1E69233B0](*(v57 + 8), *(a1 + 32));
      *(v57 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), " config is null", 15);
      *(v57 + 17) = 0;
      (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *(v57 + 17) = 0;
    if (v83 == 1 && v82 < 0)
    {
      operator delete(v81);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    v52 = 1;
    goto LABEL_95;
  }

  v19 = std::string::basic_string[abi:ne200100]<0>(&v80, "avc.rtp.session");
  v72[0] = 0;
  v75 = 0;
  v20 = ims::warn(v19, v72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Not enough information to configure with", 40);
  *(v20 + 17) = 0;
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  if (v75 == 1 && v74 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741825;
LABEL_98:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1E4FF2740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCTextStream>::configure(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v40, "avc.rtp.session");
  v36[0] = 0;
  v39 = 0;
  v3 = ims::debug(v2, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "configure", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = a1 + 8;
  v5 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " _reconfigureNeeded=", 20);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(a1 + 356));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

  if (*(a1 + 353) == 1 && *(a1 + 356) == 1)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v40, "avc.rtp.session");
    v32[0] = 0;
    v35 = 0;
    v7 = ims::debug(v6, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Reconfiguring session ", 22);
    *(v7 + 17) = 0;
    v8 = (*(*v4 + 176))(a1 + 8);
    MEMORY[0x1E69233B0](*(v7 + 8), v8);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }

    *(a1 + 355) = 1;
    v40 = 0;
    v41 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v40);
    v9 = (*(*(a1 + 8) + 104))(a1 + 8);
    RTPSharedPointerBase::getShared<AVCRTPSession<AVCTextStream>>(v29, a1);
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v29[0])
    {
      v11 = v29[0] + 8;
    }

    else
    {
      v11 = 0;
    }

    v30 = v11;
    v31 = v29[1];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3321888768;
    v27[2] = ___ZN13AVCRTPSessionI13AVCTextStreamE9configureEb_block_invoke;
    v27[3] = &__block_descriptor_56_ea8_40c49_ZTSNSt3__110shared_ptrI21MediaSessionInterfaceEE_e5_v8__0l;
    v27[4] = a1;
    v27[5] = v40;
    v28 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionDriver::startTimerForRequest((a1 + 8), v10, &v30, v27);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    [*(a1 + 360) stop];
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v12 = v41;
    if (!v41)
    {
      return 1;
    }

LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    return 1;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(&v40, "avc.rtp.session");
  v23[0] = 0;
  v26 = 0;
  v14 = ims::debug(v13, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Ignoring configure request for session ", 39);
  *(v14 + 17) = 0;
  v15 = (*(*v4 + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v14 + 8), v15);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

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
        RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v21);
        (*(*v19 + 16))(v19, &v21, 0);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      v12 = v18;
      goto LABEL_38;
    }
  }

  return 1;
}

void sub_1E4FF2E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void ___ZN13AVCRTPSessionI13AVCTextStreamE9configureEb_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 16);
      if (v6)
      {
        v7 = a1[6];
        v8 = a1[5];
        v9 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 32))(v6, &v8, 9);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4FF2FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPSession<AVCTextStream>::active(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "avc.rtp.session");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "active", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " active=", 8);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(a1 + 353));
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

  return *(a1 + 353);
}

void sub_1E4FF313C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t AVCRTPSession<AVCTextStream>::paused(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "avc.rtp.session");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "paused", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))();
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " paused=", 8);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(a1 + 354));
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

  return *(a1 + 354);
}

void sub_1E4FF32DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void AVCRTPSession<AVCTextStream>::pauseAVCSession(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v17, "avc.rtp.session");
  v13[0] = 0;
  v16 = 0;
  v3 = ims::debug(v2, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "pauseAVCSession", 15);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = std::string::basic_string[abi:ne200100]<0>(v17, "avc.rtp.session");
  v9[0] = 0;
  v12 = 0;
  v7 = ims::debug(v6, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Pausing session ", 16);
  *(v7 + 17) = 0;
  v8 = (*(*(a1 + 8) + 176))(a1 + 8);
  MEMORY[0x1E69233B0](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  [*(a1 + 360) pause];
  objc_autoreleasePoolPop(v5);
}

void sub_1E4FF3550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *AVCRTPSession<AVCTextStream>::toTimerIdString@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = "AUDIO_SESSION_STOP";
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_8;
      }

      v2 = "TEXT_SESSION_STOP";
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = "TEXT_SESSION_START";
        goto LABEL_11;
      }

LABEL_8:
      ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
    }

    v2 = "AUDIO_SESSION_START";
  }

LABEL_11:

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void ctu::SharedSynchronizable<RTPSharedPointerBase>::execute_wrapped(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_0;
  block[3] = &unk_1F5EE7430;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

uint64_t __copy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrIK20RTPSharedPointerBaseEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrIK20RTPSharedPointerBaseEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _GLOBAL__sub_I_AVCRTPSession_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void MediaSessionQueue::initialize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t *a7)
{
  v8 = a1[16];
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = a1[15];
      if (v16)
      {
        v17 = std::string::basic_string[abi:ne200100]<0>(v38, "rtp.queue");
        v27 = a6;
        v34[0] = 0;
        v37 = 0;
        v18 = ims::debug(v17, v34);
        v19 = *(*(*a1 - 8) + 8);
        v20 = strlen((v19 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), v19 & 0x7FFFFFFFFFFFFFFFLL, v20);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "::", 2);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "initialize", 10);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " [queuedInterface=", 18);
        *(v18 + 17) = 0;
        MEMORY[0x1E6923310](*(v18 + 8), v16);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " sessionId=", 11);
        *(v18 + 17) = 0;
        v21 = (*(*v16 + 176))(v16);
        MEMORY[0x1E69233B0](*(v18 + 8), v21);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "]", 1);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v37 == 1 && v36 < 0)
        {
          operator delete(__p);
        }

        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        v22 = a7[1];
        v32 = *a7;
        v33 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v16 + 16))(v16, a2, a3, a4, a5, v27, &v32);
        if (v33)
        {
          std::__shared_weak_count::__release_weak(v33);
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        return;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = std::string::basic_string[abi:ne200100]<0>(v38, "rtp.queue");
  v28[0] = 0;
  v31 = 0;
  v24 = ims::warn(v23, v28);
  v25 = *(*(*a1 - 8) + 8);
  v26 = strlen((v25 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), v25 & 0x7FFFFFFFFFFFFFFFLL, v26);
  *(v24 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "::", 2);
  *(v24 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "initialize", 10);
  *(v24 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), " [queuedInterface=0x0]", 22);
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v15)
  {
    goto LABEL_20;
  }
}

void sub_1E4FF3B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

uint64_t MediaSessionQueue::setDirection(_DWORD *a1, _DWORD *a2)
{
  a1[34] = *a2;
  (*(*a1 + 232))(a1, 4);
  return 1;
}

uint64_t non-virtual thunk toMediaSessionQueue::setDirection(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 - 8);
  *(a1 + 128) = *a2;
  (*(v2 + 232))();
  return 1;
}

double MediaSessionQueue::setConfiguration@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[16];
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      v9 = a1[15];
      if (v9)
      {
        v10 = std::string::basic_string[abi:ne200100]<0>(v31, "rtp.queue");
        v27[0] = 0;
        v30 = 0;
        v11 = ims::debug(v10, v27);
        v12 = *(*(*a1 - 8) + 8);
        v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "setConfiguration", 16);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=", 12);
        *(v11 + 17) = 0;
        v14 = (*(*v9 + 176))(v9);
        MEMORY[0x1E69233B0](*(v11 + 8), v14);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
        *(v11 + 17) = 0;
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        if (v30 == 1 && v29 < 0)
        {
          operator delete(__p);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }

        v15 = a2[1];
        v25 = *a2;
        v26 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 56))(v9, &v25);
        if (v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return result;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v17 = std::string::basic_string[abi:ne200100]<0>(v31, "rtp.queue");
  v21[0] = 0;
  v24 = 0;
  v18 = ims::warn(v17, v21);
  v19 = *(*(*a1 - 8) + 8);
  v20 = strlen((v19 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), v19 & 0x7FFFFFFFFFFFFFFFLL, v20);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "::", 2);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "setConfiguration", 16);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " [queuedInterface=0x0]", 22);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0x40000000;
  return result;
}

void sub_1E4FF415C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

BOOL MediaSessionQueue::pop(MediaSessionQueue *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v70, "rtp.queue");
  v66[0] = 0;
  v69 = 0;
  v3 = ims::debug(v2, v66);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*this - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "pop", 3);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [actionQueueSize=", 18);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923370](*(v4 + 8), *(this + 14));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v69 == 1 && v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  v8 = *(this + 14);
  if (!v8)
  {
    return 0;
  }

  v9 = *(this + 13);
  v10 = *(v9 + 4);
  v12 = v9[3];
  v11 = v9[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = *(this + 13);
    v8 = *(this + 14);
    v13 = v9[4];
  }

  else
  {
    v13 = 0;
  }

  v16 = *v9;
  v15 = v9[1];
  *(v16 + 8) = v15;
  *v15 = v16;
  *(this + 14) = v8 - 1;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(v9);
  if (v11)
  {
    v17 = std::__shared_weak_count::lock(v11);
    if (!v17)
    {
LABEL_56:
      v14 = *(this + 14) != 0;
LABEL_57:
      std::__shared_weak_count::__release_weak(v11);
      return v14;
    }

    v18 = v17;
    if (!v12)
    {
      goto LABEL_55;
    }

    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_55;
        }

        v25 = std::string::basic_string[abi:ne200100]<0>(v70, "rtp.queue");
        v58[0] = 0;
        v61 = 0;
        v26 = ims::debug(v25, v58);
        v27 = *(*(*this - 8) + 8);
        v28 = strlen((v27 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), v27 & 0x7FFFFFFFFFFFFFFFLL, v28);
        *(v26 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "::", 2);
        *(v26 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "pop", 3);
        *(v26 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " [sessionId=", 12);
        *(v26 + 17) = 0;
        v29 = (*(*v12 + 176))(v12);
        MEMORY[0x1E69233B0](*(v26 + 8), v29);
        *(v26 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "]", 1);
        *(v26 + 17) = 0;
        (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v26 + 17) = 0;
        if (v61 == 1 && v60 < 0)
        {
          operator delete(v59);
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        v24 = (*(*v12 + 24))(v12, 1);
      }

      else
      {
        v40 = std::string::basic_string[abi:ne200100]<0>(v70, "rtp.queue");
        v62[0] = 0;
        v65 = 0;
        v41 = ims::debug(v40, v62);
        v42 = *(*(*this - 8) + 8);
        v43 = strlen((v42 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), v42 & 0x7FFFFFFFFFFFFFFFLL, v43);
        *(v41 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "::", 2);
        *(v41 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "pop", 3);
        *(v41 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), " [sessionId=", 12);
        *(v41 + 17) = 0;
        v44 = (*(*v12 + 176))(v12);
        MEMORY[0x1E69233B0](*(v41 + 8), v44);
        *(v41 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "]", 1);
        *(v41 + 17) = 0;
        (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v41 + 17) = 0;
        if (v65 == 1 && v64 < 0)
        {
          operator delete(v63);
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        v24 = (*(*v12 + 64))(v12, 1);
      }
    }

    else
    {
      switch(v10)
      {
        case 2:
          v30 = std::string::basic_string[abi:ne200100]<0>(v70, "rtp.queue");
          v54[0] = 0;
          v57 = 0;
          v31 = ims::debug(v30, v54);
          v32 = *(*(*this - 8) + 8);
          v33 = strlen((v32 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), v32 & 0x7FFFFFFFFFFFFFFFLL, v33);
          *(v31 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "::", 2);
          *(v31 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "pop", 3);
          *(v31 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " [sessionId=", 12);
          *(v31 + 17) = 0;
          v34 = (*(*v12 + 176))(v12);
          MEMORY[0x1E69233B0](*(v31 + 8), v34);
          *(v31 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "]", 1);
          *(v31 + 17) = 0;
          (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v31 + 17) = 0;
          if (v57 == 1 && v56 < 0)
          {
            operator delete(v55);
          }

          if (v71 < 0)
          {
            operator delete(v70[0]);
          }

          v24 = (*(*v12 + 32))(v12, 1);
          break;
        case 3:
          v35 = std::string::basic_string[abi:ne200100]<0>(v70, "rtp.queue");
          v50[0] = 0;
          v53 = 0;
          v36 = ims::debug(v35, v50);
          v37 = *(*(*this - 8) + 8);
          v38 = strlen((v37 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), v37 & 0x7FFFFFFFFFFFFFFFLL, v38);
          *(v36 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "::", 2);
          *(v36 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "pop", 3);
          *(v36 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), " [sessionId=", 12);
          *(v36 + 17) = 0;
          v39 = (*(*v12 + 176))(v12);
          MEMORY[0x1E69233B0](*(v36 + 8), v39);
          *(v36 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "]", 1);
          *(v36 + 17) = 0;
          (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v36 + 17) = 0;
          if (v53 == 1 && v52 < 0)
          {
            operator delete(v51);
          }

          if (v71 < 0)
          {
            operator delete(v70[0]);
          }

          v24 = (*(*v12 + 40))(v12, 1);
          break;
        case 4:
          v19 = std::string::basic_string[abi:ne200100]<0>(v70, "rtp.queue");
          v46[0] = 0;
          v49 = 0;
          v20 = ims::debug(v19, v46);
          v21 = *(*(*this - 8) + 8);
          v22 = strlen((v21 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), v21 & 0x7FFFFFFFFFFFFFFFLL, v22);
          *(v20 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "::", 2);
          *(v20 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "pop", 3);
          *(v20 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " [sessionId=", 12);
          *(v20 + 17) = 0;
          v23 = (*(*v12 + 176))(v12);
          MEMORY[0x1E69233B0](*(v20 + 8), v23);
          *(v20 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "]", 1);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (v49 == 1 && v48 < 0)
          {
            operator delete(__p);
          }

          if (v71 < 0)
          {
            operator delete(v70[0]);
          }

          v24 = (*(*v12 + 48))(v12, this + 136, 1);
          break;
        default:
LABEL_55:
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          goto LABEL_56;
      }
    }

    if ((v24 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      v14 = 0;
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  return *(this + 14) != 0;
}

void sub_1E4FF4CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  std::__shared_weak_count::__release_weak(v49);
  _Unwind_Resume(a1);
}

uint64_t MediaSessionQueue::flush(MediaSessionQueue *this)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.queue");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(v12, v8);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = v2;
  v4 = *(*(*this - 8) + 8);
  v5 = *(v2 + 8);
  v6 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4 & 0x7FFFFFFFFFFFFFFFLL, v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "flush", 5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [actionQueueSize=", 18);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923370](*(v3 + 8), *(this + 14));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  do
  {
    result = (*(*this + 184))(this);
  }

  while ((result & 1) != 0);
  return result;
}

void sub_1E4FF4F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionQueue::clear(MediaSessionQueue *this)
{
  std::string::basic_string[abi:ne200100]<0>(v11, "rtp.queue");
  v7[0] = 0;
  v10 = 0;
  v2 = ims::debug(v11, v7);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = v2;
  v4 = *(*(*this - 8) + 8);
  v5 = *(v2 + 8);
  v6 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4 & 0x7FFFFFFFFFFFFFFFLL, v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "clear", 5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [actionQueueSize=", 18);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923370](*(v3 + 8), *(this + 14));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::__list_imp<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::clear(this + 12);
}

void sub_1E4FF510C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t MediaSessionQueue::contains(void *a1, unsigned int a2)
{
  v3 = a1[16];
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a1[15];
  if (!v7 || (v8 = a1[13], v8 == a1 + 12))
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  while (1)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      break;
    }

LABEL_11:
    v8 = *(v8 + 8);
    if (v8 == a1 + 12)
    {
      goto LABEL_12;
    }
  }

  v10 = *(v8 + 24);
  v11 = *(v8 + 16);
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v11 != a2 || (v12 = std::__shared_weak_count::lock(v9)) == 0)
  {
LABEL_10:
    std::__shared_weak_count::__release_weak(v9);
    goto LABEL_11;
  }

  v13 = v12;
  if (v7 != v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(v28, "rtp.queue");
  v24[0] = 0;
  v27 = 0;
  v16 = ims::debug(v28, v24);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "contains", 8);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Found [action=", 14);
  *(v17 + 17) = 0;
  (*(*v17 + 32))(v17, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " sessionId=", 11);
  *(v17 + 17) = 0;
  v21 = (*(*v7 + 176))(v7);
  MEMORY[0x1E69233B0](*(v17 + 8), v21);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "]", 1);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  std::__shared_weak_count::__release_weak(v9);
  v14 = 1;
LABEL_13:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v14;
}

void sub_1E4FF5410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  std::__shared_weak_count::__release_weak(v32);
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

_BYTE *anonymous namespace::nameForAction(_BYTE *a1, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = "setDirection";
  }

  else
  {
    v2 = off_1E876BDA0[a2];
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void MediaSessionQueue::queueAction(void *a1, uint64_t a2, int a3)
{
  v5 = a1[16];
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = a1[15];
      if (v8)
      {
        v9 = std::string::basic_string[abi:ne200100]<0>(v55, "rtp.queue");
        v51[0] = 0;
        v54 = 0;
        v10 = ims::debug(v9, v51);
        v11 = *(*(*a1 - 8) + 8);
        v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "queueAction", 11);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [action=", 9);
        *(v10 + 17) = 0;
        (*(*v10 + 32))(v10, v49);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " sessionId=", 11);
        *(v10 + 17) = 0;
        v13 = (*(*v8 + 176))(v8);
        MEMORY[0x1E69233B0](*(v10 + 8), v13);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " actionQueueSize=", 17);
        *(v10 + 17) = 0;
        MEMORY[0x1E6923370](*(v10 + 8), a1[14]);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if (v54 == 1 && v53 < 0)
        {
          operator delete(v52);
        }

        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        if (a1[14] && (*(*a1 + 208))(a1, 1))
        {
          v14 = std::string::basic_string[abi:ne200100]<0>(v55, "rtp.queue");
          v45[0] = 0;
          v48 = 0;
          v15 = ims::debug(v14, v45);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Not queuing request for terminated sessionId=", 45);
          *(v15 + 17) = 0;
          v16 = (*(*v8 + 176))(v8);
          MEMORY[0x1E69233B0](*(v15 + 8), v16);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (v48 == 1 && v47 < 0)
          {
            operator delete(__p);
          }

          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          goto LABEL_26;
        }

        v21 = (a1 + 12);
        if ((a2 & 0xFFFFFFFE) == 2)
        {
          if (a2 == 2)
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          for (i = a1[13]; i != v21; i = *(i + 8))
          {
            if (*(i + 16) == v22)
            {
              v24 = *(i + 32);
              if (v24)
              {
                v25 = std::__shared_weak_count::lock(v24);
                if (v25)
                {
                  v26 = v25;
                  if (v8 == *(i + 24))
                  {
                    v30 = std::string::basic_string[abi:ne200100]<0>(v55, "rtp.queue");
                    v41[0] = 0;
                    v44 = 0;
                    v31 = ims::debug(v30, v41);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Complementary action found and removed instead of inserting new action [action=", 79);
                    *(v31 + 17) = 0;
                    (*(*v31 + 32))(v31, v49);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " sessionId=", 11);
                    *(v31 + 17) = 0;
                    v32 = (*(*v8 + 176))(v8);
                    MEMORY[0x1E69233B0](*(v31 + 8), v32);
                    *(v31 + 17) = 0;
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "]", 1);
                    *(v31 + 17) = 0;
                    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v31 + 17) = 0;
                    if (v50 < 0)
                    {
                      operator delete(v49[0]);
                    }

                    if (v44 == 1 && v43 < 0)
                    {
                      operator delete(v42);
                    }

                    if (v56 < 0)
                    {
                      operator delete(v55[0]);
                    }

                    std::list<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::erase(v21, i);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                    goto LABEL_26;
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                }
              }
            }
          }
        }

        if (((*(*a1 + 208))(a1, a2) & 1) == 0)
        {
          v27 = std::string::basic_string[abi:ne200100]<0>(v55, "rtp.queue");
          v37[0] = 0;
          v40 = 0;
          v28 = ims::info(v27, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "Adding [action=", 15);
          *(v28 + 17) = 0;
          (*(*v28 + 32))(v28, v49);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), " sessionId=", 11);
          *(v28 + 17) = 0;
          v29 = (*(*v8 + 176))(v8);
          MEMORY[0x1E69233B0](*(v28 + 8), v29);
          *(v28 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "]", 1);
          *(v28 + 17) = 0;
          (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v28 + 17) = 0;
          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (v40 == 1 && v39 < 0)
          {
            operator delete(v38);
          }

          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (a3)
          {
            operator new();
          }

          operator new();
        }

LABEL_25:
        if (!v7)
        {
          return;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = std::string::basic_string[abi:ne200100]<0>(v55, "rtp.queue");
  v33[0] = 0;
  v36 = 0;
  v18 = ims::warn(v17, v33);
  v19 = *(*(*a1 - 8) + 8);
  v20 = strlen((v19 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), v19 & 0x7FFFFFFFFFFFFFFFLL, v20);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "::", 2);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "queueAction", 11);
  *(v18 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " [action=", 9);
  *(v18 + 17) = 0;
  (*(*v18 + 32))(v18, v49);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " queuedInterface=0x0]", 21);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if ((v56 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v55[0]);
  if (v7)
  {
LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}