void SipSdpBody::~SipSdpBody(void **this)
{
  *this = &unk_1F5EC1E50;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  SipSdpBody::~SipSdpBody(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSdpBody::contentLength(SipSdpBody *this)
{
  if (*(this + 1))
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    ImsStringOutStream::ImsStringOutStream(v3);
  }

  v1 = *(this + 47);
  if (v1 < 0)
  {
    return *(this + 4);
  }

  return v1;
}

void sub_1E4CB4908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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

uint64_t SipSdpBody::encode(SipSdpBody *this, ImsOutStream *a2)
{
  result = *(this + 1);
  if (result)
  {
    if ((*(this + 47) & 0x8000000000000000) != 0)
    {
      if (!*(this + 4))
      {
        goto LABEL_6;
      }
    }

    else if (!*(this + 47))
    {
LABEL_6:
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      ImsStringOutStream::ImsStringOutStream(v4);
    }

    return (*(*result + 16))(result, a2);
  }

  return result;
}

void sub_1E4CB4AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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

uint64_t SipSdpBody::decode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  memset(&v12, 0, sizeof(v12));
  if (a3)
  {
    v6 = a3;
    v8 = a2 + 4;
    while (1)
    {
      v9 = std::istream::get();
      std::string::push_back(&v12, v9);
      if (*(v8 + *(*a2 - 24)))
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = (*(*a1 + 88))(a1, &v12, a4);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1E4CB4BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSdpBody::decode(uint64_t a1, uint64_t a2, SipMessageEncodingMap *this)
{
  v6 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(a1 + 47) < 0)
  {
    **(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 47) = 0;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    v9 = *(this + 131);
    SipMessageEncodingMap::useLazuliTypes(this);
    SDPParser::parse();
  }

  return 1;
}

void SipServerTransaction::SipServerTransaction(uint64_t a1, uint64_t *a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t *a5, uint64_t a6, const std::string *a7)
{
  v12 = a3;
  v13 = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransaction::SipTransaction(a1, a2 + 1, &v12, a6, a7);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v10 = *a2;
  *a1 = *a2;
  *(a1 + 72) = a2[6];
  *(a1 + *(v10 - 24)) = a2[7];
  *(a1 + 120) = &unk_1F5EC1FF0;
  *(a1 + 128) = &unk_1F5EC2020;
  *(a1 + 568) = 0u;
  v11 = *a5;
  std::allocate_shared[abi:ne200100]<SipRequest,std::allocator<SipRequest>,SipRequest::EnforcePrivateConstructor,SipRequest const&,0>();
}

void sub_1E4CB4FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *(v13 + 72);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  SipTransaction::~SipTransaction(v13, (v14 + 8));
  _Unwind_Resume(a1);
}

void SipServerTransaction::~SipServerTransaction(SipServerTransaction *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + 9) = a2[6];
  *(this + *(v4 - 24)) = a2[7];
  *(this + 15) = &unk_1F5EC1FF0;
  *(this + 16) = &unk_1F5EC2020;
  (*(*(this + 9) + 48))(this + 72);
  v5 = *(this + 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SipTransaction::~SipTransaction(this, a2 + 1);
}

void SipServerTransaction::loggableName(SipServerTransaction *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4CB542C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  ims::AccessNetwork::~AccessNetwork(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  *(v21 - 64) = &unk_1F5EDED18;
  if (*(v21 - 48) == 1)
  {
    v23 = *(v21 - 56);
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  _Unwind_Resume(a1);
}

void SipServerTransaction::resendLastMessage(SipServerTransaction *this@<X0>, ImsResult *a2@<X8>)
{
  if (!*(this + 71))
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = &unk_1F5EBDEF8;
    v15 = &_bambiDomain;
    v16 = 0x40000000;
    v10 = ImsResult::operator<<<char [22]>(&v14, "no response to resend");
    v11 = ImsLogContainer::logResult(this + 128, v10);
    ImsResult::ImsResult(a2, v11);
    ImsResult::~ImsResult(&v14);
    return;
  }

  v4 = *(this + 38);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_19;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 37)) == 0)
  {
LABEL_19:
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = &unk_1F5EBDEF8;
    v15 = &_bambiDomain;
    v16 = 0x40000000;
    v12 = ImsResult::operator<<<char [25]>(&v14, "TransactionLayer is gone");
    v13 = ImsLogContainer::logResult(this + 128, v12);
    ImsResult::ImsResult(a2, v13);
    ImsResult::~ImsResult(&v14);
    if (!v5)
    {
      return;
    }

    goto LABEL_20;
  }

  v7 = (*(*(this + 16) + 64))(this + 128);
  (*(*(this + 16) + 16))(this + 128, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "resending ", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), *(*(this + 71) + 128));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " response", 9);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v14 = 0;
  v15 = 0;
  v8 = std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v25, (this + *(*this - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(v8, &v14);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v9 = *(this + 72);
  v23 = *(this + 71);
  v24 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v14;
  v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionLayer::sendMessageInTransaction(v6, &v23, &v21, a2);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_20:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1E4CB579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v25 = *(v23 - 72);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

void SipServerTransaction::handleRequest(void *a1, void *a2)
{
  v4 = a1 + 16;
  v5 = (*(a1[16] + 64))(a1 + 16);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SipServerTransaction::handleRequest", 35);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = *(v4 - 9);
  if (!v6)
  {
    v7 = (*(*a1 + 144))(a1);
    (*(*a1 + 32))(a1, v7);
  }

  v8 = (*(*v4 + 64))(v4);
  (*(*v4 + 16))(v4, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "received ", 9);
  *(v8 + 17) = 0;
  v9 = (*(**a2 + 120))();
  LoggableString::LoggableString(&__p, v9);
  (*(*v8 + 40))(v8, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " request", 8);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, (a1 + *(*a1 - 24) + 8));
  {
    __p.__r_.__value_.__r.__words[0] = v11;
    __p.__r_.__value_.__l.__size_ = v27;
    p_lpsrc = &lpsrc;
  }

  else
  {
    p_lpsrc = &__p;
  }

  p_lpsrc->__r_.__value_.__r.__words[0] = 0;
  p_lpsrc->__r_.__value_.__l.__size_ = 0;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v13 = a1[42];
  if (v13 && (v14 = __p.__r_.__value_.__r.__words[0]) != 0)
  {
    if (!v6)
    {
      v15 = a2[1];
      v24 = *a2;
      v25 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v14;
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 16))(v13, &v24, &v22);
      if (size)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }

      v16 = v25;
      if (!v25)
      {
        goto LABEL_29;
      }

LABEL_28:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      goto LABEL_29;
    }
  }

  else
  {
    v17 = (*(*v4 + 64))(v4);
    (*(*v4 + 16))(v4, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "no transaction user to handle request", 37);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
  }

  if (v6)
  {
    v18 = a1[7];
    if (v18)
    {
      v19 = a2[1];
      v20 = *a2;
      v21 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v18 + 72))(v18, &v20);
      v16 = v21;
      if (v21)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }
}

void sub_1E4CB5D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void SipServerTransaction::internalSendResponse(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1[38];
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = a1[37];
      if (v10)
      {
        if (a3)
        {
          v11 = SipMessage::header<SipCSeqHeader>(*a2);
          v12 = (v11 + 64);
          if (!v11)
          {
            v12 = &ims::kEmptyString;
          }

          v13 = *(v12 + 23);
          v14 = *(v12 + 1);
          if ((v13 & 0x80u) == 0)
          {
            v14 = v13;
          }

          if (!v14)
          {
            v15 = *a2;
            v16 = a1[34];
            v38[0] = a1[33];
            v38[1] = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipResponse::copyHeadersFromRequest(v15, v38);
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }
          }
        }

        if (*(*a2 + 128) != 100)
        {
          v17 = SipMessage::header<SipToHeader>(*a2);
          if (v17)
          {
            v18 = SipUriHeader::tag(v17);
          }

          else
          {
            v18 = &ims::kEmptyString;
          }

          v21 = *(v18 + 23);
          if ((v21 & 0x80u) != 0)
          {
            v21 = *(v18 + 1);
          }

          if (!v21)
          {
            v26 = (*(a1[16] + 64))(a1 + 16);
            (*(a1[16] + 16))(a1 + 16, v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "adding To: tag to ", 18);
            *(v26 + 17) = 0;
            (*(**a2 + 40))(&v37);
            LoggableString::LoggableString(&__p, &v37);
            (*(*v26 + 40))(v26, &__p);
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v26 + 17) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            v27 = *(v10 + 16);
            if (v27)
            {
              v28 = *(v10 + 8);
              atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v29 = std::__shared_weak_count::lock(v27);
              std::__shared_weak_count::__release_weak(v27);
              if (v29)
              {
                if (v28)
                {
                  v30 = *(v28 + 248);
                  v31 = *(v28 + 256);
                  if (v31)
                  {
                    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v30)
                  {
                    v32 = *a2;
                    ImsRandomStringGenerator::randomString((v30 + 688), 10, &__p);
                    v33 = SipMessage::header<SipToHeader>(v32, 1);
                    SipUriHeader::setTag(v33, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  if (v31)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              }
            }
          }
        }

        v22 = (*(a1[16] + 64))(a1 + 16);
        (*(a1[16] + 16))(a1 + 16, v22);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "sending ", 8);
        *(v22 + 17) = 0;
        MEMORY[0x1E6923350](*(v22 + 8), *(*a2 + 128));
        *(v22 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " response to ", 13);
        *(v22 + 17) = 0;
        v23 = (*(*a1[33] + 120))(a1[33]);
        LoggableString::LoggableString(&__p, v23);
        (*(*v22 + 40))(v22, &__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " request", 8);
        *(v22 + 17) = 0;
        (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v22 + 17) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v37, (a1 + *(*a1 - 24) + 8));
        std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(&v37, &__p);
        if (v37.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37.__r_.__value_.__l.__size_);
        }

        *(a4 + 80) = 0;
        *(a4 + 48) = 0u;
        *(a4 + 64) = 0u;
        *(a4 + 16) = 0u;
        *(a4 + 32) = 0u;
        *a4 = 0u;
        v24 = a2[1];
        v35 = *a2;
        v36 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        SipTransactionLayer::sendMessageInTransaction(v10, &v35, &v34, a4);
        if (*(&v34 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        v25 = *a2;
        std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  __p.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  __p.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0x40000000;
  v19 = ImsResult::operator<<<char [25]>(&__p, "TransactionLayer is gone");
  v20 = ImsLogContainer::logResult((a1 + 16), v19);
  ImsResult::ImsResult(a4, v20);
  ImsResult::~ImsResult(&__p);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4CB6360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

void SipServerTransaction::sendResponse(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1[7];
  if (!v6)
  {
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = &unk_1F5EBDEF8;
    v38 = &_bambiDomain;
    v39 = 1073741827;
    v26 = ImsResult::operator<<<char [36]>(&v37, "can't send response from NULL state");
    v27 = ImsLogContainer::logResult((a1 + 16), v26);
    ImsResult::ImsResult(a4, v27);
    goto LABEL_32;
  }

  if (((*(*v6 + 104))(v6) & 1) == 0)
  {
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = &unk_1F5EBDEF8;
    v38 = &_bambiDomain;
    v39 = 0x40000000;
    v28 = ImsResult::operator<<<char [41]>(&v37, "outgoing responses not allowed in state ");
    v29 = (*(*a1 + 24))(a1);
    v30 = (*(*a1 + 16))(a1, v29);
    LoggableString::LoggableString(&__p, v30);
    v31 = ImsResult::operator<<<LoggableString>(v28, &__p);
    v32 = ImsLogContainer::logResult((a1 + 16), v31);
    ImsResult::ImsResult(a4, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_32;
  }

  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v9 = *a2;
  v10 = a2[1];
  v35[0] = v9;
  v35[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipServerTransaction::internalSendResponse(a1, v35, a3, a4);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = a1[7];
  v12 = a1[72];
  v33 = a1[71];
  v34 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 96))(v11, &v33, a4);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if ((*(a1[71] + 128) - 100) <= 0x63)
  {
    v13 = a1[33];
    if (v13)
    {
      v14 = (*(*v13 + 120))(v13);
      v15 = *(v14 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v14 + 8);
      }

      if (v15 == 6)
      {
        v17 = v16 >= 0 ? v14 : *v14;
        v18 = *v17;
        v19 = *(v17 + 4);
        if (v18 == *"INVITE" && v19 == *"TE")
        {
          if (*(a4 + 8) == &_posixDomain)
          {
            goto LABEL_28;
          }

          v21 = a4;
          do
          {
            v22 = v21;
            v21 = *(v21 + 32);
          }

          while (v21);
          if (*(v22 + 8) == &_posixDomain)
          {
LABEL_28:
            v24 = a1[16];
            v23 = a1 + 16;
            v25 = (*(v24 + 48))(v23);
            (*(*v23 + 16))(v23, v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "ignoring POSIX error for provisional response: ", 47);
            *(v25 + 17) = 0;
            (*(*a4 + 16))(a4, v25);
            (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v25 + 17) = 0;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v37 = &unk_1F5EBDEF8;
            v38 = &_bambiDomain;
            v39 = 0;
            ImsResult::operator=(a4, &v37);
LABEL_32:
            ImsResult::~ImsResult(&v37);
          }
        }
      }
    }
  }
}

void sub_1E4CB68A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  ImsResult::~ImsResult(&a19);
  ImsResult::~ImsResult(v19);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [36]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<char [41]>(uint64_t a1, char *__s)
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

uint64_t ImsResult::operator<<<LoggableString>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  (*(*v3 + 40))(v3, a2);
  return a1;
}

void SipServerTransaction::sendResponse(uint64_t a1@<X0>, ImsResult *a2@<X8>)
{
  v4 = *(a1 + 304);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 296);
      if (v6)
      {
        v9 = 0;
        v10 = 0;
        SipTransactionLayer::messageEncoding(v6);
        SipResponse::create(&v9);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = &unk_1F5EBDEF8;
  v10 = &_bambiDomain;
  v11 = 0x40000000;
  v7 = ImsResult::operator<<<char [25]>(&v9, "TransactionLayer is gone");
  v8 = ImsLogContainer::logResult(a1 + 128, v7);
  ImsResult::ImsResult(a2, v8);
  ImsResult::~ImsResult(&v9);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4CB6C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  _Unwind_Resume(a1);
}

void *ims::SharedLoggable<SipConnectionUser>::SharedLoggable(void *a1)
{
  ims::getQueue(&object);
  ctu::SharedLoggable<SipConnectionUser,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(a1 + 1, &object, "com.apple.ipTelephony", "default");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EC2BF8;
  return a1;
}

void sub_1E4CB6D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteTransaction::constructStateMachine(SipServerInviteTransaction *this)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (this + *(*this - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(v1, v2);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }

  operator new();
}

void sub_1E4CB721C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(v19 - 64);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void SipServerInviteTransaction::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipServerInviteTransaction,std::allocator<SipServerInviteTransaction>,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,0>();
}

void sub_1E4CB731C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipServerNonInviteTransaction::constructStateMachine(SipServerNonInviteTransaction *this)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (this + *(*this - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<SipTransaction,SipConnectionUser>(v1, v2);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }

  operator new();
}

void sub_1E4CB7714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void SipServerNonInviteTransaction::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipServerNonInviteTransaction,std::allocator<SipServerNonInviteTransaction>,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,0>();
}

void sub_1E4CB77FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTypedStateMachine<SipTransactionState>::currentStateId(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void SipTypedStateMachine<SipTransactionState>::addState(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v8 = (*(**a2 + 48))(*a2);
    v9 = &v8;
    v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((a1 + 16), &v8);
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4[4];
    v4[3] = v6;
    v4[4] = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t SipTypedStateMachine<SipTransactionState>::currentState@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 64);
  *a2 = *(result + 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void SipServerInviteTransaction::~SipServerInviteTransaction(SipServerInviteTransaction *this)
{
  SipServerTransaction::~SipServerTransaction(this, off_1F5EC2288);
  MEMORY[0x1E69225A0](v2 + 632);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 75);
}

{
  SipServerTransaction::~SipServerTransaction(this, off_1F5EC2288);
  MEMORY[0x1E69225A0](v2 + 632);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 75);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerInviteTransaction::~SipServerInviteTransaction(SipServerInviteTransaction *this)
{
  SipServerTransaction::~SipServerTransaction((this - 72), off_1F5EC2288);
  MEMORY[0x1E69225A0](this + 560);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 66);
}

{
  SipServerTransaction::~SipServerTransaction((this - 72), off_1F5EC2288);
  MEMORY[0x1E69225A0](this + 560);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 66);

  JUMPOUT(0x1E69235B0);
}

{
  SipServerTransaction::~SipServerTransaction((this - 120), off_1F5EC2288);
  MEMORY[0x1E69225A0](this + 512);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 60);
}

{
  SipServerTransaction::~SipServerTransaction((this - 120), off_1F5EC2288);
  MEMORY[0x1E69225A0](this + 512);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 60);

  JUMPOUT(0x1E69235B0);
}

{
  SipServerTransaction::~SipServerTransaction((this - 128), off_1F5EC2288);
  MEMORY[0x1E69225A0](this + 504);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 59);
}

{
  SipServerTransaction::~SipServerTransaction((this - 128), off_1F5EC2288);
  MEMORY[0x1E69225A0](this + 504);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 59);

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toSipServerInviteTransaction::~SipServerInviteTransaction(SipServerInviteTransaction *this)
{
  v1 = (this + *(*this - 24));
  SipServerTransaction::~SipServerTransaction(v1, off_1F5EC2288);
  MEMORY[0x1E69225A0](v1 + 632);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 75);
}

{
  v1 = (this + *(*this - 24));
  SipServerTransaction::~SipServerTransaction(v1, off_1F5EC2288);
  MEMORY[0x1E69225A0](v1 + 632);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 75);

  JUMPOUT(0x1E69235B0);
}

void SipServerNonInviteTransaction::~SipServerNonInviteTransaction(SipServerNonInviteTransaction *this)
{
  SipServerTransaction::~SipServerTransaction(this, off_1F5EC24B8);
  MEMORY[0x1E69225A0](v2 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 74);
}

{
  SipServerTransaction::~SipServerTransaction(this, off_1F5EC24B8);
  MEMORY[0x1E69225A0](v2 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 74);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipServerNonInviteTransaction::~SipServerNonInviteTransaction(SipServerNonInviteTransaction *this)
{
  SipServerTransaction::~SipServerTransaction((this - 72), off_1F5EC24B8);
  MEMORY[0x1E69225A0](this + 552);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 65);
}

{
  SipServerTransaction::~SipServerTransaction((this - 72), off_1F5EC24B8);
  MEMORY[0x1E69225A0](this + 552);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 65);

  JUMPOUT(0x1E69235B0);
}

{
  SipServerTransaction::~SipServerTransaction((this - 120), off_1F5EC24B8);
  MEMORY[0x1E69225A0](this + 504);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 59);
}

{
  SipServerTransaction::~SipServerTransaction((this - 120), off_1F5EC24B8);
  MEMORY[0x1E69225A0](this + 504);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 59);

  JUMPOUT(0x1E69235B0);
}

{
  SipServerTransaction::~SipServerTransaction((this - 128), off_1F5EC24B8);
  MEMORY[0x1E69225A0](this + 496);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 58);
}

{
  SipServerTransaction::~SipServerTransaction((this - 128), off_1F5EC24B8);
  MEMORY[0x1E69225A0](this + 496);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 58);

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toSipServerNonInviteTransaction::~SipServerNonInviteTransaction(SipServerNonInviteTransaction *this)
{
  v1 = (this + *(*this - 24));
  SipServerTransaction::~SipServerTransaction(v1, off_1F5EC24B8);
  MEMORY[0x1E69225A0](v1 + 624);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 74);
}

{
  v1 = (this + *(*this - 24));
  SipServerTransaction::~SipServerTransaction(v1, off_1F5EC24B8);
  MEMORY[0x1E69225A0](v1 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 74);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipAutoRespondingTransactionUser>::__shared_ptr_emplace[abi:ne200100]<unsigned int &,std::string const&,std::allocator<SipAutoRespondingTransactionUser>,0>(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC2B48;
  SipAutoRespondingTransactionUser::SipAutoRespondingTransactionUser((a1 + 3), *a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<SipAutoRespondingTransactionUser>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipAutoRespondingTransactionUser::SipAutoRespondingTransactionUser(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_1F5EC2B98;
  v5 = a1 + 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 8) = &unk_1F5EBDEF8;
  *(a1 + 16) = &_bambiDomain;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8[0] = &unk_1F5EBDEF8;
  v8[1] = &SipResultDomain::_domain;
  v9 = a2;
  ImsResult::operator=(a1 + 8, v8);
  ImsResult::~ImsResult(v8);
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v6)
  {
    ImsResult::operator<<<std::string>(v5, a3);
  }

  return a1;
}

void sub_1E4CB8334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v11 + 119) < 0)
  {
    operator delete(*v12);
  }

  ImsResult::~ImsResult(v10);
  _Unwind_Resume(a1);
}

void SipAutoRespondingTransactionUser::~SipAutoRespondingTransactionUser(void **this)
{
  *this = &unk_1F5EC2B98;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  ImsResult::~ImsResult((this + 1));
}

{
  *this = &unk_1F5EC2B98;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  ImsResult::~ImsResult((this + 1));

  JUMPOUT(0x1E69235B0);
}

void SipAutoRespondingTransactionUser::handleRequest(uint64_t a1, uint64_t a2, SipTransaction **a3)
{
  v5 = 0;
  v6 = 0;
  v3 = SipTransaction::messageEncoding(*a3);
  v7 = 0;
  v4 = v3;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
}

void sub_1E4CB853C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  ImsResult::~ImsResult(va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<SipAutoRespondingTransactionUser>::__shared_ptr_emplace[abi:ne200100]<ImsResult &,std::allocator<SipAutoRespondingTransactionUser>,0>(void *a1, ImsResult *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC2B48;
  SipAutoRespondingTransactionUser::SipAutoRespondingTransactionUser((a1 + 3), a2);
  return a1;
}

void SipAutoRespondingTransactionUser::SipAutoRespondingTransactionUser(SipAutoRespondingTransactionUser *this, ImsResult *a2)
{
  *this = &unk_1F5EC2B98;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = &unk_1F5EBDEF8;
  *(this + 2) = &_bambiDomain;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  ImsResult::operator=(this + 8, a2);
}

void sub_1E4CB86E0(_Unwind_Exception *a1)
{
  if (*(v2 + 119) < 0)
  {
    operator delete(*v3);
  }

  ImsResult::~ImsResult(v1);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<SipConnectionUser,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(void *a1, NSObject **a2, char *a3, char *a4)
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

uint64_t ims::SharedLoggable<SipConnectionUser>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipConnectionUser>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<SipTransactionState>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<SipServerInviteProceedingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipServerInviteCompletedTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipServerInviteConfirmedTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2CC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipServerInviteTerminationPendingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipTerminatedTransactionState>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransaction> &,std::allocator<SipTerminatedTransactionState>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC2D60;
  std::construct_at[abi:ne200100]<SipTerminatedTransactionState,std::shared_ptr<SipTransaction> &,SipTerminatedTransactionState*>(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<SipTerminatedTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::construct_at[abi:ne200100]<SipTerminatedTransactionState,std::shared_ptr<SipTransaction> &,SipTerminatedTransactionState*>(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTerminatedTransactionState::SipTerminatedTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1E4CB8EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *SipTerminatedTransactionState::SipTerminatedTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EF6878;
  a1[1] = &unk_1F5EF68F8;
  a1[26] = &unk_1F5EF6928;
  return a1;
}

void sub_1E4CB8FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SipServerInviteTransaction>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,std::allocator<SipServerInviteTransaction>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC2DB0;
  std::construct_at[abi:ne200100]<SipServerInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,SipServerInviteTransaction*>((a1 + 3), a2, a3, a4, a5);
}

void std::__shared_ptr_emplace<SipServerInviteTransaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::construct_at[abi:ne200100]<SipServerInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,SipServerInviteTransaction*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  ims::SharedLoggable<SipConnectionUser>::SharedLoggable((a1 + 592));
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12[0] = v11;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  SipServerTransaction::SipServerTransaction(a1, off_1F5EC2288, v9, v8, v12, a4, a5);
}

void sub_1E4CB9330(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  MEMORY[0x1E69225A0](v2 + 632);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v2 + 600));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::shared_ptr<SipServerInviteTransaction>::__enable_weak_this[abi:ne200100]<SipConnectionUser,SipServerInviteTransaction,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = a3 + 72;
      if (!a3)
      {
        v5 = 0;
      }

      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = v5;
      a2[1] = v6;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v6)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void std::__shared_ptr_emplace<SipServerNonInviteTryingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipServerNonInviteProceedingTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipServerNonInviteCompletedTransactionState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2EA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipServerNonInviteTransaction>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,std::allocator<SipServerNonInviteTransaction>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC2EF0;
  std::construct_at[abi:ne200100]<SipServerNonInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,SipServerNonInviteTransaction*>((a1 + 3), a2, a3, a4, a5);
}

void std::__shared_ptr_emplace<SipServerNonInviteTransaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC2EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::construct_at[abi:ne200100]<SipServerNonInviteTransaction,std::shared_ptr<SipTransactionLayer> &,std::shared_ptr<SipRequest const> &,std::shared_ptr<IpAddress> const&,std::string const&,SipServerNonInviteTransaction*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string *a5)
{
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  ims::SharedLoggable<SipConnectionUser>::SharedLoggable((a1 + 584));
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12[0] = v11;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  SipServerTransaction::SipServerTransaction(a1, off_1F5EC24B8, v9, v8, v12, a4, a5);
}

void sub_1E4CB9930(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  MEMORY[0x1E69225A0](v2 + 624);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v2 + 592));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HttpRequest::HttpRequest(uint64_t a1, __int128 *a2, int a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](v13, a5);
  HttpMessage::HttpMessage(a1, a2, v13, a6);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v13, v13[1]);
  *a1 = &unk_1F5EC2FF0;
  *(a1 + 80) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 104) = *(a4 + 2);
    *(a1 + 88) = v11;
  }

  return a1;
}

__CFHTTPMessage *HttpRequest::serialize(HttpRequest *this)
{
  v13 = 0;
  v14 = 0;
  if (*(this + 20))
  {
    v2 = "PUT";
  }

  else
  {
    v2 = "GET";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v2);
  ims::CFString::CFString(&v13, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  URLString = 0;
  ims::CFString::CFString(&__p, this + 88);
  v3 = *MEMORY[0x1E695E480];
  v4 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
  v5 = v14;
  v6 = std::string::compare((this + 32), "1.0");
  v7 = MEMORY[0x1E695ADB0];
  if (v6)
  {
    v7 = MEMORY[0x1E695ADB8];
  }

  Request = CFHTTPMessageCreateRequest(v3, v5, v4, *v7);
  CFRelease(v4);
  HttpMessage::serialize(this, Request);
  ims::CFType::~CFType(&__p);
  ims::CFType::~CFType(&v13);
  return Request;
}

void sub_1E4CB9B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ims::CFType::~CFType(&__p);
  ims::CFType::~CFType(&a16);
  _Unwind_Resume(a1);
}

uint64_t HttpRequest::deserialize(HttpRequest *this, CFHTTPMessageRef request)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = &unk_1F5EF36B0;
  v29 = CFHTTPMessageCopyRequestMethod(request);
  ims::CFString::asString(v29, 0x8000100, __p);
  v4 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p[0].__r_.__value_.__l.__size_ != 3)
    {
      *(this + 20) = 0;
LABEL_13:
      operator delete(__p[0].__r_.__value_.__l.__data_);
      goto LABEL_14;
    }

    v5 = __p[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) != 3)
    {
      *(this + 20) = 0;
      goto LABEL_14;
    }

    v5 = __p;
  }

  v6 = bswap32(LOWORD(v5->__r_.__value_.__l.__data_) | (v5->__r_.__value_.__s.__data_[2] << 16));
  v7 = v6 >= 0x50555400;
  v8 = v6 > 0x50555400;
  v9 = !v7;
  *(this + 20) = v8 == v9;
  if (v4 < 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v10 = CFHTTPMessageCopyRequestURL(request);
  if (!v10)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, kXcapLoggingFacility);
    v24[0] = 0;
    v27 = 0;
    v13 = ims::error(__p, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": ", 2);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to copy URL from Http Request", 36);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v14 = __p[0].__r_.__value_.__r.__words[0];
    goto LABEL_27;
  }

  bzero(__p, 0x400uLL);
  v11 = CFURLGetBytes(v10, __p, 1024);
  CFRelease(v10);
  if (!v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, kXcapLoggingFacility);
    v18[0] = 0;
    v21 = 0;
    v15 = ims::error(v22, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ": ", 2);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Invalid HTTP Request URL", 24);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v14 = v22[0];
LABEL_27:
    operator delete(v14);
LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  std::string::__assign_external((this + 88), __p, v11);
  v12 = HttpMessage::deserialize(this, request);
LABEL_29:
  ims::CFType::~CFType(&v28);
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1E4CBA0F0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  HttpMessage::~HttpMessage(v1);
  MEMORY[0x1E69235B0](v1, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, (v5 + 8), (v4 + 4));
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

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || (*(a5 + 23) >= 0 ? (v11 = a5) : (v11 = *a5), *(a2 + 55) >= 0 ? (v12 = (a2 + 4)) : (v12 = a2[4]), strcasecmp(v11, v12) < 0))
  {
    v13 = *a2;
    if (*a1 == a2)
    {
      v15 = a2;
LABEL_29:
      if (v13)
      {
        *a3 = v15;
        return v15 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v13)
    {
      v14 = *a2;
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v19 = *v15 == v18;
        v18 = v15;
      }

      while (v19);
    }

    if (*(v15 + 55) >= 0)
    {
      v20 = (v15 + 4);
    }

    else
    {
      v20 = v15[4];
    }

    if (*(a5 + 23) >= 0)
    {
      v21 = a5;
    }

    else
    {
      v21 = *a5;
    }

    if (strcasecmp(v20, v21) < 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((strcasecmp(v12, v11) & 0x80000000) == 0)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = a2[1];
      do
      {
        a4 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v22 = a2;
      do
      {
        a4 = v22[2];
        v19 = *a4 == v22;
        v22 = a4;
      }

      while (!v19);
    }

    if (a4 == v9 || (*(a4 + 55) >= 0 ? (v23 = (a4 + 4)) : (v23 = a4[4]), strcasecmp(v11, v23) < 0))
    {
      if (v16)
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
  }

  return std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::__find_equal<std::string>(a1, a3, a5);
}

void MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(MediaSessionQueuedCollectionIterator *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  *(this + 1) = &unk_1F5EC30C0;
  std::string::basic_string[abi:ne200100]<0>(v14, "rtp.collection");
  v10[0] = 0;
  v13 = 0;
  v4 = ims::debug(v14, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "~MediaSessionQueuedCollectionIterator", 37);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  (*(**(this + 5) + 192))(*(this + 5));
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy(this + 16, *(this + 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = this + 24;
  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy(this + 16, *(this + 3));
  MediaSessionCollection::~MediaSessionCollection((this + 8));
}

void MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(MediaSessionQueuedCollectionIterator *this)
{
  MEMORY[0x1E69225A0](v2 + 160);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 16);
}

{
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(MediaSessionQueuedCollectionIterator *this)
{
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator((this - 8));
}

{
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator((this - 8));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(MediaSessionQueuedCollectionIterator *this)
{
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator((this + *(*this - 24)));
}

{
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void MediaSessionQueuedCollectionIterator::add(void *a1, unint64_t a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v21, "rtp.collection");
  v17[0] = 0;
  v20 = 0;
  v6 = ims::debug(v21, v17);
  if (a1)
  {
    v7 = v6;
    v8 = *(*(*a1 - 8) + 8);
    v9 = *(v6 + 8);
    v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "add", 3);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
    *(v7 + 17) = 0;
    MEMORY[0x1E69233B0](*(v7 + 8), a2);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " session=", 9);
    *(v7 + 17) = 0;
    MEMORY[0x1E6923310](*(v7 + 8), *a3);
    *(v7 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    v11 = a1[7];
    v12 = a3[1];
    v13 = *a3;
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 16))(&v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    MediaSessionQueuedCollectionIterator::addNewBookmark(a1, a2, *a3 + 56);
  }

  __cxa_bad_typeid();
}

void sub_1E4CBAAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::addNewBookmark(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v38, "rtp.collection");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  v8 = *(*(*a1 - 8) + 8);
  v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "addNewBookmark", 14);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " stackId=", 9);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  v37 = a2;
  std::string::basic_string[abi:ne200100]<0>(&v26, "rtp.MediaSessionQueuedCollectionIterator");
  LOBYTE(v38[0]) = 0;
  v41 = 0;
  v10 = ims::debug(&v26, v38);
  v11 = *(*(*a1 - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "delegateForSession", 18);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=", 12);
  *(v10 + 17) = 0;
  MEMORY[0x1E69233B0](*(v10 + 8), a2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  v42 = 0;
  v43 = 0;
  v35 = 0;
  v36 = 0;
  ims::getValueFromMap<unsigned long long,std::shared_ptr<MediaSessionQueuedCollectionIterator::MediaSessionBookmark>>(&v42, (a1 + 2), &v37, &v35);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v42)
  {
    (*(*v42 + 152))(&v20);
    goto LABEL_34;
  }

  v33 = 0;
  v34 = 0;
  (*(*a1[7] + 24))(&v33);
  if (!v33)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "rtp.collection");
    LOBYTE(v26) = 0;
    v30 = 0;
    v15 = ims::warn(&v31, &v26);
    v16 = *(*(*a1 - 8) + 8);
    v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "delegateForSession", 18);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "No session or delegate found for session ", 41);
    *(v15 + 17) = 0;
    MEMORY[0x1E69233B0](*(v15 + 8), a2);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    v20 = 0;
    v21 = 0;
    goto LABEL_32;
  }

  (*(*v33 + 152))(&v26);
  if (v27)
  {
    v13 = std::__shared_weak_count::lock(v27);
    if (v13)
    {
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }

    if (v14 == a1)
    {
      v19 = a1[12];
      if (v19)
      {
        if (v19->__shared_owners_ != -1)
        {
          v20 = a1[11];
          v21 = v19;
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          goto LABEL_32;
        }
      }
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  (*(*v33 + 152))(&v20);
LABEL_32:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

LABEL_34:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v18 = *(a1[5] + 56);
  v35 = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  operator new();
}

void sub_1E4CBB364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, void *a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, std::__shared_weak_count *a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, std::__shared_weak_count *a41)
{
  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  v43 = *(v41 - 72);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::get(MediaSessionQueuedCollectionIterator *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a2;
  v6 = std::string::basic_string[abi:ne200100]<0>(&v26, "rtp.collection");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "get", 3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E69233B0](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v26);
  }

  v26 = 0;
  v27 = 0;
  v20 = 0;
  v21 = 0;
  ims::getValueFromMap<unsigned long long,std::shared_ptr<MediaSessionQueuedCollectionIterator::MediaSessionBookmark>>(&v26, this + 16, &v29, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v26)
  {
    v12 = *(this + 5);
    v16 = v26;
    v17 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    MediaSessionQueue::setQueuedInterface(v12, &v16);
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    v14 = *(this + 5);
    v13 = *(this + 6);
    if (v14)
    {
      v15 = v14 + 8;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    a3[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    (*(**(this + 7) + 24))(&v18);
    if (v18)
    {
      MediaSessionQueuedCollectionIterator::addNewBookmark(this, a2, v18 + 56);
    }

    *a3 = 0;
    a3[1] = 0;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1E4CBB784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (*(v25 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

void ims::getValueFromMap<unsigned long long,std::shared_ptr<MediaSessionQueuedCollectionIterator::MediaSessionBookmark>>(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
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

void sub_1E4CBB98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionQueuedCollectionIterator::getRealSession(MediaSessionQueuedCollectionIterator *this, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "rtp.collection");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  if (!a2)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*a2 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "getRealSession", 14);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E69233B0](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v12 = *(a2 + 72);
  if (v12 && (*(*v12 + 176))(v12) == a3)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v26, "rtp.collection");
    v18[0] = 0;
    v21 = 0;
    v14 = ims::warn(v13, v18);
    v15 = *(*(*a2 - 8) + 8);
    v16 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15 & 0x7FFFFFFFFFFFFFFFLL, v16);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "getRealSession", 14);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " Someone is accessing the session the iterator is pointing to: ", 63);
    *(v14 + 17) = 0;
    MEMORY[0x1E69233B0](*(v14 + 8), a3);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v17 = *(a2 + 80);
    *this = *(a2 + 72);
    *(this + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    (*(**(a2 + 56) + 24))(*(a2 + 56), a3);
  }
}

void sub_1E4CBBCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::iterationComplete(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v29, "rtp.collection");
  v25[0] = 0;
  v28 = 0;
  v6 = ims::debug(v29, v25);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "iterationComplete", 17);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [collection=", 13);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  RTPSharedPointerBase::getShared<MediaSessionCollectionIterator>(a1, v29);
  v11 = *a2;
  v12 = v29[0];
  if (v29[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
  }

  if (v11 == v12)
  {
    v22 = a1[8];
    *a3 = a1[7];
    *(a3 + 8) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = a1[7];
    v14 = a2[1];
    v23 = *a2;
    v24 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v13 + 88))(v29);
    v15 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    v16 = a1[8];
    *(a1 + 7) = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      if (v29[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
      }
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    v17 = a1[9];
    if (v17)
    {
      v18 = a1[7];
      v19 = (*(*v17 + 176))(v17);
      (*(*v18 + 24))(v29, v18, v19);
      v20 = *v29;
      v29[0] = 0;
      v29[1] = 0;
      v21 = a1[10];
      *(a1 + 9) = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        if (v29[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
        }
      }
    }

    RTPSharedPointerBase::getShared<MediaSessionCollectionIterator>(a1, a3);
  }
}

void sub_1E4CBC00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void RTPSharedPointerBase::getShared<MediaSessionCollectionIterator>(void *a1@<X0>, char ***a2@<X8>)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (a1 + *(*a1 - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<MediaSessionCollectionIterator,RTPSharedPointerBase>(&v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void MediaSessionQueuedCollectionIterator::MediaSessionBookmark::initialize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "rtp.bookmark");
  v23[0] = 0;
  v26 = 0;
  v14 = ims::debug(&v27, v23);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "initialize", 10);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " [sessionId=", 12);
  *(v15 + 17) = 0;
  MEMORY[0x1E69233B0](*(v15 + 8), a1[3]);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v27);
  }

  v27 = 0;
  v28 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v27, a1[11], a1[3]);
  v19 = v27;
  if (v27)
  {
    v20 = a7[1];
    v21 = *a7;
    v22 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v19 + 16))(v19, a2, a3, a4, a5, a6, &v21);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_1E4CBC2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::terminate(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.bookmark");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(&v12, v8);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "terminate", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v12);
  }

  v12 = 0;
  v13 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v12, *(this + 11), *(this + 3));
  if (v12)
  {
    (*(*v12 + 24))(v12, 0);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 1;
}

void sub_1E4CBC510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::start(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.bookmark");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(&v12, v8);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "start", 5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v12);
  }

  v12 = 0;
  v13 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v12, *(this + 11), *(this + 3));
  if (v12)
  {
    (*(*v12 + 32))(v12, 0);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 1;
}

void sub_1E4CBC724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::stop(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.bookmark");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(&v12, v8);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "stop", 4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v12);
  }

  v12 = 0;
  v13 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v12, *(this + 11), *(this + 3));
  if (v12)
  {
    (*(*v12 + 40))(v12, 0);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 0;
}

void sub_1E4CBC938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::setDirection(void *a1, unsigned int *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v17, "rtp.bookmark");
  v13[0] = 0;
  v16 = 0;
  v5 = ims::debug(v4, v13);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "setDirection", 12);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), a1[3]);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " direction=", 11);
  *(v6 + 17) = 0;
  ims::toString<MediaDirection>(a2, &v11);
  LoggableString::LoggableString(&__p, &v11);
  (*(*v6 + 40))(v6, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v19 < 0)
  {
    operator delete(v17);
  }

  v17 = 0;
  v18 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v17, a1[11], a1[3]);
  if (v17)
  {
    (*(*v17 + 48))(v17, a2, 0);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return 0;
}

void sub_1E4CBCBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  v32 = *(v30 - 64);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::MediaSessionBookmark::setConfiguration(void *a1, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "rtp.bookmark");
  v13[0] = 0;
  v16 = 0;
  v4 = ims::debug(&v17, v13);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setConfiguration", 16);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a1[3]);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v17);
  }

  v17 = 0;
  v18 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v17, a1[11], a1[3]);
  v9 = v17;
  v10 = a2[1];
  v11 = *a2;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v9 + 56))(v9, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E4CBCE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::configure(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.bookmark");
  v8[0] = 0;
  v11 = 0;
  v2 = ims::debug(&v12, v8);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "configure", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v12);
  }

  v12 = 0;
  v13 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v12, *(this + 11), *(this + 3));
  if (v12)
  {
    (*(*v12 + 64))(v12, 0);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 1;
}

void sub_1E4CBD06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::transactionPending(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.bookmark");
  v9[0] = 0;
  v12 = 0;
  v2 = ims::debug(&v13, v9);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "transactionPending", 18);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v13);
  }

  v13 = 0;
  v14 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v13, *(this + 11), *(this + 3));
  if (v13)
  {
    v7 = (*(*v13 + 72))(v13);
  }

  else
  {
    v7 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v7;
}

void sub_1E4CBD288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::active(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.bookmark");
  v9[0] = 0;
  v12 = 0;
  v2 = ims::debug(&v13, v9);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "active", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v13);
  }

  v13 = 0;
  v14 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v13, *(this + 11), *(this + 3));
  if (v13)
  {
    v7 = (*(*v13 + 80))(v13);
  }

  else
  {
    v7 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v7;
}

void sub_1E4CBD4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::paused(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.bookmark");
  v9[0] = 0;
  v12 = 0;
  v2 = ims::debug(&v13, v9);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "paused", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v13);
  }

  v13 = 0;
  v14 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v13, *(this + 11), *(this + 3));
  if (v13)
  {
    v7 = (*(*v13 + 88))(v13);
  }

  else
  {
    v7 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v7;
}

void sub_1E4CBD6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::direction(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.bookmark");
  v9[0] = 0;
  v12 = 0;
  v2 = ims::debug(&v13, v9);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "direction", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v13);
  }

  v13 = 0;
  v14 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v13, *(this + 11), *(this + 3));
  if (v13)
  {
    v7 = (*(*v13 + 96))(v13);
  }

  else
  {
    v7 = 4;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v7;
}

void sub_1E4CBD8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::mediaType(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.bookmark");
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "mediaType", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
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

  return 2;
}

void sub_1E4CBDAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t MediaSessionQueuedCollectionIterator::MediaSessionBookmark::mediaSupportEnabled(void *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "rtp.bookmark");
  v11[0] = 0;
  v14 = 0;
  v4 = ims::debug(&v15, v11);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "mediaSupportEnabled", 19);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a1[3]);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  v15 = 0;
  v16 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v15, a1[11], a1[3]);
  if (v15)
  {
    v9 = (*(*v15 + 112))(v15, a2);
  }

  else
  {
    v9 = a2 == 2;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v9;
}

void sub_1E4CBDCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::MediaSessionBookmark::startSendingDTMF(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "rtp.bookmark");
  v11[0] = 0;
  v14 = 0;
  v6 = ims::debug(&v15, v11);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "startSendingDTMF", 16);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), *(this + 3));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  v15 = 0;
  v16 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v15, *(this + 11), *(this + 3));
  if (v15)
  {
    (*(*v15 + 128))(v15, a2);
  }

  else
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741836;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1E4CBDF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::MediaSessionBookmark::stopSendingDTMF(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "rtp.bookmark");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(&v13, v9);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "stopSendingDTMF", 15);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 3));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v13);
  }

  v13 = 0;
  v14 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v13, *(this + 11), *(this + 3));
  if (v13)
  {
    (*(*v13 + 136))(v13);
  }

  else
  {
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741836;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E4CBE18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQueuedCollectionIterator::MediaSessionBookmark::sendDTMFDigits(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "rtp.bookmark");
  v11[0] = 0;
  v14 = 0;
  v6 = ims::debug(&v15, v11);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendDTMFDigits", 14);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), a1[3]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  v15 = 0;
  v16 = 0;
  MediaSessionQueuedCollectionIterator::getRealSession(&v15, a1[11], a1[3]);
  if (v15)
  {
    (*(*v15 + 144))(v15, a2);
  }

  else
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741836;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1E4CBE3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::remove(MediaSessionQueuedCollectionIterator *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "rtp.collection");
  v10[0] = 0;
  v13 = 0;
  v4 = ims::debug(v14, v10);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "remove", 6);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return (*(**(this + 7) + 32))(*(this + 7), a2);
}

void sub_1E4CBE5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t MediaSessionQueuedCollectionIterator::contains(MediaSessionQueuedCollectionIterator *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "rtp.collection");
  v10[0] = 0;
  v13 = 0;
  v4 = ims::debug(v14, v10);
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
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return (*(**(this + 7) + 40))(*(this + 7), a2);
}

void sub_1E4CBE7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t MediaSessionQueuedCollectionIterator::contains(void *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v19, "rtp.collection");
  v15[0] = 0;
  v18 = 0;
  v4 = ims::debug(v19, v15);
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
  MEMORY[0x1E6923310](*(v5 + 8), *a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v9 = a1[7];
  v10 = a2[1];
  v13 = *a2;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (*(*v9 + 48))(v9, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v11;
}

void sub_1E4CBE9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionQueuedCollectionIterator::clear(MediaSessionQueuedCollectionIterator *this)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.collection");
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "clear", 5);
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

  return (*(**(this + 7) + 72))(*(this + 7));
}

void sub_1E4CBEBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t MediaSessionQueuedCollectionIterator::sessionIdList(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v14, "rtp.collection");
  v10[0] = 0;
  v13 = 0;
  v4 = ims::debug(v14, v10);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "sessionIdList", 13);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [stackId=", 10);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return (*(**(a1 + 56) + 80))(*(a1 + 56), a2);
}

void sub_1E4CBEDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionQueuedCollectionIterator::MediaSessionBookmark::~MediaSessionBookmark(MediaSessionQueuedCollectionIterator::MediaSessionBookmark *this)
{
  MediaSessionQueuedCollectionIterator::MediaSessionBookmark::~MediaSessionBookmark(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EC3238;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "rtp.bookmark");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~MediaSessionBookmark", 21);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 3));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
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

  MediaSessionInterface::~MediaSessionInterface(this);
}

void MediaSessionInterface::~MediaSessionInterface(void **this)
{
  *this = &unk_1F5EC3328;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

char **std::dynamic_pointer_cast[abi:ne200100]<MediaSessionCollectionIterator,RTPSharedPointerBase>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

void std::__shared_ptr_emplace<MediaSessionQueuedCollectionIterator::MediaSessionBookmark>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC3400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t MediaSessionInterface::MediaSessionInterface(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, __int128 *a5, NSObject **a6)
{
  v9 = *a2;
  v8 = a2[1];
  *a1 = &unk_1F5EC3328;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = *a4;
  v10 = a4[1];
  *(a1 + 24) = a3;
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *a6;
  *(a1 + 48) = *a6;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a5, *(a5 + 1));
  }

  else
  {
    v13 = *a5;
    *(a1 + 72) = *(a5 + 2);
    *(a1 + 56) = v13;
  }

  *(a1 + 80) = 1;
  return a1;
}

void sub_1E4CBF268(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void SipProxyAuthenticateHeader::~SipProxyAuthenticateHeader(SipProxyAuthenticateHeader *this)
{
  SipAuthenticateHeader::~SipAuthenticateHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipParameterListHeader::SipParameterListHeader(SipParameterListHeader *this, const SipParameterListHeader *a2)
{
  SipHeader::SipHeader(this, a2);
  *v4 = &unk_1F5EC34F8;
  v4[8] = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v4 + 9, *(a2 + 9), a2 + 10);
  *(this + 97) = 1;
  *(this + 96) = *(a2 + 96);
}

uint64_t SipParameterListHeader::setValueFromString(uint64_t a1, std::string *a2)
{
  result = SipParameterMap::fromString(a1 + 64, a2, 0, 0);
  if (result)
  {
    v4 = *(*a1 + 112);

    return v4(a1, a1 + 64);
  }

  return result;
}

void SipBackoffTimer::initialize(std::string *a1, std::string::size_type a2, std::string::size_type *a3, std::string *__str)
{
  a1->__r_.__value_.__l.__size_ = a2;
  std::string::operator=(a1 + 1, __str);
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  size = a1[2].__r_.__value_.__l.__size_;
  a1[2].__r_.__value_.__r.__words[0] = v7;
  a1[2].__r_.__value_.__l.__size_ = v6;
  if (size)
  {

    std::__shared_weak_count::__release_weak(size);
  }
}

int8x8_t *SipBackoffTimer::reset(std::string *this)
{
  result = this->__r_.__value_.__l.__size_;
  if (result)
  {
    result = SipTimerContainer::cancelTimer(result, this + 1);
  }

  LODWORD(this->__r_.__value_.__r.__words[2]) = 0;
  return result;
}

void SipSimpleBackoffTimer::initialize(uint64_t a1, std::string::size_type a2, std::string::size_type *a3, std::string *a4, int a5, int a6)
{
  v9 = a3[1];
  v10[0] = *a3;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipBackoffTimer::initialize(a1, a2, v10, a4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(a1 + 64) = a5;
  *(a1 + 68) = a6;
}

void sub_1E4CBF8C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSimpleBackoffTimer::scheduleRetry(SipSimpleBackoffTimer *this)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(this + 4);
    v3 = *(this + 16);
    v4 = ((1 << v2) + *(this + 17));
    if (v4 <= v3)
    {
      *(this + 4) = v2 + 1;
      v3 = v4;
    }

    v7[0] = &unk_1F5EC3668;
    v7[1] = this;
    v7[3] = v7;
    SipTimerContainer::startTimer(v1, this + 24);
    std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v7);
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E4CBF9B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Rfc5626BackoffTimer::initialize(uint64_t a1, std::string::size_type a2, std::string::size_type *a3, std::string *a4, int a5, int a6)
{
  *(a1 + 64) = a5;
  *(a1 + 68) = a6;
  v6 = a3[1];
  v7[0] = *a3;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipBackoffTimer::initialize(a1, a2, v7, a4);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4CBFA38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Rfc5626BackoffTimer::scheduleRetry(Rfc5626BackoffTimer *this)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (*(this + 1))
  {
    v2 = *(this + 4) + 1;
    *(this + 4) = v2;
    v3 = *(this + 17);
    v4 = (*(this + 16) / v3) >> v2;
    v5 = v3 << v2;
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = *(this + 16);
    }

    v7 = (random() % (v6 >> 1)) + (v6 >> 1);
    v8 = *(this + 1);
    v11[0] = &unk_1F5EC36E8;
    v11[1] = this;
    v11[3] = v11;
    SipTimerContainer::startTimer(v8, this + 24);
    std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E4CBFB40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SipSimpleBackoffTimer::~SipSimpleBackoffTimer(SipSimpleBackoffTimer *this)
{
  SipBackoffTimer::~SipBackoffTimer(this);

  JUMPOUT(0x1E69235B0);
}

void Rfc5626BackoffTimer::~Rfc5626BackoffTimer(Rfc5626BackoffTimer *this)
{
  SipBackoffTimer::~SipBackoffTimer(this);

  JUMPOUT(0x1E69235B0);
}

void SipBackoffTimer::~SipBackoffTimer(SipBackoffTimer *this)
{
  *this = &unk_1F5EC35C8;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t std::__function::__func<SipSimpleBackoffTimer::scheduleRetry(void)::$_0,std::allocator<SipSimpleBackoffTimer::scheduleRetry(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EC3668;
  a2[1] = v2;
  return result;
}

void std::__function::__func<SipSimpleBackoffTimer::scheduleRetry(void)::$_0,std::allocator<SipSimpleBackoffTimer::scheduleRetry(void)::$_0>,void ()(std::string &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 48);
      if (v7)
      {
        (**v7)(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t std::__function::__func<SipSimpleBackoffTimer::scheduleRetry(void)::$_0,std::allocator<SipSimpleBackoffTimer::scheduleRetry(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<Rfc5626BackoffTimer::scheduleRetry(void)::$_0,std::allocator<Rfc5626BackoffTimer::scheduleRetry(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5EC36E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Rfc5626BackoffTimer::scheduleRetry(void)::$_0,std::allocator<Rfc5626BackoffTimer::scheduleRetry(void)::$_0>,void ()(std::string &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 48);
      if (v7)
      {
        (**v7)(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t std::__function::__func<Rfc5626BackoffTimer::scheduleRetry(void)::$_0,std::allocator<Rfc5626BackoffTimer::scheduleRetry(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void XcapUrlHelper::createUrl(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v10 = [MEMORY[0x1E695DFF8] URLWithString:@"/"];
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:? resolvingAgainstBaseURL:?];
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_12;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  [v6 setPath:v7];

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_12;
    }

    a2 = *a2;
    goto LABEL_11;
  }

  if (*(a2 + 23))
  {
LABEL_11:
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v6 setQuery:v8];
  }

LABEL_12:
  v9 = [v6 string];
  std::string::basic_string[abi:ne200100]<0>(a3, [v9 UTF8String]);
}

void BambiEmergencyCallHandler::resetConditions(BambiEmergencyCallHandler *this)
{
  std::string::basic_string[abi:ne200100]<0>(v17, "bambi.call");
  v13[0] = 0;
  v16 = 0;
  v2 = ims::debug(v17, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "EmergencyCallhandler: resetting conditions", 42);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  *(this + 124) = 257;
  *(this + 250) = 1;
  *(this + 64) = 0;
  *(this + 252) = 0;
  SipTimerContainer::cancelAllTimers((this + 5072));
  *(this + 633) = 0;
  v3 = *(this + 676);
  v4 = *(this + 677);
  if (v4 == v3)
  {
    v8 = (this + 5440);
    v4 = *(this + 676);
  }

  else
  {
    v5 = *(this + 679);
    v6 = &v3[v5 >> 4];
    v7 = *v6 + 408 * (v5 & 0xF);
    v8 = (this + 5440);
    v9 = *(v3 + (((*(this + 680) + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(this + 1360) + v5) & 0xF);
    if (v7 != v9)
    {
      do
      {
        (**v7)(v7);
        v7 += 408;
        if (v7 - *v6 == 6528)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v9);
      v4 = *(this + 677);
      v3 = *(this + 676);
    }
  }

  *v8 = 0;
  v11 = v4 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v3 = (*(this + 676) + 8);
      *(this + 676) = v3;
      v11 = (*(this + 677) - v3) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 8;
    goto LABEL_19;
  }

  if (v11 == 2)
  {
    v12 = 16;
LABEL_19:
    *(this + 679) = v12;
  }

  BambiEmergencyCallHandler::clearLocation(this);
}

void sub_1E4CC02F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_1E4CC0B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v43);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::~__shared_weak_count(v42);
  operator delete(v45);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::~BambiEmergencyCallHandler(BambiEmergencyCallHandler *this)
{
  *this = &unk_1F5EC3768;
  *(this + 1) = &unk_1F5EC3810;
  *(this + 2) = &unk_1F5EC3838;
  *(this + 3) = &unk_1F5EC3868;
  *(this + 4) = &unk_1F5EC3890;
  *(this + 21) = &unk_1F5EC38F0;
  *(this + 22) = &unk_1F5EC3920;
  *(this + 23) = &unk_1F5EC3938;
  SipTimerContainer::cancelAllTimers((this + 5072));
  v2 = *(this + 682);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::deque<SipUri>::~deque[abi:ne200100](this + 675);
  if (*(this + 5391) < 0)
  {
    operator delete(*(this + 671));
  }

  if (*(this + 5367) < 0)
  {
    operator delete(*(this + 668));
  }

  if (*(this + 5343) < 0)
  {
    operator delete(*(this + 665));
  }

  if (*(this + 5319) < 0)
  {
    operator delete(*(this + 662));
  }

  SipTimerContainer::~SipTimerContainer((this + 5072));
  if (*(this + 5055) < 0)
  {
    operator delete(*(this + 629));
  }

  SipUri::~SipUri((this + 4624));
  SipStackConfig::~SipStackConfig(this + 254);
  SipRegistrationConfig::~SipRegistrationConfig(this + 45);
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  v3 = *(this + 34);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x1E69225A0](this + 224);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 24);
  *(this + 4) = &unk_1F5ED7318;
  if (*(this + 112) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiEmergencyCallHandler::~BambiEmergencyCallHandler(BambiEmergencyCallHandler *this)
{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 8));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 16));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 24));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 32));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 168));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 184));
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 32));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 168));

  JUMPOUT(0x1E69235B0);
}

{
  BambiEmergencyCallHandler::~BambiEmergencyCallHandler((this - 184));

  JUMPOUT(0x1E69235B0);
}

void BambiEmergencyCallHandler::cancelPendingEmergencyCall(uint64_t a1, int a2)
{
  if (*(a1 + 264) && (*(a1 + 251) & 1) != 0)
  {
    v4 = a1 + 32;
    v5 = (*(*(a1 + 32) + 64))(a1 + 32);
    (*(*v4 + 16))(a1 + 32, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "canceling pending emergency call", 32);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;

    BambiEmergencyCallHandler::endEmergencyCallWithReason(a1, a2);
  }

  else
  {
    v6 = a1 + 32;
    v7 = (*(*(a1 + 32) + 64))(a1 + 32);
    (*(*v6 + 16))(v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "cancelPendingEmergencyCall: no pending emergency call", 53);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
  }
}

void BambiEmergencyCallHandler::handleRegistrationActive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 32;
  v6 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "emergency registration is active", 32);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  *(a1 + 249) = 0;
  BambiEmergencyCallHandler::checkConditions(a1);
  BambiEmergencyCallHandler::delegate(&v11);
  v7 = v12;
  if (v12)
  {
    v8 = std::__shared_weak_count::lock(v12);
    if (v8)
    {
      v9 = v8;
      v10 = v11;
      std::__shared_weak_count::__release_weak(v7);
      if (v10)
      {
        (*(*v10 + 80))(v10, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void BambiEmergencyCallHandler::checkConditions(BambiEmergencyCallHandler *this)
{
  v99 = *MEMORY[0x1E69E9840];
  if (*(this + 250) != 1)
  {
    if (*(this + 248) == 1)
    {
      v7 = this + 32;
      v3 = (*(*(this + 4) + 64))(this + 32);
      (*(*v7 + 16))(v7, v3);
      v4 = *(v3 + 8);
      v5 = "still waiting for emergency stack initialization";
      v6 = 48;
      goto LABEL_6;
    }

    if (*(this + 249) == 1)
    {
      v9 = this + 32;
      v3 = (*(*(this + 4) + 64))(this + 32);
      (*(*v9 + 16))(v9, v3);
      v4 = *(v3 + 8);
      v5 = "still waiting for emergency transport initialization";
      goto LABEL_3;
    }

    if ((*(this + 64) & 0xFFFFFFFE) != 2)
    {
      v17 = this + 32;
      v3 = (*(*(this + 4) + 64))(this + 32);
      (*(*v17 + 16))(v17, v3);
      v4 = *(v3 + 8);
      v5 = "still waiting for emergency location";
      v6 = 36;
      goto LABEL_6;
    }

    v10 = *(this + 30);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = *(this + 29);
        if (v12)
        {
          if (*(this + 33) && (*(this + 251) & 1) != 0)
          {
            SipTimerContainer::cancelTimer(this + 634, &kEmergencyCallSetupTimer);
            v13 = this + 32;
            v14 = (*(*(this + 4) + 64))(this + 32);
            (*(*(this + 4) + 16))(this + 32, v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "processing pending emergency call", 33);
            *(v14 + 17) = 0;
            (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v14 + 17) = 0;
            v16 = *(this + 33);
            v15 = *(this + 34);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(this + 251) = 0;
            v97 = 0;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            memset(v77, 0, sizeof(v77));
            SipUri::SipUri(v77);
            if (SipUri::isValidUri((this + 4624)))
            {
              SipUri::operator=(v77, this + 4624);
            }

            else
            {
              v24 = *(this + 2519);
              if (v24 < 0)
              {
                v24 = *(this + 313);
              }

              if (v24)
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "");
                SipUri::setUser(v77, this + 104, __p);
                if (SBYTE7(v52) < 0)
                {
                  operator delete(__p[0]);
                }

                v25 = *(v12 + 280);
                v26 = *(v12 + 288);
                if (v26)
                {
                  atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (SHIBYTE(v79) < 0)
                {
                  *&v79 = 3;
                  v27 = *(&v78 + 1);
                }

                else
                {
                  v27 = &v78 + 8;
                  HIBYTE(v79) = 3;
                }

                strcpy(v27, "sip");
                if (SBYTE7(v84) < 0)
                {
                  *v83 = 0;
                  *(&v83 + 1) = 0;
                }

                else
                {
                  LOBYTE(v83) = 0;
                  BYTE7(v84) = 0;
                }

                if (SBYTE7(v87) < 0)
                {
                  *v86 = 0;
                  *(&v86 + 1) = 0;
                }

                else
                {
                  LOBYTE(v86) = 0;
                  BYTE7(v87) = 0;
                }

                if (SHIBYTE(v88) < 0)
                {
                  **(&v87 + 1) = 0;
                  *&v88 = 0;
                }

                else
                {
                  BYTE8(v87) = 0;
                  HIBYTE(v88) = 0;
                }

                if (SBYTE7(v90) < 0)
                {
                  *v89 = 0;
                  *(&v89 + 1) = 0;
                }

                else
                {
                  LOBYTE(v89) = 0;
                  BYTE7(v90) = 0;
                }

                SipHost::operator=(v77 + 8, v25 + 1240);
                LOBYTE(v92) = 0;
                if (v26)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                }
              }
            }

            if (SipUri::isValidUri(v77))
            {
              v28 = (*(*v13 + 64))(this + 32);
              (*(*v13 + 16))(this + 32, v28);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "setting preferred identity for anonymous calls to ", 50);
              *(v28 + 17) = 0;
              (*(*&v77[0] + 40))(v77, v28);
              (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v28 + 17) = 0;
              v29 = *(v12 + 248);
              v30 = *(v12 + 256);
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipUserAgent::setPreferredIdentityForAnonymousCalls(v29, v77);
              if (v30)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
              }
            }

            v31 = *(v12 + 248);
            v33 = *(v31 + 336);
            v32 = *(v31 + 344);
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              v34 = *(v33 + 712);
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
            }

            else
            {
              v34 = *(v33 + 712);
            }

            if (v34 == 2)
            {
              v76 = 0;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              *v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              *v57 = 0u;
              *v54 = 0u;
              *v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              *__p = 0u;
              v35 = *(v16 + 408);
              v36 = *(v16 + 416);
              if (v36)
              {
                atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v37 = *(v35 + 240);
              v38 = *(v35 + 248);
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipStack::makeCanonicalUri(v12, (v37 + 240), __p);
              if (v38)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v38);
              }

              if (v36)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v36);
              }

              v39 = *(v16 + 408);
              v40 = *(v16 + 416);
              if (v40)
              {
                atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v41 = *(v39 + 240);
              v42 = *(v39 + 248);
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipDialog::updateRemoteUri(v41, __p);
              if (v42)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v42);
              }

              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              SipUri::~SipUri(__p);
            }

            v43 = *(this + 25);
            if (!v43 || (v44 = *(this + 24), (v45 = std::__shared_weak_count::lock(v43)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v46 = v45;
            p_shared_weak_owners = &v45->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 635, &kEmergencySessionSetupTimer) && (*(this + 252) & 1) == 0)
            {
              v48 = SipStack::prefs(v12);
              if (ImsPrefs::EmergencySessionSetupTimeoutSeconds(v48))
              {
                atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v98 = 0;
                operator new();
              }
            }

            if (*(this + 252) == 1 && *(this + 661) > 0.0)
            {
              ims::LocationInfo::LocationInfo(__p, (this + 5248));
              BambiCall::setEmergencyLocationInfo(v16, __p);
              if (SHIBYTE(v59) < 0)
              {
                operator delete(v58[1]);
              }

              if (SHIBYTE(v58[0]) < 0)
              {
                operator delete(v57[0]);
              }

              if (SHIBYTE(v56) < 0)
              {
                operator delete(v55[1]);
              }

              if (SHIBYTE(v55[0]) < 0)
              {
                operator delete(v54[0]);
              }
            }

            *(this + 252) = 0;
            *(v16 + 497) = 1;
            v49 = *(v12 + 3144);
            v50 = *(v12 + 3152);
            if (v50)
            {
              atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v49 + 152))(v49);
            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            std::__shared_weak_count::__release_weak(v46);
            std::__shared_weak_count::__release_weak(v46);
            SipUri::~SipUri(v77);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }
          }

          else
          {
            v22 = *(this + 4);
            v21 = this + 32;
            v23 = (*(v22 + 64))(v21);
            (*(*v21 + 16))(v21, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "processPendingEmergencyCall: no pending emergency call", 54);
            *(v23 + 17) = 0;
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
          }

LABEL_97:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          goto LABEL_7;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v19 = *(this + 4);
    v18 = this + 32;
    v20 = (*(v19 + 64))(v18);
    (*(*v18 + 16))(v18, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "SipStack is null", 16);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_97;
  }

  v2 = this + 32;
  v3 = (*(*(this + 4) + 64))(this + 32);
  (*(*v2 + 16))(v2, v3);
  v4 = *(v3 + 8);
  v5 = "still waiting for emergency registration to complete";
LABEL_3:
  v6 = 52;
LABEL_6:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4CC1F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v64 - 128);
  std::__shared_weak_count::__release_weak(v63);
  std::__shared_weak_count::__release_weak(v63);
  SipUri::~SipUri(&a61);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::delegate(BambiEmergencyCallHandler *this)
{
  IPTelephonyManager::getBambiClient(&v4);
  v2 = *(v4 + 744);
  *this = *(v4 + 736);
  *(this + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void BambiEmergencyCallHandler::handleRegistrationTerminated(void *a1, int a2, SipRegistrationNotification *this)
{
  Retry = SipRegistrationNotification::secondsUntilNextRetry(this);
  if (a1[633] < 1 || (v5 = Retry, time(0) >= a1[633]))
  {

    BambiEmergencyCallHandler::exitEmergencyState(a1);
  }

  else if (v5 == -1)
  {
    v6 = a1[30];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = a1[29];
        if (v9)
        {
          SipStack::startRegistration(v9, (a1 + 45));
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }
}

void BambiEmergencyCallHandler::exitEmergencyState(BambiEmergencyCallHandler *this)
{
  if ((*(this + 5240) & 1) == 0)
  {
    v7 = this + 32;
    v3 = (*(*(this + 4) + 64))(this + 32);
    (*(*v7 + 16))(v7, v3);
    v4 = *(v3 + 8);
    v5 = "exitEmergencyState: not in emergency state";
    v6 = 42;
    goto LABEL_5;
  }

  if (*(this + 33))
  {
    v2 = this + 32;
    v3 = (*(*(this + 4) + 64))(this + 32);
    (*(*v2 + 16))(v2, v3);
    v4 = *(v3 + 8);
    v5 = "exitEmergencyState: still have an emergency call";
    v6 = 48;
LABEL_5:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    return;
  }

  v8 = *(this + 30);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(this + 29);
      if (v10)
      {
        if (*(v10 + 296) == 1)
        {
          v11 = *(v10 + 248);
          v13 = *(v11 + 336);
          v12 = *(v11 + 344);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v14 = *(v13 + 712);
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          else
          {
            v14 = *(v13 + 712);
          }

          if (v14 == 2)
          {
            v16 = SipStack::prefs(v10);
            if (!ImsPrefs::EmergencyCallBackModeExpirationSeconds(v16))
            {
              v33 = *(this + 4);
              v32 = this + 32;
              v34 = (*(v33 + 64))(v32);
              (*(*v32 + 16))(v32, v34);
              v36 = ImsOutStream::operator<<(v34, "exitEmergencyState: still registered. Waiting for registration expiration at ");
              v37 = *(v10 + 248);
              v38 = *(v10 + 256);
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v39 = *(v37 + 336);
              v40 = *(v37 + 344);
              if (v40)
              {
                atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              ims::formatTimeAndIntervalFromNow(*(v39 + 656), v36, v35);
              (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v36[17] = 0;
              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              if (v38)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v38);
              }

              goto LABEL_65;
            }
          }
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v10 = 0;
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v9 = 0;
  }

  if (*(this + 633) >= 1 && time(0) < *(this + 633))
  {
    v17 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "exitEmergencyState: waiting for ECBM expiration at ", 51);
    *(v17 + 17) = 0;
    ims::formatTimeAndIntervalFromNow(*(this + 633), v17, v18);
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    goto LABEL_64;
  }

  memset(&v42, 0, sizeof(v42));
  if (v15)
  {
    if (*(v10 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *(v10 + 4432), *(v10 + 4440));
    }

    else
    {
      v42 = *(v10 + 4432);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v42, "");
  }

  IPTelephonyManager::getBambiClient(&v41);
  v20 = *(v41.__r_.__value_.__r.__words[0] + 232);
  v19 = *(v41.__r_.__value_.__r.__words[0] + 240);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v41.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41.__r_.__value_.__l.__size_);
  }

  if (v15 && (*(v10 + 296) & 1) == 0 && v20)
  {
    if (*(v20 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, *(v20 + 4432), *(v20 + 4440));
    }

    else
    {
      v41 = *(v20 + 4432);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v42 = v41;
  }

  *(this + 5240) = 0;
  BambiEmergencyCallHandler::delegate(&v41);
  size = v41.__r_.__value_.__l.__size_;
  if (!v41.__r_.__value_.__l.__size_)
  {
    v22 = 0;
    goto LABEL_47;
  }

  v22 = std::__shared_weak_count::lock(v41.__r_.__value_.__l.__size_);
  if (!v22)
  {
    std::__shared_weak_count::__release_weak(size);
LABEL_47:
    v24 = (*(*(this + 4) + 56))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "no BambiClient delegate to handle exitEmergencyState", 52);
    *(v24 + 17) = 0;
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (!v22)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v23 = v41.__r_.__value_.__r.__words[0];
  std::__shared_weak_count::__release_weak(size);
  if (!v23)
  {
    goto LABEL_47;
  }

  (*(*v23 + 72))(v23, &v42);
LABEL_48:
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
LABEL_49:
  if (v15 && *(v10 + 296) == 1)
  {
    v25 = *(v10 + 248);
    v26 = *(v10 + 256);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = *(v25 + 336);
    v28 = *(v25 + 344);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 304))(v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v30 = *(this + 4);
    v29 = this + 32;
    v31 = (*(v30 + 64))(v29);
    (*(*v29 + 16))(v29, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "exiting emergency state!", 24);
    *(v31 + 17) = 0;
    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v31 + 17) = 0;
    SipStack::deinitialize(v10, 0, 0, 0);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

LABEL_64:
  if (v9)
  {
LABEL_65:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4CC28D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::handleRegistrationError(BambiEmergencyCallHandler *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 250) == 1)
  {
    v5 = this + 32;
    v6 = (*(*(this + 4) + 64))(this + 32);
    (*(*v5 + 16))(this + 32, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "emergency registration failed: ", 31);
    *(v6 + 17) = 0;
    (*(*(a3 + 64) + 16))(a3 + 64, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (*(BambiEmergencyCallHandler::config(this) + 2) == 1)
    {
      *(this + 250) = 0;
      if (*(this + 249) == 1)
      {
        BambiEmergencyCallHandler::initializeTransportForAnonymousCall(this);
      }

      else
      {
        BambiEmergencyCallHandler::checkConditions(this);
      }
    }

    else
    {
      v7 = (*(*v5 + 64))(this + 32);
      (*(*v5 + 16))(v5, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "anonymous emergency calls are disabled. Waiting for registration retry.", 71);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
    }
  }

  else
  {
    BambiEmergencyCallHandler::exitEmergencyState(this);
  }

  BambiEmergencyCallHandler::delegate(&v12);
  v8 = v13;
  if (v13)
  {
    v9 = std::__shared_weak_count::lock(v13);
    if (v9)
    {
      v10 = v9;
      v11 = v12;
      std::__shared_weak_count::__release_weak(v8);
      if (v11)
      {
        (*(*v11 + 96))(v11, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

uint64_t BambiEmergencyCallHandler::config(BambiEmergencyCallHandler *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(this + 29);
    }
  }

  else
  {
    v3 = 0;
  }

  SipStack::carrierIdentifier(v2, &__p);
  v4 = ImsPrefsManager::emergencyPrefs(&__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void sub_1E4CC2CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void BambiEmergencyCallHandler::initializeTransportForAnonymousCall(BambiEmergencyCallHandler *this)
{
  v2 = (this + 32);
  v3 = (*(*(this + 4) + 64))(this + 32);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "initializing emergency transport for anonymous call", 51);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = v2[26];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 29);
      if (v7)
      {
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v9 = *(v7 + 280);
        v8 = *(v7 + 288);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        BambiEmergencyCallHandler::currentProxies(v22, this);
        v10 = *(this + 25);
        if (!v10 || (v11 = *(this + 1348), v12 = *(this + 24), (v13 = std::__shared_weak_count::lock(v10)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v14 = v13;
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = v12 + 8;
          if (!v12)
          {
            v17 = 0;
          }

          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v20 = v17;
          v21 = v15;
          std::__shared_weak_count::__release_weak(v14);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v20 = 0;
          v21 = 0;
          std::__shared_weak_count::__release_weak(v14);
        }

        SipTransportLayer::initializeTransportToProxy(v9, v22, v11, &v20, &v23);
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        std::deque<SipUri>::~deque[abi:ne200100](v22);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if ((*(**(&v23 + 1) + 24))(*(&v23 + 1), v24))
        {
          v18 = (*(*v2 + 56))(v2);
          (*(*v2 + 16))(v2, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "unable to initialize emergency transport: ", 42);
          *(v18 + 17) = 0;
          (*(v23 + 16))(&v23, v18);
          (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v18 + 17) = 0;
          BambiEmergencyCallHandler::tryNextProxy(this, v19);
          ImsResult::~ImsResult(v19);
        }

        ImsResult::~ImsResult(&v23);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4CC300C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  std::deque<SipUri>::~deque[abi:ne200100](&a23);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::stackInitComplete(void *a1, int a2, ImsResult *a3)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  ImsResult::ImsResult(v11, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN25BambiEmergencyCallHandler17stackInitCompleteENSt3__110shared_ptrI8SipStackEERK9ImsResult_block_invoke;
  v9[3] = &__block_descriptor_tmp_32;
  v9[4] = a1;
  ImsResult::ImsResult(v10, v11);
  v4 = a1[25];
  if (!v4 || (v5 = a1[24], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[26];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI25BambiEmergencyCallHandlerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EC3D68;
  block[5] = v5;
  v14 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  ImsResult::~ImsResult(v10);
  ImsResult::~ImsResult(v11);
}

void sub_1E4CC31B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void ___ZN25BambiEmergencyCallHandler17stackInitCompleteENSt3__110shared_ptrI8SipStackEERK9ImsResult_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 56)))
  {
    v3 = (*(*(v2 + 4) + 64))(v2 + 4);
    (*(*(v2 + 4) + 16))(v2 + 4, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "emergency SIP stack initialization failed: ", 43);
    *(v3 + 17) = 0;
    (*(*(a1 + 40) + 16))(a1 + 40, v3);
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;

    BambiEmergencyCallHandler::deferCancelPendingEmergencyCall(v2, 18);
  }

  else
  {

    BambiEmergencyCallHandler::handleStackInitialized(v2);
  }
}

void BambiEmergencyCallHandler::handleStackInitialized(BambiEmergencyCallHandler *this)
{
  v2 = this + 32;
  v3 = *(this + 248);
  v4 = (*(*(this + 4) + 64))(this + 32);
  (*(*v2 + 16))(v2, v4);
  v5 = *(v4 + 8);
  if (v3 != 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "emergency SIP stack is already initialized", 42);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    return;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "emergency SIP stack initialization succeeded", 44);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  *(this + 248) = 0;
  if (!*(this + 33))
  {
    v20 = (*(*v2 + 64))(v2);
    (*(*v2 + 16))(v2, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "emergency stack initialized, but we no longer have a pending emergency call", 75);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    return;
  }

  BambiEmergencyCallHandler::clearLocation(this);
  v6 = *(this + 33);
  if (v6)
  {
    v7 = *(v6 + 552);
    if (v7)
    {
      if (*(v7 + 4776) == 1)
      {
        v8 = (*(*v2 + 64))(v2);
        (*(*v2 + 16))(v2, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "not acquiring location for suspicious emergency call", 52);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
LABEL_41:
        v29 = (*(*v2 + 64))(v2);
        (*(*v2 + 16))(v2, v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Location lookup not required", 28);
        *(v29 + 17) = 0;
        (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v29 + 17) = 0;
        v28 = 3;
        goto LABEL_42;
      }
    }
  }

  v9 = *(this + 30);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10)
  {
    goto LABEL_41;
  }

  v11 = v10;
  v12 = *(this + 29);
  if (!v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_41;
  }

  v50 = 0;
  v51 = 0;
  v49[0] = v12;
  v49[1] = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(this + 25);
  if (!v13 || (v14 = *(this + 24), (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  v17 = std::__shared_weak_count::lock(v16);
  v18 = v17;
  if (v17)
  {
    if (v14)
    {
      v19 = v14 + 24;
    }

    else
    {
      v19 = 0;
    }

    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v16);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    std::__shared_weak_count::__release_weak(v16);
    v19 = 0;
  }

  v48[0] = v19;
  v48[1] = v18;
  BambiEmergencyCallHandler::createLocation(v49, v48, &v50);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  v21 = v50;
  if (v50)
  {
    v22 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 681) = v21;
    v23 = *(this + 682);
    *(this + 682) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    *(this + 329) = 0u;
    *(this + 328) = 0u;
    *(this + 330) = xmmword_1E5167160;
    v24 = (this + 5296);
    if (v2[5287] < 0)
    {
      operator delete(*v24);
    }

    v25 = (this + 5320);
    *v24 = 0;
    *(this + 663) = 0;
    *(this + 664) = 0;
    if (v2[5311] < 0)
    {
      operator delete(*v25);
    }

    v26 = (this + 5344);
    *v25 = 0;
    *(this + 666) = 0;
    *(this + 667) = 0;
    if (v2[5335] < 0)
    {
      operator delete(*v26);
    }

    v27 = (this + 5368);
    *v26 = 0;
    *(this + 669) = 0;
    *(this + 670) = 0;
    if (v2[5359] < 0)
    {
      operator delete(*v27);
    }

    *v27 = 0;
    *(this + 672) = 0;
    *(this + 673) = 0;
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (!v21)
  {
    goto LABEL_41;
  }

  v28 = 1;
LABEL_42:
  *(this + 64) = v28;
  v30 = *(this + 30);
  if (!v30)
  {
    return;
  }

  v31 = std::__shared_weak_count::lock(v30);
  if (!v31)
  {
    return;
  }

  v32 = v31;
  v33 = *(this + 29);
  if (v33)
  {
    if (*(v33 + 296))
    {
      v34 = SipStack::prefs(*(this + 29));
      if (!ImsPrefs::EnableEmergencyRegistration(v34))
      {
        v40 = (*(*v2 + 64))(v2);
        (*(*v2 + 16))(v2, v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "emergency registration is disabled in config", 44);
        *(v40 + 17) = 0;
        v41 = (v40 + 17);
        (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_62:
        *v41 = 0;
        v47 = (*(*v2 + 64))(v2);
        (*(*v2 + 16))(v2, v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "skipping emergency registration", 31);
        *(v47 + 17) = 0;
        (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v47 + 17) = 0;
        BambiEmergencyCallHandler::dialAnonymousCall(this);
        goto LABEL_63;
      }

      if (*(this + 352) == 1)
      {
        v35 = SipStack::prefs(v33);
        if (!ImsPrefs::IgnoreLimitedServiceInEmergencyMode(v35))
        {
          if (!ims::AccessNetwork::isWifi((v33 + 3432)) || (v45 = SipStack::prefs(v33), !ImsPrefs::AllowEmergencyRegistrationInLimitedAccessOnWiFi(v45)))
          {
            v46 = (*(*v2 + 64))(v2);
            (*(*v2 + 16))(v2, v46);
            v38 = ImsOutStream::operator<<(v46, "emergency registration is disabled in Limited Access mode");
            (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            goto LABEL_61;
          }
        }
      }

      if ((SipRegistrationConfig::isValid((this + 360)) & 1) == 0)
      {
        v42 = (*(*v2 + 64))(v2);
        (*(*v2 + 16))(v2, v42);
        v38 = ImsOutStream::operator<<(v42, "emergency registration credentials are invalid");
        (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        goto LABEL_61;
      }

      v36 = SipStack::prefs(v33);
      if (!ImsPrefs::AlwaysEmergencyRegister(v36) && SipStack::registered(v33))
      {
        v37 = (*(*v2 + 64))(v2);
        (*(*v2 + 16))(v2, v37);
        v38 = ImsOutStream::operator<<(v37, "already emergency registered. Not re-registering.");
        (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_61:
        v41 = (v38 + 17);
        goto LABEL_62;
      }

      v43 = (*(*v2 + 64))(v2);
      (*(*v2 + 16))(v2, v43);
      v44 = ImsOutStream::operator<<(v43, "attempting emergency registration");
      (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v44[17] = 0;
      SipStack::startRegistration(v33, (this + 360));
    }

    else
    {
      v39 = (*(*v2 + 64))(v2);
      (*(*v2 + 16))(v2, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Emergency registration not required when using normal stack", 59);
      *(v39 + 17) = 0;
      (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v39 + 17) = 0;
      *(this + 249) = 0;
      BambiEmergencyCallHandler::checkConditions(this);
    }
  }

LABEL_63:

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
}

void sub_1E4CC3E2C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::deferCancelPendingEmergencyCall(void *a1, int a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN25BambiEmergencyCallHandler31deferCancelPendingEmergencyCallEN3ims16DisconnectReason10ReasonCodeE_block_invoke;
  v8[3] = &__block_descriptor_tmp_59;
  v8[4] = a1;
  v9 = a2;
  v3 = a1[25];
  if (!v3 || (v4 = a1[24], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = a1[26];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI25BambiEmergencyCallHandlerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EC3D68;
  block[5] = v4;
  v11 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v8;
  dispatch_async(v7, block);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void BambiEmergencyCallHandler::currentProxies(BambiEmergencyCallHandler *this, uint64_t a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v2 = *(a2 + 5408);
  if (*(a2 + 5416) != v2)
  {
    v4 = *(a2 + 5432);
    v5 = (v2 + 8 * (v4 >> 4));
    v6 = (*v5 + 408 * (v4 & 0xF));
    v7 = *(v2 + (((*(a2 + 5440) + v4) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * ((*(a2 + 5440) + v4) & 0xF);
    if (v6 != v7)
    {
      v9 = 0;
      do
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        SipUri::SipUri(v11, v6);
        if (v9 >= *(a2 + 5392))
        {
          std::deque<SipUri>::push_back(this, v11);
        }

        SipUri::~SipUri(v11);
        v6 = (v6 + 408);
        if ((v6 - *v5) == 6528)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }

        ++v9;
      }

      while (v6 != v7);
    }
  }
}

void sub_1E4CC40D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SipUri::~SipUri(&a9);
  std::deque<SipUri>::~deque[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::tryNextProxy(BambiEmergencyCallHandler *this@<X0>, uint64_t a2@<X8>)
{
  ++*(this + 1348);
  v4 = *(this + 30);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || ((v6 = *(this + 29), *(this + 680) > *(this + 1348)) ? (v7 = v6 == 0) : (v7 = 1), v7 || (v8 = SipStack::prefs(v6), !ImsPrefs::EmergencyAnonymousAutomaticRedial(v8))))
  {
LABEL_10:
    BambiEmergencyCallHandler::deferCancelPendingEmergencyCall(this, 18);
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741834;
    if (!v5)
    {
      return;
    }

    goto LABEL_11;
  }

  v9 = (*(*(this + 4) + 64))(this + 32);
  (*(*(this + 4) + 16))(this + 32, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "will try next proxy in list: ", 29);
  *(v9 + 17) = 0;
  BambiEmergencyCallHandler::currentProxies(v11, this);
  v10 = *(v11[1] + ((v12 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * (v12 & 0xF);
  (*(*v10 + 40))(v10, v9);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  std::deque<SipUri>::~deque[abi:ne200100](v11);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0;
LABEL_11:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void std::deque<SipUri>::push_back(void *a1, SipUri *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 2 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<SipUri>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 408 * (v7 & 0xF));
  }

  SipUri::SipUri(v8, a2);
  ++a1[5];
}

uint64_t BambiEmergencyCallHandler::redialAnonymously@<X0>(BambiEmergencyCallHandler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  BambiEmergencyCallHandler::tryNextProxy(this, a2);
  result = (*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16));
  if ((result & 1) == 0)
  {
    *(this + 252) = 1;
  }

  return result;
}

void BambiEmergencyCallHandler::prepareCall(BambiEmergencyCallHandler *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*(*a2 + 552))
  {
    if (*(this + 252) != 1)
    {
      BambiEmergencyCallHandler::resetConditions(this);
      *(this + 5240) = 1;
      v14 = *a2;
      v13 = a2[1];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(this + 34);
      *(this + 33) = v14;
      *(this + 34) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      *(this + 251) = 1;
      v16 = *(*a2 + 552);
      std::string::operator=((this + 280), v16);
      std::string::operator=((this + 304), v16 + 1);
      std::string::operator=((this + 328), v16 + 2);
      *(this + 352) = v16[3].__r_.__value_.__s.__data_[0];
      SipRegistrationConfig::operator=(this + 360, &v16[3].__r_.__value_.__l.__size_);
      SipStackConfig::operator=(this + 2032, &v16[73]);
    }

    *(this + 5240) = 1;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(this + 34);
    *(this + 33) = v5;
    *(this + 34) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    *(this + 251) = 1;
    v9 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "preparing anonymous redial emergency call ", 42);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, *(this + 33) + 504);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    BambiEmergencyCallHandler::dialAnonymousCall(this);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17[0] = &unk_1F5EBDEF8;
    v17[1] = &_bambiDomain;
    v18 = 1073741825;
    v10 = ImsResult::operator<<<char [40]>(v17, "Emergency call has no emergency options");
    v11 = ImsLogContainer::logResult(this + 32, v10);
    ImsResult::ImsResult(a3, v11);
    ImsResult::~ImsResult(v17);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4CC4C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  std::__shared_weak_count::__release_weak(v12);
  std::__shared_weak_count::__release_weak(v12);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::dialAnonymousCall(BambiEmergencyCallHandler *this)
{
  if (*(BambiEmergencyCallHandler::config(this) + 2))
  {
    v2 = *(this + 30);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(this + 29);
        if (v4)
        {
          v5 = SipStack::prefs(*(this + 29));
          if (ImsPrefs::UseNormalIdentityForEmergencyCalls(v5))
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            SipStack::carrierIdentifier(v4, &__p);
            ImsPrefsManager::subscribers(&__p.__r_.__value_.__l.__data_, &v33);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            IPTelephonyManager::getBambiClient(&__p);
            BambiClient::sipStacks(__p.__r_.__value_.__l.__data_, &v30);
            if (__p.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
            }

            v6 = v30;
            v7 = v31;
            if (v30 != v31)
            {
              v8 = this + 32;
              do
              {
                v9 = *v6;
                if (*(*v6 + 4455) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
                }

                else
                {
                  __p = *(v9 + 4432);
                }

                v10 = std::__tree<std::string>::__count_unique<std::string>(&v33, &__p.__r_.__value_.__l.__data_);
                v11 = v10;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  if (v11)
                  {
LABEL_19:
                    if ((*(*v6 + 296) & 1) == 0)
                    {
                      v12 = *(*v6 + 248);
                      v14 = *(v12 + 336);
                      v13 = *(v12 + 344);
                      if (v13)
                      {
                        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
                        v15 = *(v14 + 712);
                        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                      }

                      else
                      {
                        v15 = *(v14 + 712);
                      }

                      if (v15 == 2)
                      {
                        v16 = *(*v6 + 248);
                        v17 = *(*v6 + 256);
                        if (v17)
                        {
                          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        v18 = SipUserAgent::publicUri(v16);
                        if (v17)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                        }

                        if (SipUri::isValidUri(v18) && !SipUri::isAnonymousUri(v18))
                        {
                          v23 = (*(*v8 + 64))(this + 32);
                          (*(*v8 + 16))(this + 32, v23);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "copying preferred URI ", 22);
                          *(v23 + 17) = 0;
                          (*(*v18 + 40))(v18, v23);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), " from non-emergency UA", 22);
                          *(v23 + 17) = 0;
                          (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                          *(v23 + 17) = 0;
                          __p.__r_.__value_.__r.__words[0] = &unk_1F5EF5460;
                          *&__p.__r_.__value_.__r.__words[1] = 0u;
                          v28 = 0u;
                          v29 = 0u;
                          v25[0] = 0;
                          v25[1] = 0;
                          v24[0] = &unk_1F5EBEF50;
                          v24[1] = v25;
                          v26 = 256;
                          SipRouteSet::addHop(&__p, v18, 0, 0, v24);
                        }

                        v19 = (*(*v8 + 64))(this + 32);
                        (*(*v8 + 16))(this + 32, v19);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "non-emergency stack ", 20);
                        *(v19 + 17) = 0;
                        v20 = *v6;
                        if (*(*v6 + 4455) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, *(v20 + 4432), *(v20 + 4440));
                        }

                        else
                        {
                          __p = *(v20 + 4432);
                        }

                        (*(*v19 + 32))(v19, &__p);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " doesn't have a valid public URI", 32);
                        *(v19 + 17) = 0;
                        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v19 + 17) = 0;
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }
                      }
                    }
                  }
                }

                else if (v10)
                {
                  goto LABEL_19;
                }

                v6 += 2;
              }

              while (v6 != v7);
            }

            __p.__r_.__value_.__r.__words[0] = &v30;
            std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
            std::__tree<std::string>::destroy(&v33, v34);
          }
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (*(this + 45) != *(this + 46))
    {
      *(this + 250) = 0;
      BambiEmergencyCallHandler::initializeTransportForAnonymousCall(this);
      if (!v3)
      {
        return;
      }

      goto LABEL_43;
    }

    v22 = (*(*(this + 4) + 56))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "no proxy specified in emergency call options.  Unable to attempt anonymous emergency call.", 90);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    BambiEmergencyCallHandler::deferCancelPendingEmergencyCall(this, 36);
    if (v3)
    {
LABEL_43:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v21 = (*(*(this + 4) + 48))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "anonymous emergency calls are not allowed, and we aren't able to register. Canceling emergency call.", 100);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;

    BambiEmergencyCallHandler::deferCancelPendingEmergencyCall(this, 18);
  }
}

void sub_1E4CC53A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  SipRouteSet::~SipRouteSet(&__p);
  __p = &a25;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::string>::destroy(v27 - 112, *(v27 - 104));
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::transportInitializedToProxy(BambiEmergencyCallHandler *this, const SipUri *a2, const ImsResult *a3)
{
  v5 = (*(**(a3 + 1) + 24))(*(a3 + 1), *(a3 + 4));
  v6 = (*(*(this + 4) + 64))(this + 32);
  (*(*(this + 4) + 16))(this + 32, v6);
  v7 = *(v6 + 8);
  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "emergency transport initialization failed: ", 43);
    *(v6 + 17) = 0;
    (*(*a3 + 16))(a3, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    BambiEmergencyCallHandler::tryNextProxy(this, v8);
    ImsResult::~ImsResult(v8);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "emergency transport initialization succeeded", 44);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    *(this + 249) = 0;

    BambiEmergencyCallHandler::checkConditions(this);
  }
}

void BambiEmergencyCallHandler::clearLocation(BambiEmergencyCallHandler *this)
{
  v2 = this + 4096;
  v3 = *(this + 682);
  v4 = 0uLL;
  *(this + 5448) = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v4 = 0uLL;
  }

  *(this + 329) = v4;
  *(this + 328) = v4;
  *(this + 330) = xmmword_1E5167160;
  v5 = (this + 5296);
  if (v2[1223] < 0)
  {
    operator delete(*v5);
  }

  v6 = (this + 5320);
  *v5 = 0;
  *(this + 663) = 0;
  *(this + 664) = 0;
  if (v2[1247] < 0)
  {
    operator delete(*v6);
  }

  v7 = this + 5344;
  *v6 = 0;
  *(this + 666) = 0;
  *(this + 667) = 0;
  if (v2[1271] < 0)
  {
    operator delete(*v7);
  }

  v8 = this + 5368;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  if (v2[1295] < 0)
  {
    operator delete(*v8);
  }

  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
}

void BambiEmergencyCallHandler::createLocation(SipStack **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v7 = SipStack::prefs(v5);
    v8 = ImsPrefs::AlwaysAddGeolocationForEmergencyCalls(v7);
    v9 = *a1;
    if (v8)
    {
      if (*(v9 + 2816) == 1)
      {
        v10 = SipStack::prefs(v9);
        v11 = ImsPrefs::AllowGeolocationForEmergencyCallsWhileInboundRoaming(v10);
        v9 = *a1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = SipStack::prefs(v9);
    if (ImsPrefs::EmergencyLocationLookupRequired(v12))
    {
      if ((v13 = *a1, (*(*a1 + 296) & 1) == 0) && *(v13 + 2816) != 1 || ims::AccessNetwork::isWifi((v13 + 3432)) || v11)
      {
        v14 = std::string::basic_string[abi:ne200100]<0>(v38, "location");
        v34[0] = 0;
        v37 = 0;
        v15 = ims::debug(v14, v34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Location lookup is enabled (roaming= ", 37);
        *(v15 + 17) = 0;
        if (*(*a1 + 2816))
        {
          v16 = "true";
        }

        else
        {
          v16 = "false";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v16);
        (*(*v15 + 32))(v15, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ")", 1);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        if (v37 == 1 && v36 < 0)
        {
          operator delete(v35);
        }

        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        v17 = a2[1];
        v30 = *a2;
        v31 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *a1;
        v19 = a1[1];
        v28 = *a1;
        v29 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
          v18 = *a1;
        }

        v20 = SipStack::prefs(v18);
        ImsPrefs::SendEmergencyLocationUpdates(v20);
        ImsLocationSelector::create();
      }
    }

    v21 = std::string::basic_string[abi:ne200100]<0>(v38, "location");
    v24[0] = 0;
    v27 = 0;
    v22 = ims::debug(v21, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Location lookup is NOT enabled (roaming= ", 41);
    *(v22 + 17) = 0;
    if (*(*a1 + 2816))
    {
      v23 = "true";
    }

    else
    {
      v23 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v23);
    (*(*v22 + 32))(v22, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), ")", 1);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1E4CC5AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a38 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 33) < 0)
  {
    operator delete(*(v38 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiEmergencyCallHandler::preferredLocationTimeout(SipStack **a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 8;
  }

  v3 = SipStack::prefs(v2);
  v4 = ImsPrefs::FastEmergencyLocationEnabled(v3);
  v5 = *a1;
  if (v4 && ims::AccessNetwork::isLTE((v5 + 3432)))
  {
    v6 = SipStack::prefs(v5);
    LODWORD(result) = ImsPrefs::FastEmergencyLocationTimeoutSeconds(v6);
  }

  else
  {
    v8 = SipStack::prefs(v5);
    LODWORD(result) = ImsPrefs::EmergencyLocationLookupTimeoutSeconds(v8);
  }

  if (result)
  {
    return result;
  }

  else
  {
    return 8;
  }
}

void BambiEmergencyCallHandler::handleLocationUpdate(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 32;
  v5 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handleLocationUpdate(", 21);
  *(v5 + 17) = 0;
  if (*(a2 + 5) <= 0.0)
  {
    v6 = "false";
  }

  else
  {
    v6 = "true";
  }

  std::string::basic_string[abi:ne200100]<0>(v59, v6);
  (*(*v5 + 32))(v5, v59);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ")", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v7 = *(a1 + 256);
  if (*(a2 + 5) <= 0.0)
  {
    if (v7 != 4)
    {
      if (v7 != 1)
      {
        return;
      }

      v12 = (*(*(a1 + 32) + 64))(v4);
      (*(*(a1 + 32) + 16))(v4, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Initial location not available ", 31);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      v13 = *(a1 + 264);
      if (v13)
      {
        memset(v22, 0, sizeof(v22));
        v23 = 0x40A7700000000000;
        *v24 = 0u;
        v25 = 0u;
        *v26 = 0u;
        *v27 = 0u;
        v28 = 0u;
        *__p = 0u;
        v30 = 0;
        BambiCall::setEmergencyLocationInfo(v13, v22);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27[1]);
        }

        if (SHIBYTE(v27[0]) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24[1]);
        }
      }

      *(a1 + 256) = 3;
      goto LABEL_31;
    }

    v14 = (*(*v4 + 56))(v4);
    (*(*v4 + 16))(v4, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "We don't have a location to send in UPDATE", 42);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
  }

  else
  {
    switch(v7)
    {
      case 4:
        v20 = (*(*(a1 + 32) + 64))(v4);
        (*(*(a1 + 32) + 16))(v4, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Update location available ", 26);
        *(v20 + 17) = 0;
        MEMORY[0x1E6923330](*(v20 + 8), *a2);
        *(v20 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ", ", 2);
        *(v20 + 17) = 0;
        MEMORY[0x1E6923330](*(v20 + 8), *(a2 + 1));
        *(v20 + 17) = 0;
        (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v20 + 17) = 0;
        v21 = *(a1 + 264);
        if (v21)
        {
          ims::LocationInfo::LocationInfo(v31, a2);
          BambiCall::sendEmergencyLocationUpdate(v21, v31, v40);
          ImsResult::~ImsResult(v40);
          if (v39 < 0)
          {
            operator delete(v38);
          }

          if (v37 < 0)
          {
            operator delete(v36);
          }

          if (v35 < 0)
          {
            operator delete(v34);
          }

          if (v33 < 0)
          {
            v19 = v32;
            goto LABEL_51;
          }
        }

        break;
      case 2:
        v15 = (*(*(a1 + 32) + 64))(v4);
        (*(*(a1 + 32) + 16))(v4, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Updated initial location available ", 35);
        *(v15 + 17) = 0;
        MEMORY[0x1E6923330](*(v15 + 8), *a2);
        *(v15 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), ", ", 2);
        *(v15 + 17) = 0;
        MEMORY[0x1E6923330](*(v15 + 8), *(a2 + 1));
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
        v16 = *a2;
        v17 = a2[1];
        *(a1 + 5280) = a2[2];
        *(a1 + 5264) = v17;
        *(a1 + 5248) = v16;
        std::string::operator=((a1 + 5296), a2 + 2);
        std::string::operator=((a1 + 5320), a2 + 3);
        std::string::operator=((a1 + 5344), a2 + 4);
        std::string::operator=((a1 + 5368), a2 + 5);
        v18 = *(a1 + 264);
        if (v18)
        {
          ims::LocationInfo::LocationInfo(v41, (a1 + 5248));
          BambiCall::setEmergencyLocationInfo(v18, v41);
          if (v49 < 0)
          {
            operator delete(v48);
          }

          if (v47 < 0)
          {
            operator delete(v46);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          if (v43 < 0)
          {
            v19 = v42;
LABEL_51:
            operator delete(v19);
          }
        }

        break;
      case 1:
        v8 = (*(*(a1 + 32) + 64))(v4);
        (*(*(a1 + 32) + 16))(v4, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Initial location available ", 27);
        *(v8 + 17) = 0;
        MEMORY[0x1E6923330](*(v8 + 8), *a2);
        *(v8 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", ", 2);
        *(v8 + 17) = 0;
        MEMORY[0x1E6923330](*(v8 + 8), *(a2 + 1));
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        *(a1 + 256) = 2;
        v9 = *a2;
        v10 = a2[1];
        *(a1 + 5280) = a2[2];
        *(a1 + 5264) = v10;
        *(a1 + 5248) = v9;
        std::string::operator=((a1 + 5296), a2 + 2);
        std::string::operator=((a1 + 5320), a2 + 3);
        std::string::operator=((a1 + 5344), a2 + 4);
        std::string::operator=((a1 + 5368), a2 + 5);
        v11 = *(a1 + 264);
        if (v11)
        {
          ims::LocationInfo::LocationInfo(v50, (a1 + 5248));
          BambiCall::setEmergencyLocationInfo(v11, v50);
          if (v58 < 0)
          {
            operator delete(v57);
          }

          if (v56 < 0)
          {
            operator delete(v55);
          }

          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }
        }

LABEL_31:
        BambiEmergencyCallHandler::checkConditions(a1);
        return;
      default:
        return;
    }
  }
}

std::string *BambiCall::setEmergencyLocationInfo(uint64_t a1, const std::string *a2)
{
  v4 = *&a2->__r_.__value_.__l.__data_;
  v5 = *&a2[1].__r_.__value_.__r.__words[1];
  *(a1 + 576) = *&a2->__r_.__value_.__r.__words[2];
  *(a1 + 592) = v5;
  *(a1 + 560) = v4;
  std::string::operator=((a1 + 608), a2 + 2);
  std::string::operator=((a1 + 632), a2 + 3);
  std::string::operator=((a1 + 656), a2 + 4);

  return std::string::operator=((a1 + 680), a2 + 5);
}

void BambiEmergencyCallHandler::endEmergencyCallWithReason(uint64_t a1, int a2)
{
  v5 = *(a1 + 264);
  v4 = *(a1 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 272);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
  }

  *(a1 + 251) = 0;
  bzero(v7, 0x250uLL);
  BambiCallSessionTerminationBaseEvent::BambiCallSessionTerminationBaseEvent(v7, 15, a2);
  v7[0] = &unk_1F5EC4038;
  (*(*v5 + 32))(v5, v7);
  BambiCall::handleInitializationFailure(v5);
  BambiEmergencyCallHandler::startEmergencyCallBackMode(a1);
  BambiCallSessionTerminationBaseEvent::~BambiCallSessionTerminationBaseEvent(v7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E4CC65C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiEmergencyCallHandler::startEmergencyCallBackMode(BambiEmergencyCallHandler *this)
{
  v19 = *MEMORY[0x1E69E9840];
  SipTimerContainer::cancelAllTimers((this + 5072));
  BambiEmergencyCallHandler::clearLocation(this);
  v2 = *(this + 33);
  if (v2)
  {
    v3 = *(v2 + 552);
    if (v3)
    {
      if (*(v3 + 4776) == 1)
      {
        v5 = *(this + 4);
        v4 = this + 32;
        v6 = (*(v5 + 64))(v4);
        (*(*v4 + 16))(v4, v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Skip ECBM for suspicious emergency call", 39);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
LABEL_16:
        v18 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  v7 = *(this + 30);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(this + 29);
      if (v10)
      {
        v11 = SipStack::prefs(v10);
        v12 = ImsPrefs::EmergencyCallBackModeExpirationSeconds(v11);
        if (v12)
        {
          v13 = *(this + 25);
          if (v13)
          {
            v14 = *(this + 24);
            v15 = std::__shared_weak_count::lock(v13);
            if (v15)
            {
              p_shared_weak_owners = &v15->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              *(this + 633) = time(0) + v12;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      BambiEmergencyCallHandler::deferExitEmergencyState(this);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_16;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  BambiEmergencyCallHandler::deferExitEmergencyState(this);
}

void sub_1E4CC6918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::handleCallEvent(BambiEmergencyCallHandler *this, BambiCallEvent *a2)
{
  if (*(a2 + 2) == 9)
  {
    v3 = (this + 32);
    v4 = (*(*(this + 4) + 64))(this + 32);
    (*(*v3 + 16))(v3, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Call confirmed", 14);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    v5 = v3[26];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 29);
        if (v8)
        {
          v9 = SipStack::prefs(v8);
          if (ImsPrefs::SendEmergencyLocationUpdates(v9) && *(this + 681) && *(this + 64))
          {
            *(this + 64) = 4;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void BambiEmergencyCallHandler::handleCallInvalidated(BambiEmergencyCallHandler *this, void *a2)
{
  if ((*(this + 252) & 1) == 0)
  {
    if (*a2 == *(this + 33))
    {
      *(this + 251) = 0;
      v5 = *(this + 34);
      *(this + 33) = 0;
      *(this + 34) = 0;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      BambiEmergencyCallHandler::startEmergencyCallBackMode(this);
    }

    else
    {
      v3 = this + 32;
      v4 = (*(*(this + 4) + 64))(this + 32);
      (*(*v3 + 16))(v3, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "cannot invalidate non-emergency call", 36);
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
    }
  }
}

void BambiEmergencyCallHandler::handleTimer(BambiEmergencyCallHandler *this, const void **a2)
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

  if (v5 != 9)
  {
    goto LABEL_11;
  }

  v6 = *a2;
  if (v4 >= 0)
  {
    v6 = a2;
  }

  v7 = *v6;
  v8 = v6[8];
  if (v7 != 0x656D69544D424345 || v8 != 114)
  {
LABEL_11:
    v10 = qword_1EE2BBEA0;
    if (byte_1EE2BBEAF >= 0)
    {
      v10 = byte_1EE2BBEAF;
    }

    if (v5 != v10 || (v4 >= 0 ? (v11 = a2) : (v11 = *a2), byte_1EE2BBEAF >= 0 ? (v12 = &kEmergencyCallSetupTimer) : (v12 = kEmergencyCallSetupTimer), memcmp(v11, v12, v5)))
    {
      v13 = qword_1EE2BD530;
      if (byte_1EE2BD53F >= 0)
      {
        v13 = byte_1EE2BD53F;
      }

      if (v5 == v13)
      {
        v14 = v4 >= 0 ? a2 : *a2;
        v15 = byte_1EE2BD53F >= 0 ? &kEmergencySessionSetupTimer : kEmergencySessionSetupTimer;
        if (!memcmp(v14, v15, v5))
        {
          v20 = *(this + 33);
          if (v20)
          {
            if (*(this + 251) == 1)
            {

              BambiEmergencyCallHandler::endEmergencyCallWithReason(this, 23);
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "EmergencySetupTimeout");
              BambiCall::endWithReason(v20, v26);
              ImsResult::~ImsResult(v26);
              if (v25 < 0)
              {
                operator delete(__p);
              }
            }
          }

          else
          {
            v22 = *(this + 4);
            v21 = this + 32;
            v23 = (*(v22 + 64))(v21);
            (*(*v21 + 16))(v21, v23);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "No emergency call to terminate.", 31);
            *(v23 + 17) = 0;
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
          }
        }
      }

      return;
    }

    v16 = *(this + 30);
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        v18 = *(this + 29);
        if (v18)
        {
          v19 = SipStack::prefs(v18);
          if (ImsPrefs::EmergencyAnonymousAutomaticRedial(v19))
          {
            BambiEmergencyCallHandler::dialAnonymousCall(this);
LABEL_47:

            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            return;
          }
        }
      }
    }

    else
    {
      v17 = 0;
    }

    BambiEmergencyCallHandler::cancelPendingEmergencyCall(this, 18);
    if (!v17)
    {
      return;
    }

    goto LABEL_47;
  }

  *(this + 633) = 0;

  BambiEmergencyCallHandler::exitEmergencyState(this);
}

void sub_1E4CC6ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiEmergencyCallHandler::deferExitEmergencyState(BambiEmergencyCallHandler *this)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN25BambiEmergencyCallHandler23deferExitEmergencyStateEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_66;
  v7[4] = this;
  v2 = *(this + 25);
  if (!v2 || (v3 = *(this + 24), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 26);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI25BambiEmergencyCallHandlerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EC3D68;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void BambiEmergencyCallHandler::checkTimers(int8x8_t *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (this[633])
  {
    SipTimerContainer::cancelTimer(this + 634, "ECBMTimer");
    if (*&this[633] > time(0) + 4)
    {
      v2 = this[25];
      if (v2)
      {
        v3 = this[24];
        v4 = std::__shared_weak_count::lock(v2);
        if (v4)
        {
          p_shared_weak_owners = &v4->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = (*(*&this[4] + 64))(this + 4);
    (*(*&this[4] + 16))(this + 4, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ". Exiting emergency state now.", 30);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    this[633] = 0;
    v8 = *MEMORY[0x1E69E9840];

    BambiEmergencyCallHandler::exitEmergencyState(this);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E4CC7308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_weak(v2);
  std::__shared_weak_count::__release_weak(v2);
  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::handleInfoRequest(void *a1, uint64_t *a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), "Info-Package");
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v60 = 0;
  v61 = 0;
  v62 = 0;
  v6 = a1[30];
  if (!v6)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7 || (v8 = a1[29]) == 0 || (v9 = SipStack::prefs(v8), ImsPrefs::SupportsCurrentLocationDiscovery(v9)))
  {
LABEL_10:
    if (v5)
    {
      (*(*v5 + 40))(v5, &v60);
      if (SHIBYTE(v62) < 0 && v61 == 33 && !memcmp(v60, "g.3gpp.current-location-discovery", 0x21uLL))
      {
        v18 = SipMessage::bodyWithContentType(*a2, &SipLocationDiscoveryBody::kContentType);
        if (v18)
        {
          v19 = **v18;
          if (v20)
          {
            if ((v20[96] & 1) == 0)
            {
              v21 = (*(a1[4] + 48))(a1 + 4);
              (*(a1[4] + 16))(a1 + 4, v21);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Location discovery XML body found, but without oneShot directive.  Assuming oneShot.", 84);
              *(v21 + 17) = 0;
              (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v21 + 17) = 0;
            }

            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v53 = 0u;
            memset(v52, 0, sizeof(v52));
            ims::LocationInfo::LocationInfo(v52, (a1 + 656));
            v22 = a1[33];
            if (v22)
            {
              v23 = *(v22 + 408);
              if (v23)
              {
                if (SipSession::confirmed(v23))
                {
                  if (*(&v53 + 1) <= 0.0)
                  {
                    v29 = (*(a1[4] + 56))(a1 + 4, *(&v53 + 1));
                    (*(a1[4] + 16))(a1 + 4, v29);
                    v30 = ImsOutStream::operator<<(v29, "We don't have a location to send in PUBLISH");
                    (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    v30[17] = 0;
                    v31 = a1[33];
                    memset(v40, 0, sizeof(v40));
                    v41 = 0x40A7700000000000;
                    v42 = 0u;
                    v43 = 0u;
                    v44 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    v47 = 0u;
                    v25 = v49;
                    v48 = 0;
                    BambiCall::sendEmergencyLocationPublish(v31, v40, v49);
                    v26 = v40;
                  }

                  else
                  {
                    v24 = a1[33];
                    ims::LocationInfo::LocationInfo(v50, v52);
                    v25 = v51;
                    BambiCall::sendEmergencyLocationPublish(v24, v50, v51);
                    v26 = v50;
                  }

                  v32 = v26 + 143;
                  v33 = v26 + 119;
                  v34 = v26 + 95;
                  v35 = v26 + 71;
                  v36 = (v26 + 48);
                  v37 = (v26 + 72);
                  v38 = (v26 + 96);
                  v39 = (v26 + 120);
                  ImsResult::~ImsResult(v25);
                  if (*v32 < 0)
                  {
                    operator delete(*v39);
                  }

                  if (*v33 < 0)
                  {
                    operator delete(*v38);
                  }

                  if (*v34 < 0)
                  {
                    operator delete(*v37);
                  }

                  if (*v35 < 0)
                  {
                    operator delete(*v36);
                  }
                }
              }
            }

            if (SHIBYTE(v59) < 0)
            {
              operator delete(*(&v58 + 1));
            }

            if (SBYTE7(v58) < 0)
            {
              operator delete(v57);
            }

            if (SHIBYTE(v56) < 0)
            {
              operator delete(*(&v55 + 1));
            }

            if (SBYTE7(v55) < 0)
            {
              operator delete(v54);
            }

LABEL_17:
            if (!v7)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        v28 = a1[4];
        v27 = a1 + 4;
        v15 = (*(v28 + 64))(v27);
        (*(*v27 + 16))(v27, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Ignoring INFO request without location discovery body", 53);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        v14 = a1[4];
        v13 = a1 + 4;
        v15 = (*(v14 + 64))(v13);
        (*(*v13 + 16))(v13, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Ignoring INFO request without valid location discovery Info-Package header", 74);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }
    }

    else
    {
      v17 = a1[4];
      v16 = a1 + 4;
      v15 = (*(v17 + 64))(v16);
      (*(*v16 + 16))(v16, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Ignoring INFO request without valid location discovery Info-Package header", 74);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *(v15 + 17) = 0;
    goto LABEL_17;
  }

  v11 = a1[4];
  v10 = a1 + 4;
  v12 = (*(v11 + 64))(v10);
  (*(*v10 + 16))(v10, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Ignoring INFO request without location discovery enabled", 56);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_19:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v60);
  }
}

void sub_1E4CC7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ims::LocationInfo::~LocationInfo(&a9);
  ims::LocationInfo::~LocationInfo((v10 - 256));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(v10 - 89) < 0)
  {
    operator delete(*(v10 - 112));
  }

  _Unwind_Resume(a1);
}

void BambiEmergencyCallHandler::logPrefix(BambiEmergencyCallHandler *this, ImsOutStream *a2)
{
  (*(*this + 120))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4CC7B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiEmergencyCallOptions::BambiEmergencyCallOptions(BambiEmergencyCallOptions *this)
{
  *(this + 57) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  SipRegistrationConfig::SipRegistrationConfig((this + 80));
  SipStackConfig::SipStackConfig((this + 1752));
  SipUri::SipUri((this + 4344));
  *(this + 596) = 0;
  *(this + 297) = 0u;
  *(this + 4776) = 0;
}

void sub_1E4CC7C18(_Unwind_Exception *a1)
{
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

void SipStackConfig::SipStackConfig(SipStackConfig *this)
{
  SipUserAgentConfig::SipUserAgentConfig(this);
  *(v2 + 1416) = 0;
  *(v2 + 1400) = 0u;
  SipUri::SipUri((v2 + 1424));
  *(this + 459) = 0x10000;
  *(this + 458) = 331617220;
  *(this + 920) = 1;
  *(this + 1842) = 0;
  *(this + 461) = 1800;
  *(this + 1848) = 0u;
  *(this + 466) = 300;
  *(this + 234) = 0;
  *(this + 1880) = 0u;
  *(this + 237) = 0x100000005;
  *(this + 476) = 0;
  *(this + 239) = 0;
  *(this + 120) = 0u;
  *(this + 968) = 1;
  *(this + 1938) = 0;
  *(this + 485) = 0;
  *(this + 243) = &unk_1F5EE5038;
  *(this + 1960) = 0u;
  *(this + 244) = this + 1960;
  *(this + 494) = 30;
  *(this + 990) = 256;
  *(this + 1982) = 0;
  *(this + 496) = 0;
  *(this + 994) = 256;
  *(this + 1990) = 0;
  *(this + 498) = 0;
  *(this + 1995) = 0;
  *(this + 125) = xmmword_1E5167170;
  *(this + 126) = xmmword_1E5167180;
  *(this + 508) = 0;
  *(this + 510) = 5000;
  *(this + 2044) = -1;
  *(this + 512) = 2;
  *(this + 516) = 0;
  *(this + 130) = 0u;
  *(this + 131) = 0u;
  *(this + 132) = 0u;
  *(this + 2183) = 0u;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
  *(this + 2136) = 0u;
  *(this + 2095) = 13;
  qmemcpy(this + 2072, "Internal", 8);
  *(this + 2124) = 0xA000001F4;
  *(this + 138) = 0u;
  *(this + 275) = this + 2208;
  *(this + 257) = &unk_1F5EEAC18;
  *(this + 558) = 0;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 2280) = 0u;
  *(this + 144) = 0u;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 2351) = 0u;
  *(this + 2263) = 13;
  qmemcpy(this + 2240, "Internal", 8);
  *(this + 2292) = 0xA000001F4;
  *(this + 2376) = 0u;
  *(this + 296) = this + 2376;
  *(this + 278) = &unk_1F5EEAC58;
  *(this + 150) = 0u;
  *(this + 299) = this + 2400;
  *(this + 151) = 0u;
  *(this + 304) = 0;
  *(this + 610) = 3;
  *(this + 2444) = 1;
  *(this + 154) = 0u;
  *(this + 2445) = 0;
  *(this + 307) = this + 2464;
  *(this + 1240) = 0;
  *(this + 621) = 0;
  *(this + 1244) = 0;
  *(this + 318) = 0;
  *(this + 158) = 0u;
  *(this + 2519) = 0;
  *(this + 314) = 0;
  *(this + 156) = 0u;
  *(this + 2552) = 1;
  *(this + 2584) = 0;
  *(this + 322) = 0;
  *(this + 160) = 0u;
}

void sub_1E4CC7F0C(_Unwind_Exception *a1)
{
  if (v1[1423] < 0)
  {
    operator delete(*v2);
  }

  SipUserAgentConfig::~SipUserAgentConfig(v1);
  _Unwind_Resume(a1);
}

void SipUserAgentConfig::SipUserAgentConfig(SipUserAgentConfig *this)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 41) = 1;
  SipUri::SipUri((this + 48));
  *(this + 456) = 1;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  SipTimers::SipTimers((this + 512));
  *(this + 136) = 16842752;
  *(this + 548) = 0;
  *(this + 69) = &unk_1F5EBEF50;
  *(this + 568) = 0u;
  *(this + 70) = this + 568;
  *(this + 292) = 256;
  *(this + 37) = xmmword_1E5167190;
  *(this + 76) = 0x100000101000101;
  *(this + 154) = 0;
  *(this + 619) = 0;
  *(this + 156) = 5000;
  *(this + 628) = 0;
  *(this + 158) = 5000;
  *(this + 82) = 0x200000000000000;
  *(this + 40) = SipPrivacyHeader::kPrivacyId;
  std::string::basic_string[abi:ne200100]<0>(this + 664, "sip-client-11111");
  *(this + 344) = 257;
  *(this + 87) = &unk_1F5EF3C38;
  *(this + 712) = 0u;
  *(this + 88) = this + 712;
  *(this + 91) = &unk_1F5EF3C38;
  *(this + 744) = 0u;
  *(this + 92) = this + 744;
  *(this + 95) = &unk_1F5EF3C38;
  *(this + 776) = 0u;
  *(this + 96) = this + 776;
  *(this + 396) = 0;
  *(this + 796) = xmmword_1E51671A0;
  *(this + 203) = 16842752;
  *(this + 816) = 0;
  *(this + 205) = 0;
  *(this + 103) = &unk_1F5EF3C38;
  *(this + 840) = 0u;
  *(this + 104) = this + 840;
  *(this + 214) = 65793;
  *(this + 215) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 864, "NONE");
  std::string::basic_string[abi:ne200100]<0>(this + 888, "NONE");
  *(this + 228) = 0x1000000;
  *(this + 458) = 0;
  *(this + 918) = 1;
  *(this + 919) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 928, "");
  *(this + 238) = 0;
  *(this + 478) = 0;
  *(this + 120) = 0;
  *(this + 968) = 0u;
  *(this + 246) = 1;
  *(this + 124) = &unk_1F5EF3C38;
  *(this + 63) = 0u;
  *(this + 125) = this + 1008;
  *(this + 128) = &unk_1F5EF3C38;
  *(this + 65) = 0u;
  *(this + 129) = this + 1040;
  *(this + 132) = &unk_1F5EF3C38;
  *(this + 67) = 0u;
  *(this + 133) = this + 1072;
  *(this + 136) = &unk_1F5EF3C38;
  *(this + 69) = 0u;
  *(this + 137) = this + 1104;
  *(this + 560) = 1;
  *(this + 1122) = 1;
  *(this + 281) = 15000;
  *(this + 71) = 0u;
  *(this + 141) = this + 1136;
  *(this + 73) = 0u;
  *(this + 288) = 0;
  *(this + 1156) = 0;
  *(this + 145) = this + 1168;
  *(this + 148) = &unk_1F5EF3C38;
  *(this + 75) = 0u;
  *(this + 149) = this + 1200;
  *(this + 1216) = 0;
  *(this + 77) = 0u;
  *(this + 153) = this + 1232;
  SpamCategoryMap::SpamCategoryMap((this + 1248));
  *(this + 1280) = 0;
  *(this + 1292) = 0;
  *(this + 1304) = 0;
  *(this + 164) = &unk_1F5EF3C38;
  *(this + 83) = 0u;
  *(this + 165) = this + 1328;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 86) = 0u;
}

void sub_1E4CC8360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::__tree<unsigned int>::destroy(v17 + 1224, *(v17 + 1232));
  *(v17 + 1184) = v23;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 1192, *(v17 + 1200));
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(v17 + 1160, *(v17 + 1168));
  std::__tree<std::string>::destroy(v17 + 1128, *(v17 + 1136));
  *(v17 + 1088) = v22;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 1096, *(v17 + 1104));
  *(v17 + 1056) = v21;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 1064, *(v17 + 1072));
  *(v17 + 1024) = v20;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 1032, *(v17 + 1040));
  *(v17 + 992) = v19;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 1000, *(v17 + 1008));
  if (*(v17 + 983) < 0)
  {
    operator delete(*v24);
  }

  if (*(v17 + 951) < 0)
  {
    operator delete(*v18);
  }

  if (*(v17 + 911) < 0)
  {
    operator delete(*v26);
  }

  if (*(v17 + 887) < 0)
  {
    operator delete(*v25);
  }

  *(v17 + 824) = a17;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 832, *(v17 + 840));
  *(v17 + 760) = a12;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 768, *(v17 + 776));
  *(v17 + 728) = a13;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 736, *(v17 + 744));
  *(v17 + 696) = a14;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(v17 + 704, *(v17 + 712));
  if (*(v17 + 687) < 0)
  {
    operator delete(*a11);
  }

  if (*(v17 + 663) < 0)
  {
    operator delete(*(v17 + 640));
  }

  *(v17 + 552) = a15;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v17 + 560, *(v17 + 568));
  *(v17 + 512) = &unk_1F5ED7890;
  std::__tree<std::string>::destroy(v17 + 520, *(v17 + 528));
  if (*(v17 + 511) < 0)
  {
    operator delete(*(v17 + 488));
  }

  if (*(v17 + 487) < 0)
  {
    operator delete(*(v17 + 464));
  }

  SipUri::~SipUri((v17 + 48));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<SipHeaderTemplateMap::HeaderTemplate>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<SipHeaderTemplateMap::HeaderTemplate>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SipHeaderTemplateMap::HeaderTemplate>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SipHeaderTemplateMap::HeaderTemplate>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::vector<SipSecurityAgreementConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 72;
      v7 = v4 - 72;
      v8 = v4 - 72;
      do
      {
        v9 = *v8;
        v8 -= 72;
        (*v9)(v7);
        v6 -= 72;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase(BambiCallTerminationReasonsBase *this)
{
  *this = &unk_1F5EEAC98;
  std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(this + 144, *(this + 19));
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>,ReasonCompare,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<BambiCallTerminationReason>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void SipTransportLayerConfig::~SipTransportLayerConfig(SipTransportLayerConfig *this)
{
  *(this + 68) = &unk_1F5EE5038;
  std::__tree<unsigned int>::destroy(this + 552, *(this + 70));
  v2 = (this + 512);
  std::vector<SipSecurityAgreementConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  SipUri::~SipUri((this + 24));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void SipUserAgentConfig::~SipUserAgentConfig(SipUserAgentConfig *this)
{
  v2 = (this + 1368);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1367) < 0)
  {
    operator delete(*(this + 168));
  }

  *(this + 164) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 1320, *(this + 166));
  std::__tree<std::string>::destroy(this + 1248, *(this + 157));
  std::__tree<unsigned int>::destroy(this + 1224, *(this + 154));
  *(this + 148) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 1192, *(this + 150));
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(this + 1160, *(this + 146));
  std::__tree<std::string>::destroy(this + 1128, *(this + 142));
  *(this + 136) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 1096, *(this + 138));
  *(this + 132) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 1064, *(this + 134));
  *(this + 128) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 1032, *(this + 130));
  *(this + 124) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 1000, *(this + 126));
  if (*(this + 983) < 0)
  {
    operator delete(*(this + 120));
  }

  if (*(this + 951) < 0)
  {
    operator delete(*(this + 116));
  }

  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  *(this + 103) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 832, *(this + 105));
  *(this + 95) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 768, *(this + 97));
  *(this + 91) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 736, *(this + 93));
  *(this + 87) = &unk_1F5EF3C38;
  std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::destroy(this + 704, *(this + 89));
  if (*(this + 687) < 0)
  {
    operator delete(*(this + 83));
  }

  if (*(this + 663) < 0)
  {
    operator delete(*(this + 80));
  }

  *(this + 69) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 560, *(this + 71));
  *(this + 64) = &unk_1F5ED7890;
  std::__tree<std::string>::destroy(this + 520, *(this + 66));
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  SipUri::~SipUri((this + 48));
}

void SipStackConfig::~SipStackConfig(void **this)
{
  if (*(this + 2583) < 0)
  {
    operator delete(this[320]);
  }

  v2 = this + 316;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 2519) < 0)
  {
    operator delete(this[312]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 307), this[308]);
  if (*(this + 2439) < 0)
  {
    operator delete(this[302]);
  }

  this[278] = &unk_1F5EEAC58;
  std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy((this + 299), this[300]);
  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase((this + 278));
  BambiCallTerminationReasonsBase::~BambiCallTerminationReasonsBase((this + 257));
  this[243] = &unk_1F5EE5038;
  std::__tree<unsigned int>::destroy((this + 244), this[245]);
  v2 = this + 239;
  std::vector<SipSecurityAgreementConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1895) < 0)
  {
    operator delete(this[234]);
  }

  SipUri::~SipUri((this + 178));
  if (*(this + 1423) < 0)
  {
    operator delete(this[175]);
  }

  SipUserAgentConfig::~SipUserAgentConfig(this);
}

void std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<std::shared_ptr<BambiCallTerminationReason>>>>>::destroy(a1, a2[1]);
    std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(a2 + 5);

    operator delete(a2);
  }
}

void BambiEmergencyCallOptions::~BambiEmergencyCallOptions(void **this)
{
  if (*(this + 4775) < 0)
  {
    operator delete(this[594]);
  }

  SipUri::~SipUri((this + 543));
  SipStackConfig::~SipStackConfig(this + 219);
  SipRegistrationConfig::~SipRegistrationConfig(this + 10);
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

void SipStackConfig::operator=(uint64_t a1, uint64_t a2)
{
  SipUserAgentConfig::operator=(a1, a2);
  SipTransportLayerConfig::operator=(a1 + 1400, a2 + 1400);
  v4 = *(a2 + 2048);
  *(a1 + 2040) = *(a2 + 2040);
  *(a1 + 2048) = v4;
  BambiCallTerminationReasonsBase::assign((a1 + 2056), (a2 + 2056));
  BambiCallIncomingTerminationReasons::assign((a1 + 2224), (a2 + 2224));
}

uint64_t SipUserAgentConfig::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 26) = *(a2 + 26);
  *a1 = v4;
  *(a1 + 16) = v5;
  SipUri::operator=((a1 + 48), (a2 + 3));
  *(a1 + 456) = *(a2 + 456);
  std::string::operator=((a1 + 464), (a2 + 29));
  std::string::operator=((a1 + 488), (a2 + 488));
  if (a1 == a2)
  {
    v7 = *(a2 + 136);
    *(a1 + 548) = *(a2 + 548);
    *(a1 + 544) = v7;
  }

  else
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,unsigned int>,std::__tree_node<std::__value_type<std::string,unsigned int>,void *> *,long>>((a1 + 520), *(a2 + 65), a2 + 66);
    v6 = *(a2 + 136);
    *(a1 + 548) = *(a2 + 548);
    *(a1 + 544) = v6;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a1 + 560), *(a2 + 70), a2 + 71);
  }

  *(a1 + 584) = *(a2 + 584);
  v8 = a2[37];
  v9 = a2[38];
  *(a1 + 620) = *(a2 + 620);
  *(a1 + 592) = v8;
  *(a1 + 608) = v9;
  std::string::operator=((a1 + 640), (a2 + 40));
  std::string::operator=((a1 + 664), (a2 + 664));
  *(a1 + 688) = *(a2 + 344);
  if (a1 == a2)
  {
    v11 = *(a2 + 808);
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = v11;
  }

  else
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 704), *(a2 + 88), a2 + 89);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 736), *(a2 + 92), a2 + 93);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 768), *(a2 + 96), a2 + 97);
    v10 = *(a2 + 808);
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = v10;
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 832), *(a2 + 104), a2 + 105);
  }

  *(a1 + 856) = *(a2 + 107);
  std::string::operator=((a1 + 864), a2 + 36);
  std::string::operator=((a1 + 888), a2 + 37);
  v12 = *(a2 + 919);
  *(a1 + 912) = *(a2 + 114);
  *(a1 + 919) = v12;
  std::string::operator=((a1 + 928), (a2 + 58));
  v13 = *(a2 + 478);
  *(a1 + 952) = *(a2 + 238);
  *(a1 + 956) = v13;
  std::string::operator=((a1 + 960), a2 + 40);
  *(a1 + 984) = *(a2 + 246);
  if (a1 == a2)
  {
    *(a1 + 1120) = *(a2 + 140);
    v17 = *(a2 + 1156);
    *(a1 + 1152) = *(a2 + 288);
    *(a1 + 1156) = v17;
    *(a1 + 1216) = *(a2 + 1216);
    v18 = *(a2 + 1272);
    v19 = *(a2 + 1288);
    *(a1 + 1304) = *(a2 + 1304);
    *(a1 + 1272) = v18;
    *(a1 + 1288) = v19;
    std::string::operator=((a1 + 1344), a2 + 56);
  }

  else
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1000), *(a2 + 125), a2 + 126);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1032), *(a2 + 129), a2 + 130);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1064), *(a2 + 133), a2 + 134);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1096), *(a2 + 137), a2 + 138);
    *(a1 + 1120) = *(a2 + 140);
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((a1 + 1128), *(a2 + 141), a2 + 142);
    v14 = *(a2 + 288);
    *(a1 + 1156) = *(a2 + 1156);
    *(a1 + 1152) = v14;
    std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *> *,long>>((a1 + 1160), *(a2 + 145), a2 + 146);
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1192), *(a2 + 149), a2 + 150);
    *(a1 + 1216) = *(a2 + 1216);
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>((a1 + 1224), *(a2 + 153), a2 + 154);
    std::__tree<std::__value_type<std::string,ims::SpamCategory>,std::__map_value_compare<std::string,std::__value_type<std::string,ims::SpamCategory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ims::SpamCategory>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ims::SpamCategory>,std::__tree_node<std::__value_type<std::string,ims::SpamCategory>,void *> *,long>>((a1 + 1248), *(a2 + 156), a2 + 157);
    v15 = *(a2 + 1272);
    v16 = *(a2 + 1288);
    *(a1 + 1304) = *(a2 + 1304);
    *(a1 + 1272) = v15;
    *(a1 + 1288) = v16;
    std::__tree<std::__value_type<std::string,std::set<unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<unsigned int>>,std::__tree_node<std::__value_type<std::string,std::set<unsigned int>>,void *> *,long>>((a1 + 1320), *(a2 + 165), a2 + 166);
    std::string::operator=((a1 + 1344), a2 + 56);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1368), *(a2 + 171), *(a2 + 172), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 172) - *(a2 + 171)) >> 3));
  }

  *(a1 + 1392) = *(a2 + 348);
  return a1;
}

uint64_t SipTransportLayerConfig::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  SipUri::operator=((a1 + 24), a2 + 24);
  v4 = *(a2 + 432);
  v5 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 432) = v4;
  *(a1 + 448) = v5;
  std::string::operator=((a1 + 472), (a2 + 472));
  v6 = *(a2 + 504);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = v6;
  if (a1 == a2)
  {
    *(a1 + 536) = *(a2 + 536);
    v8 = *(a2 + 576);
    *(a1 + 591) = *(a2 + 591);
    *(a1 + 576) = v8;
  }

  else
  {
    std::vector<SipSecurityAgreementConfig>::__assign_with_size[abi:ne200100]<SipSecurityAgreementConfig*,SipSecurityAgreementConfig*>(a1 + 512, *(a2 + 512), *(a2 + 520), 0x8E38E38E38E38E39 * ((*(a2 + 520) - *(a2 + 512)) >> 3));
    *(a1 + 536) = *(a2 + 536);
    std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>((a1 + 552), *(a2 + 552), (a2 + 560));
    v7 = *(a2 + 576);
    *(a1 + 591) = *(a2 + 591);
    *(a1 + 576) = v7;
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 616) = *(a2 + 616);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 632) = *(a2 + 632);
  }

  return a1;
}

uint64_t **std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v16 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<unsigned int>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::string>::__emplace_multi<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::string>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::string>::__emplace_multi<std::string const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__tree<std::string>::__construct_node<std::string const&>();
}

uint64_t **std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,std::vector<SipHeaderTemplateMap::HeaderTemplate> &>::operator=[abi:ne200100]<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>,0>(v16, (v9 + 4));
          v16[0] = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<unsigned int>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__emplace_multi<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>> const&>();
  }

  return result;
}

void sub_1E4CC96E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::vector<SipHeaderTemplateMap::HeaderTemplate> &>::operator=[abi:ne200100]<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::vector<SipHeaderTemplateMap::HeaderTemplate>::__assign_with_size[abi:ne200100]<SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*>(v4, *(a2 + 24), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

void std::vector<SipHeaderTemplateMap::HeaderTemplate>::__assign_with_size[abi:ne200100]<SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<SipHeaderTemplateMap::HeaderTemplate>::__vdeallocate(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SipHeaderTemplateMap::HeaderTemplate>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v14 = *v6;
        *(v8 + 8) = *(v6 + 2);
        *v8 = v14;
        std::string::operator=((v8 + 16), (v6 + 1));
        v8 += 40;
        v6 = (v6 + 40);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
      }

      v11 -= 40;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (a2 + v11 - v8);
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        *(v8 + 8) = *(v6 + 2);
        *v8 = v13;
        std::string::operator=((v8 + 16), (v6 + 1));
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*>(a1, v12, a3, v11);
  }
}

void std::vector<SipHeaderTemplateMap::HeaderTemplate>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<SipHeaderTemplateMap::HeaderTemplate>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<SipHeaderTemplateMap::HeaderTemplate>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipHeaderTemplateMap::HeaderTemplate>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*,SipHeaderTemplateMap::HeaderTemplate*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
    v6 = a2 + 1;
    do
    {
      v8 = v6 - 1;
      v7 = *(v6 - 2);
      *(v4 + 8) = *(v6 - 2);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 16), *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v9;
      }

      v4 += 40;
      v14 = v4;
      v6 = (v6 + 40);
    }

    while ((v8 + 40) != a3);
  }

  LOBYTE(v12) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipHeaderTemplateMap::HeaderTemplate>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__emplace_multi<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>> const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::__construct_node<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>> const&>();
}

void sub_1E4CC9C0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}