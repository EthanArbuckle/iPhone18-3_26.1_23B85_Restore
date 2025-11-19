void sub_1E4D9EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, xpc_object_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, xpc_object_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, xpc_object_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
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

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  _Unwind_Resume(a1);
}

uint64_t SipMessageEncodingMap::createHeader<SipWWWAuthenticateHeader>(void *a1)
{
  v1 = SipMessageEncodingMap::headerPrototypeWithName(a1, "WWW-Authenticate");
  if (!v1)
  {
    return 0;
  }

  v2 = **v1;
  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 32);

  return v4();
}

void SipAuthPatClient::startAuthenticatedRegistration(SipAuthPatClient *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 19);
  v3 = *(this + 5);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 16))(__p, this);
      if (v8 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 141558275;
      v10 = 1752392040;
      v11 = 2081;
      v12 = v4;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sstart authenticated registration", buf, 0x16u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(this + 19);
    }

    (*(*v2 + 16))(v2, *(this + 9));
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 16))(__p, this);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v10 = 1752392040;
    v11 = 2081;
    v12 = v6;
    _os_log_error_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sCan't start authenticated registration without a challenge source", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t ImsResult::operator<<<char [7]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<unsigned long>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  MEMORY[0x1E6923370](*(v3 + 8), *a2);
  *(v3 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [46]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipAuthPatClient::requestPatAndReputationTokens(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  std::ostringstream::basic_ostringstream[abi:ne200100](v45);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "com.apple.ipTelephony.RCS.", 26);
  v9 = *(a1 + 327);
  if (v9 >= 0)
  {
    v10 = a1 + 304;
  }

  else
  {
    v10 = *(a1 + 304);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 327);
  }

  else
  {
    v11 = *(a1 + 312);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a1 + 8);
    v14 = std::__shared_weak_count::lock(v12);
    if (v14)
    {
      v15 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *v32 = 0u;
      v33 = 0u;
      memset(v31, 0, sizeof(v31));
      std::ostringstream::basic_ostringstream[abi:ne200100](v31);
      v16 = *(a1 + 327);
      if (v16 >= 0)
      {
        v17 = a1 + 304;
      }

      else
      {
        v17 = *(a1 + 304);
      }

      if (v16 >= 0)
      {
        v18 = *(a1 + 327);
      }

      else
      {
        v18 = *(a1 + 312);
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v17, v18);
      LOBYTE(v59) = 46;
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v59, 1);
      v21 = MEMORY[0x1E6923350](v20, *(a1 + 332));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ".fetchPatRep", 12);
      memset(&v30, 0, sizeof(v30));
      std::ostringstream::str[abi:ne200100](v31, &v30);
      v67 = 0;
      v65 = 0u;
      memset(v66, 0, sizeof(v66));
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v22 = *a2;
      v23 = a2[1];
      v24 = v23 - *a2;
      v59 = 0u;
      v60 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v59, v22, v23, v24);
      BYTE8(v60) = 0;
      LOBYTE(v62) = 0;
      if (*(a3 + 24) == 1)
      {
        *(&v60 + 1) = 0;
        v61 = 0uLL;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v60 + 8, *a3, *(a3 + 8), *(a3 + 8) - *a3);
        LOBYTE(v62) = 1;
      }

      *(&v62 + 1) = 0;
      v63 = 0uLL;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v62 + 8, *a4, a4[1], a4[1] - *a4);
      LOBYTE(v64) = 0;
      BYTE8(v65) = 0;
      std::ostringstream::str[abi:ne200100](v45, v66);
      v25 = a1;
      v26 = v13;
      v27 = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v28 = *(a1 + 332);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v30;
      }

      v67 = 0;
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4D9F934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v66 = v63[3];
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  operator delete(v63);
  SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1::~$_1(&a9);
  PatAndReputationTokenParams::~PatAndReputationTokenParams((v64 - 240));
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  std::__shared_weak_count::__release_weak(v62);
  std::ostringstream::~ostringstream(&a62);
  _Unwind_Resume(a1);
}

void SipAuthPatClient::handleAuthChallengeTimeout(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 16))(__p, a1);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 141558275;
    v8 = 1752392040;
    v9 = 2081;
    v10 = v4;
    _os_log_error_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sAuth challenge timeout", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t ImsResult::operator<<<char [17]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void SipAuthPatClient::continueRegistration(SipAuthPatClient *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 16))(__p, this);
    if (v17 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = "";
    if (!*(this + 19))
    {
      v4 = "un-";
    }

    v5 = *(this + 82);
    *buf = 141558787;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v3;
    v22 = 2080;
    v23 = v4;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}scontinue %sauthenticated registration registrationClientSequence=%u", buf, 0x26u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 19) = 0;
  v6 = *(this + 12);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 11);
      if (v9)
      {
        v10 = *(v9 + 248);
        v11 = *(v9 + 256);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          v12 = *(v10 + 336);
          v13 = *(v10 + 344);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12)
          {
            SipRegistrationClient::continueSendRequest(v12, this + 280, *(this + 82), v15);
            ImsResult::~ImsResult(v15);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4D9FE24(_Unwind_Exception *a1)
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

void SipAuthPatClient::checkAuthenticationReady(SipAuthPatClient *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v4 = v3;
    if (v3 && *(this + 13))
    {
      if ((*(this + 160) & 1) != 0 || (*(this + 200) & 1) != 0 || *(this + 240) == 1)
      {
        v5 = *(this + 5);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v6 = v38;
        (*(*this + 16))(v38, this);
        if (v41 < 0)
        {
          v6 = *v38;
        }

        if (*(this + 160))
        {
          v7 = "true";
        }

        else
        {
          v7 = "false";
        }

        v8 = v24;
        std::string::basic_string[abi:ne200100]<0>(v24, v7);
        if (v25 < 0)
        {
          v8 = v24[0];
        }

        if (*(this + 200))
        {
          v9 = "true";
        }

        else
        {
          v9 = "false";
        }

        std::string::basic_string[abi:ne200100]<0>(&v37, v9);
        v10 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
        v11 = v37.__r_.__value_.__r.__words[0];
        if (*(this + 240))
        {
          v12 = "true";
        }

        else
        {
          v12 = "false";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v12);
        v13 = &v37;
        if (v10 < 0)
        {
          v13 = v11;
        }

        if (v23 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 141559043;
        *&buf[4] = 1752392040;
        v29 = 2081;
        v30 = v6;
        v31 = 2080;
        v32 = v8;
        v33 = 2080;
        v34 = v13;
        v35 = 2080;
        v36 = v14;
        _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sStill waiting on athm=%s pat=%s rep=%s", buf, 0x34u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        v15 = *v38;
      }

      else
      {
        if (!*(this + 19))
        {
          goto LABEL_49;
        }

        v19 = *(this + 303);
        if (v19 < 0)
        {
          v19 = *(this + 36);
        }

        if (v19)
        {
LABEL_49:
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = 0;
          v27 = 0;
          ExtensionSerializer::create(v3);
        }

        v20 = *(this + 5);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        (*(*this + 16))(buf, this);
        v21 = v31 >= 0 ? buf : *buf;
        *v38 = 141558275;
        *&v38[4] = 1752392040;
        v39 = 2081;
        v40 = v21;
        _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sStill waiting on opaque", v38, 0x16u);
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        v15 = *buf;
      }

      operator delete(v15);
LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      goto LABEL_39;
    }
  }

  else
  {
    v4 = 0;
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 16))(buf, this);
    v18 = v31 >= 0 ? buf : *buf;
    *v38 = 141558275;
    *&v38[4] = 1752392040;
    v39 = 2081;
    v40 = v18;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sRegistration moved on.  Dropping tokens", v38, 0x16u);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v4)
  {
    goto LABEL_38;
  }

LABEL_39:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1::~$_1(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
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

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

void std::vector<ExtensionDeserializer::Item>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4DA0C14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned char>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<unsigned char>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void PatAndReputationTokenParams::~PatAndReputationTokenParams(void **this)
{
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100]((this + 17));
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 104) == 1)
  {
    v2 = this[10];
    if (v2)
    {
      this[11] = v2;
      operator delete(v2);
    }
  }

  v3 = this[7];
  if (v3)
  {
    this[8] = v3;
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = this[3];
    if (v4)
    {
      this[4] = v4;
      operator delete(v4);
    }
  }

  v5 = *this;
  if (*this)
  {
    this[1] = v5;
    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<SipDigestAuthResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECBB08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<AttestationServiceHelper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECBB58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<AttestationServiceHelper>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<SipAuthPatInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECBBA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECBBF8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECBBF8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECBBF8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  ImsResult::ImsResult(v12, a2);
  v5 = *a3;
  v6 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v7 = a1[3];
  if (v7)
  {
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v7);
    if (v9 && a1[2])
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      ImsStringOutStream::ImsStringOutStream(v13);
    }
  }

  else
  {
    v9 = 0;
  }

  ims::getStaticLoggerFor("sip.auth.cli", buf);
  v10 = v16;
  ctu::OsLogContext::~OsLogContext(buf);
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *buf = 0;
  _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E Auth client gone for athm spam tokenrequest", buf, 2u);
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v5)
  {
LABEL_9:
    operator delete(v5);
  }

LABEL_10:
  ImsResult::~ImsResult(v12);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4DA19DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  ImsResult::~ImsResult(&a44);
  a21 = &unk_1F5EDED18;
  if (a23 == 1 && a22)
  {
    (*(*a22 + 8))(a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  if (v45)
  {
    operator delete(v45);
  }

  ImsResult::~ImsResult(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0,std::allocator<SipAuthPatClient::requestAthmSpamTokenRequest(void)::$_0>,void ()(ImsResult,std::vector<unsigned char>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECBC88;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECBC88;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECBC88;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::operator()(void *a1, std::string *a2, int *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v4 = a1[3];
  if (v4)
  {
    v5 = *a3;
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7 && a1[2])
    {
      v8 = *(v6 + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v6 + 16))(__p, v6);
        if (v15 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
        if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v13.__r_.__value_.__l.__size_;
        }

        *buf = 141558787;
        *v17 = 1752392040;
        *&v17[8] = 2081;
        *&v17[10] = v9;
        v18 = 2048;
        v19 = size;
        v20 = 1024;
        v21 = v5;
        _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sReceived signed digest length=%zu registrationClientSequence=%u", buf, 0x26u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::string::operator=((v6 + 280), &v13);
      *(v6 + 82) = v5;
      SipAuthPatClient::checkAuthenticationReady(v6);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
  }

  ims::getStaticLoggerFor("sip.auth.cli", buf);
  v11 = *&v17[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *buf = 0;
  _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E Auth client gone for signed digest", buf, 2u);
  if (v7)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_17:
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4DA1FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthPatClient::requestSignedDigestOpaque(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECBD18;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECBD18;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DA21DC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5ECBD18;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v3 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v3;
  }
}

void sub_1E4DA2288(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  ImsResult::ImsResult(v24, a2);
  v7 = *a3;
  v8 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v9 = *a4;
  v10 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v11 = *(a1 + 24);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_8;
  }

  v12 = *(a1 + 8);
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13 || !*(a1 + 16))
  {
LABEL_8:
    ims::getStaticLoggerFor("sip.auth.cli", &buf);
    v14 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E Auth client gone for pat and reputation tokens", &buf, 2u);
      if (v13)
      {
        goto LABEL_52;
      }
    }

    else if (v13)
    {
      goto LABEL_52;
    }

    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(a1 + 32) == v12[41].i32[1])
  {
    SipTimerContainer::cancelTimer(v12 + 42, (a1 + 40));
    ImsResult::ImsResult(&buf, v24);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v28, v7, v8, v8 - v7);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, v9, v10, v10 - v9);
    if ((*(**&buf_4[4] + 24))(*&buf_4[4], *&buf_4[12]))
    {
      v33 = 0;
      __p = 0u;
      v32 = 0u;
      ImsStringOutStream::ImsStringOutStream(&__p);
    }

    v20 = v12[5];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v12 + 16))(&__p, v12);
      v21 = (SBYTE7(v32) & 0x80u) == 0 ? &__p : __p.n128_u64[0];
      *v40 = 141558275;
      *&v40[4] = 1752392040;
      *&v40[12] = 2081;
      *&v40[14] = v21;
      _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sTokens received", v40, 0x16u);
      if (SBYTE7(v32) < 0)
      {
        operator delete(__p.n128_u64[0]);
      }
    }

    memset(v40, 0, sizeof(v40));
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(v40, v28, v29, v29 - v28);
    __p = *v40;
    *&v32 = *&v40[16];
    memset(v40, 0, sizeof(v40));
    BYTE8(v32) = 1;
    std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned char>,false>>(&v12[26], &__p);
    if (BYTE8(v32) == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (*v40)
    {
      *&v40[8] = *v40;
      operator delete(*v40);
    }

    v12[25].i8[0] = 0;
    memset(v40, 0, sizeof(v40));
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(v40, v25, v26, v26 - v25);
    __p = *v40;
    *&v32 = *&v40[16];
    memset(v40, 0, sizeof(v40));
    BYTE8(v32) = 1;
    std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned char>,false>>(&v12[31], &__p);
    if (BYTE8(v32) == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (*v40)
    {
      *&v40[8] = *v40;
      operator delete(*v40);
    }

    v12[30].i8[0] = 0;
    if (v12[20].i8[0] == 1)
    {
      v22 = v12[5];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v12 + 16))(&__p, v12);
        if ((SBYTE7(v32) & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.n128_u64[0];
        }

        *v40 = 141558275;
        *&v40[4] = 1752392040;
        *&v40[12] = 2081;
        *&v40[14] = p_p;
        _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sReceived PAT and Reputation Tokens.  Starting Spam ATHM TokenRequest.", v40, 0x16u);
        if (SBYTE7(v32) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      SipAuthPatClient::requestAthmSpamTokenRequest(v12);
    }

    SipAuthPatClient::checkAuthenticationReady(v12);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    ImsResult::~ImsResult(&buf);
  }

  else
  {
    v16 = v12[5];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      (*(*v12 + 16))(&__p, v12);
      v17 = (SBYTE7(v32) & 0x80u) == 0 ? &__p : __p.n128_u64[0];
      v18 = *(a1 + 32);
      v19 = v12[41].i32[1];
      buf = 141558787;
      *buf_4 = 1752392040;
      *&buf_4[8] = 2081;
      *&buf_4[10] = v17;
      v36 = 1024;
      v37 = v18;
      v38 = 1024;
      v39 = v19;
      _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSequence %u doesn't match expected %u.  Dropping tokens", &buf, 0x22u);
      if (SBYTE7(v32) < 0)
      {
        operator delete(__p.n128_u64[0]);
      }
    }
  }

LABEL_52:
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (v9)
  {
LABEL_11:
    operator delete(v9);
  }

LABEL_12:
  if (v7)
  {
    operator delete(v7);
  }

  ImsResult::~ImsResult(v24);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4DA29B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, char a38)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  a36 = &unk_1F5EDED18;
  if (a38 == 1 && a37)
  {
    (*(*a37 + 8))(a37);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  ImsResult::~ImsResult((v41 - 224));
  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (v39)
  {
    operator delete(v39);
    if (!v38)
    {
LABEL_13:
      ImsResult::~ImsResult(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_13;
  }

  operator delete(v38);
  goto LABEL_13;
}

uint64_t std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_0>,void ()(ImsResult,std::vector<unsigned char>,std::vector<unsigned char>)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECBDA8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECBDA8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DA2CE4(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5ECBDA8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v3;
  }
}

void sub_1E4DA2D88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::operator()(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  v4 = *(a1 + 55);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 40);
  }

  if (v3 == v4)
  {
    v7 = *(a1 + 8);
    v8 = v2 >= 0 ? a2 : *a2;
    v9 = v5 >= 0 ? (a1 + 32) : *(a1 + 32);
    if (!memcmp(v8, v9, v3))
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          if (*(a1 + 16))
          {
            v14 = *(v7 + 5);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              (*(*v7 + 16))(__p, v7);
              if (v17 >= 0)
              {
                v15 = __p;
              }

              else
              {
                v15 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v15;
              _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sTimeout retrieving PAT and Reputation tokens ", buf, 0x16u);
              if (v17 < 0)
              {
                operator delete(__p[0]);
              }
            }

            SipAuthPatClient::continueRegistration(v7);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1,std::allocator<SipAuthPatClient::requestPatAndReputationTokens(std::vector<unsigned char> const&,std::optional<std::vector<unsigned char> const> const&,std::vector<unsigned char> const&)::$_1>,void ()(std::string &)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void SipSecurityVerifyHeader::SipSecurityVerifyHeader(SipSecurityVerifyHeader *this, const SipSecurityServerHeader *a2)
{
  v2 = SipPolymorphicVectorHeader<SipSecurityMechanism>::SipPolymorphicVectorHeader(this, a2);
  *v2 = &unk_1F5ECBE28;
  std::string::operator=((v2 + 8), "Security-Verify");
}

void SipSecurityVerifyHeader::~SipSecurityVerifyHeader(SipSecurityVerifyHeader *this)
{
  SipPolymorphicVectorHeader<SipSecurityMechanism>::~SipPolymorphicVectorHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipVectorHeader<SipSecurityMechanism *>::encodeValue(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (a1[9] != v4)
  {
    v12 = v2;
    v13 = v3;
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = *(a2 + 8);
        v11 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v11, 1);
        *(a2 + 17) = 0;
        v4 = a1[8];
      }

      (*(*a1 + 112))(a1, v4 + v7, a2);
      ++v8;
      v4 = a1[8];
      v7 += 8;
    }

    while (v8 < (a1[9] - v4) >> 3);
  }

  return 1;
}

BOOL SipVectorHeader<SipSecurityMechanism *>::setValueFromString(void *a1, uint64_t a2)
{
  v4 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  while (1)
  {
    v4 = (*(*a1 + 128))(a1, a2, v4, __p, 44);
    if (v4 == -1)
    {
      break;
    }

    v6 = 0;
    if (((*(*a1 + 120))(a1, __p, &v6) & 1) == 0)
    {
      break;
    }

    SipVectorHeader<SipSecurityMechanism *>::addItem(a1, &v6);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 == -1;
}

void sub_1E4DA3300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipPolymorphicVectorHeader<SipSecurityMechanism>::mergeHeader(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    v6 = v4[8];
    if (v4[9] != v6)
    {
      v7 = 0;
      do
      {
        v9 = (*(**(v6 + 8 * v7) + 32))(*(v6 + 8 * v7));
        SipVectorHeader<SipSecurityMechanism *>::addItem(a1, &v9);
        ++v7;
        v6 = v5[8];
      }

      while (v7 < (v5[9] - v6) >> 3);
    }
  }

  return v5 != 0;
}

ImsOutStream *SipSecurityAgreementHeader::itemToStream(SipSecurityAgreementHeader *this, SipSecurityMechanism *const *a2, ImsOutStream *a3)
{
  v4 = *a2;
  (*(*a3 + 32))(a3, *a2 + 8);

  return SipParameterMap::toStream((v4 + 32), a3, 0, 0, 0, 0);
}

uint64_t SipAuthResponse::SipAuthResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EE51F0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::string::operator=((a1 + 8), (a2 + 8));
  return a1;
}

void sub_1E4DA3508(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void SipAuthResponse::~SipAuthResponse(void **this)
{
  *this = &unk_1F5EE51F0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

ImsOutStream *SipSsoAuthResponse::encode(SipSsoAuthResponse *this, ImsOutStream *a2)
{
  (*(*a2 + 32))(a2, &SipSsoAuthResponse::kSchemeName);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, "username");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 152);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ",", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, "realm");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 200);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ",", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, &SipSsoAuthResponse::kDirectiveUri);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=", 2);
  *(a2 + 17) = 0;
  SipUri::asString(this + 224, __p);
  (*(*a2 + 32))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ",", 2);
  *(a2 + 17) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a2 + 32))(a2, "nonce");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=,", 4);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, "response");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=,", 4);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, "msisdn");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 632);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ",", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, "token");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "=", 2);
  *(a2 + 17) = 0;
  (*(*a2 + 32))(a2, this + 176);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "", 1);
  *(a2 + 17) = 0;
  return a2;
}

void sub_1E4DA397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSsoAuthResponse::~SipSsoAuthResponse(void **this)
{
  SipSsoAuthResponse::~SipSsoAuthResponse(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ECBF08;
  if (*(this + 655) < 0)
  {
    operator delete(this[79]);
  }

  SipUri::~SipUri((this + 28));
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  ImsResult::~ImsResult((this + 8));

  SipAuthResponse::~SipAuthResponse(this);
}

void sub_1E4DA3B34(_Unwind_Exception *a1)
{
  if (*(v2 + 223) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 199) < 0)
  {
    operator delete(*(v2 + 176));
  }

  if (*(v2 + 175) < 0)
  {
    operator delete(*v4);
  }

  ImsResult::~ImsResult(v3);
  SipAuthResponse::~SipAuthResponse(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t SipSsoAuthResponse::scheme(SipSsoAuthResponse *this)
{
  return 0;
}

{
  return 0;
}

uint64_t SipSsoAuthResponse::computeResponse()
{
  return 1;
}

{
  return 1;
}

uint64_t SipAuthResponse::shouldCache(SipAuthResponse *this)
{
  (*(*this + 56))(&v3);
  v1 = (*(*v4 + 24))(v4, v5);
  ImsResult::~ImsResult(&v3);
  return v1 ^ 1u;
}

void sub_1E4DA3C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t BambiCallActivity::BambiCallActivity(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F5EBEEC0;
  v6 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v29, "bambi.call");
  BambiCall::clientConfig(*a2, v21);
  v24 = v21[0];
  v25 = v21[1];
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v22;
  }

  v27 = v23;
  v28 = 1;
  ImsLogContainer::ImsLogContainer(v6, &v29, &v24);
  if (v28 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "bambi.call");
  BambiCall::clientConfig(*a2, v16);
  ims::getQueue(&v30);
  ClientConfig::getLogTag(v16, &v29);
  if ((v20 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = v19[1];
  }

  v9 = std::string::insert(&v29, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[0] = v9->__r_.__value_.__r.__words[2];
  *v21 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v22.__r_.__value_.__s.__data_[7] >= 0)
  {
    v11 = v21;
  }

  else
  {
    v11 = v21[0];
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v12 = v30;
  *(a1 + 168) = v30;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v11);
  if (v22.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 144) = &unk_1F5ECC130;
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  *a1 = &unk_1F5ECBF88;
  *(a1 + 8) = &unk_1F5ECBFC8;
  *(a1 + 144) = &unk_1F5ECC028;
  *(a1 + 192) = a1 + 192;
  *(a1 + 200) = a1 + 192;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = *a2;
  v13 = *(a2 + 8);
  *(a1 + 240) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 248) = *a3;
  v14 = a3[1];
  *(a1 + 256) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 264) = 0;
  return a1;
}

void sub_1E4DA4008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  _Unwind_Resume(exception_object);
}

void BambiCallActivity::~BambiCallActivity(BambiCallActivity *this)
{
  *this = &unk_1F5ECBF88;
  *(this + 1) = &unk_1F5ECBFC8;
  *(this + 18) = &unk_1F5ECC028;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 24);
  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  BambiCallActivity::~BambiCallActivity(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallActivity::~BambiCallActivity(BambiCallActivity *this)
{
  BambiCallActivity::~BambiCallActivity((this - 8));
}

{
  BambiCallActivity::~BambiCallActivity((this - 144));
}

{
  BambiCallActivity::~BambiCallActivity((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallActivity::~BambiCallActivity((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallActivity::perform(BambiCallActivity *this@<X0>, ImsResult *a2@<X8>)
{
  if (*(this + 264))
  {
    v9 = this + 8;
    v10 = *(this + 26);
    v11 = (*(*(this + 1) + 64))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v11);
    v12 = *(v11 + 8);
    if (v10)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Number of actions left to perform : ", 36);
      *(v11 + 17) = 0;
      MEMORY[0x1E6923370](*(v11 + 8), *(this + 26));
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      v13 = *(this + 25);
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(*v15 + 56))(v15))
      {
        v16 = *(this + 25);
        v18 = *v16;
        v17 = v16[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        --*(this + 26);
        v19 = v16[3];
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        operator delete(v16);
        *(a2 + 10) = 0;
        *(a2 + 3) = 0u;
        *(a2 + 4) = 0u;
        *(a2 + 1) = 0u;
        *(a2 + 2) = 0u;
        *a2 = 0u;
        (*(*v15 + 40))(v15);
        v20 = (*(*v9 + 64))(this + 8);
        (*(*v9 + 16))(this + 8, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Action ", 7);
        *(v20 + 17) = 0;
        (*(*v15 + 16))(v15, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " finished with result ", 22);
        *(v20 + 17) = 0;
        (*(*a2 + 16))(a2, v20);
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        if (v15 == *(this + 27))
        {
          v21 = *(this + 28);
          *(this + 27) = 0;
          *(this + 28) = 0;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }
      }

      else
      {
        v22 = (*(*v9 + 64))(this + 8);
        (*(*v9 + 16))(v9, v22);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "last action prerequisites not yet met", 37);
        *(v22 + 17) = 0;
        (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v22 + 17) = 0;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        *a2 = &unk_1F5EBDEF8;
        *(a2 + 1) = &_bambiDomain;
        *(a2 + 4) = 1073741838;
      }

      if (v14)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "this activity is finished", 25);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 1) = &_bambiDomain;
      *(a2 + 4) = 0;
    }
  }

  else
  {
    v5 = (this + 216);
    v4 = *(this + 27);
    if (v4)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      (*(*v4 + 48))(v4, &v24);
      v6 = v24;
      if (v24 != v25)
      {
        v7 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "queueing prerequisite [", 23);
        *(v7 + 17) = 0;
        MEMORY[0x1E6923370](*(v7 + 8), *(this + 26));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "] ", 2);
        *(v7 + 17) = 0;
        (*(**v6 + 16))(*v6, v7);
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        (*(**v6 + 32))();
        std::list<std::shared_ptr<BambiCallAction>>::push_back();
      }

      v8 = (*(*(this + 1) + 64))(this + 8);
      (*(*(this + 1) + 16))(this + 8, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "queueing base action [", 22);
      *(v8 + 17) = 0;
      MEMORY[0x1E6923370](*(v8 + 8), *(this + 26));
      *(v8 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "] ", 2);
      *(v8 + 17) = 0;
      (*(**v5 + 16))(*v5, v8);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      (*(**v5 + 32))();
      std::list<std::shared_ptr<BambiCallAction>>::push_back();
    }

    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    LODWORD(v26) = 1073741827;
    v23 = ImsResult::operator<<<char [20]>(&v24, "No base call action");
    ImsResult::ImsResult(a2, v23);
    ImsResult::~ImsResult(&v24);
  }
}

void BambiCallActivity::invalidateCall(void *a1, uint64_t *a2)
{
  v2 = a1 + 24;
  v3 = a1[25];
  if (v3 != a1 + 24)
  {
    v5 = a1 + 1;
    do
    {
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[3];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        v9 = v7[25];
        if (v9)
        {
          v10 = v7[24];
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v11 = std::__shared_weak_count::lock(v9);
          v12 = *a2;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            std::__shared_weak_count::__release_weak(v9);
            if (v10 == v12)
            {
              goto LABEL_16;
            }
          }

          else
          {
            std::__shared_weak_count::__release_weak(v9);
            if (!v12)
            {
LABEL_16:
              v13 = (*(*v5 + 64))(v5);
              (*(*v5 + 16))(v5, v13);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "removing action for invalided call ", 35);
              *(v13 + 17) = 0;
              (*(*v7 + 16))(v7, v13);
              (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v13 + 17) = 0;
              v15 = *v3;
              v14 = v3[1];
              *(v15 + 8) = v14;
              *v14 = v15;
              --a1[26];
              v16 = v3[3];
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              operator delete(v3);
              if (!v8)
              {
                goto LABEL_11;
              }

LABEL_10:
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              goto LABEL_11;
            }
          }
        }

        else if (!*a2)
        {
          goto LABEL_16;
        }
      }

      if (v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v3 = v6;
    }

    while (v6 != v2);
  }
}

void sub_1E4DA4D90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallActivity::removeCallAction(uint64_t a1, void *a2)
{
  std::list<std::shared_ptr<BambiCallAction>>::remove(a1 + 192, a2);
  v3 = *(a1 + 256);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 248);
      if (v6)
      {
        BambiStrictCallHandler::performNextCallAction(v6, v7);
        ImsResult::~ImsResult(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t std::list<std::shared_ptr<BambiCallAction>>::remove(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<std::shared_ptr<BambiCallAction>>::splice(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(v11);
  return v9;
}

void sub_1E4DA4EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(va);
  _Unwind_Resume(a1);
}

ImsOutStream *BambiCallActivity::log(BambiCallActivity *this, ImsOutStream *a2)
{
  v3 = *(this + 27);
  if (v3)
  {
    (*(*v3 + 16))(v3, a2);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "NoCallAction", 12);
    *(a2 + 17) = 0;
  }

  return a2;
}

void BambiCallActivity::loggableName(BambiCallActivity *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4DA50EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void *BambiCallActivity::logPrefix(BambiCallActivity *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "BambiCallActivity: ", 19);
  *(a2 + 17) = 0;
  (*(*this + 16))(this, a2);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  return result;
}

uint64_t ims::SharedLoggable<BambiCallActivity>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiCallActivity>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::list<std::shared_ptr<BambiCallAction>>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void *BambiTransferState::BambiTransferState(void *a1, void *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 216);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v7 = v6;
    v8 = 0;
    v33 = *(v4 + 208);
    v34 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = 0;
    v33 = 0;
    v34 = 0;
    v8 = 1;
  }

  SipState::SipState(a1, &v33);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  if ((v8 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "bambi.ect.state");
  v9 = *a2;
  v10 = std::__shared_weak_count::lock(*(*a2 + 216));
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v29, (*(v9 + 208) + 200));
  ImsLogContainer::ImsLogContainer((a1 + 26), &v36, v29);
  if (v32 == 1 && v31 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "bambi.ect.state");
  v11 = *a2;
  v12 = *(*a2 + 216);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *(v11 + 208);
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

  v23 = *(v14 + 200);
  v24 = *(v14 + 208);
  if (*(v14 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(v14 + 216), *(v14 + 224));
  }

  else
  {
    v25 = *(v14 + 216);
  }

  v26 = *(v14 + 240);
  ims::getQueue(&v38);
  ClientConfig::getLogTag(&v23, &v35);
  if ((v28 & 0x80u) == 0)
  {
    v15 = v27;
  }

  else
  {
    v15 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v16 = v28;
  }

  else
  {
    v16 = v27[1];
  }

  v17 = std::string::insert(&v35, 0, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v37 = v17->__r_.__value_.__r.__words[2];
  v36 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v19 = &v36;
  }

  else
  {
    v19 = v36;
  }

  a1[44] = 0;
  a1[45] = 0;
  v20 = v38;
  a1[46] = v38;
  if (v20)
  {
    dispatch_retain(v20);
  }

  a1[47] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 48), "com.apple.ipTelephony", v19);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  a1[43] = &unk_1F5ECC6F0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  *a1 = &unk_1F5ECC158;
  a1[1] = &unk_1F5ECC1B8;
  a1[26] = &unk_1F5ECC1E8;
  a1[43] = &unk_1F5ECC248;
  a1[49] = *a2;
  v21 = a2[1];
  a1[50] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1E4DA564C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v25);
  SipState::~SipState(v24);
  _Unwind_Resume(a1);
}

void sub_1E4DA56E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
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

  JUMPOUT(0x1E4DA56D8);
}

void sub_1E4DA5734(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if ((v28 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  JUMPOUT(0x1E4DA56E0);
}

void BambiTransferState::~BambiTransferState(BambiTransferState *this)
{
  *this = &unk_1F5ECC158;
  *(this + 1) = &unk_1F5ECC1B8;
  *(this + 26) = &unk_1F5ECC1E8;
  *(this + 43) = &unk_1F5ECC248;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 384);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 44);
  *(this + 26) = &unk_1F5ED7318;
  if (*(this + 288) == 1 && *(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  SipState::~SipState(this);
}

{
  BambiTransferState::~BambiTransferState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiTransferState::~BambiTransferState(BambiTransferState *this)
{
  BambiTransferState::~BambiTransferState((this - 8));
}

{
  BambiTransferState::~BambiTransferState((this - 208));
}

{
  BambiTransferState::~BambiTransferState((this - 344));
}

{
  BambiTransferState::~BambiTransferState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 208));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 344));

  JUMPOUT(0x1E69235B0);
}

void BambiTransferState::handleParticipantStateChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 10)
  {
    v5 = *(a1 + 400);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 392);
        if (v8)
        {
          v11 = 0u;
          v12 = 0u;
          v13 = 0u;
          v14 = 0u;
          v9[0] = &unk_1F5EBDEF8;
          v9[1] = &_bambiDomain;
          v10 = 0x40000000;
          BambiTransferHandler::endTransfer(v8, v9);
          ImsResult::~ImsResult(v9);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void sub_1E4DA5A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t BambiTransferState::stateMachine(BambiTransferState *this)
{
  v2 = *(this + 50);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(this + 49);
  if (!v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_6:
    v7 = *(this + 26);
    v6 = this + 208;
    v8 = (*(v7 + 56))(v6);
    (*(*v6 + 16))(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "BambiTransferState::stateMachine() - state machine is null", 58);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v5 = 0;
    *(v8 + 17) = 0;
    return v5;
  }

  v5 = v4 + 240;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

{
  v2 = *(this + 50);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(this + 49);
  if (!v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_6:
    v7 = *(this + 26);
    v6 = this + 208;
    v8 = (*(v7 + 56))(v6);
    (*(*v6 + 16))(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "BambiTransferState::stateMachine() - state machine is null", 58);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v5 = 0;
    *(v8 + 17) = 0;
    return v5;
  }

  v5 = v4 + 240;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v5;
}

void *BambiTransferWaitingForHoldState::BambiTransferWaitingForHoldState(void *a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiTransferState::BambiTransferState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ECC270;
  a1[1] = &unk_1F5ECC2D8;
  a1[26] = &unk_1F5ECC308;
  a1[43] = &unk_1F5ECC368;
  return a1;
}

void sub_1E4DA5CFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiTransferWaitingForHoldState::checkForHeldParticipants(BambiTransferWaitingForHoldState *this)
{
  v2 = *(this + 50);
  if (!v2)
  {
    v3 = 0;
LABEL_19:
    v13 = *(this + 26);
    v12 = this + 208;
    v14 = (*(v13 + 56))(v12);
    (*(*v12 + 16))(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "BambiTransferWaitingForHoldState::checkForHeldParticipants() - transfer handler is null", 87);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v8 = 0;
    *(v14 + 17) = 0;
    goto LABEL_20;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = *(this + 49);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = (*(*this + 32))(this);
  if (!v5)
  {
    v17 = *(this + 26);
    v16 = this + 208;
    v18 = (*(v17 + 56))(v16);
    (*(*v16 + 16))(v16, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "BambiTransferWaitingForHoldState::checkForHeldParticipants() - state machine is null", 84);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v8 = 0;
    *(v18 + 17) = 0;
    goto LABEL_21;
  }

  v6 = *(v4 + 512);
  v7 = *(v4 + 520);
  if (v6 == v7)
  {
    v8 = 0;
    goto LABEL_21;
  }

  LODWORD(v8) = 0;
  do
  {
    v10 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(v10 + 264);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *(v10 + 264);
    }

    if (v11 >= 2)
    {
      v8 = v8;
    }

    else
    {
      v8 = (v8 + 1);
    }

    v6 += 2;
  }

  while (v6 != v7);
  if (!v8)
  {
    if (*(v4 + 512) != *(v4 + 520))
    {
      (*(*v5 + 32))(v5, 2);
    }

    v8 = 0;
  }

LABEL_20:
  if (v3)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v8;
}

void sub_1E4DA5FAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiTransferWaitingForHoldState::handleTimer(void *a1, uint64_t a2)
{
  v3 = a1[50];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[49];
      if (v6)
      {
        v7 = (*(*a1 + 32))(a1);
        v8 = *(a2 + 23);
        if (v8 < 0)
        {
          if (*(a2 + 8) != 21)
          {
LABEL_19:
            v19 = v6[2];
            v18 = v6 + 2;
            v20 = (*(v19 + 56))(v18);
            (*(*v18 + 16))(v18, v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Unknown timer ", 14);
            *(v20 + 17) = 0;
            (*(*v20 + 32))(v20, a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " for state ", 11);
            *(v20 + 17) = 0;
            if (v7)
            {
              v21 = (*(*a1 + 48))(a1);
              v22 = (*(*v7 + 16))(v7, v21);
              if (*(v22 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *v22, *(v22 + 8));
              }

              else
              {
                v23 = *v22;
                __p.__r_.__value_.__r.__words[2] = *(v22 + 16);
                *&__p.__r_.__value_.__l.__data_ = v23;
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "Unknown");
            }

            (*(*v20 + 32))(v20, &__p);
            (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v20 + 17) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_27;
          }

          v9 = *a2;
        }

        else
        {
          v9 = a2;
          if (v8 != 21)
          {
            goto LABEL_19;
          }
        }

        v13 = *v9;
        v14 = v9[1];
        v15 = *(v9 + 13);
        if (v13 != 0x46676E6974696157 || v14 != 0x6954646C6F48726FLL || v15 != 0x74756F656D695464)
        {
          goto LABEL_19;
        }

        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v25[0] = &unk_1F5EBDEF8;
        v25[1] = &_bambiDomain;
        v26 = 1073741830;
        BambiTransferHandler::endTransfer(v6, v25);
        ImsResult::~ImsResult(v25);
LABEL_27:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = a1[26];
  v10 = a1 + 26;
  v12 = (*(v11 + 56))(v10);
  (*(*v10 + 16))(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "BambiTransferWaitingForHoldState::handleTimer() - transfer handler is null", 74);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v5)
  {
    goto LABEL_27;
  }
}

void sub_1E4DA6394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  ImsResult::~ImsResult(&a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void BambiTransferWaitingForHoldState::enterState(BambiTransferWaitingForHoldState *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (BambiTransferWaitingForHoldState::checkForHeldParticipants(this))
  {
    v2 = *(this + 45);
    if (!v2 || (v3 = *(this + 44), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    p_shared_weak_owners = &v4->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v7 = *(this + 50);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(this + 49);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    memset(v16, 0, sizeof(v16));
    ImsPrefs::ImsPrefs(v16);
    if (v9)
    {
      v10 = *(v9 + 216);
      if (v10)
      {
        v10 = std::__shared_weak_count::lock(v10);
        v11 = v10;
        if (v10)
        {
          v10 = *(v9 + 208);
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = SipStack::prefs(v10);
      v12 = ImsPrefs::TransferWaitForHoldTimeout(v13);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      v12 = ImsPrefs::TransferWaitForHoldTimeout(v16);
    }

    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "WaitingForHoldTimeout");
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v17 = 0;
      operator new();
    }

    ImsPrefs::~ImsPrefs(v16);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4DA65EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ImsPrefs::~ImsPrefs(&a16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_weak(v16);
  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void BambiTransferWaitingForHoldState::handleParticipantStateChange(BambiTransferWaitingForHoldState *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 10)
  {
    v5 = *(this + 50);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(this + 49);
        if (v7)
        {
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v11[0] = &unk_1F5EBDEF8;
          v11[1] = &_bambiDomain;
          v12 = 0x40000000;
          BambiTransferHandler::endTransfer(v7, v11);
          ImsResult::~ImsResult(v11);
LABEL_12:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          return;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = *(this + 26);
    v8 = this + 208;
    v10 = (*(v9 + 56))(v8);
    (*(*v8 + 16))(v8, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "BambiTransferWaitingForHoldState::handleParticipantStateChange() - transfer handler is null", 91);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a4 == 2)
  {

    BambiTransferWaitingForHoldState::checkForHeldParticipants(this);
  }
}

void sub_1E4DA67FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *BambiTransferTransferRequestedState::BambiTransferTransferRequestedState(void *a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiTransferState::BambiTransferState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ECC390;
  a1[1] = &unk_1F5ECC3F8;
  a1[26] = &unk_1F5ECC428;
  a1[43] = &unk_1F5ECC488;
  return a1;
}

void sub_1E4DA68FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiTransferTransferRequestedState::handleTimer(void *a1, uint64_t a2)
{
  v3 = a1[50];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[49];
      if (v6)
      {
        v7 = (*(*a1 + 32))(a1);
        v8 = *(a2 + 23);
        if (v8 < 0)
        {
          if (*(a2 + 8) != 21)
          {
LABEL_19:
            v19 = v6[2];
            v18 = v6 + 2;
            v20 = (*(v19 + 56))(v18);
            (*(*v18 + 16))(v18, v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Unknown timer ", 14);
            *(v20 + 17) = 0;
            (*(*v20 + 32))(v20, a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " for state ", 11);
            *(v20 + 17) = 0;
            if (v7)
            {
              v21 = (*(*a1 + 48))(a1);
              v22 = (*(*v7 + 16))(v7, v21);
              if (*(v22 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *v22, *(v22 + 8));
              }

              else
              {
                v23 = *v22;
                __p.__r_.__value_.__r.__words[2] = *(v22 + 16);
                *&__p.__r_.__value_.__l.__data_ = v23;
              }
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "Unknown");
            }

            (*(*v20 + 32))(v20, &__p);
            (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v20 + 17) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_27;
          }

          v9 = *a2;
        }

        else
        {
          v9 = a2;
          if (v8 != 21)
          {
            goto LABEL_19;
          }
        }

        v13 = *v9;
        v14 = v9[1];
        v15 = *(v9 + 13);
        if (v13 != 0x46676E6974696157 || v14 != 0x69546E696F4A726FLL || v15 != 0x74756F656D69546ELL)
        {
          goto LABEL_19;
        }

        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v25[0] = &unk_1F5EBDEF8;
        v25[1] = &_bambiDomain;
        v26 = 1073741830;
        BambiTransferHandler::endTransfer(v6, v25);
        ImsResult::~ImsResult(v25);
LABEL_27:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = a1[26];
  v10 = a1 + 26;
  v12 = (*(v11 + 56))(v10);
  (*(*v10 + 16))(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "BambiTransferTransferRequestedState::handleTimer() - transfer handler is null", 77);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v5)
  {
    goto LABEL_27;
  }
}

void sub_1E4DA6CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  ImsResult::~ImsResult(&a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void BambiTransferTransferRequestedState::enterState(BambiTransferTransferRequestedState *this)
{
  v33[15] = *MEMORY[0x1E69E9840];
  v2 = *(this + 50);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(this + 49)) == 0)
  {
LABEL_14:
    v14 = *(this + 26);
    v13 = this + 208;
    v15 = (*(v14 + 56))(v13);
    (*(*v13 + 16))(v13, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "BambiTransferTransferRequestedState::enterState() - transfer handler is null", 76);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (!v3)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v5 = v4[64];
  v6 = v4[65];
  if (v5 != v6)
  {
    v8 = *v5;
    v7 = *(v5 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v4[65];
      v5 = v4[64];
    }

    if ((v6 - v5) <= 0x10)
    {
      std::vector<unsigned short>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 216);
    if (v11)
    {
      v12 = *(v9 + 208);
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v31 = 0;
      v32 = std::__shared_weak_count::lock(v11);
      if (v32)
      {
        v31 = v12;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    (*(*v8 + 104))(v33, v8, &v31, 1);
    ImsResult::~ImsResult(v33);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v16 = v4[64];
    if ((v4[65] - v16) <= 0x10)
    {
      std::vector<unsigned short>::__throw_out_of_range[abi:ne200100]();
    }

    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p[3] = 0;
    __p[4] = 0;
    (*(*v17 + 104))(v30);
    ImsResult::~ImsResult(v30);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v19 = *(this + 45);
    if (!v19 || (v20 = *(this + 44), (v21 = std::__shared_weak_count::lock(v19)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v22 = v21;
    p_shared_weak_owners = &v21->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v24 = v4[27];
    if (v24)
    {
      v24 = std::__shared_weak_count::lock(v24);
      v25 = v24;
      if (v24)
      {
        v24 = v4[26];
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = SipStack::prefs(v24);
    v27 = ImsPrefs::TransferWaitForJoinTimeout(v26);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v27)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "WaitingForJoinTimeout");
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v33[14] = 0;
      operator new();
    }

    std::__shared_weak_count::__release_weak(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_41:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_42:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4DA7104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v31 - 120);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v30);
  std::__shared_weak_count::__release_weak(v30);
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void BambiTransferTransferRequestedState::handleParticipantStateChange(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = a1[50];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = std::__shared_weak_count::lock(v5);
  if (!v8 || (v9 = a1[49]) == 0)
  {
LABEL_10:
    v16 = a1[26];
    v15 = a1 + 26;
    v17 = (*(v16 + 56))(v15);
    (*(*v15 + 16))(v15, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "BambiTransferTransferRequestedState::handleParticipantStateChange() - transfer handler is null", 94);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (!v8)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = (*(*a1 + 32))(a1);
  if (v10)
  {
    v11 = v9[64];
    if (v11 != v9[65])
    {
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *a2;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        if (v14 == v13)
        {
LABEL_15:
          if (a4 == 10)
          {
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v21[0] = &unk_1F5EBDEF8;
            v21[1] = &_bambiDomain;
            v22 = 0x40000000;
            BambiTransferHandler::endTransfer(v9, v21);
            ImsResult::~ImsResult(v21);
          }

          else if (a4 == 6)
          {
            (*(*v10 + 32))(v10, 3);
          }
        }
      }

      else if (*a2 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v19 = a1[26];
    v18 = a1 + 26;
    v20 = (*(v19 + 56))(v18);
    (*(*v18 + 16))(v18, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "BambiTransferTransferRequestedState::handleParticipantStateChange() - state machine is null", 91);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
  }

LABEL_11:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_1E4DA74B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *BambiTransferTransferCompleteState::BambiTransferTransferCompleteState(void *a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiTransferState::BambiTransferState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5ECC4B0;
  a1[1] = &unk_1F5ECC510;
  a1[26] = &unk_1F5ECC540;
  a1[43] = &unk_1F5ECC5A0;
  return a1;
}

void sub_1E4DA75B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiTransferTransferCompleteState::enterState(BambiTransferTransferCompleteState *this)
{
  v2 = *(this + 50);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(this + 49)) == 0)
  {
LABEL_6:
    v6 = *(this + 26);
    v5 = this + 208;
    v7 = (*(v6 + 56))(v5);
    (*(*v5 + 16))(v5, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "BambiTransferTransferCompleteState::enterState() - transfer handler is null", 75);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8[0] = &unk_1F5EBDEF8;
  v8[1] = &_bambiDomain;
  v9 = 0;
  BambiTransferHandler::endTransfer(v4, v8);
  ImsResult::~ImsResult(v8);
LABEL_7:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1E4DA7724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void BambiTransferWaitingForHoldState::~BambiTransferWaitingForHoldState(BambiTransferWaitingForHoldState *this)
{
  BambiTransferState::~BambiTransferState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiTransferWaitingForHoldState::~BambiTransferWaitingForHoldState(BambiTransferWaitingForHoldState *this)
{
  BambiTransferState::~BambiTransferState((this - 8));
}

{
  BambiTransferState::~BambiTransferState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 208));
}

{
  BambiTransferState::~BambiTransferState((this - 208));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 344));
}

{
  BambiTransferState::~BambiTransferState((this - 344));

  JUMPOUT(0x1E69235B0);
}

void BambiTransferTransferRequestedState::~BambiTransferTransferRequestedState(BambiTransferTransferRequestedState *this)
{
  BambiTransferState::~BambiTransferState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiTransferTransferRequestedState::~BambiTransferTransferRequestedState(BambiTransferTransferRequestedState *this)
{
  BambiTransferState::~BambiTransferState((this - 8));
}

{
  BambiTransferState::~BambiTransferState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 208));
}

{
  BambiTransferState::~BambiTransferState((this - 208));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 344));
}

{
  BambiTransferState::~BambiTransferState((this - 344));

  JUMPOUT(0x1E69235B0);
}

void BambiTransferTransferCompleteState::~BambiTransferTransferCompleteState(BambiTransferTransferCompleteState *this)
{
  BambiTransferState::~BambiTransferState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiTransferTransferCompleteState::~BambiTransferTransferCompleteState(BambiTransferTransferCompleteState *this)
{
  BambiTransferState::~BambiTransferState((this - 8));
}

{
  BambiTransferState::~BambiTransferState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 208));
}

{
  BambiTransferState::~BambiTransferState((this - 208));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferState::~BambiTransferState((this - 344));
}

{
  BambiTransferState::~BambiTransferState((this - 344));

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<BambiTransferState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiTransferState>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECC718;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECC718;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECC718;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 80))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0,std::allocator<BambiTransferWaitingForHoldState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECC798;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECC798;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECC798;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 80))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0,std::allocator<BambiTransferTransferRequestedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t BambiCallAction::BambiCallAction(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F5EBEEC0;
  v6 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v33, "bambi.call");
  BambiCall::clientConfig(*a2, v25);
  v28 = v25[0];
  v29 = v25[1];
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  v31 = v27;
  v32 = 1;
  ImsLogContainer::ImsLogContainer(v6, &v33, &v28);
  if (v32 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "bambi.call");
  BambiCall::clientConfig(*a2, v20);
  ims::getQueue(&v34);
  ClientConfig::getLogTag(v20, &v33);
  if ((v24 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v8 = v24;
  }

  else
  {
    v8 = v23[1];
  }

  v9 = std::string::insert(&v33, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[0] = v9->__r_.__value_.__r.__words[2];
  *v25 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v26.__r_.__value_.__s.__data_[7] >= 0)
  {
    v11 = v25;
  }

  else
  {
    v11 = v25[0];
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v12 = v34;
  *(a1 + 168) = v34;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v11);
  if (v26.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 144) = &unk_1F5ECCB70;
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  *a1 = &unk_1F5ECC818;
  *(a1 + 8) = &unk_1F5ECC878;
  *(a1 + 144) = &unk_1F5ECC8D8;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 224));
  v14 = *a2;
  v13 = *(a2 + 8);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 200);
  *(a1 + 192) = v14;
  *(a1 + 200) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v17 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 216);
  *(a1 + 208) = v17;
  *(a1 + 216) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  *(a1 + 352) = a1;
  BambiCall::clientConfig(*a2, v25);
  std::string::operator=((a1 + 272), (a1 + 16));
  *(a1 + 296) = v25[0];
  *(a1 + 304) = v25[1];
  std::string::operator=((a1 + 312), &v26);
  *(a1 + 336) = v27;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E4DA83D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  _Unwind_Resume(exception_object);
}

void BambiCallAction::enqueue(BambiCallAction *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 25);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 24);
      if (v5)
      {
        v6 = *(this + 20);
        if (!v6 || (v7 = *(this + 19), (v8 = std::__shared_weak_count::lock(v6)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v9 = v8;
        p_shared_weak_owners = &v8->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v11 = std::__shared_weak_count::lock(*(v5 + 384));
        v12 = *(v5 + 376);
        v13 = *(v12 + 248);
        v14 = *(v12 + 256);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *(SipUserAgent::config(v13) + 592);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        else
        {
          v15 = *(SipUserAgent::config(v13) + 592);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        if (v15)
        {
          atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v17 = 0;
          operator new();
        }

        std::__shared_weak_count::__release_weak(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E4DA86A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void BambiCallAction::handleTimer(void *a1, uint64_t *a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v3 == 6)
  {
    if (v4 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v18 = *v17;
    v19 = *(v17 + 2);
    if (v18 == 1668178243 && v19 == 27749)
    {
      v21 = a1 + 1;
      v22 = (*(a1[1] + 48))(a1 + 1);
      (*(*v21 + 16))(a1 + 1, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "timed out waiting for prerequisites. Canceling.", 47);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      v23 = a1[27];
      if (v23)
      {
        v24 = std::__shared_weak_count::lock(v23);
        if (v24)
        {
          v13 = v24;
          v25 = a1[26];
          if (!v25)
          {
            goto LABEL_35;
          }

          v26 = a1[20];
          v27 = a1[19];
          if (v26)
          {
            v28 = std::__shared_weak_count::lock(v26);
            if (v28)
            {
              BambiCallActivity::removeCallAction(v25, &v27);
              v16 = v28;
              if (v28)
              {
LABEL_34:
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

LABEL_35:
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              return;
            }
          }

          else
          {
            v28 = 0;
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }
    }
  }

  else if (v3 == 13)
  {
    v5 = v4 >= 0 ? a2 : *a2;
    v6 = *v5;
    v7 = *(v5 + 5);
    if (v6 == 0x416D726F66726550 && v7 == 0x796177796E416D72)
    {
      v9 = a1 + 1;
      v10 = (*(a1[1] + 48))(a1 + 1);
      (*(*v9 + 16))(a1 + 1, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "timed out waiting for prerequisites. Continuing.", 48);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      (*(*a1 + 40))(v31, a1);
      ImsResult::~ImsResult(v31);
      v11 = a1[27];
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = a1[26];
          if (v14)
          {
            v15 = a1[20];
            v29 = a1[19];
            if (v15)
            {
              v30 = std::__shared_weak_count::lock(v15);
              if (v30)
              {
                BambiCallActivity::removeCallAction(v14, &v29);
                v16 = v30;
                if (!v30)
                {
                  goto LABEL_35;
                }

                goto LABEL_34;
              }
            }

            else
            {
              v30 = 0;
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          goto LABEL_35;
        }
      }
    }
  }
}

void sub_1E4DA89F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

double BambiCallAction::perform@<D0>(BambiCallAction *this@<X0>, uint64_t a2@<X8>)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0;
  return result;
}

ImsOutStream *BambiCallAction::log(std::__shared_weak_count **this, ImsOutStream *a2)
{
  ((*this)[1].__vftable)(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = this[25];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = this[24];
      if (v6)
      {
        ObfuscatedString::ObfuscatedString(__p, v6 + 21);
        (*(*a2 + 56))(a2, __p);
        if (v11 < 0)
        {
          operator delete(v10);
        }

        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Unknown Call", 12);
  *(a2 + 17) = 0;
  if (v5)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a2;
}

void sub_1E4DA8BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  ims::AccessNetwork::~AccessNetwork(&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void BambiCallRequireCallsHeldAction::createPrerequisites(uint64_t a1)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 192);
      if (v5)
      {
        IPTelephonyManager::getBambiClient(&v22);
        v6 = v22;
        v27[0] = v5;
        v27[1] = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        BambiClient::unheldCallsExcludingCall(v6, &v28, v27);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v8 = v28;
        v7 = v29;
        if (v28 != v29)
        {
          v9 = a1 + 8;
          do
          {
            v11 = *v8;
            v10 = v8[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v11 == v5)
            {
              v15 = (*(*v9 + 48))(a1 + 8);
              (*(*v9 + 16))(a1 + 8, v15);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "createPrerequisites: my call shouldn't be in the unheld calls list", 66);
              *(v15 + 17) = 0;
              (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v15 + 17) = 0;
            }

            else
            {
              if ((*(v11 + 480) & 0xFFFFFFFE) == 2)
              {
                v12 = (*(*v9 + 64))(a1 + 8);
                (*(*v9 + 16))(a1 + 8, v12);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 1), "call ", 5);
                v12[17] = 0;
                ObfuscatedString::ObfuscatedString(&v22, (v11 + 504));
                (*(*v12 + 56))(v12, &v22);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 1), " is already ", 12);
                v12[17] = 0;
                v13 = *(v11 + 480);
                if (v13 == 3)
                {
                  v14 = "held";
                }

                else if (v13 == 2)
                {
                  v14 = "holding";
                }

                else if (v13)
                {
                  v14 = "resumed";
                }

                else
                {
                  v14 = "resuming";
                }

                v20 = *v14;
                LoggableString::LoggableString(&__p, &v20);
                (*(*v12 + 40))(v12, &__p);
                (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v12[17] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v20.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v16 = *(v11 + 408);
                if (v16)
                {
                  if (SipSession::terminating(v16))
                  {
                    v17 = (*(*v9 + 64))(a1 + 8);
                    (*(*v9 + 16))(a1 + 8, v17);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "unheld call ", 12);
                    *(v17 + 17) = 0;
                    ObfuscatedString::ObfuscatedString(&v22, (v11 + 504));
                    (*(*v17 + 56))(v17, &v22);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " is terminating. Don't need to hold it.", 39);
                    *(v17 + 17) = 0;
                    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  }

                  else
                  {
                    v18 = *(v11 + 408);
                    if (!v18 || !(*(*v18 + 264))(v18))
                    {
                      v19 = (*(*v9 + 64))(a1 + 8);
                      (*(*v9 + 16))(a1 + 8, v19);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "need to put ", 12);
                      *(v19 + 17) = 0;
                      ObfuscatedString::ObfuscatedString(&v22, (v11 + 504));
                      (*(*v19 + 56))(v19, &v22);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " on hold first", 14);
                      *(v19 + 17) = 0;
                      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                      *(v19 + 17) = 0;
                      if (v26 < 0)
                      {
                        operator delete(v25);
                      }

                      if (v24 < 0)
                      {
                        operator delete(v22);
                      }

                      operator new();
                    }

                    v17 = (*(*v9 + 64))(a1 + 8);
                    (*(*v9 + 16))(a1 + 8, v17);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "unheld call ", 12);
                    *(v17 + 17) = 0;
                    ObfuscatedString::ObfuscatedString(&v22, (v11 + 504));
                    (*(*v17 + 56))(v17, &v22);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " has already terminated. Don't need to hold it.", 47);
                    *(v17 + 17) = 0;
                    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  }
                }

                else
                {
                  v17 = (*(*v9 + 64))(a1 + 8);
                  (*(*v9 + 16))(a1 + 8, v17);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "unheld call ", 12);
                  *(v17 + 17) = 0;
                  ObfuscatedString::ObfuscatedString(&v22, (v11 + 504));
                  (*(*v17 + 56))(v17, &v22);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " has no session. Don't need to hold it.", 39);
                  *(v17 + 17) = 0;
                  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                }

                *(v17 + 17) = 0;
              }

              if (v26 < 0)
              {
                operator delete(v25);
              }

              if (v24 < 0)
              {
                operator delete(v22);
              }
            }

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            v8 += 2;
          }

          while (v8 != v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v22 = &v28;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1E4DA94F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  __p = (v28 - 112);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<BambiCallAction>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = 16 * v6 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}

uint64_t BambiCallRequireCallsHeldAction::prerequisitesMet(BambiCallRequireCallsHeldAction *this)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v2 = *(this + 25);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 24);
      if (v5)
      {
        IPTelephonyManager::getBambiClient(&v25);
        v6 = v25;
        v30[0] = v5;
        v30[1] = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = BambiClient::unheldCallsExcludingCall(v6, &v31, v30);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v9 = *(this + 1);
        v8 = this + 8;
        v10 = *(v9 + 64);
        if ((v7 & 1) == 0)
        {
          v21 = v10(v8);
          (*(*v8 + 16))(v8, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "no unheld calls", 15);
          *(v21 + 17) = 0;
          (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v21 + 17) = 0;
          v20 = 1;
          goto LABEL_37;
        }

        v11 = v10(v8);
        (*(*v8 + 16))(v8, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "still waiting for these calls to go on hold or terminate:", 57);
        *(v11 + 17) = 0;
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        v13 = v31;
        v12 = v32;
        if (v31 != v32)
        {
          while (1)
          {
            v15 = *v13;
            v14 = v13[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v16 = *(v5 + 408);
            if (v16 && SipSession::terminating(v16))
            {
              v17 = (*(*v8 + 64))(v8);
              (*(*v8 + 16))(v8, v17);
              ObfuscatedString::ObfuscatedString(&v25, (v15 + 504));
              (*(*v17 + 56))(v17, &v25);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), ": terminating (", 15);
              *(v17 + 17) = 0;
              BambiCall::sipSessionState(v15, &v23);
              LoggableString::LoggableString(&__p, &v23);
              (*(*v17 + 40))(v17, &__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), ")", 1);
              *(v17 + 17) = 0;
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            }

            else
            {
              v17 = (*(*v8 + 64))(v8);
              (*(*v8 + 16))(v8, v17);
              ObfuscatedString::ObfuscatedString(&v25, (v15 + 504));
              (*(*v17 + 56))(v17, &v25);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), ": ", 2);
              *(v17 + 17) = 0;
              v18 = *(v15 + 480);
              if (v18 == 3)
              {
                v19 = "held";
              }

              else if (v18 == 2)
              {
                v19 = "holding";
              }

              else if (v18)
              {
                v19 = "resumed";
              }

              else
              {
                v19 = "resuming";
              }

              v23 = *v19;
              LoggableString::LoggableString(&__p, &v23);
              (*(*v17 + 40))(v17, &__p);
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            }

            *(v17 + 17) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v23.__r_.__value_.__l.__data_);
            }

            if (v29 < 0)
            {
              operator delete(v28);
            }

            if (v27 < 0)
            {
              break;
            }

            if (v14)
            {
              goto LABEL_29;
            }

LABEL_30:
            v13 += 2;
            if (v13 == v12)
            {
              goto LABEL_35;
            }
          }

          operator delete(v25);
          if (!v14)
          {
            goto LABEL_30;
          }

LABEL_29:
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          goto LABEL_30;
        }
      }

LABEL_35:
      v20 = 0;
LABEL_37:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      goto LABEL_38;
    }
  }

  v20 = 0;
LABEL_38:
  v25 = &v31;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v25);
  return v20;
}

void sub_1E4DA9C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  a22 = v24 - 104;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void BambiCallRequirePrepareAction::createPrerequisites(uint64_t a1)
{
  BambiCallRequireCallsHeldAction::createPrerequisites(a1);
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 192);
      if (v4 && (*(v4 + 497) & 1) == 0)
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E4DA9F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t BambiCallRequirePrepareAction::prerequisitesMet(BambiCallRequirePrepareAction *this)
{
  v2 = *(this + 25);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 24);
  if (v5 && *(v5 + 497) == 1)
  {
    v6 = BambiCallRequireCallsHeldAction::prerequisitesMet(this);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void BambiCallStartAction::perform(BambiCallStartAction *this@<X0>, uint64_t a2@<X8>)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30[0] = &unk_1F5EBDEF8;
  v30[1] = &_bambiDomain;
  v31 = 0;
  ImsResult::~ImsResult(v30);
  v4 = *(this + 25);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 24)) == 0)
  {
LABEL_17:
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = &unk_1F5EBDEF8;
    v24 = &_bambiDomain;
    v25 = 0x40000000;
    v20 = ImsResult::operator<<<char [13]>(&v23, "Call is null");
    ImsResult::ImsResult(a2, v20);
    ImsResult::~ImsResult(&v23);
    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  v7 = (*(*(this + 1) + 64))(this + 8);
  (*(*(this + 1) + 16))(this + 8, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "starting call", 13);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v8 = *(this + 27);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(this + 26);
      if (v11)
      {
        v12 = *(v11 + 256);
        if (v12)
        {
          v13 = *(v11 + 248);
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v14 = std::__shared_weak_count::lock(v12);
          std::__shared_weak_count::__release_weak(v12);
          if (v14)
          {
            if (v13)
            {
              v22[0] = v6;
              v22[1] = v5;
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              v15 = *(this + 20);
              v21 = *(this + 19);
              if (!v15 || (v16 = std::__shared_weak_count::lock(v15)) == 0)
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v17 = v16;
              BambiStrictCallHandler::startCallFromAction(v13, v22, &v23);
              v18 = (*(*v24 + 24))(v24, v25);
              ImsResult::~ImsResult(&v23);
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
              if ((v18 & 1) == 0)
              {
                *(a2 + 24) = 0u;
                *(a2 + 40) = 0u;
                *(a2 + 56) = 0u;
                *(a2 + 72) = 0u;
                *a2 = &unk_1F5EBDEF8;
                *(a2 + 8) = &_bambiDomain;
                *(a2 + 16) = 0;
                std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                std::__shared_weak_count::__release_shared[abi:ne200100](v10);
                goto LABEL_18;
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = &unk_1F5EBDEF8;
  v24 = &_bambiDomain;
  v25 = 0x40000000;
  v19 = ImsResult::operator<<<char [21]>(&v23, "unable to start call");
  ImsResult::ImsResult(a2, v19);
  ImsResult::~ImsResult(&v23);
LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1E4DAA38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [13]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

void BambiCallAnswerAction::perform(BambiCallAnswerAction *this@<X0>, ImsResult *a2@<X8>)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29[0] = &unk_1F5EBDEF8;
  v29[1] = &_bambiDomain;
  v30 = 0;
  ImsResult::~ImsResult(v29);
  v4 = *(this + 25);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 24);
      if (v6)
      {
        v7 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "answering call", 14);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        v8 = *(this + 27);
        if (v8)
        {
          v9 = std::__shared_weak_count::lock(v8);
          if (v9)
          {
            v10 = v9;
            v11 = *(this + 26);
            if (v11)
            {
              v12 = *(v11 + 256);
              if (v12)
              {
                v13 = *(v11 + 248);
                atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v14 = std::__shared_weak_count::lock(v12);
                std::__shared_weak_count::__release_weak(v12);
                if (v14)
                {
                  if (v13)
                  {
                    v21[0] = v6;
                    v21[1] = v5;
                    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                    v15 = *(this + 20);
                    v20 = *(this + 19);
                    if (!v15 || (v16 = std::__shared_weak_count::lock(v15)) == 0)
                    {
                      std::__throw_bad_weak_ptr[abi:ne200100]();
                    }

                    v17 = v16;
                    BambiStrictCallHandler::answerCallFromAction(v21, a2);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
                    goto LABEL_19;
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                }
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v22 = &unk_1F5EBDEF8;
        v23 = &_bambiDomain;
        v24 = 0x40000000;
        v19 = ImsResult::operator<<<char [22]>(&v22, "unable to answer call");
        ImsResult::ImsResult(a2, v19);
        ImsResult::~ImsResult(&v22);
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = &unk_1F5EBDEF8;
  v23 = &_bambiDomain;
  v24 = 0x40000000;
  v18 = ImsResult::operator<<<char [13]>(&v22, "Call is null");
  ImsResult::ImsResult(a2, v18);
  ImsResult::~ImsResult(&v22);
  if (v5)
  {
    goto LABEL_19;
  }
}

void sub_1E4DAA7B0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t BambiCallResumeAction::prerequisitesMet(BambiCallResumeAction *this)
{
  v2 = *(this + 25);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 24);
  if (v5)
  {
    if (*(v5 + 480) == 2)
    {
      v7 = *(this + 1);
      v6 = this + 8;
      v8 = (*(v7 + 64))(v6);
      (*(*v6 + 16))(v6, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "waiting for call to finish holding", 34);
      *(v8 + 17) = 0;
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v9 = 0;
      *(v8 + 17) = 0;
    }

    else
    {
      v9 = BambiCallRequireCallsHeldAction::prerequisitesMet(this);
    }
  }

  else
  {
    v9 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v9;
}

void BambiCallResumeAction::perform(BambiCallResumeAction *this@<X0>, uint64_t a2@<X8>)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29[0] = &unk_1F5EBDEF8;
  v29[1] = &_bambiDomain;
  v30 = 0;
  ImsResult::~ImsResult(v29);
  v4 = *(this + 25);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 24);
      if (v6)
      {
        v7 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "resuming call", 13);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        v8 = *(this + 27);
        if (v8)
        {
          v9 = std::__shared_weak_count::lock(v8);
          if (v9)
          {
            v10 = v9;
            v11 = *(this + 26);
            if (v11)
            {
              v12 = *(v11 + 256);
              if (v12)
              {
                v13 = *(v11 + 248);
                atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v14 = std::__shared_weak_count::lock(v12);
                std::__shared_weak_count::__release_weak(v12);
                if (v14)
                {
                  if (v13)
                  {
                    v21[0] = v6;
                    v21[1] = v5;
                    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                    v15 = *(this + 20);
                    v20 = *(this + 19);
                    if (!v15 || (v16 = std::__shared_weak_count::lock(v15)) == 0)
                    {
                      std::__throw_bad_weak_ptr[abi:ne200100]();
                    }

                    v17 = v16;
                    BambiStrictCallHandler::resumeCallFromAction(v13, v21);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                    *(a2 + 24) = 0u;
                    *(a2 + 40) = 0u;
                    *(a2 + 56) = 0u;
                    *(a2 + 72) = 0u;
                    *a2 = &unk_1F5EBDEF8;
                    *(a2 + 8) = &_bambiDomain;
                    *(a2 + 16) = 0;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
                    goto LABEL_19;
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                }
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v22 = &unk_1F5EBDEF8;
        v23 = &_bambiDomain;
        v24 = 0x40000000;
        v19 = ImsResult::operator<<<char [22]>(&v22, "unable to resume call");
        ImsResult::ImsResult(a2, v19);
        ImsResult::~ImsResult(&v22);
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = &unk_1F5EBDEF8;
  v23 = &_bambiDomain;
  v24 = 0x40000000;
  v18 = ImsResult::operator<<<char [13]>(&v22, "Call is null");
  ImsResult::ImsResult(a2, v18);
  ImsResult::~ImsResult(&v22);
  if (v5)
  {
    goto LABEL_19;
  }
}

void sub_1E4DAAC94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiCallPrepareAction::perform(BambiCallPrepareAction *this@<X0>, uint64_t a2@<X8>)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v32[0] = &unk_1F5EBDEF8;
  v32[1] = &_bambiDomain;
  v33 = 0;
  ImsResult::~ImsResult(v32);
  v4 = *(this + 25);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 24)) == 0)
  {
LABEL_7:
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = &unk_1F5EBDEF8;
    v26 = &_bambiDomain;
    v27 = 0x40000000;
    v10 = ImsResult::operator<<<char [13]>(&v25, "Call in null");
    ImsResult::ImsResult(a2, v10);
    ImsResult::~ImsResult(&v25);
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = this + 8;
  v8 = *(*(this + 1) + 64);
  if (*(v6 + 497) != 1)
  {
    v11 = v8(this + 8);
    (*(*v7 + 16))(this + 8, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "preparing call", 14);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    v12 = *(this + 27);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = *(this + 26);
        if (v14)
        {
          v15 = *(v14 + 256);
          if (v15)
          {
            v16 = *(v14 + 248);
            atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v17 = std::__shared_weak_count::lock(v15);
            std::__shared_weak_count::__release_weak(v15);
            if (v17 && v16)
            {
              v24[0] = v6;
              v24[1] = v5;
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *(this + 20);
              v23 = *(this + 19);
              if (!v18 || (v19 = std::__shared_weak_count::lock(v18)) == 0)
              {
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              v20 = v19;
              BambiStrictCallHandler::prepareCallFromAction(v16, v24);
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
              *(a2 + 24) = 0u;
              *(a2 + 40) = 0u;
              *(a2 + 56) = 0u;
              *(a2 + 72) = 0u;
              *a2 = &unk_1F5EBDEF8;
              *(a2 + 8) = &_bambiDomain;
              *(a2 + 16) = 0;
              goto LABEL_24;
            }
          }

          else
          {
            v17 = 0;
          }

          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v25 = &unk_1F5EBDEF8;
          v26 = &_bambiDomain;
          v27 = 0x40000000;
          v22 = ImsResult::operator<<<char [20]>(&v25, "CallHandler is null");
          ImsResult::ImsResult(a2, v22);
          ImsResult::~ImsResult(&v25);
          if (!v17)
          {
LABEL_25:
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            goto LABEL_8;
          }

LABEL_24:
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          goto LABEL_25;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = &unk_1F5EBDEF8;
    v26 = &_bambiDomain;
    v27 = 0x40000000;
    v21 = ImsResult::operator<<<char [21]>(&v25, "CallActivity is null");
    ImsResult::ImsResult(a2, v21);
    ImsResult::~ImsResult(&v25);
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  v9 = v8(this + 8);
  (*(*v7 + 16))(this + 8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "call is already prepared", 24);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0;
LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1E4DAB17C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t BambiCallHoldAction::prerequisitesMet(BambiCallHoldAction *this)
{
  v2 = *(this + 25);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 24);
  if (v5)
  {
    if (*(v5 + 480))
    {
      v6 = 1;
    }

    else
    {
      v8 = *(this + 1);
      v7 = this + 8;
      v9 = (*(v8 + 64))(v7);
      (*(*v7 + 16))(v7, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "waiting for call to resume", 26);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v6 = 0;
      *(v9 + 17) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void BambiCallHoldAction::perform(BambiCallHoldAction *this@<X0>, uint64_t a2@<X8>)
{
  SipTimerContainer::cancelAllTimers((this + 224));
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33[0] = &unk_1F5EBDEF8;
  v33[1] = &_bambiDomain;
  v34 = 0;
  ImsResult::~ImsResult(v33);
  v4 = *(this + 25);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 24);
      if (v6)
      {
        v7 = this + 8;
        v8 = *(*(this + 1) + 64);
        if ((*(v6 + 480) & 0xFFFFFFFE) == 2)
        {
          v9 = v8(this + 8);
          (*(*v7 + 16))(this + 8, v9);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "call is already ", 16);
          *(v9 + 17) = 0;
          v10 = *(v6 + 480);
          if (v10 == 3)
          {
            v11 = "held";
          }

          else if (v10 == 2)
          {
            v11 = "holding";
          }

          else if (v10)
          {
            v11 = "resumed";
          }

          else
          {
            v11 = "resuming";
          }

          v27 = *v11;
          LoggableString::LoggableString(&__p, &v27);
          (*(*v9 + 40))(v9, &__p);
          (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v9 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }

          *(a2 + 24) = 0u;
          *(a2 + 40) = 0u;
          *(a2 + 56) = 0u;
          *(a2 + 72) = 0u;
          *a2 = &unk_1F5EBDEF8;
          *(a2 + 8) = &_bambiDomain;
          *(a2 + 16) = 0;
          goto LABEL_36;
        }

        v13 = v8(this + 8);
        (*(*v7 + 16))(this + 8, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "holding call", 12);
        *(v13 + 17) = 0;
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        v14 = *(this + 27);
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v16 = *(this + 26);
            if (v16)
            {
              v17 = *(v16 + 256);
              if (v17)
              {
                v18 = *(v16 + 248);
                atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v19 = std::__shared_weak_count::lock(v17);
                std::__shared_weak_count::__release_weak(v17);
                if (v19 && v18)
                {
                  v26[0] = v6;
                  v26[1] = v5;
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                  v20 = *(this + 20);
                  v25 = *(this + 19);
                  if (!v20 || (v21 = std::__shared_weak_count::lock(v20)) == 0)
                  {
                    std::__throw_bad_weak_ptr[abi:ne200100]();
                  }

                  v22 = v21;
                  BambiStrictCallHandler::holdCallFromAction(v18, v26);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                  *(a2 + 24) = 0u;
                  *(a2 + 40) = 0u;
                  *(a2 + 56) = 0u;
                  *(a2 + 72) = 0u;
                  *a2 = &unk_1F5EBDEF8;
                  *(a2 + 8) = &_bambiDomain;
                  *(a2 + 16) = 0;
                  goto LABEL_34;
                }
              }

              else
              {
                v19 = 0;
              }

              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
              __p.__r_.__value_.__l.__size_ = &_bambiDomain;
              LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
              v24 = ImsResult::operator<<<char [20]>(&__p, "CallHandler is null");
              ImsResult::ImsResult(a2, v24);
              ImsResult::~ImsResult(&__p);
              if (!v19)
              {
LABEL_35:
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                goto LABEL_36;
              }

LABEL_34:
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_35;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
        __p.__r_.__value_.__l.__size_ = &_bambiDomain;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
        v23 = ImsResult::operator<<<char [21]>(&__p, "CallActivity is null");
        ImsResult::ImsResult(a2, v23);
        ImsResult::~ImsResult(&__p);
        if (!v15)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  __p.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
  v12 = ImsResult::operator<<<char [13]>(&__p, "Call in null");
  ImsResult::ImsResult(a2, v12);
  ImsResult::~ImsResult(&__p);
  if (v5)
  {
LABEL_36:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4DAB850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void BambiCallAction::~BambiCallAction(BambiCallAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ECC818;
  *(this + 1) = &unk_1F5ECC878;
  *(this + 18) = &unk_1F5ECC8D8;
  SipTimerContainer::~SipTimerContainer((this + 224));
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void *BambiCallAction::logPrefix(BambiCallAction *this, ImsOutStream *a2)
{
  (*(*this + 16))(this);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  return result;
}

void non-virtual thunk toBambiCallAction::~BambiCallAction(BambiCallAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void *non-virtual thunk toBambiCallAction::logPrefix(BambiCallAction *this, ImsOutStream *a2)
{
  (*(*(this - 1) + 16))();
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  return result;
}

void BambiCallRequireCallsHeldAction::~BambiCallRequireCallsHeldAction(BambiCallRequireCallsHeldAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallRequireCallsHeldAction::~BambiCallRequireCallsHeldAction(BambiCallRequireCallsHeldAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallRequirePrepareAction::~BambiCallRequirePrepareAction(BambiCallRequirePrepareAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallRequirePrepareAction::~BambiCallRequirePrepareAction(BambiCallRequirePrepareAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallStartAction::~BambiCallStartAction(BambiCallStartAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallStartAction::~BambiCallStartAction(BambiCallStartAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallAnswerAction::~BambiCallAnswerAction(BambiCallAnswerAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallAnswerAction::~BambiCallAnswerAction(BambiCallAnswerAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallResumeAction::~BambiCallResumeAction(BambiCallResumeAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallResumeAction::~BambiCallResumeAction(BambiCallResumeAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallPrepareAction::~BambiCallPrepareAction(BambiCallPrepareAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallPrepareAction::~BambiCallPrepareAction(BambiCallPrepareAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

void BambiCallHoldAction::~BambiCallHoldAction(BambiCallHoldAction *this)
{
  BambiCallAction::~BambiCallAction(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallHoldAction::~BambiCallHoldAction(BambiCallHoldAction *this)
{
  BambiCallAction::~BambiCallAction((this - 8));
}

{
  BambiCallAction::~BambiCallAction((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallAction::~BambiCallAction((this - 144));
}

{
  BambiCallAction::~BambiCallAction((this - 144));

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<BambiCallAction>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiCallAction>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECCB98;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECCB98;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECCB98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 72))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<BambiCallAction::enqueue(void)::$_0,std::allocator<BambiCallAction::enqueue(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<BambiCallHoldAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECCF20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *BambiCallHoldAction::BambiCallHoldAction(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCallAction::BambiCallAction(a1, v8, v7);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *a1 = &unk_1F5ECCF70;
  a1[1] = &unk_1F5ECCFD0;
  a1[18] = &unk_1F5ECD030;
  return a1;
}

void sub_1E4DAC600(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<BambiCallPrepareAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECCC18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientUnconfirmedState::enterState(SipSessionClientUnconfirmedState *this, int a2)
{
  if (a2 == 1)
  {
    v3 = *(this + 33);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(this + 32);
        if (v6)
        {
          SipSession::startPingTimer(v6);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void BambiCallProvisionalResponseEvent::~BambiCallProvisionalResponseEvent(BambiCallProvisionalResponseEvent *this)
{
  *this = &unk_1F5ECD4E0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_1F5ECD4E0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *this = &unk_1F5ECD4E0;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EC4090;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientUnconfirmedState::handleInviteResponse(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2[1];
  v40[0] = *a2;
  v40[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v39[0] = *a3;
  v39[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSessionState::handleInviteResponse(a1, v40, v39);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *(*a2 + 128);
  if (v8 / 0x64 == 2)
  {
    v19 = (*(*a1 + 32))(a1);
    if ((*(*v19 + 24))(v19) <= 5)
    {
      v20 = *(*(*(*a1 + 32))(a1) + 32);

      v20();
    }

    return;
  }

  if (v8 / 0x64 != 1)
  {
    if (v8 == 422)
    {
      return;
    }

LABEL_39:
    v21 = a1[33];
    if (v21)
    {
      v11 = std::__shared_weak_count::lock(v21);
      if (v11)
      {
        v22 = a1[32];
        if (v22)
        {
          SipSessionInterface::stack(v22, &v41);
          v23 = *(v41 + 2817) == 1 && *(*a2 + 128) == 503;
          if (*(&v41 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v41 + 1));
          }

          if (v23)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v24 = *a2;
    if (*(*a2 + 128) >= 0x12Cu)
    {
      v25 = a2[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = a3[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = a1[33];
      if (v27)
      {
        v28 = std::__shared_weak_count::lock(v27);
        if (v28)
        {
          v29 = a1[32];
          if (v29)
          {
            shared_weak_owners = v29[34].__shared_weak_owners_;
            if (shared_weak_owners)
            {
              shared_owners = v29[34].__shared_owners_;
              atomic_fetch_add_explicit(&shared_weak_owners->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::lock(shared_weak_owners);
              std::__shared_weak_count::__release_weak(shared_weak_owners);
              v32 = v29[34].__shared_weak_owners_;
              bzero(v47, 0x250uLL);
              if (v32)
              {
                v33 = v29[34].__shared_owners_;
                atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v45 = 0;
                v46 = std::__shared_weak_count::lock(v32);
                v34 = 0;
                if (v46)
                {
                  v45 = v33;
                }
              }

              else
              {
                v46 = 0;
                v45 = 0;
                v34 = 1;
              }
            }

            else
            {
              bzero(v47, 0x250uLL);
              v32 = 0;
              v46 = 0;
              v45 = 0;
              v34 = 1;
            }

            BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(v47, &v45);
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            if ((v34 & 1) == 0)
            {
              std::__shared_weak_count::__release_weak(v32);
            }

            v44[0] = v24;
            v44[1] = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSessionInterface::stack(v29, &v41);
            BambiCallSessionTerminationBaseEvent::setReasonFromIncomingResponse(v47, v44);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }

    if (!v11)
    {
      return;
    }

LABEL_79:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    return;
  }

  if (v8 == 100)
  {
    goto LABEL_39;
  }

  if (v8 != 183)
  {
    goto LABEL_25;
  }

  v9 = a1[33];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = a1[32];
      if (v12)
      {
        v13 = a2[1];
        v37 = *a2;
        v38 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = a3[1];
        v35 = *a3;
        v36 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipSession::handleSessionProgressResponse(v12, &v37);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_25:
        if ((*(*a1 + 48))(a1) <= 3)
        {
          v15 = (*(*a1 + 32))(a1);
          (*(*v15 + 32))(v15, 4);
        }

        v16 = *a2;
        v17 = a2[1];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v18 = a3[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v47[0] = v16;
        v47[1] = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        *v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        BambiCallProvisionalResponseEvent::BambiCallProvisionalResponseEvent(&v41, v47);
      }

      goto LABEL_79;
    }
  }
}

void sub_1E4DAD1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  BambiCallEmergencySessionRequiredEvent::~BambiCallEmergencySessionRequiredEvent(&STACK[0x210]);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&STACK[0x628]);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void BambiCallEmergencySessionRequiredEvent::~BambiCallEmergencySessionRequiredEvent(void **this)
{
  *this = &unk_1F5ECD2A0;
  SipUri::~SipUri((this + 74));

  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(this);
}

{
  *this = &unk_1F5ECD2A0;
  SipUri::~SipUri((this + 74));
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ECD2A0;
  SipUri::~SipUri((this + 74));

  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(this);
}

void SipSessionClientInviteState::enterState(SipSessionClientInviteState *this)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  v12 = &unk_1F5ECDB78;
  if (byte_1EE2BCEF0[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *byte_1EE2BCEF0, *&byte_1EE2BCEF0[8]);
  }

  else
  {
    __p = *byte_1EE2BCEF0;
  }

  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (SipSession::emergency(*(this + 32)))
        {
          v5 = &unk_1EE2BCEB0;
        }

        else
        {
          SipSessionInterface::stack(v4, &v14);
          if (*(v14 + 3981) == 1)
          {
            SipSessionInterface::stack(v4, &v10);
            isNR = ims::AccessNetwork::isNR((v10 + 3432));
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }
          }

          else
          {
            isNR = 0;
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (!isNR)
          {
LABEL_18:
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, this + 27);
            v7 = v15;
            if (v15)
            {
              p_shared_weak_owners = &v15->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            }

            v16 = 0;
            operator new();
          }

          v5 = &unk_1EE2BCED0;
        }

        std::string::operator=(&__p, v5);
        goto LABEL_18;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = &unk_1F5ECDB78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4DAD61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipTimer::~SipTimer(void **this)
{
  *this = &unk_1F5ECDB78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ECDB78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientInviteState::handleTimer(SipSessionState *a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerInviteResponseTimeout) || operator==(a2, &SipTimers::kTimerEPSInviteResponseTimeout) || operator==(a2, &SipTimers::kTimerEmergencyInviteResponseTimeout))
  {
    v4 = *(a1 + 33);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 32);
        if (v7)
        {
          v17 = 0;
          v18 = 0;
          SipSession::clientInviteTransaction(v7, &v17);
          if (v17)
          {
            SipTransaction::abort(v17);
          }

          bzero(v15, 0x250uLL);
          BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v15, 15, 17);
          v15[0] = &unk_1F5EC4038;
          if (SipSession::emergency(v7))
          {
            SipSessionInterface::stack(v7, &__p);
            v8 = SipStack::prefs(__p.__r_.__value_.__l.__data_);
            v16 = ImsPrefs::EmergencyAnonymousAutomaticRedial(v8);
            if (__p.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
            }
          }

          SipSessionState::terminateSessionWithEvent(a1, v15);
          v13 = 0;
          v14 = 0;
          SipSessionInterface::stack(v7, &v13);
          if (v13 && ims::AccessNetwork::isWifi((v13 + 3432)))
          {
            IPTelephonyManager::getBambiClient(&v11);
            v9 = v11;
            if (*(v13 + 4455) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v13 + 554), *(v13 + 555));
            }

            else
            {
              __p = *(v13 + 4432);
            }

            BambiClient::requestNetworkReset(v9, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(v15);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void sub_1E4DAD8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(&a20);
  v23 = *(v21 - 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipSessionClientInviteState::handleInviteResponse(void *a1, void *a2, uint64_t *a3)
{
  if (*(*a2 + 128) == 100)
  {
    v3 = *(*(*(*a1 + 32))(a1) + 32);

    v3();
  }

  else
  {
    v4 = a2[1];
    v7[0] = *a2;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = a3[1];
    v6[0] = *a3;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipSessionClientUnconfirmedState::handleInviteResponse(a1, v7, v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4DADA90(_Unwind_Exception *exception_object)
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

void SipSessionClientReceivedTryingResponseState::enterState(SipSessionClientReceivedTryingResponseState *this, int a2)
{
  v5 = 0u;
  *v6 = 0u;
  v4[0] = 0;
  v4[1] = 0;
  BambiCallEvent::BambiCallEvent(&v5, 1, v4);
  SipSessionState::fireCallEvent(this, &v5);
  SipSessionClientUnconfirmedState::enterState(this, a2);
  *&v5 = &unk_1F5EC4090;
  if (v6[1])
  {
    std::__shared_weak_count::__release_weak(v6[1]);
  }
}

void sub_1E4DADB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  _Unwind_Resume(exception_object);
}

void SipSessionClientCanceledState::enterState(SipSessionClientCanceledState *this, unsigned int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *(this + 272) = 0;
  v3 = *(this + 33);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 32);
      if (v7)
      {
        v31 = 0;
        v32 = 0;
        SipSessionInterface::stack(v7, &v31);
        if (v31)
        {
          v9 = *(v31 + 31);
          v8 = *(v31 + 32);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v9)
          {
            *buf = 0;
            *&buf[8] = 0;
            SipSession::clientInviteTransaction(v7, buf);
            if (a2 < 2)
            {
              v17 = (*(*v7 + 64))(v7);
              (*(*v7 + 16))(v7, v17);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "queuing CANCEL until we receive a provisional response.", 55);
              *(v17 + 17) = 0;
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v17 + 17) = 0;
              v18 = *buf;
              if (*buf)
              {
                v19 = (*(*v7 + 64))(v7);
                (*(*v7 + 16))(v7, v19);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "turning off retransmission of INVITE", 36);
                *(v19 + 17) = 0;
                (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v19 + 17) = 0;
                *(v18 + 352) = 0;
              }
            }

            else
            {
              v10 = *buf;
              if (*buf)
              {
                v11 = *(v7 + 240);
                v12 = *(v7 + 248);
                if (v12)
                {
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v25 = v10;
                v26 = *&buf[8];
                if (*&buf[8])
                {
                  atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                }

                SipDialog::cancelInviteRequest(v11, &v25, *(v7 + 1600), &__p);
                *(this + 272) = (*(*v28 + 24))(v28, v29) ^ 1;
                ImsResult::~ImsResult(&__p);
                if (v26)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                }

                if (v12)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
                }
              }

              else
              {
                v20 = (*(*v7 + 64))(v7);
                (*(*v7 + 16))(v7, v20);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "no client INVITE transaction to cancel, going right to terminated state", 71);
                *(v20 + 17) = 0;
                (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v20 + 17) = 0;
                v21 = (*(*this + 32))(this);
                (*(*v21 + 32))(v21, 13);
              }
            }

            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
            v22 = v28;
            if (v28)
            {
              v23 = v28 + 2;
              atomic_fetch_add_explicit(v28 + 2, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
              if (*(SipUserAgent::config(v9) + 600))
              {
                atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
                goto LABEL_37;
              }

              std::__shared_weak_count::__release_weak(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            else if (*(SipUserAgent::config(v9) + 600))
            {
LABEL_37:
              v33 = 0;
              operator new();
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }
          }

          else
          {
            v15 = *(this + 31);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              (*(*(this + 26) + 16))(&__p, this + 208);
              v16 = v30 >= 0 ? &__p : __p;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v16;
              _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
              if (v30 < 0)
              {
                operator delete(__p);
              }
            }
          }

          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          v13 = *(this + 31);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 26) + 16))(&__p, this + 208);
            v14 = v30 >= 0 ? &__p : __p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v14;
            _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
            if (v30 < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E4DAE1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  ImsResult::~ImsResult(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v29 = *(v27 - 104);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void SipSessionClientCanceledState::terminateSession(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 264);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 256);
      if (v7)
      {
        v8 = (v7->__vftable[1].__get_deleter)(v7);
        (v7->__on_zero_shared)(v7, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "terminating session", 19);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        v21 = 0;
        *&v22.__r_.__value_.__r.__words[1] = 0u;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        *&v24[16] = 0u;
        v25 = 0u;
        v23 = 0u;
        *v24 = 0u;
        *(&v22.__r_.__value_.__s + 23) = 13;
        qmemcpy(&v22, "InternalError", 13);
        *&v24[12] = 0xA000001F4;
        shared_weak_owners = v7[66].__shared_weak_owners_;
        if (!shared_weak_owners)
        {
          SipSessionInterface::stack(v7, &v20);
          v18 = v20;
          std::string::basic_string[abi:ne200100]<0>(__p, "InternalError");
          BambiCallTerminationReasonsBase::reason(v18 + 298);
        }

        LODWORD(v21) = *shared_weak_owners;
        std::string::operator=(&v22, (shared_weak_owners + 8));
        std::string::operator=(&v23, (shared_weak_owners + 32));
        v10 = *(shared_weak_owners + 56);
        *&v24[16] = *(shared_weak_owners + 64);
        *&v24[8] = v10;
        std::string::operator=(&v24[24], (shared_weak_owners + 72));
        v12 = *(shared_weak_owners + 96);
        v11 = *(shared_weak_owners + 104);
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = *(&v26 + 1);
        *&v26 = v12;
        *(&v26 + 1) = v11;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v15 = *(shared_weak_owners + 112);
        v14 = *(shared_weak_owners + 120);
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = *(&v27 + 1);
        *&v27 = v15;
        *(&v27 + 1) = v14;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v17 = *(shared_weak_owners + 128);
        *(&v28 + 3) = *(shared_weak_owners + 131);
        LODWORD(v28) = v17;
        bzero(__p, 0x250uLL);
        BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(__p, 15, &v21);
        __p[0] = &unk_1F5EC4038;
        SipSession::terminateWithEvent(v7, __p, a2);
        BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(__p);
        if (*(&v27 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
        }

        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(*&v24[24]);
        }

        if ((v24[7] & 0x80000000) != 0)
        {
          operator delete(v23);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4DAE61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 232);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason((v15 - 208));
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void SipSessionClientCanceledState::handleTimer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  v4 = qword_1EE2BBE58;
  if (byte_1EE2BBE67 >= 0)
  {
    v4 = byte_1EE2BBE67;
  }

  if (v3 == v4)
  {
    v6 = v2 >= 0 ? a2 : *a2;
    v7 = byte_1EE2BBE67 >= 0 ? &kWaitingForCancelResponseTimerName : kWaitingForCancelResponseTimerName;
    if (!memcmp(v6, v7, v3))
    {

      SipSessionClientCanceledState::terminateSession(a1, 8);
    }
  }
}

void SipSessionClientCanceledState::handleResponse(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 256);
      if (!v9)
      {
        goto LABEL_89;
      }

      v10 = *(*a3 + 264);
      v11 = *(*a3 + 272);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = (*(*v10 + 120))(v10);
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v13 == 6)
      {
        if (v14 >= 0)
        {
          v15 = v12;
        }

        else
        {
          v15 = *v12;
        }

        v16 = *v15;
        v17 = *(v15 + 4);
        v19 = v16 == *"INVITE" && v17 == *"TE";
        if (!v11)
        {
LABEL_22:
          if (v19)
          {
            v20 = *(*a2 + 128);
            if (v20 - 100 <= 0x63)
            {
              if (*(a1 + 272))
              {
                goto LABEL_89;
              }

              v21 = (*(*v9 + 64))(v9);
              (*(*v9 + 16))(v9, v21);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "received provisional response to INVITE.  Sending pending CANCEL request.", 73);
              *(v21 + 17) = 0;
              (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v21 + 17) = 0;
              v22 = v9[30];
              v23 = v9[31];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = a3[1];
              v68 = *a3;
              v69 = v24;
              if (v24)
              {
                atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialog::cancelInviteRequest(v22, &v68, v9[200], &v56);
              *(a1 + 272) = (*(*v57.__r_.__value_.__l.__data_ + 24))(v57.__r_.__value_.__r.__words[0], LODWORD(v57.__r_.__value_.__r.__words[1])) ^ 1;
              ImsResult::~ImsResult(&v56);
              if (v69)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v69);
              }

              if (!v23)
              {
                goto LABEL_89;
              }

              v25 = v23;
              goto LABEL_88;
            }

            if (v20 - 200 > 0x63)
            {
              if (v20 >= 0x12C)
              {
                SipSessionClientCanceledState::terminateSession(a1, 13);
              }

              goto LABEL_89;
            }

            v36 = (*(*v9 + 64))(v9);
            (*(*v9 + 16))(v9, v36);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "received 200 after we sent a CANCEL.  Sending BYE.", 50);
            *(v36 + 17) = 0;
            (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v36 + 17) = 0;
            v37 = a2[1];
            v66 = *a2;
            v67 = v37;
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38 = a3[1];
            v64 = *a3;
            v65 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipSession::handleInviteResponseToCancel(v9, &v66, &v64);
            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }

            v25 = v67;
            if (!v67)
            {
LABEL_89:
              std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              return;
            }

LABEL_88:
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            goto LABEL_89;
          }

          v26 = *(*a3 + 264);
          v27 = *(*a3 + 272);
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v28 = (*(*v26 + 120))(v26);
          v29 = *(v28 + 23);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v28 + 8);
          }

          if (v29 == 6)
          {
            if (v30 >= 0)
            {
              v31 = v28;
            }

            else
            {
              v31 = *v28;
            }

            v32 = *v31;
            v33 = *(v31 + 4);
            v35 = v32 == *"CANCEL" && v33 == *"EL";
            if (!v27)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v35 = 0;
            if (!v27)
            {
LABEL_60:
              if (v35)
              {
                if (*(*a2 + 128) >= 0x12Cu)
                {
                  v39 = (*(*v9 + 64))(v9);
                  (*(*v9 + 16))(v9, v39);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "received ", 9);
                  *(v39 + 17) = 0;
                  MEMORY[0x1E6923350](*(v39 + 8), *(*a2 + 128));
                  *(v39 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), " response to our CANCEL.  Sending BYE.", 38);
                  *(v39 + 17) = 0;
                  (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v39 + 17) = 0;
                  v56 = 0;
                  *&v57.__r_.__value_.__r.__words[1] = 0u;
                  v63 = 0;
                  v61 = 0u;
                  v62 = 0u;
                  *&v59[16] = 0u;
                  v60 = 0u;
                  v58 = 0u;
                  *v59 = 0u;
                  *(&v57.__r_.__value_.__s + 23) = 13;
                  qmemcpy(&v57, "InternalError", 13);
                  *&v59[12] = 0xA000001F4;
                  v40 = v9[200];
                  if (v40)
                  {
                    LODWORD(v56) = *v40;
                    std::string::operator=(&v57, (v40 + 8));
                    std::string::operator=(&v58, (v40 + 32));
                    v41 = *(v40 + 56);
                    *&v59[16] = *(v40 + 64);
                    *&v59[8] = v41;
                    std::string::operator=(&v59[24], (v40 + 72));
                    v43 = *(v40 + 96);
                    v42 = *(v40 + 104);
                    if (v42)
                    {
                      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
                    }

                    v44 = *(&v61 + 1);
                    *&v61 = v43;
                    *(&v61 + 1) = v42;
                    if (v44)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
                    }

                    v46 = *(v40 + 112);
                    v45 = *(v40 + 120);
                    if (v45)
                    {
                      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
                    }

                    v47 = *(&v62 + 1);
                    *&v62 = v46;
                    *(&v62 + 1) = v45;
                    if (v47)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                    }

                    v48 = *(v40 + 128);
                    *(&v63 + 3) = *(v40 + 131);
                    LODWORD(v63) = v48;
                  }

                  v53 = 0;
                  v54 = 0;
                  (*(*v9 + 120))(v55, v9, &v56, 0, &v53);
                  ImsResult::~ImsResult(v55);
                  if (v54)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
                  }

                  if (*(&v62 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
                  }

                  if (*(&v61 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v61 + 1));
                  }

                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(*&v59[24]);
                  }

                  if ((v59[7] & 0x80000000) != 0)
                  {
                    operator delete(v58);
                  }

                  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v57.__r_.__value_.__l.__data_);
                  }
                }

                goto LABEL_89;
              }

              v49 = (*(*v9 + 64))(v9);
              (*(*v9 + 16))(v9, v49);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "doing nothing with ", 19);
              *(v49 + 17) = 0;
              MEMORY[0x1E6923350](*(v49 + 8), *(*a2 + 128));
              *(v49 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " response to ", 13);
              *(v49 + 17) = 0;
              v50 = *(*a3 + 264);
              v51 = *(*a3 + 272);
              if (v51)
              {
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v52 = (*(*v50 + 120))(v50);
              (*(*v49 + 32))(v49, v52);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), " request", 8);
              *(v49 + 17) = 0;
              (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v49 + 17) = 0;
              if (!v51)
              {
                goto LABEL_89;
              }

              v25 = v51;
              goto LABEL_88;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          goto LABEL_60;
        }
      }

      else
      {
        v19 = 0;
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      goto LABEL_22;
    }
  }
}

void sub_1E4DAEF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  BambiCallTerminationReason::~BambiCallTerminationReason(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void SipSessionClientWPSCanceledState::enterState(SipSessionClientWPSCanceledState *this, unsigned int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  *(this + 272) = 0;
  v3 = *(this + 33);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 32);
      if (v7)
      {
        v31 = 0;
        v32 = 0;
        SipSessionInterface::stack(v7, &v31);
        if (v31)
        {
          v9 = *(v31 + 31);
          v8 = *(v31 + 32);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v9)
          {
            *buf = 0;
            *&buf[8] = 0;
            SipSession::clientInviteTransaction(v7, buf);
            if (a2 < 2)
            {
              v17 = (*(*v7 + 64))(v7);
              (*(*v7 + 16))(v7, v17);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "queuing CANCEL until we receive a provisional response.", 55);
              *(v17 + 17) = 0;
              (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v17 + 17) = 0;
              v18 = *buf;
              if (*buf)
              {
                v19 = (*(*v7 + 64))(v7);
                (*(*v7 + 16))(v7, v19);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "turning off retransmission of INVITE", 36);
                *(v19 + 17) = 0;
                (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v19 + 17) = 0;
                *(v18 + 352) = 0;
              }
            }

            else
            {
              v10 = *buf;
              if (*buf)
              {
                v11 = *(v7 + 240);
                v12 = *(v7 + 248);
                if (v12)
                {
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v25 = v10;
                v26 = *&buf[8];
                if (*&buf[8])
                {
                  atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                }

                SipDialog::cancelInviteRequest(v11, &v25, *(v7 + 1600), &__p);
                *(this + 272) = (*(*v28 + 24))(v28, v29) ^ 1;
                ImsResult::~ImsResult(&__p);
                if (v26)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                }

                if (v12)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
                }
              }

              else
              {
                v20 = (*(*v7 + 64))(v7);
                (*(*v7 + 16))(v7, v20);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "no client INVITE transaction to cancel, going right to terminated state", 71);
                *(v20 + 17) = 0;
                (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v20 + 17) = 0;
                v21 = (*(*this + 32))(this);
                (*(*v21 + 32))(v21, 13);
              }
            }

            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
            v22 = v28;
            if (v28)
            {
              v23 = v28 + 2;
              atomic_fetch_add_explicit(v28 + 2, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
              if (*(SipUserAgent::config(v9) + 600))
              {
                atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
                goto LABEL_37;
              }

              atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            else if (*(SipUserAgent::config(v9) + 600))
            {
LABEL_37:
              v34 = 0;
              operator new();
            }

            v33 = 0;
            operator new();
          }

          v15 = *(this + 31);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 26) + 16))(&__p, this + 208);
            v16 = v30 >= 0 ? &__p : __p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v16;
            _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (v30 < 0)
            {
              operator delete(__p);
            }
          }

          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          v13 = *(this + 31);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 26) + 16))(&__p, this + 208);
            v14 = v30 >= 0 ? &__p : __p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v14;
            _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
            if (v30 < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E4DAF6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  ImsResult::~ImsResult(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v29 = *(v27 - 104);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void SipSessionClientWPSCanceledState::handleTimer(uint64_t a1, uint64_t **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = qword_1EE2BBE58;
  if (byte_1EE2BBE67 >= 0)
  {
    v6 = byte_1EE2BBE67;
  }

  if (v5 == v6)
  {
    v7 = v4 >= 0 ? a2 : *a2;
    v8 = byte_1EE2BBE67 >= 0 ? &kWaitingForCancelResponseTimerName : kWaitingForCancelResponseTimerName;
    if (!memcmp(v7, v8, v5))
    {
      v15 = 8;
LABEL_27:

      SipSessionClientCanceledState::terminateSession(a1, v15);
      return;
    }
  }

  if (v5 == 17)
  {
    v9 = *a2;
    if (v4 >= 0)
    {
      v9 = a2;
    }

    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 16);
    v13 = v10 == 0x4442465343535057 && v11 == 0x656D695479616C65;
    if (v13 && v12 == 114)
    {
      v15 = 13;
      goto LABEL_27;
    }
  }
}

void SipSessionClientWPSCanceledState::handleResponse(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*a3 + 264);
  v7 = *(*a3 + 272);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(*v6 + 120))(v6);
  v9 = *(v8 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 != 6)
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_19;
  }

  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *v8;
  }

  v12 = *v11;
  v13 = *(v11 + 4);
  v15 = v12 == *"INVITE" && v13 == *"TE";
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v15)
  {
    v16 = *(a1 + 264);
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = v17;
        v19 = *(a1 + 256);
        if (v19)
        {
          v20 = *(*a2 + 128);
          if (v20 - 100 > 0x63)
          {
            if (v20 < 0x12C)
            {
              goto LABEL_49;
            }

            v26 = (*(*v19 + 64))(*(a1 + 256));
            (*(*v19 + 16))(v19, v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "recieved error response to cancel while in WPS cleanup state - ending all other calls in preparation for CSFB", 109);
            *(v26 + 17) = 0;
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v26 + 17) = 0;
            v27 = *(v19 + 832);
            if (!v27)
            {
              goto LABEL_49;
            }

            v28 = *(v19 + 824);
            atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v29 = std::__shared_weak_count::lock(v27);
            std::__shared_weak_count::__release_weak(v27);
            if (!v29)
            {
              goto LABEL_49;
            }

            if (v28)
            {
              IPTelephonyManager::getBambiClient(&v36);
              v30 = v36;
              std::string::basic_string[abi:ne200100]<0>(&__p, "EstablishingAnotherCall");
              v34 = 0;
              v35 = 0;
              v31 = *(v28 + 48);
              if (v31)
              {
                v32 = std::__shared_weak_count::lock(v31);
                v35 = v32;
                if (v32)
                {
                  v34 = *(v28 + 47);
                }
              }

              else
              {
                v32 = 0;
              }

              v33[0] = v28;
              v33[1] = v29;
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              BambiClient::endOtherCalls(v30, &__p, &v34, v33);
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              }

              if (v43 < 0)
              {
                operator delete(__p);
              }

              if (v37)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v37);
              }
            }

            v25 = v29;
          }

          else
          {
            if (*(a1 + 272))
            {
              goto LABEL_49;
            }

            v21 = (*(*v19 + 64))(*(a1 + 256));
            (*(*v19 + 16))(v19, v21);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "received provisional response to INVITE.  Sending pending CANCEL request.", 73);
            *(v21 + 17) = 0;
            (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v21 + 17) = 0;
            v22 = *(v19 + 240);
            v23 = *(v19 + 248);
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = a3[1];
            v38 = *a3;
            v39 = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipDialog::cancelInviteRequest(v22, &v38, *(v19 + 1600), &__p);
            *(a1 + 272) = (*(*v41 + 24))(v41, v42) ^ 1;
            ImsResult::~ImsResult(&__p);
            if (v39)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v39);
            }

            if (!v23)
            {
              goto LABEL_49;
            }

            v25 = v23;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

LABEL_49:
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }
}

void sub_1E4DAFCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

void SipSessionClientWPSNetworkTerminatedState::enterState(SipSessionClientWPSNetworkTerminatedState *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 32))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
        v4 = v8;
        if (v8)
        {
          p_shared_weak_owners = &v8->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v9 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4DAFFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void SipSessionClientWPSNetworkTerminatedState::handleTimer(void *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 17)
  {
    v4 = v3 >= 0 ? a2 : *a2;
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 16);
    v8 = v5 == 0x4442465343535057 && v6 == 0x656D695479616C65;
    if (v8 && v7 == 114)
    {
      v11 = a1[33];
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = a1[32];
          if (!v14)
          {
LABEL_38:
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            return;
          }

          shared_weak_owners = v14[34].__shared_weak_owners_;
          if (shared_weak_owners)
          {
            shared_owners = v14[34].__shared_owners_;
            atomic_fetch_add_explicit(&shared_weak_owners->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v17 = std::__shared_weak_count::lock(shared_weak_owners);
            if (!v17)
            {
              shared_owners = 0;
            }

            std::__shared_weak_count::__release_weak(shared_weak_owners);
          }

          else
          {
            shared_owners = 0;
            v17 = 0;
          }

          v18 = v14[67].__shared_owners_;
          v19 = v14[67].__shared_weak_owners_;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              goto LABEL_27;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          else if (v18)
          {
LABEL_27:
            if (shared_owners)
            {
              bzero(v27, 0x250uLL);
              v25 = shared_owners;
              v26 = v17;
              if (v17)
              {
                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(v27, &v25);
              if (v26)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v26);
              }

              v20 = v14[67].__shared_owners_;
              v21 = v14[67].__shared_weak_owners_;
              if (v21)
              {
                atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
              }

              v24[0] = v20;
              v24[1] = v21;
              SipSessionInterface::stack(v14, &v23);
              BambiCallSessionTerminationBaseEvent::setReasonFromIncomingResponse(v27, v24);
            }
          }

          v22 = (*(*a1 + 32))(a1);
          (*(*v22 + 32))(v22, 13);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          goto LABEL_38;
        }
      }
    }
  }
}

void sub_1E4DB0290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void SipSessionClientUnconfirmedState::~SipSessionClientUnconfirmedState(SipSessionClientUnconfirmedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientUnconfirmedState::~SipSessionClientUnconfirmedState(SipSessionClientUnconfirmedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientInviteState::~SipSessionClientInviteState(SipSessionClientInviteState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientInviteState::~SipSessionClientInviteState(SipSessionClientInviteState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientReceivedTryingResponseState::~SipSessionClientReceivedTryingResponseState(SipSessionClientReceivedTryingResponseState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientReceivedTryingResponseState::~SipSessionClientReceivedTryingResponseState(SipSessionClientReceivedTryingResponseState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientCanceledState::~SipSessionClientCanceledState(SipSessionClientCanceledState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientCanceledState::~SipSessionClientCanceledState(SipSessionClientCanceledState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientWPSNetworkTerminatedState::~SipSessionClientWPSNetworkTerminatedState(SipSessionClientWPSNetworkTerminatedState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientWPSNetworkTerminatedState::~SipSessionClientWPSNetworkTerminatedState(SipSessionClientWPSNetworkTerminatedState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipSessionClientWPSCanceledState::~SipSessionClientWPSCanceledState(SipSessionClientWPSCanceledState *this)
{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipSessionClientWPSCanceledState::~SipSessionClientWPSCanceledState(SipSessionClientWPSCanceledState *this)
{
  SipSessionState::~SipSessionState((this - 8));
}

{
  SipSessionState::~SipSessionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipSessionState::~SipSessionState((this - 208));
}

{
  SipSessionState::~SipSessionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void *BambiCallSessionTerminatedEvent::BambiCallSessionTerminatedEvent(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(a1, 15, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EC4038;
  return a1;
}

void sub_1E4DB0970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    BambiCallEvent::BambiCallEvent(a1, a2, v6);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    BambiCallEvent::BambiCallEvent(a1, a2, v6);
  }

  *a1 = &unk_1F5ED0980;
  *(a1 + 32) = 10;
  *(a1 + 64) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x10000;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  SipUri::SipUri((a1 + 184));
  return a1;
}

void sub_1E4DB0A6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = &unk_1F5EC4090;
  v7 = *(v1 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4DB0BDC(_Unwind_Exception *a1)
{
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void SipSessionState::~SipSessionState(SipSessionState *this)
{
  *this = &unk_1F5EF0EA8;
  *(this + 1) = &unk_1F5EF0F50;
  *(this + 26) = &unk_1F5EF0F80;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 248);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);

  SipState::~SipState(this);
}

{
  SipSessionState::~SipSessionState(this);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD2E0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD2E0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECD2E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionClientInviteState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientInviteState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD360;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD360;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECD360;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionClientCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD3E0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD3E0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECD3E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSCanceledState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD460;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECD460;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECD460;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 152))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0,std::allocator<SipSessionClientWPSNetworkTerminatedState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SipSessionClientStates_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kWaitingForCancelResponseTimerName, "WaitingForCancelResponse");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &kWaitingForCancelResponseTimerName, &dword_1E4C3F000);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void SipPAssertedIdentityHeader::~SipPAssertedIdentityHeader(void **this)
{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipStringParameterHeader::SipStringParameterHeader(uint64_t a1, const std::string *a2, const std::string *a3)
{
  v5 = SipHeader::SipHeader(a1, a2);
  *(v5 + 88) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = &unk_1F5EBEF50;
  *(v5 + 72) = v5 + 80;
  *(v5 + 96) = 256;
  *v5 = &unk_1F5ECDC48;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  std::string::operator=((v5 + 104), a3);
  return a1;
}