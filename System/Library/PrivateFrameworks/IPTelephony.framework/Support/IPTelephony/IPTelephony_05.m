void sub_1E4C9D3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  ImsResult::~ImsResult(&a28);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [38]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [49]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<std::shared_ptr<IpAddress>>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  if (*a2)
  {
    (*(**a2 + 40))(*a2, v3);
  }

  return a1;
}

uint64_t ImsResult::operator<<<char [23]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [24]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<std::string>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  (*(*v3 + 32))(v3, a2);
  return a1;
}

uint64_t SipIPSecTransportGroup::localServerAddress@<X0>(SipIPSecTransportGroup *this@<X0>, void *a2@<X8>)
{
  result = *(this + 33);
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t SipIPSecTransportGroup::localClientAddress@<X0>(SipIPSecTransportGroup *this@<X0>, void *a2@<X8>)
{
  result = *(this + 35);
  if (result)
  {
    return (*(*result + 72))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

time_t SipIPSecTransportGroup::updateExpiration(SipIPSecTransportGroup *this, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = time(0);
  v5 = result + a2;
  if (*(this + 47) < v5)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, this + 25);
    v6 = v10;
    if (v10)
    {
      p_shared_weak_owners = &v10->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      *(this + 47) = v5;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    }

    else
    {
      *(this + 47) = v5;
    }

    v11 = 0;
    operator new();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C9DB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  _Unwind_Resume(exception_object);
}

void SipIPSecTransportGroup::handleTimer(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[29];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 144))(&__p, a1);
    v3 = v13 >= 0 ? &__p : __p;
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sexpiration timer fired.  Telling my owner.", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0;
  v12 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, a1 + 25);
  {
    __p = v5;
    v12 = *&buf[8];
    p_p = buf;
  }

  else
  {
    p_p = &__p;
  }

  *p_p = 0;
  p_p[1] = 0;
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v7 = a1[69];
  if (v7 && __p)
  {
    v9 = __p;
    v10 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 16))(v7, &v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4C9DDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipIPSecTransportGroup::loggableName@<X0>(SipIPSecTransportGroup *this@<X0>, std::string *a2@<X8>)
{
  v45 = 0;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  *v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  (*(*this + 176))(&__p, this);
  if (__p.__r_.__value_.__r.__words[0])
  {
    (*(*this + 176))(&v37, this);
    v4 = (*(*v37 + 56))(v37);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }
  }

  else
  {
    v4 = 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  (*(*this + 168))(&__p, this);
  if (__p.__r_.__value_.__r.__words[0])
  {
    (*(*this + 168))(&v37, this);
    v5 = (*(*v37 + 56))(v37);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }
  }

  else
  {
    v5 = 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v6 = *(this + 41);
  if (v6)
  {
    (*(*v6 + 48))(&__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      v7 = *(this + 41);
      if (v7)
      {
        (*(*v7 + 48))(&v37);
        v7 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      v8 = (*(*v7 + 56))(v7);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v9 = *(this + 39);
  v10 = *(this + 40);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    v11 = *(this + 39);
    v12 = *(this + 40);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(*v11 + 56))(v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v10)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v13 = 0;
    if (v10)
    {
LABEL_32:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "IPSecTransport [", 16);
  v14 = *(this + 42);
  if (!v14)
  {
    goto LABEL_47;
  }

  v15 = *(v14 + 87);
  if (v15 < 0)
  {
    if (!*(v14 + 72))
    {
      goto LABEL_47;
    }
  }

  else if (!*(v14 + 87))
  {
    goto LABEL_47;
  }

  v16 = v14 + 64;
  v18 = *(v14 + 64);
  v17 = *(v14 + 72);
  if (v15 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  if (v15 >= 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ", 1);
LABEL_47:
  v22 = MEMORY[0x1E6923390](&v39, v5);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " --> ", 5);
  v24 = MEMORY[0x1E6923390](v23, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
  v25 = *(this + 43);
  if (!v25)
  {
    goto LABEL_59;
  }

  v26 = *(v25 + 87);
  if (v26 < 0)
  {
    if (!*(v25 + 72))
    {
      goto LABEL_59;
    }
  }

  else if (!*(v25 + 87))
  {
    goto LABEL_59;
  }

  v27 = v25 + 64;
  v29 = *(v25 + 64);
  v28 = *(v25 + 72);
  if (v26 >= 0)
  {
    v30 = v27;
  }

  else
  {
    v30 = v29;
  }

  if (v26 >= 0)
  {
    v31 = v26;
  }

  else
  {
    v31 = v28;
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v30, v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
LABEL_59:
  v33 = MEMORY[0x1E6923390](&v39, v4);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " <-- ", 5);
  MEMORY[0x1E6923390](v34, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "]", 1);
  std::ostringstream::str[abi:ne200100](&v39, &__p);
  LoggableString::LoggableString(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v39 = *MEMORY[0x1E69E54E8];
  *(&v40[-1] + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v39 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  *(&v39 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v40);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v44);
}

void sub_1E4C9E338(_Unwind_Exception *a1, uint64_t a2, void *__p, std::__shared_weak_count *a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::ostringstream::~ostringstream(&a11, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void SipIPSecTransportGroup::printTransportInfo(SipIPSecTransportGroup *this, ImsOutStream *a2, int a3)
{
  (*(*this + 176))(v22);
  if (v22[0])
  {
    (*(*this + 176))(&__p, this);
    v6 = (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v22[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22[1]);
  }

  (*(*this + 168))(v22, this);
  if (v22[0])
  {
    (*(*this + 168))(&__p, this);
    v7 = (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v22[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22[1]);
  }

  v8 = *(this + 41);
  if (v8)
  {
    (*(*v8 + 48))(v22);
    if (v22[0])
    {
      v9 = *(this + 41);
      if (v9)
      {
        (*(*v9 + 48))(&__p);
        v9 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
      }

      v10 = (*(*v9 + 56))(v9);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v22[0] = 0;
    v22[1] = 0;
  }

  if (v22[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22[1]);
  }

  v11 = *(this + 39);
  v12 = *(this + 40);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    v13 = *(this + 39);
    v14 = *(this + 40);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = (*(*v13 + 56))(v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v12)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v15 = 0;
    if (v12)
    {
LABEL_32:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  memset(&__p, 0, sizeof(__p));
  v16 = *(this + 41);
  if (v16)
  {
    (*(*v16 + 48))(v22);
    v17 = v22[0];
    if (v22[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22[1]);
    }

    if (v17)
    {
      v24 = 0;
      *v22 = 0u;
      v23 = 0u;
      ImsStringOutStream::ImsStringOutStream(v22, a2);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = 1;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 1;
    p_p = &__p;
  }

  LOWORD(p_p->__r_.__value_.__l.__data_) = 63;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "IPSecTransport [", 16);
  *(a2 + 17) = 0;
  (*(*this + 176))(&v20, this);
  if (v20)
  {
    (*(*v20 + 40))(v20, a2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " <--> ", 6);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(v22, &__p);
  (*(*a2 + 40))(a2, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ", ", 2);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923390](*(a2 + 1), v7);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " --> ", 5);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923390](*(a2 + 1), v10);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ", ", 2);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923390](*(a2 + 1), v6);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " <-- ", 5);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923390](*(a2 + 1), v15);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]", 1);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a3)
  {
    v19 = *(this + 37);
    if (v19)
    {
      if (*(v19 + 288))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  Open connections:", 19);
        *(a2 + 17) = 0;
        (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(a2 + 17) = 0;
        SipTcpTransport::printConnectionMap(*(this + 37), a2);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C9EAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, uint64_t a19, uint64_t a20, void *__p, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 == 1 && a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (SHIBYTE(a23) < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipIPSecTransportGroup::udpTransport@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 272);
  *a2 = *(this + 264);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t SipIPSecTransportGroup::tcpTransport@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 304);
  *a2 = *(this + 296);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void SipIPSecTransportGroup::SipTransportPair::~SipTransportPair(SipIPSecTransportGroup::SipTransportPair *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *std::__shared_ptr_emplace<SipUdpTransport>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransportGroup>,ClientConfig const,SipMessageEncodingMap *,std::allocator<SipUdpTransport>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC1538;
  std::construct_at[abi:ne200100]<SipUdpTransport,std::shared_ptr<SipTransportGroup>,ClientConfig const,SipMessageEncodingMap *,SipUdpTransport*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<SipUdpTransport>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC1538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipUdpTransport,std::shared_ptr<SipTransportGroup>,ClientConfig const,SipMessageEncodingMap *,SipUdpTransport*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  *a2 = 0;
  a2[1] = 0;
  SipUdpTransport::SipUdpTransport(a1, v7, a3, *a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_1E4C9EE70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<SipTcpTransport>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransportGroup>,std::string,ClientConfig const,SipMessageEncodingMap *,std::allocator<SipTcpTransport>,0>(void *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC1588;
  std::construct_at[abi:ne200100]<SipTcpTransport,std::shared_ptr<SipTransportGroup>,std::string,ClientConfig const,SipMessageEncodingMap *,SipTcpTransport*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<SipTcpTransport>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC1588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipTcpTransport,std::shared_ptr<SipTransportGroup>,std::string,ClientConfig const,SipMessageEncodingMap *,SipTcpTransport*>(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  *a2 = 0;
  a2[1] = 0;
  SipTcpTransport::SipTcpTransport(a1, v8, a3, a4, *a5, 0);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1E4C9F078(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC14B8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EC14B8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EC14B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 312))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0,std::allocator<SipIPSecTransportGroup::updateExpiration(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1E4C9FA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E4C9FFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E4CA04D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void sub_1E4CA0B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  _Unwind_Resume(a1);
}

void sub_1E4CA1238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void sub_1E4CA174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void sub_1E4CA1C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_AVCRTTSessionDelegate_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void SipSignedDigestAuthChallenge::SipSignedDigestAuthChallenge(SipSignedDigestAuthChallenge *this, SipSignedDigestAuthScheme *a2)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F5EC1600;
  if (!a2)
  {
    operator new();
  }

  *(this + 8) = a2;
}

void SipAuthChallenge::~SipAuthChallenge(void **this)
{
  *this = &unk_1F5EC1668;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void SipAuthChallenge::SipAuthChallenge(SipAuthChallenge *this, const SipAuthChallenge *a2)
{
  *this = &unk_1F5EC1668;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::string::operator=((this + 8), (a2 + 8));
}

void sub_1E4CA2138(_Unwind_Exception *exception_object)
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

void SipSignedDigestAuthChallenge::~SipSignedDigestAuthChallenge(SipSignedDigestAuthChallenge *this)
{
  *this = &unk_1F5EC1600;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  SipAuthChallenge::~SipAuthChallenge(this);
}

{
  SipSignedDigestAuthChallenge::~SipSignedDigestAuthChallenge(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSignedDigestAuthChallenge::scheme(SipSignedDigestAuthChallenge *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

void sub_1E4CA23D8(_Unwind_Exception *a1)
{
  SipAuthChallenge::~SipAuthChallenge(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t SipSignedDigestAuthChallenge::isValid(SipSignedDigestAuthChallenge *this)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

__n128 MediaSessionBaseCollection::add@<Q0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v24, "rtp.collection");
  v20[0] = 0;
  v23 = 0;
  v8 = ims::debug(v24, v20);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "add", 3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [sessionId=", 12);
  *(v9 + 17) = 0;
  MEMORY[0x1E69233B0](*(v9 + 8), a2);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " session=", 9);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923310](*(v9 + 8), *a3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v13 = a1[2];
  if (!v13)
  {
LABEL_13:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v14 = v13;
      v15 = v13[4];
      if (v15 <= a2)
      {
        break;
      }

      v13 = *v14;
      if (!*v14)
      {
        goto LABEL_13;
      }
    }

    if (v15 >= a2)
    {
      break;
    }

    v13 = v14[1];
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v17 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = v14[6];
  v14[5] = v17;
  v14[6] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  result = *a3;
  *a4 = *a3;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_1E4CA26C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionBaseCollection::get(MediaSessionBaseCollection *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a2;
  std::string::basic_string[abi:ne200100]<0>(v17, "rtp.collection");
  v13[0] = 0;
  v16 = 0;
  v6 = ims::debug(v17, v13);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "get", 3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v11 = 0;
  v12 = 0;
  ims::getValueFromMap<unsigned long long,std::shared_ptr<MediaSessionInterface>>(a3, this + 8, &v19, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4CA28A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ims::getValueFromMap<unsigned long long,std::shared_ptr<MediaSessionInterface>>(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = *a3;
  v11 = v7;
  do
  {
    v12 = v8[4];
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v8;
    }

    v8 = v8[v14];
  }

  while (v8);
  if (v11 != v7 && v10 >= v11[4])
  {
    v17 = v11[5];
    v16 = v11[6];
    *a1 = v17;
    a1[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(v22, "rtp.util");
    v18[0] = 0;
    v21 = 0;
    v15 = ims::debug(v22, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "getValueFromMap", 15);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " Object not found [key=", 23);
    *(v15 + 17) = 0;
    MEMORY[0x1E69233B0](*(v15 + 8), *a3);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    *a1 = *a4;
    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

void sub_1E4CA2A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionBaseCollection::remove(MediaSessionBaseCollection *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a2;
  std::string::basic_string[abi:ne200100]<0>(v28, "rtp.collection");
  v24[0] = 0;
  v27 = 0;
  v6 = ims::debug(v28, v24);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "remove", 6);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  *a3 = 0;
  a3[1] = 0;
  v22 = 0;
  v23 = 0;
  ims::getValueFromMap<unsigned long long,std::shared_ptr<MediaSessionInterface>>(a3, this + 8, &v30, &v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*a3)
  {
    v11 = *(this + 2);
    if (v11)
    {
      v12 = (this + 16);
      v13 = *(this + 2);
      do
      {
        v14 = v13[4];
        v15 = v14 >= a2;
        v16 = v14 < a2;
        if (v15)
        {
          v12 = v13;
        }

        v13 = v13[v16];
      }

      while (v13);
      if (v12 != (this + 16) && v12[4] <= a2)
      {
        v17 = v12[1];
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
          v19 = v12;
          do
          {
            v18 = v19[2];
            v20 = *v18 == v19;
            v19 = v18;
          }

          while (!v20);
        }

        if (*(this + 1) == v12)
        {
          *(this + 1) = v18;
        }

        --*(this + 3);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v11, v12);
        v21 = v12[6];
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        operator delete(v12);
      }
    }
  }
}

void sub_1E4CA2D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL MediaSessionBaseCollection::contains(MediaSessionBaseCollection *this, unint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v21, "rtp.collection");
  v17[0] = 0;
  v20 = 0;
  v4 = ims::debug(v21, v17);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "contains", 8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v11 = *(this + 2);
  v10 = this + 16;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v10;
  do
  {
    v13 = *(v9 + 4);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v9;
    }

    v9 = *&v9[8 * v15];
  }

  while (v9);
  if (v12 == v10 || *(v12 + 4) > a2)
  {
LABEL_15:
    v12 = v10;
  }

  return v12 != v10;
}

void sub_1E4CA2F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t MediaSessionBaseCollection::contains(void *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v23, "rtp.collection");
  v19[0] = 0;
  v22 = 0;
  v4 = ims::debug(v23, v19);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*a1 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "contains", 8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [session=", 10);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923360](*(v5 + 8), *a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v9 = a1[1];
  v10 = a1 + 2;
  if (v9 != a1 + 2)
  {
    do
    {
      v12 = v9[5];
      v11 = v9[6];
      if (v11)
      {
        v13 = 1;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *a2;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        if (v12 == v14)
        {
          return v13;
        }
      }

      else if (v12 == *a2)
      {
        return 1;
      }

      v15 = v9[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v9[2];
          v17 = *v16 == v9;
          v9 = v16;
        }

        while (!v17);
      }

      v9 = v16;
    }

    while (v16 != v10);
  }

  return 0;
}

void sub_1E4CA3164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionBaseCollection::clear(MediaSessionBaseCollection *this)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "rtp.collection");
  v9[0] = 0;
  v12 = 0;
  v2 = ims::debug(v13, v9);
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
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v8 = *(this + 2);
  v7 = (this + 16);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void sub_1E4CA32FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionBaseCollection::sessionIdList(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v32, "rtp.collection");
  v28[0] = 0;
  v31 = 0;
  v6 = ims::debug(v32, v28);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sessionIdList", 13);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [stackId=", 10);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  v11 = a1[1];
  if (v11 != a1 + 2)
  {
    do
    {
      v13 = v11[4];
      v12 = v11[5];
      v14 = v11[6];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(v12 + 79);
      if (v15 >= 0)
      {
        v16 = *(v12 + 79);
      }

      else
      {
        v16 = *(v12 + 64);
      }

      v17 = *(a2 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = a2[1];
      }

      if (v16 == v17)
      {
        v21 = *(v12 + 56);
        v19 = v12 + 56;
        v20 = v21;
        v22 = (v15 >= 0 ? v19 : v20);
        v23 = *a2;
        v24 = v18 >= 0 ? a2 : *a2;
        if (!memcmp(v22, v24, v16))
        {
          operator new();
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v25 = v11[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v11[2];
          v27 = *v26 == v11;
          v11 = v26;
        }

        while (!v27);
      }

      v11 = v26;
    }

    while (v26 != a1 + 2);
  }
}

void sub_1E4CA35E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__list_imp<unsigned long long>::clear(v24);
  _Unwind_Resume(a1);
}

void MediaSessionBaseCollection::~MediaSessionBaseCollection(MediaSessionBaseCollection *this)
{
  MediaSessionBaseCollection::~MediaSessionBaseCollection(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EC16A8;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "rtp.collection");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~MediaSessionBaseCollection", 27);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  (*(*this + 72))(this);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy(this + 8, *(this + 2));
  MediaSessionCollection::~MediaSessionCollection(this);
}

void *std::__list_imp<unsigned long long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
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

void MediaSessionCollection::~MediaSessionCollection(MediaSessionCollection *this)
{
  *this = &unk_1F5EC1738;
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "rtp.collection");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "~MediaSessionCollection", 23);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void *SipAuthClientInterface::SipAuthClientInterface(void *a1, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "sip.auth.cli");
  v4 = a2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *a2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v8 = *(v6 + 200);
  v9 = *(v6 + 208);
  if (*(v6 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v6 + 216), *(v6 + 224));
  }

  else
  {
    __p = *(v6 + 216);
  }

  v11 = *(v6 + 240);
  ims::SharedLoggable<SipAuthClientInterface>::SharedLoggable(a1, v12, &v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  *a1 = &unk_1F5EC17A0;
  return a1;
}

void sub_1E4CA3A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ims::SharedLoggable<SipAuthClientInterface>::SharedLoggable(void *a1, uint64_t a2, ClientConfig *a3)
{
  ims::getQueue(&v17);
  ClientConfig::getLogTag(a3, &v14);
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

  v9 = std::string::insert(&v14, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  a1[1] = 0;
  a1[2] = 0;
  v12 = v17;
  a1[3] = v17;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 5), "com.apple.ipTelephony", v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *a1 = &unk_1F5EC18B8;
  return a1;
}

void sub_1E4CA3BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v21 + 8));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    dispatch_release(v24);
  }

  _Unwind_Resume(a1);
}

double SipAuthClientInterface::handleUnauthorizedPushParams@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ims::SharedLoggable<SipAuthClientInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipAuthClientInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *XcapNodeSelector::Step::encodePrefix(void *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v12 = *a2;
    v13 = &v12;
    v3 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v12);
    v6 = v3[8];
    v4 = v3 + 8;
    v5 = v6;
    v7 = *(v4 + 23);
    if (v7 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 23);
    }

    else
    {
      v9 = v4[1];
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ":", 1);
  }

  return a1;
}

void XcapNodeSelector::XcapNodeSelector(XcapNodeSelector *this)
{
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 1) = 0;
  *(this + 4) = 0;
  operator new();
}

void sub_1E4CA3E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<unsigned int>::destroy(v15, *v16);
  _Unwind_Resume(a1);
}

void XcapNodeSelector::XcapNodeSelector(XcapNodeSelector *this, const XcapNodeSelector *a2)
{
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *this = 0;
  *(this + 1) = 0;
  XcapNodeSelector::operator=(this, a2);
}

void sub_1E4CA3FA0(_Unwind_Exception *a1)
{
  v3 = v2;
  std::__tree<unsigned int>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

uint64_t XcapNodeSelector::operator=(uint64_t a1, void *a2)
{
  if (*a2)
  {
    *a1 = (*(**a2 + 16))(*a2);
  }

  v4 = a2[1];
  if (v4)
  {
    *(a1 + 8) = (*(*v4 + 16))(v4);
  }

  if (a1 != a2)
  {
    std::__tree<XcapNs::nsType>::__assign_multi<std::__tree_const_iterator<XcapNs::nsType,std::__tree_node<XcapNs::nsType,void *> *,long>>((a1 + 16), a2[2], a2 + 3);
  }

  return a1;
}

void XcapNodeSelector::~XcapNodeSelector(XcapNodeSelector *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__tree<unsigned int>::destroy(this + 16, *(this + 3));
}

uint64_t XcapNodeSelector::fetchPath@<X0>(XcapNodeSelector *this@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  if (*this)
  {
    (*(**this + 24))(&__p);
    if ((v12 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v12 & 0x80u) == 0)
    {
      v5 = v12;
    }

    else
    {
      v5 = v11;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, p_p, v5);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (*(this + 1))
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "/", 1);
      (*(**(this + 1) + 24))(&__p);
      v7 = (v12 & 0x80u) == 0 ? &__p : __p;
      v8 = (v12 & 0x80u) == 0 ? v12 : v11;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      if (v12 < 0)
      {
        operator delete(__p);
      }
    }
  }

  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x1E69E54E8];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  *(&v13 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v18);
}

void sub_1E4CA433C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1E6923510](a1 + 112);
  return a1;
}

uint64_t XcapNodeSelector::fetchQuery@<X0>(XcapNodeSelector *this@<X0>, _BYTE *a2@<X8>)
{
  v34 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  *__p = 0u;
  v31 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  if (*(this + 4))
  {
    v3 = *(this + 2);
    if (v3 != (this + 24))
    {
      do
      {
        v4 = *(v3 + 25);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "xmlns(", 6);
        v35 = v4;
        v36 = &v35;
        v6 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v35);
        v9 = v6[8];
        v7 = v6 + 8;
        v8 = v9;
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v8;
        }

        if (v10 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = v7[1];
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "=", 1);
        v35 = v4;
        v36 = &v35;
        v15 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v35);
        v18 = v15[5];
        v16 = v15 + 5;
        v17 = v18;
        v19 = *(v16 + 23);
        if (v19 >= 0)
        {
          v20 = v16;
        }

        else
        {
          v20 = v17;
        }

        if (v19 >= 0)
        {
          v21 = *(v16 + 23);
        }

        else
        {
          v21 = v16[1];
        }

        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v20, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
        v23 = *(v3 + 1);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = *(v3 + 2);
            v25 = *v24 == v3;
            v3 = v24;
          }

          while (!v25);
        }

        v3 = v24;
      }

      while (v24 != (this + 24));
    }
  }

  std::ostringstream::str[abi:ne200100](&v28, a2);
  *&v28 = *MEMORY[0x1E69E54E8];
  *(&v29[-1] + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v28 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v28 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v33);
}

void sub_1E4CA4750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t XcapNodeSelector::asString@<X0>(XcapNodeSelector *this@<X0>, _BYTE *a2@<X8>)
{
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  XcapNodeSelector::fetchPath(this, &v13);
  __p = 0;
  v11 = 0;
  v12 = 0;
  XcapNodeSelector::fetchQuery(this, &__p);
  if (v15 >= 0)
  {
    v4 = HIBYTE(v15);
  }

  else
  {
    v4 = v14;
  }

  if (v4)
  {
    if (v15 >= 0)
    {
      v5 = &v13;
    }

    else
    {
      v5 = v13;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v5, v4);
  }

  v6 = HIBYTE(v12);
  if (v12 < 0)
  {
    v6 = v11;
  }

  if (v6)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "?", 1);
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v12 >= 0)
    {
      v8 = HIBYTE(v12);
    }

    else
    {
      v8 = v11;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, p_p, v8);
  }

  std::ostringstream::str[abi:ne200100](&v16, a2);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  *&v16 = *MEMORY[0x1E69E54E8];
  *(&v17[-1] + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v21);
}

void sub_1E4CA4998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a21);
  _Unwind_Resume(a1);
}

void std::vector<XcapNodeSelector::Step *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<XcapNodeSelector::Step *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

_BYTE *XcapNodeSelector::StepName::encode@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 9) == 1)
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "*");
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    memset(v16, 0, sizeof(v16));
    *__p = 0u;
    v14 = 0u;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
    XcapNodeSelector::Step::encodePrefix(&v11, this[2]);
    v7 = this[3];
    v6 = (this + 3);
    v5 = v7;
    v8 = v6[23];
    if (v8 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    if (v8 >= 0)
    {
      v10 = v6[23];
    }

    else
    {
      v10 = *(v6 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v9, v10);
    std::ostringstream::str[abi:ne200100](&v11, a2);
    *&v11 = *MEMORY[0x1E69E54E8];
    *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v11 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v11 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x1E6923510](v16);
  }
}

uint64_t XcapNodeSelector::StepAttr::encode@<X0>(XcapNodeSelector::StepAttr *this@<X0>, _BYTE *a2@<X8>)
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  XcapNodeSelector::StepName::encode((this + *(*this - 24)), __p);
  if ((v22 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v5 = v22;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "[@", 2);
  v8 = *(this + 31);
  if (v8 >= 0)
  {
    v9 = this + 8;
  }

  else
  {
    v9 = *(this + 1);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 31);
  }

  else
  {
    v10 = *(this + 2);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "=", 2);
  v15 = *(this + 4);
  v14 = this + 32;
  v13 = v15;
  v16 = v14[23];
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = v14[23];
  }

  else
  {
    v18 = *(v14 + 1);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]", 2);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::str[abi:ne200100](&v23, a2);
  *&v23 = *MEMORY[0x1E69E54E8];
  *(&v24[-1] + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v23 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  *(&v23 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v28);
}

void XcapNodeSelector::ElementSelector::~ElementSelector(XcapNodeSelector::ElementSelector *this)
{
  *this = &unk_1F5EC18E0;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  XcapNodeSelector::ElementSelector::~ElementSelector(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapNodeSelector::ElementSelector::encode@<X0>(XcapNodeSelector::ElementSelector *this@<X0>, _BYTE *a2@<X8>)
{
  v20 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  *v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v5)
  {
    v6 = (v4 - v5) >> 3;
    v7 = MEMORY[0x1E69E9C10];
    v8 = 1;
    do
    {
      if (*v5)
      {
        (*(**v5 + 24))(__p);
        if ((v13 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v13 & 0x80u) == 0)
        {
          v10 = v13;
        }

        else
        {
          v10 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v9, v10);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 < v6)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "/", 1);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_fault_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_FAULT, "Invalid step value", __p, 2u);
      }

      v5 += 8;
      ++v8;
    }

    while (v5 != v4);
  }

  std::ostringstream::str[abi:ne200100](&v14, a2);
  *&v14 = *MEMORY[0x1E69E54E8];
  *(&v15[-1] + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v14 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }

  *(&v14 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v19);
}

void XcapNodeSelector::StepName::~StepName(void **this)
{
  *this = &unk_1F5EC1910;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_1F5EC1910;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x1E69235B0);
}

void XcapNodeSelector::StepAttr::~StepAttr(void **this)
{
  *(v2 + 56) = &unk_1F5EC1910;
  if (*(v2 + 103) < 0)
  {
    operator delete(this[10]);
  }
}

{
  XcapNodeSelector::StepAttr::~StepAttr(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4CA575C(_Unwind_Exception *a1)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  *(v2 + 56) = v3;
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void virtual thunk toXcapNodeSelector::StepAttr::~StepAttr(XcapNodeSelector::StepAttr *this)
{
  XcapNodeSelector::StepAttr::~StepAttr((this + *(*this - 24)));
}

{
  XcapNodeSelector::StepAttr::~StepAttr((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void sub_1E4CA593C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<XcapNs::nsType>::__assign_multi<std::__tree_const_iterator<XcapNs::nsType,std::__tree_node<XcapNs::nsType,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v19 = result;
    v20 = v9;
    v21 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v9);
      v20 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 25);
          *(v9 + 25) = v13;
          v14 = *v8;
          v15 = v5 + 1;
          v16 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v15 = v14;
                if (v13 >= *(v14 + 25))
                {
                  break;
                }

                v14 = *v14;
                v16 = v15;
                if (!*v15)
                {
                  goto LABEL_14;
                }
              }

              v14 = v14[1];
            }

            while (v14);
            v16 = v15 + 1;
          }

LABEL_14:
          std::__tree<unsigned int>::__insert_node_at(v5, v15, v16, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v17 = v11[1];
          if (v17)
          {
            do
            {
              a2 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v18 = *a2 == v11;
              v11 = a2;
            }

            while (!v18);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v20 = v10;
        v21 = v12;
      }
    }

    result = std::__tree<unsigned int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v19);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void XcapNodeSelector::StepAttr::~StepAttr(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 3)) = a2[1];
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void ImsEmergencyPrefs::reset(ImsEmergencyPrefs *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 10;
  BambiEmergencyUrnMap::reset((this + 8));
  v3 = *(this + 9);
  v2 = this + 72;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy((v2 - 8), v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 - 1) = v2;
  std::vector<std::string>::clear[abi:ne200100](v2 + 2);

  std::vector<std::string>::clear[abi:ne200100](v2 + 5);
}

uint64_t std::shared_ptr<ImsPrefsManager>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,ImsCarrierPrefs>::~pair(uint64_t a1)
{
  ImsCarrierPrefs::~ImsCarrierPrefs((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL ImsPrefsManager::isKeyValid(void **a1)
{
  ImsPrefsManager::instance(&v5);
  v2 = v5;
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v5 + 144, a1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v2 + 152 != v3;
}

void sub_1E4CA5D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefsManager::isOperatorKey(void **a1)
{
  ImsPrefsManager::instance(&v5);
  v2 = v5;
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v5 + 96, a1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v2 + 104 != v3;
}

void sub_1E4CA5DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefsManager::isKeyRenamed(void **a1, std::string *a2)
{
  ImsPrefsManager::instance(&v6);
  isKeyRenamed = ImsDefaultPrefs::isKeyRenamed(v6 + 24, a1, a2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return isKeyRenamed;
}

void sub_1E4CA5E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::getMatchingKey(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  ImsPrefsManager::instance(&v5);
  ImsDefaultPrefs::getMatchingKey((v5 + 24), a1, a2);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4CA5EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefsManager::isSection(void **a1)
{
  ImsPrefsManager::instance(&v4);
  isSection = ImsDefaultPrefs::isSection((v4 + 24), a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return isSection;
}

void sub_1E4CA5F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefsManager::prefTypeForKey(void **a1)
{
  ImsPrefsManager::instance(&v6);
  v2 = v6;
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v6 + 144, a1);
  if (v2 + 152 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 96);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1E4CA5FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefsManager::prefs(void **a1)
{
  if (!ImsPrefsManager::exists(a1))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "DefaultCarrier");
    v5 = ImsPrefsManager::exists(&__p);
    v6 = v5;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
      if (v6)
      {
        goto LABEL_10;
      }
    }

    else if (v5)
    {
LABEL_10:
      ImsPrefsManager::instance(&v11);
      v7 = v11;
      std::string::basic_string[abi:ne200100]<0>(v9, "DefaultCarrier");
      v16 = 0;
      v8 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(v7, &v16, v9);
      if (!v8)
      {
        operator new();
      }

      v2 = *(v8 + 88);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }

      v3 = v12;
      if (v12)
      {
        goto LABEL_3;
      }

      return v2;
    }

    v9[0] = 0;
    v9[1] = 0;
    std::allocate_shared[abi:ne200100]<ImsPrefs,std::allocator<ImsPrefs>,std::string const&,0>();
  }

  ImsPrefsManager::instance(&__p);
  v9[0] = a1;
  v2 = *(std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, a1) + 88);
  v3 = v14;
  if (v14)
  {
LABEL_3:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v2;
}

void sub_1E4CA6284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ImsEmergencyPrefs::~ImsEmergencyPrefs((v25 + 104));
  v28 = *(v25 + 96);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(v25 + 79) < 0)
  {
    operator delete(*v26);
  }

  if (*(v25 + 55) < 0)
  {
    operator delete(*(v25 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,ImsCarrierPrefs>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ImsCarrierPrefs>,void *>>>>::~unique_ptr[abi:ne200100](&a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void ImsPrefsManager::setPrefsForCarrier(std::string *a1, uint64_t *a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v56, "prefs");
  v48[0] = 0;
  v51 = 0;
  v6 = ims::debug(&v56, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "ImsPrefsManager::setPrefsForCarrier", 35);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v51 == 1 && v50 < 0)
  {
    operator delete(__p);
  }

  if (v58 < 0)
  {
    operator delete(v56);
  }

  if (ImsPrefsManager::exists(&a1->__r_.__value_.__l.__data_))
  {
    ImsPrefsManager::instance(&v56);
    v7 = v56;
    v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v56, &a1->__r_.__value_.__l.__data_);
    v9 = v8;
    if (v7 + 1 != v8)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v8;
        do
        {
          v11 = v12[2];
          v36 = *v11 == v12;
          v12 = v11;
        }

        while (!v36);
      }

      if (*v7 == v8)
      {
        *v7 = v11;
      }

      v13 = v7[1];
      --v7[2];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v13, v9);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ImsCarrierPrefs>,0>((v9 + 4));
      operator delete(v9);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "prefs");
  v44[0] = 0;
  v47 = 0;
  v14 = ims::debug(&v56, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Setting prefs (", 15);
  *(v14 + 17) = 0;
  MEMORY[0x1E6923310](*(v14 + 8), a2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), ") for carrier ", 14);
  *(v14 + 17) = 0;
  (*(*v14 + 32))(v14, a1);
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v58 < 0)
  {
    operator delete(v56);
  }

  ImsPrefsManager::instance(&v56);
  v63[0] = a1;
  v15 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v56, &a1->__r_.__value_.__l.__data_);
  std::string::operator=((v15 + 56), a1);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  ImsPrefsManager::instance(&v56);
  v63[0] = a1;
  v16 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v56, &a1->__r_.__value_.__l.__data_);
  v18 = *a2;
  v17 = a2[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(v16 + 96);
  *(v16 + 88) = v18;
  *(v16 + 96) = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  ImsPrefsManager::instance(&v56);
  v63[0] = a1;
  *(std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v56, &a1->__r_.__value_.__l.__data_) + 80) = a3;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (!*a2)
  {
    ImsPrefsManager::instance(&v56);
    v63[0] = a1;
    v28 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v56, &a1->__r_.__value_.__l.__data_);
    ImsEmergencyPrefs::reset((v28 + 104));
    v29 = v57;
    if (!v57)
    {
      return;
    }

    goto LABEL_106;
  }

  ImsPrefsManager::instance(&v42);
  v56 = a1;
  v20 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v42, &a1->__r_.__value_.__l.__data_);
  v21 = v20;
  v23 = *a2;
  v22 = a2[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsEmergencyPrefs::reset((v20 + 104));
  std::string::basic_string[abi:ne200100]<0>(&v56, "prefs");
  LOBYTE(v63[0]) = 0;
  v65 = 0;
  v24 = ims::debug(&v56, v63);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Initializing Emergency prefs from dict", 38);
  *(v24 + 17) = 0;
  (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v24 + 17) = 0;
  if (v65 == 1 && v64 < 0)
  {
    operator delete(v63[2]);
  }

  if (v58 < 0)
  {
    operator delete(v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "AllowIncomingCallsDuringEmergencyCall");
  *(v21 + 105) = ImsPrefs::BOOLValue(v23, &v56);
  if (v58 < 0)
  {
    operator delete(v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "EmergencyRegistrationTimeoutSeconds");
  *(v21 + 108) = ImsPrefs::intValue(v23, &v56);
  if (v58 < 0)
  {
    operator delete(v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "AllowOutgoingCallsDuringEmergencyCall");
  v25 = std::__tree<std::string>::__count_unique<std::string>(v23 + 280, &v56);
  v26 = v25;
  if ((v58 & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_48;
    }

LABEL_54:
    *(v21 + 104) = *(v21 + 105);
    if (a3)
    {
      goto LABEL_50;
    }

    goto LABEL_55;
  }

  operator delete(v56);
  if (!v26)
  {
    goto LABEL_54;
  }

LABEL_48:
  std::string::basic_string[abi:ne200100]<0>(&v56, "AllowOutgoingCallsDuringEmergencyCall");
  *(v21 + 104) = ImsPrefs::BOOLValue(v23, &v56);
  if (v58 < 0)
  {
    operator delete(v56);
    if (a3)
    {
      goto LABEL_50;
    }
  }

  else if (a3)
  {
LABEL_50:
    std::string::basic_string[abi:ne200100]<0>(&v56, "AllowAnonymousEmergencyCallsWhileRoaming");
    v27 = ImsPrefs::BOOLValue(v23, &v56);
    goto LABEL_56;
  }

LABEL_55:
  std::string::basic_string[abi:ne200100]<0>(&v56, "AllowAnonymousEmergencyCalls");
  v27 = ImsPrefs::BOOLValue(v23, &v56);
LABEL_56:
  *(v21 + 106) = v27;
  if (v58 < 0)
  {
    operator delete(v56);
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, "AllowEmergencyRetryForIPSec");
  *(v21 + 107) = ImsPrefs::BOOLValue(v23, &v56);
  if (v58 < 0)
  {
    operator delete(v56);
  }

  v62[0] = 0;
  v62[1] = 0;
  v60 = 0;
  v61 = v62;
  v59 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v56, "EmergencyURNs");
  ImsPrefs::dictValue(v23, &v56, &v59);
  if (v58 < 0)
  {
    operator delete(v56);
  }

  if (v60)
  {
    if (CFDictionaryGetCount(v60) >= 1)
    {
      ims::CFDictionary::asStringMap(&v59, &v61, &v56);
      ImsResult::~ImsResult(&v56);
      v30 = v61;
      if (v61 != v62)
      {
        do
        {
          v31 = (v30 + 4);
          v32 = *(v30 + 55);
          if (v32 < 0)
          {
            if (v30[5] == 7)
            {
              v33 = *v31;
LABEL_70:
              v34 = *v33;
              v35 = *(v33 + 3);
              v36 = v34 == 1634100580 && v35 == 1953264993;
              v37 = (v21 + 112);
              if (v36)
              {
                goto LABEL_75;
              }
            }
          }

          else
          {
            v33 = (v30 + 4);
            if (v32 == 7)
            {
              goto LABEL_70;
            }
          }

          v55.__r_.__value_.__r.__words[0] = (v30 + 4);
          v37 = (std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v21 + 136, v31) + 56);
LABEL_75:
          std::string::operator=(v37, (v30 + 7));
          v38 = v30[1];
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v30[2];
              v36 = *v39 == v30;
              v30 = v39;
            }

            while (!v36);
          }

          v30 = v39;
        }

        while (v39 != v62);
      }
    }
  }

  memset(&v55, 0, sizeof(v55));
  std::string::basic_string[abi:ne200100]<0>(&v54, "PrivateEmergencyPrefixes");
  ImsPrefs::stringValue(v23, &v54.__r_.__value_.__l.__data_, &v55);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    ims::tokenize(&v55, (v21 + 192), 0x2Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "NonPrivateEmergencyPrefixes");
  ImsPrefs::stringValue(v23, v52, &v54);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v55 = v54;
  *(&v54.__r_.__value_.__s + 23) = 0;
  v54.__r_.__value_.__s.__data_[0] = 0;
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  v41 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v41 = v55.__r_.__value_.__l.__size_;
  }

  if (v41)
  {
    ims::tokenize(&v55, (v21 + 216), 0x2Cu);
  }

  memset(&v54, 0, sizeof(v54));
  std::string::basic_string[abi:ne200100]<0>(v52, "EmergencyRegistrationRetryResponses");
  ImsPrefs::stringValue(v23, v52, &v54);
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v52, "REGISTER");
  SipResponseCodeMap::addResponseCodesForMethodFromString(v21 + 160, v52, &v54);
  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  ims::CFType::~CFType(&v59);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v61, v62[0]);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v29 = v43;
  if (v43)
  {
LABEL_106:
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_1E4CA6C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefsManager::emergencyPrefs(void **a1)
{
  ImsPrefsManager::instance(&v4);
  v6 = a1;
  v2 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 + 104;
}

void sub_1E4CA6E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::audit(ImsPrefsManager *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "prefs");
  v19[0] = 0;
  v22 = 0;
  v1 = ims::debug(__p, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v1 + 8), "ImsPrefsManager::audit", 22);
  *(v1 + 17) = 0;
  (*(*v1 + 64))(v1, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v1 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (SBYTE7(v17[0]) < 0)
  {
    operator delete(__p[0]);
  }

  ImsPrefsManager::instance(__p);
  v2 = __p[0];
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  v5 = *v2;
  v3 = (v2 + 1);
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      *__p = 0u;
      std::pair<std::string const,ImsCarrierPrefs>::pair[abi:ne200100](__p, v4 + 2);
      std::string::basic_string[abi:ne200100]<0>(v14, "audit");
      v10[0] = 0;
      v13 = 0;
      v6 = ims::info(v14, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "  ", 2);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": ", 2);
      *(v6 + 17) = 0;
      MEMORY[0x1E6923310](*(v6 + 8), &v17[2] + 8);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v13 == 1 && v12 < 0)
      {
        operator delete(v11);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      ImsCarrierPrefs::~ImsCarrierPrefs((v17 + 8));
      if (SBYTE7(v17[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = *(v4 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v4 + 2);
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v3);
  }
}

void sub_1E4CA70E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 72) == 1 && *(v30 - 81) < 0)
  {
    operator delete(*(v30 - 104));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::dumpState(ImsPrefsManager *this, ImsOutStream *a2)
{
  ImsPrefsManager::instance(__p);
  v3 = __p[0];
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  v6 = *v3;
  v4 = (v3 + 1);
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      memset(v11, 0, sizeof(v11));
      *__p = 0u;
      std::pair<std::string const,ImsCarrierPrefs>::pair[abi:ne200100](__p, v5 + 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(this + 1), "Carrier Prefs for ", 18);
      *(this + 17) = 0;
      (*(*this + 32))(this, __p);
      (*(*this + 64))(this, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(this + 17) = 0;
      if (*(&v12 + 1))
      {
        (*(**(&v12 + 1) + 88))(*(&v12 + 1), this);
      }

      (*(*this + 64))(this, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(this + 17) = 0;
      ImsCarrierPrefs::~ImsCarrierPrefs((v11 + 8));
      if (SBYTE7(v11[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void ImsPrefsManager::logMergedPrefs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ImsPrefsManager::instance(&v9);
  v6 = v9;
  v7 = *(a2 + 8);
  v8[0] = &unk_1F5EF3658;
  v8[1] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8[0] = &unk_1F5EBED08;
  ImsDefaultPrefs::logMergedPrefs((v6 + 24), a1, v8, a3, 0);
  ims::CFType::~CFType(v8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E4CA740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::subscribe(void **a1, void **a2)
{
  if (ImsPrefsManager::exists(a1))
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "prefs");
    v6[0] = 0;
    v9 = 0;
    v4 = ims::debug(&v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Subscribing [", 13);
    *(v4 + 17) = 0;
    (*(*v4 + 32))(v4, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "] to ", 5);
    *(v4 + 17) = 0;
    (*(*v4 + 32))(v4, a1);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v10);
    }

    ImsPrefsManager::instance(&v10);
    v13 = a1;
    v5 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, a1);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5 + 288, a2);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4CA75CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::unsubscribe(void **a1, void **a2)
{
  if (ImsPrefsManager::exists(a1))
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "prefs");
    v6[0] = 0;
    v9 = 0;
    v4 = ims::debug(&v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Unsubscribing [", 15);
    *(v4 + 17) = 0;
    (*(*v4 + 32))(v4, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "] from ", 7);
    *(v4 + 17) = 0;
    (*(*v4 + 32))(v4, a1);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v10);
    }

    ImsPrefsManager::instance(&v10);
    v13 = a1;
    v5 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, a1);
    std::__tree<std::string>::__erase_unique<std::string>((v5 + 288), a2);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4CA77AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::subscribers(void **a1@<X0>, void *a2@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v4 = ImsPrefsManager::exists(a1);
  if (v4)
  {
    ImsPrefsManager::instance(&v6);
    v9[3] = a1;
    v5 = (std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6, a1) + 288);
  }

  else
  {
    v5 = &v8;
  }

  std::set<std::string>::set[abi:ne200100](a2, v5);
  if (v4 && v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__tree<std::string>::destroy(&v8, v9[0]);
}

void sub_1E4CA78A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, char *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__tree<std::string>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t ImsPrefsManager::impuRank(void **a1)
{
  ImsPrefsManager::instance(&v4);
  v6 = a1;
  v2 = std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 + 240;
}

void sub_1E4CA7940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefsManager::defaultBoolValue(void **a1)
{
  ImsPrefsManager::instance(&v4);
  v2 = ImsDefaultPrefs::BOOLValue(v4 + 24, a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E4CA79AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefsManager::defaultIntValue(void **a1)
{
  ImsPrefsManager::instance(&v4);
  v2 = ImsDefaultPrefs::intValue(v4 + 24, a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E4CA7A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::defaultStringValue(void **a1@<X0>, _BYTE *a2@<X8>)
{
  ImsPrefsManager::instance(&v5);
  ImsDefaultPrefs::stringValue(v5 + 24, a1, a2);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4CA7AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::defaultDictValue(void **a1@<X0>, void *a2@<X8>)
{
  ImsPrefsManager::instance(&v5);
  ImsDefaultPrefs::dictValue(v5 + 24, a1, a2);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4CA7B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::defaultArrayValue(void **a1@<X0>, void *a2@<X8>)
{
  ImsPrefsManager::instance(&v5);
  ImsDefaultPrefs::arrayValue(v5 + 24, a1, a2);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4CA7BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::defaultEnumSelectedStr(void **a1@<X0>, _BYTE *a2@<X8>)
{
  ImsPrefsManager::instance(&v5);
  ImsDefaultPrefs::enumAsString(v5 + 24, a1, a2);
  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4CA7C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::getSipTimers(void *a1@<X8>)
{
  ImsPrefsManager::instance(&v4);
  ImsDefaultPrefs::getSipTimers((v4 + 24), a1);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4CA7CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::getCorrectSectionDictionary(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, ims::CFMutableDictionary *a4@<X8>)
{
  if (ImsPrefsManager::isKeyValid(a2))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    memset(&v26, 0, sizeof(v26));
    ImsPrefsManager::instance(&__p);
    ImsDefaultPrefs::sectionPathForKey(__p + 24, a2, &v26);
    if (value)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](value);
    }

    v8 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
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
      size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v11 = v9 + size;
      v12 = v9;
      do
      {
        v13 = memchr(v12, 47, size);
        if (!v13)
        {
          break;
        }

        if (*v13 == 47)
        {
          if (v13 == v11 || v13 - v9 == -1)
          {
            break;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p, "/");
          ims::tokenize(&v26, &v20, &__p);
          if (v25 < 0)
          {
            operator delete(__p);
          }

          if ((*(&v26.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v12 = (v13 + 1);
        size = v11 - v12;
      }

      while (v11 - v12 >= 1);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (v8 < 0)
    {
LABEL_24:
      operator delete(v26.__r_.__value_.__l.__data_);
    }

LABEL_25:
    v14 = 0;
    v15 = *(a1 + 8);
    if (0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
    }

    do
    {
      *&v26.__r_.__value_.__l.__data_ = 0uLL;
      ims::CFString::CFString(&v26, (v20 + v14));
      v17 = CFDictionaryGetValue(v15, v26.__r_.__value_.__l.__size_);
      v18 = v17;
      if (!v17 || (v19 = CFGetTypeID(v17), v19 != CFDictionaryGetTypeID()))
      {
        if (!a3)
        {
          *a4 = &unk_1F5EBED08;
          *(a4 + 1) = 0;
          ims::CFMutableDictionary::create(a4);
          ims::CFType::~CFType(&v26);
          goto LABEL_37;
        }

        __p = &unk_1F5EBED08;
        value = 0;
        ims::CFMutableDictionary::create(&__p);
        v18 = value;
        CFDictionarySetValue(v15, v26.__r_.__value_.__l.__size_, value);
        ims::CFType::~CFType(&__p);
      }

      ims::CFType::~CFType(&v26);
      v14 += 24;
      v15 = v18;
      --v16;
    }

    while (v16);
    *a4 = &unk_1F5EF3658;
    *(a4 + 1) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    *a4 = &unk_1F5EBED08;
LABEL_37:
    v26.__r_.__value_.__r.__words[0] = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  }

  else
  {
    *a4 = &unk_1F5EBED08;
    *(a4 + 1) = 0;
    ims::CFMutableDictionary::create(a4);
  }
}

void sub_1E4CA7F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,ImsCarrierPrefs>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
  v6 = *(a2 + 8);
  this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
  this[2].__r_.__value_.__r.__words[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  ImsEmergencyPrefs::ImsEmergencyPrefs(&this[3], (a2 + 72));
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  std::vector<ImpuType>::__init_with_size[abi:ne200100]<ImpuType*,ImpuType*>(&this[8].__r_.__value_.__r.__words[2], *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 2);
  this[9].__r_.__value_.__r.__words[2] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = 0;
  std::vector<ImpuType>::__init_with_size[abi:ne200100]<ImpuType*,ImpuType*>(&this[9].__r_.__value_.__r.__words[2], *(a2 + 29), *(a2 + 30), (*(a2 + 30) - *(a2 + 29)) >> 2);
  std::set<std::string>::set[abi:ne200100](&this[10].__r_.__value_.__r.__words[2], (a2 + 16));
  return this;
}

void sub_1E4CA813C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsEmergencyPrefs::~ImsEmergencyPrefs(ImsEmergencyPrefs *this)
{
  v2 = (this + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  *(this + 7) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 64, *(this + 9));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 32, *(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void ImsEmergencyPrefs::ImsEmergencyPrefs(ImsEmergencyPrefs *this, const ImsEmergencyPrefs *a2)
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

  std::map<std::string,std::string>::map[abi:ne200100](this + 4, a2 + 32);
  *(this + 7) = &unk_1F5EF3C38;
  std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](this + 8, a2 + 64);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 88, *(a2 + 11), *(a2 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 12) - *(a2 + 11)) >> 3));
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 112, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
}

void sub_1E4CA8344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 56) = v4;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v3 + 64, *(v3 + 72));
  BambiEmergencyUrnMap::~BambiEmergencyUrnMap(v2);
  _Unwind_Resume(a1);
}

void sub_1E4CA8384()
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v0);
  }

  JUMPOUT(0x1E4CA837CLL);
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

void **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
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

  return std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a3, a5);
}

void *std::map<std::string,std::set<unsigned int>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::set<unsigned int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::set<unsigned int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned int>> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned int>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__construct_node<std::pair<std::string const,std::set<unsigned int>> const&>();
  }

  return v3;
}

void BambiEmergencyUrnMap::~BambiEmergencyUrnMap(BambiEmergencyUrnMap *this)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<ImpuType>::__init_with_size[abi:ne200100]<ImpuType*,ImpuType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(result, a4);
    }

    std::vector<ImpuType>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E4CA88F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SipImpuRank::~SipImpuRank(SipImpuRank *this)
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

void ImsCarrierPrefs::~ImsCarrierPrefs(ImsCarrierPrefs *this)
{
  std::__tree<std::string>::destroy(this + 232, *(this + 30));
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v5 = (this + 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  *(this + 13) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 112, *(this + 15));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<ImsPrefsManager::instance(void)::Wrapper,std::allocator<ImsPrefsManager::instance(void)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC1A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsPrefsManager::instance(void)::Wrapper,std::allocator<ImsPrefsManager::instance(void)::Wrapper>>::__on_zero_shared(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "prefs");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~ImsPrefsManager", 16);
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

  v5 = *(a1 + 32);
  v4 = a1 + 32;
  std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::destroy(v5);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 - 8) = v4;
  ImsDefaultPrefs::~ImsDefaultPrefs((v4 + 16));
  std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::destroy(*v4);
}

void std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,ImsCarrierPrefs>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,ImsCarrierPrefs>,0>(uint64_t a1)
{
  ImsCarrierPrefs::~ImsCarrierPrefs((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_1E4CA8E9C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<ImsPrefs>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<ImsPrefs>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC1A80;
  ImsPrefs::ImsPrefs((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ImsPrefs>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC1A80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ImsCarrierPrefs>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ImsCarrierPrefs>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ImsCarrierPrefs>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE15ImsCarrierPrefsEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[10].__r_.__value_.__r.__words[1] = 0u;
  *&this[9].__r_.__value_.__r.__words[2] = 0u;
  *&this[9].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[11].__r_.__value_.__l.__data_ = 0u;
  HIDWORD(this[3].__r_.__value_.__r.__words[0]) = 10;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__l.__size_ = &this[4].__r_.__value_.__r.__words[2];
  BambiEmergencyUrnMap::reset(&this[3].__r_.__value_.__r.__words[1]);
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = &unk_1F5EF3C38;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = &this[6];
  *&this[6].__r_.__value_.__r.__words[2] = 0u;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  SipImpuRank::SipImpuRank(&this[8].__r_.__value_.__r.__words[2]);
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  this[10].__r_.__value_.__r.__words[2] = &this[11];
  return this;
}

void sub_1E4CA920C(_Unwind_Exception *a1)
{
  ImsEmergencyPrefs::~ImsEmergencyPrefs((v1 + 72));
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::string>::__erase_unique<std::string>(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::erase(a1, v3);
  return 1;
}

BOOL SDPParser::parseVersion(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = atoll(v4);
    *(v3 + 64) = v5;
    v6 = std::string::basic_string[abi:ne200100]<0>(v21, "sdp.parser");
    v13[0] = 0;
    v16 = 0;
    v7 = ims::spam(v6, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "SDPModel Protocol Version set to ", 33);
    *(v7 + 17) = 0;
    MEMORY[0x1E69233B0](*(v7 + 8), v5);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v16 != 1 || (v15 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v8 = v14;
    goto LABEL_11;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(v21, "sdp.parser");
  v17[0] = 0;
  v20 = 0;
  v10 = ims::error(v9, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "SDPModel is null: '", 19);
  *(v10 + 17) = 0;
  v11 = *(v10 + 8);
  v23 = 118;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v23, 1);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "=", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "'", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    v8 = __p;
LABEL_11:
    operator delete(v8);
  }

LABEL_12:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  return v3 != 0;
}

void sub_1E4CA953C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPParser::parseOrigin(uint64_t a1, const std::string *a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sdp.parser");
    v54[0] = 0;
    v57 = 0;
    v8 = ims::error(__p, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SDPModel is null: '", 19);
    *(v8 + 17) = 0;
    v9 = *(v8 + 8);
    v26.__r_.__value_.__s.__data_[0] = 111;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v26, 1);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "=", 1);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "'", 1);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v57 != 1 || (v56 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v7 = v55;
    goto LABEL_9;
  }

  if ((*(*(v4 + 72) + 24))())
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sdp.parser");
    v50[0] = 0;
    v53 = 0;
    v5 = ims::error(__p, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Origin already found: '", 23);
    *(v5 + 17) = 0;
    v6 = *(v5 + 8);
    v26.__r_.__value_.__s.__data_[0] = 111;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v26, 1);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "=", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "'", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v53 != 1 || (v52 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v7 = v51;
LABEL_9:
    operator delete(v7);
LABEL_10:
    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v11 = *(*(a1 + 8) + 64);
  v10 = v11 == 0;
  if (v11)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sdp.parser");
    v46[0] = 0;
    v49 = 0;
    v12 = ims::error(__p, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Protocol version set to ", 24);
    *(v12 + 17) = 0;
    MEMORY[0x1E69233B0](*(v12 + 8), *(*(a1 + 8) + 64));
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ". Only 0 is supported: '", 24);
    *(v12 + 17) = 0;
    v13 = *(v12 + 8);
    v26.__r_.__value_.__s.__data_[0] = 111;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v26, 1);
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "=", 1);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "'", 1);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(&v45, 0, sizeof(v45));
  memset(&__s, 0, sizeof(__s));
  std::string::basic_string[abi:ne200100]<0>(&__s, "");
  v43 = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  *__p = 0u;
  std::istringstream::basic_istringstream[abi:ne200100](__p, a2, 8);
  v14 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &__s);
  if ((*(v14 + *(*v14 - 24) + 32) & 5) != 0 || (v15 = MEMORY[0x1E69232B0](__p, &v43), (*(v15 + *(*v15 - 24) + 32) & 5) != 0) || (v16 = MEMORY[0x1E69232B0](__p, &v42), (*(v16 + *(*v16 - 24) + 32) & 5) != 0))
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "sdp.parser");
    v33[0] = 0;
    v36 = 0;
    v17 = ims::error(&v26, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "SDPOrigin is missing something: '", 33);
    *(v17 + 17) = 0;
    v18 = *(v17 + 8);
    LOBYTE(v24[0]) = 111;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v24, 1);
    *(v17 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "=", 1);
    *(v17 + 17) = 0;
    (*(*v17 + 32))(v17, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "'", 1);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v10 = 0;
  }

  std::ios_base::getloc((__p + *(__p[0] - 3)));
  v19 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
  v20 = (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v26);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v45, v20);
  v21 = *(a1 + 8);
  SDPParser::parseConnectionHelper(&v45, a1, v24);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __s;
  }

  SDPOrigin::SDPOrigin(&v26, v24, &v23, v43, v42);
  *(v21 + 80) = v26.__r_.__value_.__s.__data_[8];
  *(v21 + 96) = v27;
  *(v21 + 100) = v28;
  std::string::operator=((v21 + 112), &v29);
  *(v21 + 136) = v30;
  std::string::operator=((v21 + 144), &v31);
  *(v21 + 168) = v32;
  SDPOrigin::~SDPOrigin(&v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v24[0] = &unk_1F5ED8C78;
  if (v25 < 0)
  {
    operator delete(v24[3]);
  }

  __p[0] = *MEMORY[0x1E69E54E0];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v38[0] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v40) < 0)
  {
    operator delete(v39[0]);
  }

  *&v38[0] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38 + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v41 + 8);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1E4CA9E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a44);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (*(v44 - 217) < 0)
  {
    operator delete(*(v44 - 240));
  }

  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseSessionName(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
    }

    else
    {
      __str = *a2;
    }

    std::string::operator=((v3 + 184), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 8);
    if (!*(v9 + 64) && ((*(*(v9 + 72) + 24))() & 1) != 0)
    {
      return 1;
    }

    v11 = std::string::basic_string[abi:ne200100]<0>(v23, "sdp.parser");
    v14[0] = 0;
    v17 = 0;
    v12 = ims::error(v11, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Session name parsed out of order. Must appear after origin: '", 61);
    *(v12 + 17) = 0;
    v13 = *(v12 + 8);
    v25 = 115;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v25, 1);
    *(v12 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "=", 1);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "'", 1);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      v8 = __p;
      goto LABEL_16;
    }
  }

  else
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(v23, "sdp.parser");
    v19[0] = 0;
    v22 = 0;
    v6 = ims::error(v5, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SDPModel is null: '", 19);
    *(v6 + 17) = 0;
    v7 = *(v6 + 8);
    v25 = 115;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v25, 1);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "=", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "'", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v22 == 1 && v21 < 0)
    {
      v8 = v20;
LABEL_16:
      operator delete(v8);
    }
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return 0;
}

void sub_1E4CAA280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseSessionInformation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
    }

    else
    {
      __str = *a2;
    }

    std::string::operator=((v3 + 208), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 8);
    if (!*(v9 + 64) && (*(*(v9 + 72) + 24))())
    {
      v10 = *(a1 + 8);
      if (*(v10 + 207) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v10 + 184), *(v10 + 192));
      }

      else
      {
        v25 = *(v10 + 184);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v25.__r_.__value_.__l.__size_;
        operator delete(v25.__r_.__value_.__l.__data_);
        if (size)
        {
          return 1;
        }
      }

      else if (*(&v25.__r_.__value_.__s + 23))
      {
        return 1;
      }
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&v25, "sdp.parser");
    v16[0] = 0;
    v19 = 0;
    v14 = ims::error(v13, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Session information parsed out of order. Must appear after origin: '", 68);
    *(v14 + 17) = 0;
    v15 = *(v14 + 8);
    v26 = 105;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v26, 1);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "=", 1);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "'", 1);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      v8 = __p;
      goto LABEL_22;
    }
  }

  else
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v25, "sdp.parser");
    v21[0] = 0;
    v24 = 0;
    v6 = ims::error(v5, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SDPModel is null: '", 19);
    *(v6 + 17) = 0;
    v7 = *(v6 + 8);
    v26 = 105;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v26, 1);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "=", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "'", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      v8 = v22;
LABEL_22:
      operator delete(v8);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4CAA618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseURI(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
    }

    else
    {
      __str = *a2;
    }

    std::string::operator=((v3 + 232), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 8);
    if (!*(v9 + 64) && (*(*(v9 + 72) + 24))())
    {
      v10 = *(a1 + 8);
      if (*(v10 + 207) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(v10 + 184), *(v10 + 192));
      }

      else
      {
        v25 = *(v10 + 184);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v25.__r_.__value_.__l.__size_;
        operator delete(v25.__r_.__value_.__l.__data_);
        if (size)
        {
          return 1;
        }
      }

      else if (*(&v25.__r_.__value_.__s + 23))
      {
        return 1;
      }
    }

    v13 = std::string::basic_string[abi:ne200100]<0>(&v25, "sdp.parser");
    v16[0] = 0;
    v19 = 0;
    v14 = ims::error(v13, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "URI parsed out of order. Must appear after origin: '", 52);
    *(v14 + 17) = 0;
    v15 = *(v14 + 8);
    v26 = 117;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v26, 1);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "=", 1);
    *(v14 + 17) = 0;
    (*(*v14 + 32))(v14, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "'", 1);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      v8 = __p;
      goto LABEL_22;
    }
  }

  else
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v25, "sdp.parser");
    v21[0] = 0;
    v24 = 0;
    v6 = ims::error(v5, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SDPModel is null: '", 19);
    *(v6 + 17) = 0;
    v7 = *(v6 + 8);
    v26 = 117;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v26, 1);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "=", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "'", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      v8 = v22;
LABEL_22:
      operator delete(v8);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4CAA9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseEmail(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v11, "sdp.parser");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::error(v3, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPModel is null: '", 19);
  *(v4 + 17) = 0;
  v5 = *(v4 + 8);
  v12 = 101;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v12, 1);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "=", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "'", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4CAAD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parsePhoneNumber(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v11, "sdp.parser");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::error(v3, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPModel is null: '", 19);
  *(v4 + 17) = 0;
  v5 = *(v4 + 8);
  v12 = 112;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v12, 1);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "=", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "'", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4CAB0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseConnection(uint64_t a1, const std::string *a2)
{
  if (*(a1 + 8))
  {
    v11 = 0;
    *v9 = 0u;
    v10 = 0u;
    *__p = 0u;
    SDPParser::parseConnectionHelper(a2, a1, __p);
    SDPModel::addSDPConnection(*(a1 + 8), __p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sdp.parser");
  v12[0] = 0;
  v15 = 0;
  v4 = ims::error(__p, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPModel is null: '", 19);
  *(v4 + 17) = 0;
  v5 = *(v4 + 8);
  v7.__r_.__value_.__s.__data_[0] = 99;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "=", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "'", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v9[0]) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1E4CAB5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseBandwidth(uint64_t a1, std::string *this)
{
  if (*(a1 + 8))
  {
    v4 = std::string::find(this, 58, 0);
    if (v4 != -1)
    {
      v5 = v4;
      memset(&v33, 0, sizeof(v33));
      v6 = &v33;
      std::string::basic_string(&v33, this, 0, v4, &v24);
      memset(&v32, 0, sizeof(v32));
      std::string::basic_string(&v32, this, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v24);
      v7 = 0;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = v33.__r_.__value_.__r.__words[0];
      }

      v9 = &SDPBandwidth::bwTypeLookup;
      while (1)
      {
        v10 = *(v9 + 23);
        if (size == (v10 & ~(v10 >> 31)))
        {
          v11 = v10 >= 0 ? v9 : *v9;
          if (!memcmp(v6, v11, size))
          {
            break;
          }
        }

        --v7;
        v9 += 3;
        if (v7 == -6)
        {
          goto LABEL_15;
        }
      }

      if (v7)
      {
        v14 = -v7;
      }

      else
      {
LABEL_15:
        std::string::basic_string[abi:ne200100]<0>(&v24, "sdp.parser");
        v28[0] = 0;
        v31 = 0;
        v12 = ims::error(&v24, v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Bandwidth set to kBWTypeUnknown: '", 34);
        *(v12 + 17) = 0;
        v13 = *(v12 + 8);
        v42 = 98;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v42, 1);
        *(v12 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "=", 1);
        *(v12 + 17) = 0;
        (*(*v12 + 32))(v12, this);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "'", 1);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        if (v31 == 1 && v30 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        LODWORD(v14) = 0;
      }

      v20 = *(a1 + 8);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v32;
      }

      else
      {
        v21 = v32.__r_.__value_.__r.__words[0];
      }

      v22 = atoll(v21);
      v24.__r_.__value_.__s.__data_[8] = 1;
      v24.__r_.__value_.__r.__words[0] = &unk_1F5EC6670;
      HIDWORD(v24.__r_.__value_.__r.__words[1]) = v14;
      v24.__r_.__value_.__s.__data_[16] = v22 != 0;
      v25 = v22;
      v26 = 2;
      v27 = 5;
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "sdp.parser");
    v34[0] = 0;
    v37 = 0;
    v18 = ims::error(&v24, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Bandwidth missing information: '", 32);
    *(v18 + 17) = 0;
    v19 = *(v18 + 8);
    v33.__r_.__value_.__s.__data_[0] = 98;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v33, 1);
    *(v18 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "=", 1);
    *(v18 + 17) = 0;
    (*(*v18 + 32))(v18, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "'", 1);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      v17 = v35;
      goto LABEL_33;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, "sdp.parser");
    v38[0] = 0;
    v41 = 0;
    v15 = ims::error(&v24, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "SDPModel is null: '", 19);
    *(v15 + 17) = 0;
    v16 = *(v15 + 8);
    v33.__r_.__value_.__s.__data_[0] = 98;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v33, 1);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "=", 1);
    *(v15 + 17) = 0;
    (*(*v15 + 32))(v15, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "'", 1);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v41 == 1 && v40 < 0)
    {
      v17 = v39;
LABEL_33:
      operator delete(v17);
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E4CABD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseTime(uint64_t a1, const std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (!*(v4 + 64) && (*(*(v4 + 72) + 24))())
    {
      v5 = *(a1 + 8);
      if (*(v5 + 207) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v5 + 184), *(v5 + 192));
      }

      else
      {
        __p = *(v5 + 184);
        *&v35 = *(v5 + 200);
      }

      if (SBYTE7(v35) < 0)
      {
        v8 = *(&__p + 1);
        operator delete(__p);
        if (v8)
        {
          goto LABEL_22;
        }
      }

      else if (BYTE7(v35))
      {
        goto LABEL_22;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "sdp.parser");
    v52[0] = 0;
    v55 = 0;
    v9 = ims::error(&__p, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Time information parsed out of order. Must appear after origin: '", 65);
    *(v9 + 17) = 0;
    v10 = *(v9 + 8);
    LOBYTE(v21) = 116;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v21, 1);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "=", 1);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "'", 1);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v55 == 1 && v54 < 0)
    {
      operator delete(v53);
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(__p);
    }

LABEL_22:
    v51 = 0uLL;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    __p = 0u;
    std::istringstream::basic_istringstream[abi:ne200100](&__p, a2, 8);
    v11 = MEMORY[0x1E69232B0](&__p, &v51 + 8);
    if ((*(v11 + *(*v11 - 24) + 32) & 5) != 0 || (v12 = MEMORY[0x1E69232B0](&__p, &v51), (*(v12 + *(*v12 - 24) + 32) & 5) != 0))
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "sdp.parser");
      v30[0] = 0;
      v33 = 0;
      v13 = ims::error(&v21, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to parse Timing object: '", 32);
      *(v13 + 17) = 0;
      v14 = *(v13 + 8);
      v60 = 116;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v60, 1);
      *(v13 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "=", 1);
      *(v13 + 17) = 0;
      (*(*v13 + 32))(v13, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "'", 1);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v33 == 1 && v32 < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(v21);
      }

      v16 = *(&v51 + 1);
      v15 = v51;
    }

    else
    {
      v15 = *(&v51 + 1) | v51;
      if (v51 == 0)
      {
        v16 = 0;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v21, "sdp.parser");
        v26[0] = 0;
        v29 = 0;
        v19 = ims::warn(&v21, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "We don't support non-zero values in timing objects: '", 53);
        *(v19 + 17) = 0;
        v20 = *(v19 + 8);
        v60 = 116;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v60, 1);
        *(v19 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "=", 1);
        *(v19 + 17) = 0;
        (*(*v19 + 32))(v19, a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "'", 1);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        if (v29 == 1 && v28 < 0)
        {
          operator delete(v27);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(v21);
        }

        v15 = 0;
        v16 = 0;
        v51 = 0uLL;
      }
    }

    v17 = *(a1 + 8);
    v22 = 1;
    v21 = &unk_1F5EF6640;
    v23 = v16;
    v24 = v15;
    v25[0] = v25;
    v25[1] = v25;
    v25[2] = 0;
    std::__list_imp<SDPTiming>::__create_node[abi:ne200100]<SDPTiming>();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sdp.parser");
  v56[0] = 0;
  v59 = 0;
  v6 = ims::error(&__p, v56);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SDPModel is null: '", 19);
  *(v6 + 17) = 0;
  v7 = *(v6 + 8);
  LOBYTE(v21) = 116;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v21, 1);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "=", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "'", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v59 == 1 && v58 < 0)
  {
    operator delete(v57);
  }

  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t SDPParser::parseRepeatTimes(uint64_t a1, const std::string *a2)
{
  if (*(a1 + 8))
  {
    v40[0] = v40;
    v40[1] = v40;
    v40[2] = 0;
    memset(&v39, 0, sizeof(v39));
    memset(&v38, 0, sizeof(v38));
    memset(&v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *v20 = 0u;
    std::istringstream::basic_istringstream[abi:ne200100](v20, a2, 8);
    v3 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &v39);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0 || (v4 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &v38), (*(v4 + *(*v4 - 24) + 32) & 5) != 0) || (v5 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &v37), (*(v5 + *(*v5 - 24) + 32) & 5) != 0))
    {
      std::string::basic_string[abi:ne200100]<0>(&v11, "sdp.parser");
      v16[0] = 0;
      v19 = 0;
      v6 = ims::error(&v11, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Repeat Times missing information: '", 35);
      *(v6 + 17) = 0;
      v7 = *(v6 + 8);
      v45 = 114;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v45, 1);
      *(v6 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "=", 1);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "'", 1);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11);
      }
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = v39;
    }

    SDPParser::getTimeInSeconds(&v15);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v38;
    }

    SDPParser::getTimeInSeconds(&v14);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = v37;
    }

    SDPParser::getTimeInSeconds(&v13);
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "sdp.parser");
  v41[0] = 0;
  v44 = 0;
  v8 = ims::error(v20, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SDPModel is null: '", 19);
  *(v8 + 17) = 0;
  v9 = *(v8 + 8);
  LOBYTE(v11) = 114;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v11, 1);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "=", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "'", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SBYTE7(v21) < 0)
  {
    operator delete(v20[0]);
  }

  return 0;
}

void sub_1E4CACF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  std::istringstream::~istringstream(&a45);
  if (*(v45 - 217) < 0)
  {
    operator delete(*(v45 - 240));
  }

  if (*(v45 - 193) < 0)
  {
    operator delete(*(v45 - 216));
  }

  if (*(v45 - 169) < 0)
  {
    operator delete(*(v45 - 192));
  }

  std::__list_imp<unsigned long long>::clear((v45 - 168));
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseTimeZone(uint64_t a1, const std::string *a2)
{
  if (*(a1 + 8))
  {
    v32[0] = v32;
    v32[1] = v32;
    v33 = 0;
    memset(v31, 0, sizeof(v31));
    *v29 = 0u;
    v30 = 0u;
    memset(v28, 0, sizeof(v28));
    *__p = 0u;
    std::istringstream::basic_istringstream[abi:ne200100](__p, a2, 8);
    memset(&v26, 0, sizeof(v26));
    std::string::basic_string[abi:ne200100]<0>(&v26, "");
    memset(&v25, 0, sizeof(v25));
    std::string::basic_string[abi:ne200100]<0>(&v25, "");
    v4 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v26);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
    {
      v5 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v25);
      if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
      {
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v24, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
        }

        else
        {
          v24 = v26;
        }

        SDPParser::getTimeInSeconds(&v24);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
        }

        else
        {
          v23 = v25;
        }

        SDPParser::getTimeInSeconds(&v23);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        operator new();
      }
    }

    v6 = *(a1 + 8);
    v21 = 1;
    std::list<std::pair<unsigned long long,long>>::list(v22, v32);
    v39 = 1;
    v38 = &unk_1F5EF6688;
    std::list<std::pair<unsigned long long,long>>::list(v40, v22);
    std::optional<SDPTimeZone>::operator=[abi:ne200100]<SDPTimeZone,void>(v6 + 376, &v38);
    v38 = &unk_1F5EF6688;
    std::__list_imp<unsigned long long>::clear(v40);
    v20 = &unk_1F5EF6688;
    std::__list_imp<unsigned long long>::clear(v22);
    if (!v33)
    {
LABEL_31:
      v10 = std::string::basic_string[abi:ne200100]<0>(&v38, "sdp.parser");
      v16[0] = 0;
      v19 = 0;
      v11 = ims::error(v10, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Timezone adjustment offset list ", 32);
      *(v11 + 17) = 0;
      if (v33)
      {
        v12 = " missing offset";
      }

      else
      {
        v12 = "missing";
      }

      if (v33)
      {
        v13 = 15;
      }

      else
      {
        v13 = 7;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12, v13);
      *(v11 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), ": '", 3);
      *(v11 + 17) = 0;
      v14 = *(v11 + 8);
      LOBYTE(v20) = 122;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v20, 1);
      *(v11 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "=", 1);
      *(v11 + 17) = 0;
      (*(*v11 + 32))(v11, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "'", 1);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
      }

      if (SHIBYTE(v40[0]) < 0)
      {
        operator delete(v38);
      }

      v7 = 0;
LABEL_43:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_44:
      operator delete(v25.__r_.__value_.__l.__data_);
      goto LABEL_45;
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v26.__r_.__value_.__l.__size_)
      {
LABEL_18:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v25.__r_.__value_.__l.__size_)
          {
            v7 = 1;
            goto LABEL_44;
          }
        }

        else if (*(&v25.__r_.__value_.__s + 23))
        {
          v7 = 1;
LABEL_45:
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          __p[0] = *MEMORY[0x1E69E54E0];
          *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E0] + 24);
          *&v28[0] = MEMORY[0x1E69E5548] + 16;
          if (SBYTE7(v30) < 0)
          {
            operator delete(v29[0]);
          }

          *&v28[0] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v28 + 1);
          std::istream::~istream();
          MEMORY[0x1E6923510](v31 + 8);
          std::__list_imp<unsigned long long>::clear(v32);
          return v7;
        }

        goto LABEL_31;
      }
    }

    else if (*(&v26.__r_.__value_.__s + 23))
    {
      goto LABEL_18;
    }

    v7 = 1;
    goto LABEL_43;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sdp.parser");
  v34[0] = 0;
  v37 = 0;
  v8 = ims::error(__p, v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SDPModel is null: '", 19);
  *(v8 + 17) = 0;
  v9 = *(v8 + 8);
  LOBYTE(v38) = 122;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v38, 1);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "=", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "'", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (SBYTE7(v28[0]) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1E4CAD770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  std::istringstream::~istringstream(&a50);
  std::__list_imp<unsigned long long>::clear((v55 - 184));
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseEncryptionKey(uint64_t a1, uint64_t a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v11, "sdp.parser");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::error(v3, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDP_ENCRYPTION_KEY_TAG NOT IMPLEMENTED: '", 41);
  *(v4 + 17) = 0;
  v5 = *(v4 + 8);
  v13 = 107;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v13, 1);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "=", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "'", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  return 1;
}

void sub_1E4CAD9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPParser::parseAttribute(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = std::string::find(this, 58, 0);
    memset(&v23, 0, sizeof(v23));
    std::string::basic_string(&v23, this, 0, v5, &v19);
    memset(&v22, 0, sizeof(v22));
    if (v5 != -1)
    {
      std::string::basic_string(&v19, this, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v28);
      v22 = v19;
    }

    v6 = qword_1EE2BC1B0;
    if (!qword_1EE2BC1B0)
    {
      goto LABEL_13;
    }

    v7 = &qword_1EE2BC1B0;
    do
    {
      v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v6 + 32), &v23.__r_.__value_.__l.__data_);
      if ((v8 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 4) & 8));
    }

    while (v6);
    if (v7 == &qword_1EE2BC1B0 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, v7 + 4) & 0x80) != 0)
    {
LABEL_13:
      v10 = *(a1 + 8);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
      }

      else
      {
        v18 = v23;
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v22;
      }

      SDPUnsupportedAttribute::SDPUnsupportedAttribute(&v19, &v18, &__p);
      std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPUnsupportedAttribute>();
    }

    v19.__r_.__value_.__r.__words[0] = 0;
    v9 = *std::__tree<std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>,std::__map_value_compare<std::string,std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>>>::__find_equal<std::string>(&v19, &v23.__r_.__value_.__l.__data_);
    if (!v9)
    {
      operator new();
    }

    v14 = *(v9 + 56);
    v15 = *(a1 + 16);
    v20 = *(a1 + 8);
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14(&v20, &v22);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_33;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "sdp.parser");
    v24[0] = 0;
    v27 = 0;
    v11 = ims::error(&v19, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "SDPModel is null: '", 19);
    *(v11 + 17) = 0;
    v12 = *(v11 + 8);
    v23.__r_.__value_.__s.__data_[0] = 97;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v23, 1);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "=", 1);
    *(v11 + 17) = 0;
    (*(*v11 + 32))(v11, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "'", 1);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v19.__r_.__value_.__r.__words[0];
LABEL_33:
      operator delete(v13);
    }
  }

  return v3 != 0;
}

void sub_1E4CADDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  operator delete(v41);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 129) < 0)
  {
    operator delete(*(v42 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseMedia(uint64_t a1, uint64_t a2, void *a3)
{
  v128 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    v66 = 1;
    v69 = 0;
    v77 = 0u;
    memset(&v76[2], 0, 32);
    v75 = 0u;
    v73[2] = 0;
    v65 = &unk_1F5EEA520;
    v67 = 0uLL;
    v68 = 0;
    v70[0] = v70;
    v70[1] = v70;
    v72 = 0u;
    v71 = 0u;
    v73[0] = v73;
    v73[1] = v73;
    v74 = &v74;
    *&v75 = &v74;
    v76[0] = v76;
    v76[1] = v76;
    SDPPreconditionTable::SDPPreconditionTable(&v76[3], 1);
    v4 = 0;
    LOBYTE(v77) = 0;
    *(&v77 + 1) = 0;
    v55 = *MEMORY[0x1E69E54E0];
    v54 = *(MEMORY[0x1E69E54E0] + 24);
    v5 = 109;
    v53 = 1;
    while (1)
    {
      if (v5 == 109 && (v4 & 1) != 0)
      {
        *(&v77 + 1) = *(a1 + 8);
        std::vector<SDPMedia>::push_back[abi:ne200100](*(&v77 + 1) + 448, &v65);
      }

      else if (v5 != 109)
      {
        if (*(a2 + 23) < 0)
        {
          if (!*(a2 + 8))
          {
LABEL_100:
            std::string::basic_string[abi:ne200100]<0>(v102, "sdp.parser");
            v61[0] = 0;
            v64 = 0;
            v39 = ims::warn(v102, v61);
            v40 = v39;
            v41 = *(a2 + 23);
            if ((v41 & 0x80u) != 0)
            {
              v41 = *(a2 + 8);
            }

            if (v41)
            {
              v42 = "Media parser not found";
            }

            else
            {
              v42 = "Nothing to parse";
            }

            v43 = *(v39 + 8);
            if (v41)
            {
              v44 = 22;
            }

            else
            {
              v44 = 16;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v42, v44);
            *(v40 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), ": '", 3);
            *(v40 + 17) = 0;
            v45 = *(v40 + 8);
            v107.__r_.__value_.__s.__data_[0] = 109;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, &v107, 1);
            *(v40 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "=", 1);
            *(v40 + 17) = 0;
            (*(*v40 + 32))(v40, a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "'", 1);
            *(v40 + 17) = 0;
            (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v40 + 17) = 0;
            if (v64 == 1 && v63 < 0)
            {
              operator delete(v62);
            }

            if (SBYTE7(v103[0]) < 0)
            {
              operator delete(v102[0]);
            }

            v53 = 0;
            goto LABEL_114;
          }
        }

        else if (!*(a2 + 23))
        {
          goto LABEL_100;
        }

        v36 = qword_1EE2BC1C8;
        if (qword_1EE2BC1C8)
        {
          v37 = &qword_1EE2BC1C8;
          v38 = qword_1EE2BC1C8;
          do
          {
            if (*(v38 + 32) >= v5)
            {
              v37 = v38;
            }

            v38 = *(v38 + 8 * (*(v38 + 32) < v5));
          }

          while (v38);
          if (v37 != &qword_1EE2BC1C8 && v5 >= *(v37 + 8))
          {
            while (1)
            {
              while (1)
              {
                v46 = v36;
                v47 = *(v36 + 32);
                if (v47 <= v5)
                {
                  break;
                }

                v36 = *v46;
                if (!*v46)
                {
                  goto LABEL_122;
                }
              }

              if (v47 >= v5)
              {
                break;
              }

              v36 = *(v46 + 8);
              if (!v36)
              {
LABEL_122:
                operator new();
              }
            }

            v53 &= (*(v46 + 40))(a1, &v65, a2);
            goto LABEL_114;
          }
        }

        goto LABEL_100;
      }

      memset(v106, 0, sizeof(v106));
      *v104 = 0u;
      v105 = 0u;
      memset(v103, 0, sizeof(v103));
      *v102 = 0u;
      std::istringstream::basic_istringstream[abi:ne200100](v102, a2, 8);
      v100 = 0;
      v99 = 0;
      v101 = 0;
      memset(&__s, 0, sizeof(__s));
      v96 = 0;
      v95 = 0;
      v97 = 0;
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v102, &v99);
      if (SHIBYTE(v101) < 0)
      {
        if (!v100)
        {
          goto LABEL_32;
        }
      }

      else if (!HIBYTE(v101))
      {
        goto LABEL_32;
      }

      v6 = 0;
      while (1)
      {
        if (v101 >= 0)
        {
          v7 = &v99;
        }

        else
        {
          v7 = v99;
        }

        v8 = SHIBYTE(v107.__r_.__value_.__r.__words[2]);
        v9 = v107.__r_.__value_.__r.__words[0];
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v107;
        }

        else
        {
          v10 = v107.__r_.__value_.__r.__words[0];
        }

        v11 = strcasecmp(v7, v10);
        if (v8 < 0)
        {
          operator delete(v9);
        }

        if (!v11)
        {
          break;
        }

        if (++v6 == 7)
        {
          goto LABEL_27;
        }
      }

      if (v6)
      {
        goto LABEL_33;
      }

LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(&v107, "sdp.parser");
      v91[0] = 0;
      v94 = 0;
      v12 = ims::error(&v107, v91);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Unknown MediaType - ", 20);
      *(v12 + 17) = 0;
      (*(*v12 + 32))(v12, &v99);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": '", 3);
      *(v12 + 17) = 0;
      v13 = *(v12 + 8);
      v87[0] = 109;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v87, 1);
      *(v12 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "=", 1);
      *(v12 + 17) = 0;
      (*(*v12 + 32))(v12, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "'", 1);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      if (v94 == 1 && v93 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

LABEL_32:
      LODWORD(v6) = 0;
LABEL_33:
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v102, &__s);
      size = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __s.__r_.__value_.__l.__size_;
        if (!__s.__r_.__value_.__l.__size_)
        {
LABEL_43:
          v19 = 0;
          v18 = 0;
          goto LABEL_50;
        }

        p_s = __s.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&__s.__r_.__value_.__s + 23))
        {
          goto LABEL_43;
        }

        p_s = &__s;
      }

      v16 = memchr(p_s, 47, size);
      if (v16)
      {
        v17 = v16 - p_s;
      }

      else
      {
        v17 = -1;
      }

      std::string::basic_string(&v107, &__s, 0, v17, v87);
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        v20 = v107.__r_.__value_.__r.__words[0];
        v18 = atol(v107.__r_.__value_.__l.__data_);
        operator delete(v20);
      }

      else
      {
        v18 = atol(&v107);
      }

      if (v17 == -1)
      {
        v19 = 0;
      }

      else
      {
        std::string::basic_string(&v107, &__s, v17 + 1, 0xFFFFFFFFFFFFFFFFLL, v87);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          v21 = v107.__r_.__value_.__r.__words[0];
          v19 = atol(v107.__r_.__value_.__l.__data_);
          operator delete(v21);
        }

        else
        {
          v19 = atol(&v107);
        }
      }

LABEL_50:
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v102, &v95);
      v59 = v18;
      if (SHIBYTE(v97) < 0)
      {
        if (v96)
        {
LABEL_52:
          v57 = v19;
          v22 = 0;
          while (1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v107, *v23);
            if (v97 >= 0)
            {
              v24 = &v95;
            }

            else
            {
              v24 = v95;
            }

            v25 = SHIBYTE(v107.__r_.__value_.__r.__words[2]);
            v26 = v107.__r_.__value_.__r.__words[0];
            if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v107;
            }

            else
            {
              v27 = v107.__r_.__value_.__r.__words[0];
            }

            v28 = strcasecmp(v24, v27);
            if (v25 < 0)
            {
              operator delete(v26);
            }

            if (!v28)
            {
              break;
            }

            --v22;
            ++v23;
            if (v22 == -9)
            {
              goto LABEL_75;
            }
          }

          v29 = -v22;
          if ((*(a1 + 1) & 1) != 0 || (-9 - v22) < 0xFFFFFFFE)
          {
            if (v22)
            {
              v30 = v59;
              v19 = v57;
              goto LABEL_81;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v107, "sdp.parser");
            v87[0] = 0;
            v90 = 0;
            v31 = ims::error(&v107, v87);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Unexpected protocol ", 20);
            *(v31 + 17) = 0;
            (*(*v31 + 32))(v31, &v95);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), " (", 2);
            *(v31 + 17) = 0;
            MEMORY[0x1E6923340](*(v31 + 8), -v22);
            *(v31 + 17) = 0;
            v32 = *(v31 + 8);
            v83[0] = 41;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v83, 1);
            *(v31 + 17) = 0;
            (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v31 + 17) = 0;
            if (v90 == 1 && v89 < 0)
            {
              operator delete(v88);
            }

            if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v107.__r_.__value_.__l.__data_);
            }
          }

LABEL_75:
          std::string::basic_string[abi:ne200100]<0>(&v107, "sdp.parser");
          v83[0] = 0;
          v86 = 0;
          v33 = ims::error(&v107, v83);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Unknown ProtocolType - ", 23);
          *(v33 + 17) = 0;
          (*(*v33 + 32))(v33, &v95);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), ": '", 3);
          *(v33 + 17) = 0;
          v34 = *(v33 + 8);
          LOBYTE(v82) = 109;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, &v82, 1);
          *(v33 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "=", 1);
          *(v33 + 17) = 0;
          (*(*v33 + 32))(v33, a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "'", 1);
          *(v33 + 17) = 0;
          (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v33 + 17) = 0;
          v30 = v59;
          v19 = v57;
          if (v86 == 1 && v85 < 0)
          {
            operator delete(v84);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          LODWORD(v29) = 0;
          goto LABEL_81;
        }
      }

      else if (HIBYTE(v97))
      {
        goto LABEL_52;
      }

      LODWORD(v29) = 0;
      v30 = v18;
LABEL_81:
      SDPMedia::SDPMedia(&v107, v6, v30, v19, v29);
      SDPMedia::operator=(&v65, &v107);
      SDPMedia::~SDPMedia(&v107);
      v82 = 0;
      v35 = MEMORY[0x1E69232A0](v102, &v82);
      if ((*(v35 + *(*v35 - 24) + 32) & 5) == 0)
      {
        v107.__r_.__value_.__r.__words[0] = &unk_1F5EEA550;
        LOWORD(v107.__r_.__value_.__r.__words[1]) = v82;
        v108 = 1;
        v110 = 0;
        v111 = 0;
        v109 = 0;
        v107.__r_.__value_.__r.__words[2] = &unk_1F5EF7520;
        v112 = 255;
        v114 = 0;
        v115 = 0;
        v113 = 0;
        v116 = 0;
        v117 = 1;
        v119 = 1;
        v122 = 0;
        v123 = 255;
        v120 = 0;
        v121 = 0;
        v118 = &unk_1F5EBF288;
        v125 = 0;
        v126 = 0;
        v124 = 0;
        v127 = 0;
        operator new();
      }

      if (SHIBYTE(v97) < 0)
      {
        operator delete(v95);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101) < 0)
      {
        operator delete(v99);
      }

      v102[0] = v55;
      *(v102 + *(v55 - 3)) = v54;
      *&v103[0] = MEMORY[0x1E69E5548] + 16;
      if (SBYTE7(v105) < 0)
      {
        operator delete(v104[0]);
      }

      *&v103[0] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v103 + 1);
      std::istream::~istream();
      MEMORY[0x1E6923510](v106 + 8);
      v4 = 1;
LABEL_114:
      v5 = SDPParser::parseHelper(a3, a2);
      if (v5 == 110)
      {
        if (v4)
        {
          *(&v77 + 1) = *(a1 + 8);
          std::vector<SDPMedia>::push_back[abi:ne200100](*(&v77 + 1) + 448, &v65);
        }

        SDPMedia::~SDPMedia(&v65);
        v48 = v53;
        goto LABEL_132;
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v102, "sdp.parser");
  v78[0] = 0;
  v81 = 0;
  v49 = ims::error(v102, v78);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "SDPModel is null: '", 19);
  *(v49 + 17) = 0;
  v50 = *(v49 + 8);
  v107.__r_.__value_.__s.__data_[0] = 109;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, &v107, 1);
  *(v49 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "=", 1);
  *(v49 + 17) = 0;
  (*(*v49 + 32))(v49, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v49 + 8), "'", 1);
  *(v49 + 17) = 0;
  (*(*v49 + 64))(v49, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v49 + 17) = 0;
  if (v81 == 1 && v80 < 0)
  {
    operator delete(v79);
  }

  if (SBYTE7(v103[0]) < 0)
  {
    operator delete(v102[0]);
  }

  v48 = 0;
LABEL_132:
  v51 = *MEMORY[0x1E69E9840];
  return v48 & 1;
}

void SDPParser::parse()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  _ZNSt3__115allocate_sharedB8ne200100I8SDPModelNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E4CAF3A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1E4CAF53C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1E6923510](v1);
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseHelper(void *a1, uint64_t *a2)
{
  v2 = a2;
  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    a2[1] = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v11);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__str, v5);
  ims::chomp(&__str, "\r\n\t ", 3);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&__str.__r_.__value_.__s + 23))
    {
      return 110;
    }

    p_str = &__str;
    goto LABEL_9;
  }

  if (__str.__r_.__value_.__l.__size_)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
LABEL_9:
    v7 = p_str->__r_.__value_.__s.__data_[0];
    if (*(v2 + 23) < 0)
    {
      v2[1] = 0;
      v8 = *v2;
    }

    else
    {
      *(v2 + 23) = 0;
      v8 = v2;
    }

    *v8 = 0;
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size < 3)
    {
      if (v7 == 115)
      {
        if (*(v2 + 23) < 0)
        {
          v2[1] = 1;
          v2 = *v2;
        }

        else
        {
          *(v2 + 23) = 1;
        }

        *v2 = 32;
        v7 = 115;
      }
    }

    else
    {
      std::string::basic_string(&v11, &__str, 2uLL, 0xFFFFFFFFFFFFFFFFLL, &v13);
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      *v2 = v11;
    }

    goto LABEL_25;
  }

  v7 = 110;
LABEL_25:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1E4CAF73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  v20 = 0;
  MEMORY[0x1E6923270](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1E4CAF9B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x1E4CAF974);
  }

  __cxa_rethrow();
}

void SDPParser::parseConnectionHelper(const std::string *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v59, 0, sizeof(v59));
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  memset(v52, 0, sizeof(v52));
  *v50 = 0u;
  v51 = 0u;
  memset(v49, 0, sizeof(v49));
  std::istringstream::basic_istringstream[abi:ne200100](v49, a1, 8);
  v6 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v49, &v56);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v49, &v53), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v49, &v59), (*(v8 + *(*v8 - 24) + 32) & 5) != 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "sdp.parser");
    v43[0] = 0;
    v46 = 0;
    v9 = ims::error(v47, v43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "SDPConnection is missing something: '", 37);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "'", 1);
    *(v9 + 17) = 0;
    v8 = (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v46 == 1 && v45 < 0)
    {
      operator delete(__p);
    }

    if (v48 < 0)
    {
      operator delete(v47[0]);
    }
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v11;
    v8 = SDPConnection::networkTypeLookup(v8);
    v13 = v8 + 24 * v10;
    if (v58 >= 0)
    {
      v14 = HIBYTE(v58);
    }

    else
    {
      v14 = v57;
    }

    v15 = *(v13 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v13 + 8);
    }

    if (v14 == v15)
    {
      v17 = v58 >= 0 ? &v56 : v56;
      v18 = v16 >= 0 ? v13 : *v13;
      v8 = memcmp(v17, v18, v14);
      if (!v8)
      {
        break;
      }
    }

    v11 = 0;
    v10 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((v12 & 1) == 0)
  {
    v20 = 1;
    goto LABEL_32;
  }

LABEL_26:
  std::string::basic_string[abi:ne200100]<0>(v47, "sdp.parser");
  v39[0] = 0;
  v42 = 0;
  v19 = ims::error(v47, v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "SDPConnection: NetworkType set to kNetworkTypeUnknown: '", 56);
  *(v19 + 17) = 0;
  (*(*v19 + 32))(v19, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "'", 1);
  *(v19 + 17) = 0;
  v8 = (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v20 = 0;
LABEL_32:
  v21 = 0;
  v22 = 0;
  while (1)
  {
    v8 = SDPConnection::addressTypeLookup(v8);
    v23 = v8 + v21;
    if (v55 >= 0)
    {
      v24 = HIBYTE(v55);
    }

    else
    {
      v24 = v54;
    }

    v25 = *(v23 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v23 + 8);
    }

    if (v24 == v25)
    {
      v27 = v55 >= 0 ? &v53 : v53;
      v28 = v26 >= 0 ? v23 : *v23;
      v8 = memcmp(v27, v28, v24);
      if (!v8)
      {
        break;
      }
    }

    --v22;
    v21 += 24;
    if (v22 == -3)
    {
      goto LABEL_47;
    }
  }

  if (v22)
  {
    v30 = -v22;
    goto LABEL_55;
  }

LABEL_47:
  std::string::basic_string[abi:ne200100]<0>(v47, "sdp.parser");
  v35[0] = 0;
  v38 = 0;
  v29 = ims::error(v47, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "SDPConnection: AddressType set to kAddressTypeUnknown: '", 56);
  *(v29 + 17) = 0;
  (*(*v29 + 32))(v29, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "'", 1);
  *(v29 + 17) = 0;
  (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v29 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  LODWORD(v30) = 0;
LABEL_55:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v59;
  }

  v31 = *a2;
  v32 = a2[1];
  *(a3 + 8) = 1;
  *a3 = &unk_1F5ED8C78;
  *(a3 + 12) = v20;
  *(a3 + 16) = v30;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 24), v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v33 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
    *(a3 + 48) = v31;
    *(a3 + 49) = v32;
    if (v33 < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 24) = v34;
    *(a3 + 48) = v31;
    *(a3 + 49) = v32;
  }

  *&v49[0] = *MEMORY[0x1E69E54E0];
  *(v49 + *(*&v49[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v49[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v51) < 0)
  {
    operator delete(v50[0]);
  }

  *&v49[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v49[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v52 + 8);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }
}

void sub_1E4CB0134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a52);
  if (*(v52 - 113) < 0)
  {
    operator delete(*(v52 - 136));
  }

  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (*(v52 - 65) < 0)
  {
    operator delete(*(v52 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t SDPParser::getTimeInSeconds(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      v23 = 0;
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      *v19 = 0u;
      v20 = 0u;
      memset(v18, 0, sizeof(v18));
      *v17 = 0u;
      std::istringstream::basic_istringstream[abi:ne200100](v17, a1, 8);
      v2 = MEMORY[0x1E69232B0](v17, &v22);
      if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v15, "sdp.parser");
        v11[0] = 0;
        v14 = 0;
        v3 = ims::error(v15, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Unable to parse time: ", 22);
        *(v3 + 17) = 0;
        (*(*v3 + 32))(v3, a1);
        (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v3 + 17) = 0;
        if (v14 == 1 && v13 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        v4 = 0;
        goto LABEL_27;
      }

      v6 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v17, &v23);
      if ((*(v6 + *(*v6 - 24) + 32) & 5) == 0)
      {
        switch(v23)
        {
          case 'm':
            v9 = 60 * v22;
            goto LABEL_25;
          case 'h':
            v7 = v22;
            v8 = 3600;
            goto LABEL_23;
          case 'd':
            v7 = v22;
            v8 = 86400;
LABEL_23:
            v9 = v7 * v8;
LABEL_25:
            v22 = v9;
            break;
        }
      }

      v4 = v22;
LABEL_27:
      v17[0] = *MEMORY[0x1E69E54E0];
      *(v17 + *(v17[0] - 3)) = *(MEMORY[0x1E69E54E0] + 24);
      *&v18[0] = MEMORY[0x1E69E5548] + 16;
      if (SBYTE7(v20) < 0)
      {
        operator delete(v19[0]);
      }

      *&v18[0] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v18 + 1);
      std::istream::~istream();
      MEMORY[0x1E6923510](v21 + 8);
      return v4;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "sdp.parser");
  v24[0] = 0;
  v27 = 0;
  v5 = ims::warn(v17, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Nothing to parse as time.", 25);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (SBYTE7(v18[0]) < 0)
  {
    operator delete(v17[0]);
  }

  return 0;
}

void *std::operator>>[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2)
{
  v8 = 0;
  MEMORY[0x1E6923270](&v8, a1, 0);
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

void sub_1E4CB0750(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1E4CB0710);
  }

  __cxa_rethrow();
}

uint64_t std::vector<SDPMedia>::push_back[abi:ne200100](uint64_t a1, const SDPMedia *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SDPMedia>::__emplace_back_slow_path<SDPMedia const&>(a1, a2);
  }

  else
  {
    SDPMedia::SDPMedia(*(a1 + 8), a2);
    result = v3 + 200;
    *(a1 + 8) = v3 + 200;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI8SDPModelNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EC1C10;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 24) = 0u;
  v2 = (a1 + 24);
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 25) = 0u;
  *(v2 + 26) = 0u;
  *(v2 + 27) = 0u;
  *(v2 + 28) = 0u;
  SDPModel::SDPModel(v2);
  return a1;
}

void std::__shared_ptr_emplace<SDPModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC1C10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SDPModel::SDPModel(SDPModel *this)
{
  *this = &unk_1F5EC1DA0;
  *(this + 8) = 1;
  ims::SharedLoggable<SDPModel>::SharedLoggable(this + 2);
  *this = &unk_1F5EEE8F8;
  *(this + 2) = &unk_1F5EEE928;
  *(this + 80) = 1;
  *(this + 8) = 0;
  *(this + 9) = &unk_1F5EF7868;
  *(this + 96) = 1;
  *(this + 11) = &unk_1F5ED8C78;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = this + 256;
  *(this + 33) = this + 256;
  *(this + 34) = 0;
  *(this + 35) = this + 280;
  *(this + 36) = this + 280;
  *(this + 37) = 0;
  *(this + 38) = this + 304;
  *(this + 39) = this + 304;
  *(this + 40) = 0;
  *(this + 41) = this + 328;
  *(this + 42) = this + 328;
  *(this + 43) = 0;
  *(this + 44) = this + 352;
  *(this + 45) = this + 352;
  *(this + 46) = 0;
  *(this + 376) = 0;
  *(this + 416) = 0;
  *(this + 53) = this + 424;
  *(this + 54) = this + 424;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
}

void *ims::SharedLoggable<SDPModel>::SharedLoggable(void *a1)
{
  ims::getQueue(&object);
  ctu::SharedLoggable<SDPModel,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(a1 + 1, &object, "com.apple.ipTelephony", "default");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EC1E28;
  return a1;
}

void sub_1E4CB0BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedLoggable<SDPModel,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(void *a1, NSObject **a2, char *a3, char *a4)
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
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, a4);
  return a1;
}

uint64_t ims::SharedLoggable<SDPModel>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SDPModel>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

std::string *SDPOrigin::SDPOrigin(std::string *a1, uint64_t a2, __int128 *a3, std::string::size_type a4, std::string::size_type a5)
{
  a1->__r_.__value_.__s.__data_[8] = 1;
  a1->__r_.__value_.__r.__words[0] = &unk_1F5EF7868;
  SDPConnection::SDPConnection(&a1->__r_.__value_.__r.__words[2], a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    a1[3].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[3].__r_.__value_.__l.__data_ = v9;
  }

  a1[4].__r_.__value_.__r.__words[0] = a4;
  a1[4].__r_.__value_.__l.__size_ = a5;
  return a1;
}

void sub_1E4CB0D7C(_Unwind_Exception *exception_object)
{
  *(v1 + 16) = &unk_1F5ED8C78;
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPConnection::SDPConnection(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F5ED8C78;
  *(a1 + 12) = *(a2 + 12);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void SDPOrigin::~SDPOrigin(void **this)
{
  *this = &unk_1F5EF7868;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  this[2] = &unk_1F5ED8C78;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }
}

{
  SDPOrigin::~SDPOrigin(this);

  JUMPOUT(0x1E69235B0);
}

void std::__list_imp<SDPRepeatTime>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*v2[2])();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *std::list<unsigned long long>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t std::optional<SDPTimeZone>::operator=[abi:ne200100]<SDPTimeZone,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    if (a1 != a2)
    {
      std::list<std::pair<unsigned long long,long>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,long>,void *>,std::__list_const_iterator<std::pair<unsigned long long,long>,void *>>((a1 + 16), *(a2 + 24), a2 + 16);
    }
  }

  else
  {
    *(a1 + 8) = 1;
    *a1 = &unk_1F5EF6688;
    std::list<std::pair<unsigned long long,long>>::list((a1 + 16), a2 + 16);
    *(a1 + 40) = 1;
  }

  return a1;
}

void *std::list<std::pair<unsigned long long,long>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t *std::list<std::pair<unsigned long long,long>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,long>,void *>,std::__list_const_iterator<std::pair<unsigned long long,long>,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 1) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<std::pair<unsigned long long,long>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,long>,void *>,std::__list_const_iterator<std::pair<unsigned long long,long>,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<std::pair<unsigned long long,long>>::erase(a1, i, a1);
  }
}

uint64_t std::list<std::pair<unsigned long long,long>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,long>,void *>,std::__list_const_iterator<std::pair<unsigned long long,long>,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_1E4CB1268(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::list<std::pair<unsigned long long,long>>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

uint64_t SDPUnsupportedAttribute::SDPUnsupportedAttribute(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 16) = __p;
  }

  *a1 = &unk_1F5EC1DD0;
  v5 = (a1 + 40);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  return a1;
}

void sub_1E4CB1418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v16;
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void SDPUnsupportedAttribute::~SDPUnsupportedAttribute(void **this)
{
  SDPUnsupportedAttribute::~SDPUnsupportedAttribute(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EC1DD0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void SDPUnsupportedAttribute::value(SDPUnsupportedAttribute *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

void std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::clear(unsigned int *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 4);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[30];
  if (v2 != -1)
  {
    result = __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100IZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRSR_EEEDcOSS_DpOT0____fmatrix[v2](&v3, result);
  }

  v1[30] = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm13EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ9SDPRTCPXR23SDPUnsupportedAttribute17SDPMediaCandidate14SDPMediaCrypto17SDPMediaDirection33SDPMediaEndToAccessEdgeProtection27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParams14SDPMediaRTPMap29SDPPacketizationTimeAttribute12SDPMediaPath19SDPMediaAcceptTypes26SDPMediaAcceptWrappedTypes13SDPMediaSetup19SDPMediaFingerprintEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJS8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void SDPRTCPXR::~SDPRTCPXR(void **this)
{
  *this = &unk_1F5EC8B98;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v3 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPRTCPXR::~SDPRTCPXR(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaCandidate::~SDPMediaCandidate(void **this)
{
  *this = &unk_1F5EC4298;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaCandidate::~SDPMediaCandidate(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaCrypto::~SDPMediaCrypto(SDPMediaCrypto *this)
{
  *this = &unk_1F5EEAF70;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  SDPMediaCrypto::~SDPMediaCrypto(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaRTPMap::~SDPMediaRTPMap(void **this)
{
  *this = &unk_1F5EF7520;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  SDPMediaRTPMap::~SDPMediaRTPMap(this);

  JUMPOUT(0x1E69235B0);
}

void std::__list_imp<SDPMediaFormatInfo>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*v2[2])();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::vector<SDPMedia>::__emplace_back_slow_path<SDPMedia const&>(uint64_t a1, const SDPMedia *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SDPMedia>>(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  SDPMedia::SDPMedia((200 * v2), a2);
  v15 = 200 * v2 + 200;
  v7 = *(a1 + 8);
  v8 = (200 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SDPMedia>,SDPMedia*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SDPMedia>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4CB1BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SDPMedia>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SDPMedia>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SDPMedia>,SDPMedia*>(int a1, SDPMedia *a2, SDPMedia *a3, SDPMedia *this)
{
  if (a2 != a3)
  {
    v4 = this;
    v6 = a2;
    v7 = 0;
    v8 = this - 200;
    v9 = a2;
    do
    {
      SDPMedia::SDPMedia(v4, v9);
      v9 = (v9 + 200);
      v4 = (v4 + 200);
      v7 -= 200;
      v8 += 200;
    }

    while (v9 != a3);
    v10 = v6;
    v11 = v6;
    do
    {
      v12 = *v11;
      v11 = (v11 + 200);
      result = (*v12)(v6);
      v10 = (v10 + 200);
      v6 = v11;
    }

    while (v11 != a3);
  }

  return result;
}

void sub_1E4CB1CC8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 200);
    do
    {
      v6 = *v5;
      v5 -= 25;
      (*v6)();
      v3 -= 200;
      v2 += 200;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SDPMedia>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 200);
    *(a1 + 16) = i - 200;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*_MergedGlobals_2)
  {
    _MergedGlobals_2 = *_MergedGlobals_2;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC198, a3);
  ++qword_1EE2BC1A0;
  return result;
}

void std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*a1);
    std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>,std::__map_value_compare<std::string,std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*qword_1EE2BC1A8)
  {
    qword_1EE2BC1A8 = *qword_1EE2BC1A8;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC1B0, a3);
  ++qword_1EE2BC1B8;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>,std::__map_value_compare<std::string,std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void (*)(std::shared_ptr<SDPModel>,std::string&)>>>::__find_equal<std::string>(uint64_t **a1, void **a2)
{
  v3 = &qword_1EE2BC1B0;
  v4 = qword_1EE2BC1B0;
  if (qword_1EE2BC1B0)
  {
    v6 = &qword_1EE2BC1B0;
    do
    {
      while (1)
      {
        v3 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v3;
        v6 = v3;
        if (!*v3)
        {
          goto LABEL_10;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a2) & 0x80) == 0)
      {
        break;
      }

      v6 = v3 + 1;
      v4 = v3[1];
    }

    while (v4);
  }

  else
  {
    v6 = &qword_1EE2BC1B0;
  }

LABEL_10:
  *a1 = v3;
  return v6;
}

uint64_t *std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,SDPMedia &,std::string &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,SDPMedia &,std::string &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,SDPMedia &,std::string &)>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*qword_1EE2BC1C0)
  {
    qword_1EE2BC1C0 = *qword_1EE2BC1C0;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC1C8, a3);
  ++qword_1EE2BC1D0;
  return result;
}

void *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v10 = v4[4];
        v8 = v4 + 4;
        v9 = v10;
        v11 = (*(v8 + 23) >= 0 ? v8 : v9);
        if ((strcasecmp(v6, v11) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if ((strcasecmp(v11, v6) & 0x80000000) == 0)
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

LABEL_15:
  *a2 = v7;
  return v5;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69234C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1E4CB20D8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = 0;
  MEMORY[0x1E6923270](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1E4CB2268(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1E4CB2228);
  }

  __cxa_rethrow();
}

void SDPTiming::SDPTiming(SDPTiming *this, const SDPTiming *a2)
{
  *(this + 8) = 1;
  *this = &unk_1F5EF6640;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = this + 32;
  *(this + 5) = this + 32;
  *(this + 6) = 0;
  if (*(a2 + 5) != (a2 + 32))
  {
    std::__list_imp<SDPRepeatTime>::__create_node[abi:ne200100]<SDPRepeatTime const&>();
  }
}

void sub_1E4CB2650(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_SDPParser_cpp()
{
  v0 = *MEMORY[0x1E69E9840];
  qword_1EE2BC1A0 = 0;
  qword_1EE2BC198 = 0;
  _MergedGlobals_2 = &qword_1EE2BC198;
  operator new();
}

void sub_1E4CB3F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  while (1)
  {
    v15 = *(v13 - 9);
    v13 -= 4;
    if (v15 < 0)
    {
      operator delete(*v13);
    }

    if (v13 == &a13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void XcapRequest::XcapRequest(uint64_t a1, char a2, XcapRequest *this)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 1) = a2;
  *a1 = 0;
  XcapNodeSelector::clone(this);
}

{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 1) = a2;
  *a1 = 1;
  XcapNodeSelector::clone(this);
}

void sub_1E4CB4454(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4CB454C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void XcapRequest::~XcapRequest(XcapRequest *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    XcapNodeSelector::~XcapNodeSelector(v2);
    MEMORY[0x1E69235B0]();
  }

  _Block_release(*(this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t SipSdpBody::SipSdpBody(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F5EC1E50;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    *(a1 + 8) = v3;
    *(a1 + 16) = 0;
  }

  *(a1 + 48) = 1;
  return a1;
}

void SipSdpBody::SipSdpBody(uint64_t a1)
{
  *a1 = &unk_1F5EC1E50;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  SDPParser::parse();
}

void sub_1E4CB4738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}