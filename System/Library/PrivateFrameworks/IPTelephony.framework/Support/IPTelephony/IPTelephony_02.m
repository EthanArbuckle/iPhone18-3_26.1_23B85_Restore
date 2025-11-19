void sub_1E4C64594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::handleTransactionError(void *a1, const ImsResult *a2, uint64_t a3)
{
  v5 = *a3;
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[52];
  if (v9 && v5 == *(v9 + 88))
  {
    memset(&v11, 0, sizeof(v11));
    memset(v10, 0, sizeof(v10));
    ImsResult::ImsResult(v10, a2);
    std::string::operator=(&v11, (a1[52] + 48));
    SipLazuliManager::generateError(a1, *(a1[52] + 16), a1[52] + 24, v10);
    ImsResult::~ImsResult(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4C64854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipLazuliManager::transactionTerminated(SipLazuliManager *a1, uint64_t a2)
{
  v3 = *a2;
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 52);
  if (v7 && v3 == *(v7 + 88))
  {
    v8 = *(a1 + 53);
    *(a1 + 52) = 0;
    *(a1 + 53) = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    SipLazuliManager::processSendQueue(a1);
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4C64960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsUuid::~ImsUuid(void **this)
{
  *this = &unk_1F5EBEE78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBEE78;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

const void **SipMessage::header<SipAcceptContactHeader>(SipMessage *a1, int a2)
{
  result = SipMessage::headerWithName(a1, "Accept-Contact", a2);
  if (result)
  {
    v3 = **result;
  }

  return result;
}

void SipParameterMap::~SipParameterMap(SipParameterMap *this)
{
  *this = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x1E69235B0);
}

void SipLazuliManager::sendMsrp(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = (a1 + 32);
  v13 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*v12 + 16))(v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SipLazuliManager::sendMsrp", 26);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v12 + 91, a2);
  if (v14)
  {
    v16 = v14[5];
    v15 = v14[6];
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "");
      MessageSession::sendMessageBlob(v16, a3, a4, a5, a6, v18);
    }
  }

  v17 = (*(*v12 + 64))(v12);
  (*(*v12 + 16))(v12, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "conversation not found, queueing: ", 34);
  *(v17 + 17) = 0;
  (*(*v17 + 32))(v17, a2);
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  v19.__r_.__value_.__r.__words[0] = a2;
  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 296, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a3, *(a3 + 8));
  }

  else
  {
    v19 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a4, *(a4 + 8));
  }

  else
  {
    v20 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  v22 = a6;
  std::list<SipLazuliManager::OutgoingMsrp>::emplace_back<SipLazuliManager::OutgoingMsrp>();
}

void sub_1E4C64DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLazuliManager::send(SipLazuliManager *this, const LazuliSendParams *a2, const SipUri *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(this + 29);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(this + 28);
      if (v8)
      {
        v10 = *(v8 + 248);
        v9 = *(v8 + 256);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          v18 = *(this + 27);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            (*(*(this + 22) + 16))(__p, this + 176);
            v52 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v52;
            _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }

          v11 = 0;
          goto LABEL_113;
        }

        v11 = *(this + 65);
        *(this + 65) = v11 + 1;
        memset(buf, 0, sizeof(buf));
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(buf, *(a2 + 18), *(a2 + 19), *(a2 + 19) - *(a2 + 18));
        v57 = v10;
        v12 = a2 + 224;
        if (*(a2 + 247) < 0)
        {
          v13 = 0;
          v19 = *(a2 + 29);
          if (v19 <= 9)
          {
            if (v19)
            {
              if (v19 != 5)
              {
                goto LABEL_61;
              }

              if (**v12 != *"kImdn" || *(*v12 + 4) != str_37_5[4])
              {
                goto LABEL_60;
              }

LABEL_31:
              v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
              if (v21)
              {
                v23 = v21[5];
                v22 = v21[6];
                if (v22)
                {
                  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
                  v13 = v23 != 0;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                  goto LABEL_61;
                }
              }

              else
              {
                v23 = 0;
              }

              v13 = v23 != 0;
LABEL_61:
              if (*(a2 + 191) < 0 && *(a2 + 22) == 34 && !memcmp(*(a2 + 21), "application/vnd.gsma.rcsrevoke+xml", 0x22uLL))
              {
                v31 = (*(*(this + 4) + 64))(this + 32);
                (*(*(this + 4) + 16))(this + 32, v31);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Using pager for Revoke message", 30);
                *(v31 + 17) = 0;
                (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v13 = 0;
                *(v31 + 17) = 0;
              }

              v32 = this + 32;
              v33 = (*(*(this + 4) + 64))(this + 32);
              (*(*(this + 4) + 16))(this + 32, v33);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "send trx ", 9);
              *(v33 + 17) = 0;
              (*(*v33 + 32))(v33, a2 + 24);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " recipient ", 11);
              *(v33 + 17) = 0;
              SipUri::asString(a3, __p);
              (*(*v33 + 32))(v33, __p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " conv ", 6);
              *(v33 + 17) = 0;
              (*(*v33 + 32))(v33, a2 + 72);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " original length ", 17);
              *(v33 + 17) = 0;
              MEMORY[0x1E69233B0](*(v33 + 8), *(a2 + 27));
              *(v33 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " length ", 8);
              *(v33 + 17) = 0;
              if ((buf[23] & 0x80u) == 0)
              {
                v34 = buf[23];
              }

              else
              {
                v34 = *&buf[8];
              }

              MEMORY[0x1E6923370](*(v33 + 8), v34);
              *(v33 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " type ", 6);
              *(v33 + 17) = 0;
              (*(*v33 + 32))(v33, a2 + 224);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " session ", 9);
              *(v33 + 17) = 0;
              if (v13)
              {
                v35 = "yes";
              }

              else
              {
                v35 = "no";
              }

              if (v13)
              {
                v36 = 3;
              }

              else
              {
                v36 = 2;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), v35, v36);
              *(v33 + 17) = 0;
              v37 = (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v33 + 17) = 0;
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (*(this + 500) == 1)
              {
                IPTelephonyManager::getCallManager(v37, __p);
                v38 = __p[0].__r_.__value_.__r.__words[0];
                v39 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(__p[0].__r_.__value_.__r.__words[0] + 88, a2 + 9);
                v40 = v38 + 96;
                if (__p[0].__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
                }

                if (v40 != v39)
                {
                  v41 = (*(*v32 + 64))(this + 32);
                  (*(*v32 + 16))(this + 32, v41);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "deferring trx ", 14);
                  *(v41 + 17) = 0;
                  (*(*v41 + 32))(v41, a2 + 24);
                  (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v41 + 17) = 0;
                  LazuliSendParams::LazuliSendParams(__p, a2);
                  SipUri::SipUri(v59, a3);
                  v59[408] = v13;
                  v60 = v11;
                  operator new();
                }
              }

              if (v13)
              {
                v42 = *(this + 500) == 1 && *(a2 + 27) > *(this + 124);
                LazuliSendParams::LazuliSendParams(__p, a2);
                v59[0] = v42;
                v45 = *(this + 24);
                if (v45)
                {
                  v46 = *(this + 23);
                  if (std::__shared_weak_count::lock(v45))
                  {
                    operator new();
                  }
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              Body = SipMessageEncodingMap::createBody((v57 + 384), a2 + 7);
              v44 = Body;
              if (!Body)
              {
                v47 = (*(*v32 + 56))(this + 32);
                (*(*v32 + 16))(v32, v47);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "unknown content type ", 21);
                *(v47 + 17) = 0;
                (*(*v47 + 32))(v47, a2 + 168);
                (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v11 = 0;
                *(v47 + 17) = 0;
                goto LABEL_111;
              }

              if ((*(*Body + 88))(Body, buf, v57 + 384))
              {
                SipLazuliManager::sendPager(this, a3, v44, a2);
                goto LABEL_111;
              }

LABEL_110:
              v11 = 0;
LABEL_111:
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

LABEL_113:
              if (v9)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              }

LABEL_115:
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              result = v11;
              goto LABEL_116;
            }

LABEL_54:
            v13 = *(a2 + 27) > *(this + 124);
            goto LABEL_61;
          }

          if (v19 != 10)
          {
            if (v19 != 12)
            {
              goto LABEL_61;
            }

            if (**v12 != *"kMessageText" || *(*v12 + 8) != *"Text")
            {
              goto LABEL_60;
            }

            goto LABEL_54;
          }

          v24 = *v12;
        }

        else
        {
          v13 = 0;
          v14 = *(a2 + 247);
          if (v14 <= 9)
          {
            if (*(a2 + 247))
            {
              if (v14 != 5)
              {
                goto LABEL_61;
              }

              if (*v12 != *"kImdn" || *(a2 + 228) != str_37_5[4])
              {
                goto LABEL_60;
              }

              goto LABEL_31;
            }

            goto LABEL_54;
          }

          v24 = a2 + 224;
          if (v14 != 10)
          {
            if (v14 != 12)
            {
              goto LABEL_61;
            }

            if (*v12 != *"kMessageText" || *(a2 + 58) != *"Text")
            {
              goto LABEL_60;
            }

            goto LABEL_54;
          }
        }

        v28 = *v24;
        v29 = *(v24 + 4);
        if (v28 != *"kComposing" || v29 != *"ng")
        {
LABEL_60:
          v13 = 0;
          goto LABEL_61;
        }

        v48 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
        if (v48)
        {
          v49 = v48[5];
          v50 = v48[6];
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v49)
          {
            v51 = 1;
LABEL_106:
            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            if (!v51)
            {
              goto LABEL_110;
            }

            v13 = 1;
            goto LABEL_61;
          }
        }

        else
        {
          v50 = 0;
        }

        v53 = (*(*(this + 4) + 64))(this + 32);
        (*(*(this + 4) + 16))(this + 32, v53);
        v54 = ImsOutStream::operator<<(v53, "Dropping composing imdn ");
        (*(*v54 + 32))(v54, a2 + 24);
        v55 = ImsOutStream::operator<<(v54, " on ");
        (*(*v55 + 32))(v55, a2 + 72);
        (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v51 = 0;
        v55[17] = 0;
        goto LABEL_106;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *(this + 27);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 22) + 16))(__p, this + 176);
    v26 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  v11 = 0;
  result = 0;
  if (v7)
  {
    goto LABEL_115;
  }

LABEL_116:
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C65AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  LazuliSendParams::~LazuliSendParams(v17 + 2);
  operator delete(v17);
  SipUri::~SipUri((v18 + 392));
  LazuliSendParams::~LazuliSendParams(&__p);
  if (*(v19 - 105) < 0)
  {
    operator delete(*(v19 - 128));
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void SipLazuliManager::addGroupParticipants(SipLazuliManager *this, const void **a2, const SipUri *a3)
{
  v5 = (a2 + 9);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = 0;
  v19 = 0;
  v9 = a2[44];
  if (v9 != a2[43])
  {
    v15 = a2[43];
    v14 = v9;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>();
  }

  if (!v8)
  {
    v12 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "conversation for refer not found, queueing: ", 44);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, v5);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    HIDWORD(__p[0]) = HIDWORD(v5);
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 320, v5);
    LODWORD(__p[0]) = 0;
    std::__list_imp<SipLazuliManager::DeferredGroupModification>::__create_node[abi:ne200100]<std::string const&,std::string const&,std::vector<std::string> const&,SipLazuliManager::DeferredGroupModification::Action,std::shared_ptr<std::vector<unsigned char>> &>();
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = a2[24];
  v11 = a2[25];
  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E4C66270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a75 < 0)
  {
    operator delete(__p);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  v80 = v77 + 192;
  if (a65 < 0)
  {
    operator delete(a60);
  }

  *(v78 - 120) = v80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v78 - 120));
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<SipUri>::push_back[abi:ne200100](uint64_t a1, const SipUri *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SipUri>::__emplace_back_slow_path<SipUri const&>(a1, a2);
  }

  else
  {
    SipUri::SipUri(*(a1 + 8), a2);
    result = v3 + 408;
    *(a1 + 8) = v3 + 408;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SipUri>::__emplace_back_slow_path<SipUri>(a1, a2);
  }

  else
  {
    SipUri::SipUri(*(a1 + 8), a2);
    result = v3 + 408;
    *(a1 + 8) = v3 + 408;
  }

  *(a1 + 8) = result;
  return result;
}

void SipLazuliManager::removeGroupParticipants(SipLazuliManager *this, const void **a2, const SipUri *a3)
{
  v5 = (a2 + 9);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = 0;
  v19 = 0;
  v9 = a2[44];
  if (v9 != a2[43])
  {
    v15 = a2[43];
    v14 = v9;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>();
  }

  if (!v8)
  {
    v12 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "conversation for refer not found, queueing: ", 44);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, v5);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    HIDWORD(__p[0]) = HIDWORD(v5);
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 320, v5);
    LODWORD(__p[0]) = 1;
    std::__list_imp<SipLazuliManager::DeferredGroupModification>::__create_node[abi:ne200100]<std::string const&,std::string const&,std::vector<std::string> const&,SipLazuliManager::DeferredGroupModification::Action,std::shared_ptr<std::vector<unsigned char>> &>();
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = a2[24];
  v11 = a2[25];
  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E4C66B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a75 < 0)
  {
    operator delete(__p);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  v80 = v77 + 192;
  if (a65 < 0)
  {
    operator delete(a60);
  }

  *(v78 - 120) = v80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v78 - 120));
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  _Unwind_Resume(a1);
}

uint64_t SipLazuliManager::changeGroupInfo(SipLazuliManager *this, const LazuliSendParams *a2, const SipUri *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, a2 + 9);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v19, *(a2 + 18), *(a2 + 19), *(a2 + 19) - *(a2 + 18));
  if (v8 && MessageSession::isGroupMgmtViaMSRP(v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = HIBYTE(v21);
    if (v21 < 0)
    {
      v10 = v20;
    }

    v9 = v10 > *(this + 124);
  }

  v11 = (*(*(this + 4) + 64))(this + 32);
  (*(*(this + 4) + 16))(this + 32, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "change group info trx ", 22);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a2 + 24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " recipient ", 11);
  *(v11 + 17) = 0;
  SipUri::asString(a3, &__p);
  (*(*v11 + 32))(v11, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " conv ", 6);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a2 + 72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " len ", 5);
  *(v11 + 17) = 0;
  if (v21 >= 0)
  {
    v12 = HIBYTE(v21);
  }

  else
  {
    v12 = v20;
  }

  MEMORY[0x1E6923370](*(v11 + 8), v12);
  *(v11 + 17) = 0;
  v13 = (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(__p);
    if (v9)
    {
LABEL_16:
      IPTelephonyManager::getCallManager(v13, &__p);
      IMSCallManager::initializeMOLazuliSession(__p, a2, 0, 0);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v14 = *(this + 65);
      *(this + 65) = v14 + 1;
      SipLazuliManager::sendMsrp(this, a2 + 9, &v19, a2 + 168, a2 + 24, v14);
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return 0;
}

void sub_1E4C66FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLazuliManager::reportSpam(SipLazuliManager *this, const LazuliSpamReportParams *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(this + 29);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(this + 28);
      if (v6)
      {
        v8 = *(v6 + 248);
        v7 = *(v6 + 256);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = v7;
        if (v8)
        {
          v9 = this + 32;
          v10 = (*(*(this + 4) + 64))(this + 32);
          (*(*(this + 4) + 16))(this + 32, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "SipLazuliManager::reportSpam for ", 33);
          *(v10 + 17) = 0;
          if (*(a2 + 504))
          {
            v11 = "Chatbot";
          }

          else
          {
            v11 = "Contact";
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11, 7);
          *(v10 + 17) = 0;
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
          v12 = (*(*v9 + 64))(this + 32);
          (*(*v9 + 16))(this + 32, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "send trx: ", 10);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", call-id: ", 11);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 72);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", recipient: ", 13);
          *(v12 + 17) = 0;
          SipUri::asString(a2 + 512, __p);
          (*(*v12 + 32))(v12, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", spam-reporting-uri: ", 22);
          *(v12 + 17) = 0;
          SipUri::asString(a2 + 96, buf);
          (*(*v12 + 32))(v12, buf);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", conv: ", 8);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 48);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", content len: ", 15);
          *(v12 + 17) = 0;
          if (*(a2 + 951) >= 0)
          {
            v13 = *(a2 + 951);
          }

          else
          {
            v13 = *(a2 + 117);
          }

          MEMORY[0x1E6923370](*(v12 + 8), v13);
          *(v12 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", spam type: ", 13);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2 + 952);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ", free text len: ", 17);
          *(v12 + 17) = 0;
          if (*(a2 + 999) >= 0)
          {
            v14 = *(a2 + 999);
          }

          else
          {
            v14 = *(a2 + 123);
          }

          MEMORY[0x1E6923370](*(v12 + 8), v14);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
          if (v30 < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }

          v26[1] = 0;
          v26[0] = 0;
          v15 = *(v6 + 248);
          ims::AccessNetwork::isWifi((v6 + 3432));
          v16 = *(v6 + 296);
          SipMessageEncodingMap::createRequestFromTemplate(v15 + 384, v26);
        }

        v19 = *(this + 27);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          (*(*(this + 22) + 16))(__p, this + 176);
          v22 = v25 >= 0 ? __p : __p[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          v28 = 2081;
          v29 = v22;
          _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

LABEL_34:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        result = 0;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = *(this + 27);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 22) + 16))(__p, this + 176);
    v20 = v25 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v28 = 2081;
    v29 = v20;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
  if (v5)
  {
    goto LABEL_34;
  }

LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C68390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  *(v36 - 144) = a11;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v36 - 136, *(v36 - 128));
  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (STACK[0x230])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x230]);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

void SipLazuliManager::sendInfoRequest(SipLazuliManager *this, std::string *a2)
{
  memset(v43, 0, 408);
  SipUri::SipUri(v43);
  SipUri::fromString(v43, a2 + 2);
  if (SipUri::isValidUri(v43))
  {
    goto LABEL_40;
  }

  v4 = (*(*(this + 4) + 56))(this + 32);
  (*(*(this + 4) + 16))(this + 32, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Invalid uri ", 12);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " for INFO request trx ", 22);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " conv ", 6);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2 + 3);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = *(this + 29);
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_40;
  }

  v7 = v6;
  v8 = *(this + 28);
  if (v8)
  {
    v41 = 0;
    v42 = 0;
    if (*(v8 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *(v8 + 4432), *(v8 + 4440));
    }

    else
    {
      v29 = *(v8 + 4432);
    }

    IMSClientManager::lazuliDelegateForStack(&v29.__r_.__value_.__l.__data_, &v41);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (!v41)
    {
      goto LABEL_37;
    }

    v40 = 0;
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v9;
    if (v9)
    {
      v40 = v9;
    }

    else
    {
      v10 = xpc_null_create();
      v40 = v10;
      if (!v10)
      {
        v11 = xpc_null_create();
        v10 = 0;
        goto LABEL_18;
      }
    }

    if (MEMORY[0x1E6924740](v10) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v10);
LABEL_19:
      xpc_release(v10);
      v38 = xpc_BOOL_create(0);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      v29.__r_.__value_.__r.__words[0] = &v40;
      v29.__r_.__value_.__l.__size_ = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v29, &v38, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v38);
      v38 = 0;
      if ((a2[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        data = &a2[1];
      }

      else
      {
        data = a2[1].__r_.__value_.__l.__data_;
      }

      v36 = xpc_string_create(data);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      v29.__r_.__value_.__r.__words[0] = &v40;
      v29.__r_.__value_.__l.__size_ = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v29, &v36, &v37);
      xpc_release(v37);
      v37 = 0;
      xpc_release(v36);
      v36 = 0;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v29.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v29.__r_.__value_.__r.__words[2]) = 1073741825;
      v34 = xpc_int64_create(1073741825);
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      v28[0] = &v40;
      v28[1] = "kErrorCode";
      xpc::dict::object_proxy::operator=(v28, &v34, &v35);
      xpc_release(v35);
      v35 = 0;
      xpc_release(v34);
      v34 = 0;
      ImsResult::~ImsResult(&v29);
      if ((a2[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &a2[2];
      }

      else
      {
        v13 = a2[2].__r_.__value_.__l.__data_;
      }

      v26 = xpc_string_create(v13);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      v29.__r_.__value_.__r.__words[0] = &v40;
      v29.__r_.__value_.__l.__size_ = "kRemoteUri";
      xpc::dict::object_proxy::operator=(&v29, &v26, &v27);
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      v14 = v41;
      v25 = v40;
      v26 = 0;
      if (v40)
      {
        xpc_retain(v40);
      }

      else
      {
        v25 = xpc_null_create();
      }

      (*(*v14 + 128))(v14, &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v40);
LABEL_37:
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      goto LABEL_39;
    }

    v11 = xpc_null_create();
LABEL_18:
    v40 = v11;
    goto LABEL_19;
  }

LABEL_39:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_40:
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 95, &a2[3].__r_.__value_.__l.__data_);
  if (!v15)
  {
    goto LABEL_45;
  }

  v17 = v15[5];
  v16 = v15[6];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v17)
  {
LABEL_45:
    v21 = (*(*(this + 4) + 64))(this + 32);
    (*(*(this + 4) + 16))(this + 32, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "conversation for INFO request not found, queueing: ", 51);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, a2 + 3);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    v22 = (this + 352);
    v23 = *(this + 44);
    if (v23)
    {
      while (1)
      {
        while (1)
        {
          v24 = v23;
          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2[3].__r_.__value_.__r.__words, (v23 + 32)) & 0x80) == 0)
          {
            break;
          }

          v23 = *v24;
          v22 = v24;
          if (!*v24)
          {
            goto LABEL_51;
          }
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24 + 4, &a2[3].__r_.__value_.__l.__data_) & 0x80) == 0)
        {
          break;
        }

        v22 = v24 + 1;
        v23 = v24[1];
        if (!v23)
        {
          goto LABEL_51;
        }
      }

      if (*v22)
      {
        operator new();
      }
    }

LABEL_51:
    operator new();
  }

  v19 = *(this + 4);
  v18 = this + 32;
  v20 = (*(v19 + 64))(v18);
  (*(*v18 + 16))(v18, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "INFO request ", 13);
  *(v20 + 17) = 0;
  (*(v43[0] + 40))(v43, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " to group ", 10);
  *(v20 + 17) = 0;
  (*(*v20 + 32))(v20, a2 + 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " trx ", 5);
  *(v20 + 17) = 0;
  (*(*v20 + 32))(v20, a2 + 1);
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v20 + 17) = 0;
  MessageSession::sendInfoRequest(v17, a2);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  SipUri::~SipUri(v43);
}

void sub_1E4C68FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, xpc_object_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  SipUri::~SipUri(&a38);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t xpc::array::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void SipLazuliManager::logPrefix(SipLazuliManager *this, ImsOutStream *a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 28);
      if (v6)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipLazuliManager[", 17);
        *(a2 + 17) = 0;
        if (*(v6 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v6 + 4432), *(v6 + 4440));
        }

        else
        {
          __p = *(v6 + 4432);
        }

        (*(*a2 + 32))(a2, &__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
        *(a2 + 17) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "SipLazuliManager: ", 18);
  *(a2 + 17) = 0;
  if (v5)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void SipLazuliManager::createMessageSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1 + 32;
  v7 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*v6 + 16))(v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "SipLazuliManager::createMessageSession for id: ", 47);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a2);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  ++*(v6 + 232);
  v8 = *(v6 + 160);
  if (v8)
  {
    v9 = *(v6 + 152);
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v15 = 0;
      v16 = 0;
      v13 = v9;
      v14 = v10;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v11 = *a4;
      std::__shared_weak_count::lock(*(*a4 + 232));
      v12 = *(v11 + 224) + 200;
      std::allocate_shared[abi:ne200100]<MessageSession,std::allocator<MessageSession>,std::weak_ptr<SipLazuliManager> &,ClientConfig const&,0>();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4C6A204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, char a53, int a54, __int16 __p, char __p_2, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::createPowerAssertion(uint64_t a1, void **a2, int a3)
{
  v6 = *(a1 + 232);
  if (v6 && (v7 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v8 = v7;
    v9 = *(a1 + 224);
    if (v9)
    {
      isWifi = ims::AccessNetwork::isWifi((v9 + 3432));
    }

    else
    {
      isWifi = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    isWifi = 0;
  }

  memset(&__str, 0, sizeof(__str));
  SipLazuliManager::getPowerAssertionTag(a3, isWifi, &__str);
  p_str = &__str;
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 840, &__str.__r_.__value_.__l.__data_);
  AssertionCounter::initialize(*(v11 + 56), 15.0, !isWifi, v13);
  ImsResult::~ImsResult(v13);
  p_str = a2;
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 864, a2);
  std::string::operator=((v12 + 56), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C6A534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipLazuliManager::releasePowerAssertion(uint64_t a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 864, a2);
  if (a1 + 872 != v3)
  {
    v4 = v3;
    PowerAssertionLock::deinitialize((a1 + 840), v3 + 56);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a1 + 864), v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v4 + 4));

    operator delete(v4);
  }
}

void SipLazuliManager::terminateMessageSession(uint64_t a1, uint64_t a2, uint64_t a3, const ImsResult *a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 760), a2);
    if (!v15)
    {
      goto LABEL_33;
    }

    v17 = v15[5];
    v16 = v15[6];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v17)
    {
      goto LABEL_30;
    }

    v18 = a1 + 32;
    v19 = (*(*(a1 + 32) + 64))(a1 + 32);
    (*(*(a1 + 32) + 16))(a1 + 32, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Terminating Normal session ", 27);
    *(v19 + 17) = 0;
    (*(*v19 + 32))(v19, a2);
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    MessageSession::terminate(v17, a3);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__erase_unique<std::string>((a1 + 760), a2);
    if (*(a1 + 500) != 1 || !*(a1 + 384))
    {
LABEL_30:
      v31 = 1;
      if (!v16)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v20 = *(a1 + 232);
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      v22 = v21;
      if (v21)
      {
        v23 = *(a1 + 224);
        if (v23)
        {
          v25 = *(v23 + 248);
          v24 = *(v23 + 256);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = v24;
          v54 = v21;
          if (v25)
          {
            v26 = (*(*v18 + 64))(a1 + 32);
            (*(*v18 + 16))(a1 + 32, v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Processing ", 11);
            *(v26 + 17) = 0;
            MEMORY[0x1E6923370](*(v26 + 8), *(a1 + 384));
            *(v26 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " queued messages after Large Message Mode transfer", 50);
            *(v26 + 17) = 0;
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v26 + 17) = 0;
            while (*(a1 + 384))
            {
              v27 = *(a1 + 376);
              if (*(v27 + 816))
              {
                v48 = *(a1 + 192);
                if (v48)
                {
                  v49 = *(a1 + 184);
                  v50 = std::__shared_weak_count::lock(v48);
                  if (v50)
                  {
                    __p[0] = v49;
                    __p[1] = v50;
                    atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                    LazuliSendParams::LazuliSendParams(&__p[2], (v27 + 16));
                    v51 = *(a1 + 192);
                    if (v51)
                    {
                      v52 = *(a1 + 184);
                      if (std::__shared_weak_count::lock(v51))
                      {
                        operator new();
                      }
                    }

                    std::__throw_bad_weak_ptr[abi:ne200100]();
                  }
                }

                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

              Body = SipMessageEncodingMap::createBody((v25 + 384), (v27 + 184));
              if (Body)
              {
                memset(__p, 0, sizeof(__p));
                std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(__p, *(v27 + 160), *(v27 + 168), *(v27 + 168) - *(v27 + 160));
                if ((*(*Body + 88))(Body, __p, v25 + 384))
                {
                  v29 = *(v27 + 820);
                  SipLazuliManager::sendPager(a1, (v27 + 408), Body, (v27 + 16));
                }

                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v30 = *(v27 + 820);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              __p[0] = &unk_1F5EBDEF8;
              __p[1] = &_bambiDomain;
              LODWORD(__p[2]) = 1073741828;
              SipLazuliManager::generateError(a1, v30, v27 + 88, __p);
              ImsResult::~ImsResult(__p);
              std::list<SipLazuliManager::DeferredMessage>::pop_front(a1 + 368);
            }
          }

          else
          {
            v46 = *(a1 + 216);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              (*(*(a1 + 176) + 16))(__p);
              v47 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
              LODWORD(v62.__r_.__value_.__l.__data_) = 141558275;
              *(v62.__r_.__value_.__r.__words + 4) = 1752392040;
              WORD2(v62.__r_.__value_.__r.__words[1]) = 2081;
              *(&v62.__r_.__value_.__r.__words[1] + 6) = v47;
              _os_log_error_impl(&dword_1E4C3F000, v46, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &v62, 0x16u);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          v22 = v54;
          goto LABEL_85;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v43 = *(a1 + 216);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 176) + 16))(__p);
      v44 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(v62.__r_.__value_.__l.__data_) = 141558275;
      *(v62.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(v62.__r_.__value_.__r.__words[1]) = 2081;
      *(&v62.__r_.__value_.__r.__words[1] + 6) = v44;
      _os_log_error_impl(&dword_1E4C3F000, v43, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &v62, 0x16u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_85:
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v31 = 0;
    if (!v16)
    {
LABEL_32:
      if (!v31)
      {
LABEL_58:
        v42 = *MEMORY[0x1E69E9840];
        return;
      }

LABEL_33:
      std::__optional_copy_base<ImsResult,false>::__optional_copy_base[abi:ne200100](v55, a4);
      v32 = *(a1 + 232);
      if (v32)
      {
        v33 = std::__shared_weak_count::lock(v32);
        if (v33 && *(a1 + 224))
        {
          v34 = *(a1 + 216);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            (*(*(a1 + 176) + 16))(&v62);
            v35 = (v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v62 : v62.__r_.__value_.__r.__words[0];
            v36 = *(a2 + 23) >= 0 ? a2 : *a2;
            LODWORD(__p[0]) = 141558531;
            *(__p + 4) = 1752392040;
            WORD2(__p[1]) = 2081;
            *(&__p[1] + 6) = v35;
            HIWORD(__p[2]) = 2080;
            *&v58 = v36;
            _os_log_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sCleaning up queues for conv %s", __p, 0x20u);
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }
          }

          v37 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 296, a2);
          if (a1 + 304 == v37 || !*(v37 + 72))
          {
            v40 = *(a1 + 32);
            v39 = a1 + 32;
            v41 = (*(v40 + 64))(v39);
            (*(*v39 + 16))(v39, v41);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "No pending messages", 19);
            *(v41 + 17) = 0;
            (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v41 + 17) = 0;
            goto LABEL_55;
          }

          v56[0] = v56;
          v56[1] = v56;
          v56[2] = 0;
          if (*(v37 + 64) != v37 + 56)
          {
            operator new();
          }

          std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__erase_unique<std::string>((a1 + 296), a2);
          std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__erase_unique<std::string>((a1 + 320), a2);
          std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::__erase_unique<std::string>((a1 + 344), a2);
          std::__list_imp<SipLazuliManager::OutgoingMsrp>::clear(v56);
LABEL_52:
          if (!v33)
          {
LABEL_56:
            if (v55[88] == 1)
            {
              ImsResult::~ImsResult(v55);
            }

            goto LABEL_58;
          }

LABEL_55:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          goto LABEL_56;
        }
      }

      else
      {
        v33 = 0;
      }

      v38 = *(a1 + 216);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        (*(*(a1 + 176) + 16))(__p, a1 + 176);
        v45 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        LODWORD(v62.__r_.__value_.__l.__data_) = 141558275;
        *(v62.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(v62.__r_.__value_.__r.__words[1]) = 2081;
        *(&v62.__r_.__value_.__r.__words[1] + 6) = v45;
        _os_log_error_impl(&dword_1E4C3F000, v38, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &v62, 0x16u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_52;
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    goto LABEL_32;
  }

  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 800), a2);
  if (!v8)
  {
    goto LABEL_58;
  }

  v9 = v8;
  v10 = (*(*(a1 + 32) + 64))(a1 + 32);
  (*(*(a1 + 32) + 16))(a1 + 32, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Terminating store-and-forward session ", 38);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a2);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v11 = v9[5];
  v12 = v9[6];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MessageSession::terminate(v11, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__erase_unique<std::string>((a1 + 800), a2);
  if (!v12)
  {
    goto LABEL_58;
  }

  v13 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
}

void sub_1E4C6B708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, xpc_object_t object, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, std::__shared_weak_count *a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(exception_object);
}

void SipLazuliManager::handleOptionsReceived(void *a1, SipMessage **a2, int a3, int a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a1[29];
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = a1[28];
      if (v12)
      {
        v13 = a1[31];
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = std::__shared_weak_count::lock(v13);
        if (!v14)
        {
          goto LABEL_63;
        }

        if (!a1[30])
        {
          goto LABEL_80;
        }

        v43 = a1[30];
        v44 = v14;
        memset(&v51, 0, sizeof(v51));
        SipMessage::transactionId(*a2, &v51);
        memset(v50, 0, sizeof(v50));
        SipMessage::assertedIdentityList(*a2, v50);
        v15 = SipMessage::header<SipContactHeader>(*a2);
        if (!v15 || (v16 = v15[9], v16 == v15[10]))
        {
          v17 = a1 + 4;
        }

        else
        {
          v17 = a1 + 4;
          if (v16)
          {
            v18 = (*(*v17 + 64))(a1 + 4);
            (*(*v17 + 16))(a1 + 4, v18);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Processing options exchange: txn-id=", 36);
            *(v18 + 17) = 0;
            (*(*v18 + 32))(v18, &v51);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " for ", 5);
            *(v18 + 17) = 0;
            SipUri::asString(a5, __p);
            (*(*v18 + 32))(v18, __p);
            (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v18 + 17) = 0;
            if (SBYTE7(v49[0]) < 0)
            {
              operator delete(__p[0]);
            }

            SipLazuliManager::logSipOptionsEvent(a1, a3, v16, 0, a4);
            HIDWORD(v42) = *(v16 + 456);
            memset(buf, 0, sizeof(buf));
            memset(v47, 0, sizeof(v47));
            v19 = (*(*v17 + 64))(a1 + 4);
            (*(*v17 + 16))(a1 + 4, v19);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Supported options: size=", 24);
            *(v19 + 17) = 0;
            MEMORY[0x1E6923370](*(v19 + 8), *(v16 + 440));
            *(v19 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " {", 2);
            *(v19 + 17) = 0;
            (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v19 + 17) = 0;
            v20 = *(v16 + 424);
            if (v20 != (v16 + 432))
            {
              while (1)
              {
                memset(v49, 0, 32);
                *__p = 0u;
                std::pair<std::string const,std::string>::pair[abi:ne200100](__p, v20 + 2);
                v21 = (*(*v17 + 64))(v17);
                (*(*v17 + 16))(v17, v21);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "  ", 2);
                *(v21 + 17) = 0;
                (*(*v21 + 32))(v21, __p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " = ", 3);
                *(v21 + 17) = 0;
                (*(*v21 + 32))(v21, v49 + 8);
                (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v21 + 17) = 0;
                if (SBYTE7(v49[0]) < 0)
                {
                  break;
                }

                if (SBYTE7(v49[0]) == 19)
                {
                  v22 = __p;
                  goto LABEL_18;
                }

LABEL_44:
                if (SHIBYTE(v49[1]) < 0)
                {
                  operator delete(*(&v49[0] + 1));
                }

                if (SBYTE7(v49[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                v32 = *(v20 + 1);
                if (v32)
                {
                  do
                  {
                    v33 = v32;
                    v32 = *v32;
                  }

                  while (v32);
                }

                else
                {
                  do
                  {
                    v33 = *(v20 + 2);
                    v27 = *v33 == v20;
                    v20 = v33;
                  }

                  while (!v27);
                }

                v20 = v33;
                if (v33 == (v16 + 432))
                {
                  goto LABEL_54;
                }
              }

              v23 = __p[1];
              if (__p[1] == 19)
              {
                v22 = __p[0];
LABEL_18:
                v24 = *v22;
                v25 = v22[1];
                v26 = *(v22 + 11);
                v27 = v24 == 0x2E616D73672E672BLL && v25 == 0x6D6970632E736372;
                if (v27 && v26 == 0x7478656D6970632ELL)
                {
                  v31 = buf;
LABEL_38:
                  if (v31[1].__r_.__value_.__s.__data_[0] == 1)
                  {
                    std::string::operator=(v31, (v49 + 8));
                  }

                  else
                  {
                    if (SHIBYTE(v49[1]) < 0)
                    {
                      std::string::__init_copy_ctor_external(v31, *(&v49[0] + 1), *&v49[1]);
                    }

                    else
                    {
                      *&v31->__r_.__value_.__l.__data_ = *(v49 + 8);
                      v31->__r_.__value_.__r.__words[2] = *(&v49[1] + 1);
                    }

                    v31[1].__r_.__value_.__s.__data_[0] = 1;
                  }

                  goto LABEL_44;
                }

                v23 = __p[1];
              }

              if ((SBYTE7(v49[0]) & 0x80000000) == 0 || v23 != 23)
              {
                goto LABEL_44;
              }

              v29 = *__p[0] == 0x2E616D73672E672BLL && *(__p[0] + 1) == 0x2E736C6D2E736372;
              if (!v29 || *(__p[0] + 15) != 0x73646B2D736C6D2ELL)
              {
                goto LABEL_44;
              }

              v31 = v47;
              goto LABEL_38;
            }

LABEL_54:
            v34 = (*(*v17 + 64))(v17);
            (*(*v17 + 16))(v17, v34);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "}", 1);
            *(v34 + 17) = 0;
            (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v34 + 17) = 0;
            v35 = (*(*v17 + 64))(v17);
            (*(*v17 + 16))(v17, v35);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "Remote serviceMask=", 19);
            *(v35 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&v45, ",");
            BambiServices::namesForServiceMask(SHIDWORD(v42), __p);
            (*(*v35 + 32))(v35, __p);
            (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v35 + 17) = 0;
            if (SBYTE7(v49[0]) < 0)
            {
              operator delete(__p[0]);
            }

            if (v46 < 0)
            {
              operator delete(v45);
            }

            if (*(v12 + 4455) < 0)
            {
              std::string::__init_copy_ctor_external(__p, *(v12 + 4432), *(v12 + 4440));
            }

            else
            {
              *__p = *(v12 + 4432);
              *&v49[0] = *(v12 + 4448);
            }

            LODWORD(v42) = a3;
            (*(*v43 + 40))(v43, __p, a5, v50, &v51, HIDWORD(v42), buf, v47, v42);
            if (SBYTE7(v49[0]) < 0)
            {
              operator delete(__p[0]);
            }

            if (LOBYTE(v47[3]) == 1 && SHIBYTE(v47[2]) < 0)
            {
              operator delete(v47[0]);
            }

            if (buf[24] != 1)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }
        }

        v39 = (*(*v17 + 56))(v17);
        (*(*v17 + 16))(v17, v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Contact header is missing.  Propagating error using asserted ID ", 64);
        *(v39 + 17) = 0;
        v40 = SipMessage::assertedIdentity(*a2, 1);
        (*(*v40 + 40))(v40, v39);
        (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v39 + 17) = 0;
        if (*(v12 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(buf, *(v12 + 4432), *(v12 + 4440));
        }

        else
        {
          *buf = *(v12 + 4432);
          *&buf[16] = *(v12 + 4448);
        }

        *(&v49[2] + 8) = 0u;
        *(&v49[3] + 8) = 0u;
        __p[0] = &unk_1F5EBDEF8;
        __p[1] = &_bambiDomain;
        LODWORD(v49[0]) = 0;
        memset(v49 + 8, 0, 32);
        v41 = SipMessage::assertedIdentity(*a2, 1);
        (*(*v43 + 48))(v43, buf, __p, &v51, v41, v50);
        ImsResult::~ImsResult(__p);
LABEL_75:
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

LABEL_77:
        __p[0] = v50;
        std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        v14 = v44;
LABEL_80:
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        goto LABEL_62;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v36 = a1[27];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    (*(a1[22] + 16))(__p, a1 + 22);
    v38 = (SBYTE7(v49[0]) & 0x80u) == 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v38;
    _os_log_error_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SBYTE7(v49[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_62:
  if (v11)
  {
LABEL_63:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1E4C6C4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 120) == 1 && *(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  a25 = &a40;
  std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (*(v41 - 145) < 0)
  {
    operator delete(*(v41 - 168));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::logSipOptionsEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 224);
      if (v13)
      {
        v91 = 0u;
        v92 = 0u;
        v93 = 0;
        v89 = 0u;
        *v90 = 0u;
        HIDWORD(v91) = a2;
        LODWORD(v92) = a5;
        BYTE4(v92) = a2 == 0;
        BYTE7(v92) = *(v13 + 2849);
        HIDWORD(v92) = a4;
        LOBYTE(v93) = BYTE4(a4);
        BYTE8(v92) = *(v13 + 240);
        if (a2 && a2 != 200)
        {
          v83 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v84 = off_1EE2BBBC0;
          if (!off_1EE2BBBC0)
          {
            IMSMetricsManager::create_default_global(v83);
          }

          v85 = *(&off_1EE2BBBC0 + 1);
          if (*(&off_1EE2BBBC0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          (*(**(v84 + 184) + 216))(*(v84 + 184), &v89);
        }

        else
        {
          if (a3)
          {
            v14 = *(a3 + 424);
            if (v14 != (a3 + 432))
            {
              while (1)
              {
                memset(v88, 0, sizeof(v88));
                std::pair<std::string const,std::string>::pair[abi:ne200100](v88, v14 + 2);
                if (SHIBYTE(v88[0].__r_.__value_.__r.__words[2]) < 0 && v88[0].__r_.__value_.__l.__size_ == 27)
                {
                  v15 = *v88[0].__r_.__value_.__l.__data_ == 0x2E616D73672E672BLL && *(v88[0].__r_.__value_.__r.__words[0] + 8) == 0x2E6D70632E736372;
                  if (v15 && *(v88[0].__r_.__value_.__r.__words[0] + 16) == 0x616C2D7265676170 && *(v88[0].__r_.__value_.__r.__words[0] + 19) == 0x656772616C2D7265)
                  {
                    BYTE3(v89) = 1;
                  }

                  goto LABEL_199;
                }

                if ((*(&v88[0].__r_.__value_.__s + 23) & 0x80) == 0)
                {
                  break;
                }

                if (v88[0].__r_.__value_.__l.__size_ <= 18)
                {
                  if (v88[0].__r_.__value_.__l.__size_ != 16)
                  {
                    if (v88[0].__r_.__value_.__l.__size_ != 17)
                    {
                      goto LABEL_199;
                    }

                    v18 = v88[0].__r_.__value_.__r.__words[0];
                    goto LABEL_46;
                  }

LABEL_100:
                  v35 = v88[0].__r_.__value_.__r.__words[0];
                  if (*v88[0].__r_.__value_.__l.__data_ == 0x2E707067332E672BLL && *(v88[0].__r_.__value_.__r.__words[0] + 8) == 0x6665722D69736369)
                  {
LABEL_109:
                    memset(&v87, 0, sizeof(v87));
                    if (SHIBYTE(v88[1].__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v87, v88[1].__r_.__value_.__l.__data_, v88[1].__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v87 = v88[1];
                    }

                    ims::removePercentEscapes(&v87);
                    v40 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
                    __p = v87.__r_.__value_.__r.__words[0];
                    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v41 = &v87;
                    }

                    else
                    {
                      v41 = v87.__r_.__value_.__r.__words[0];
                    }

                    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v87.__r_.__value_.__l.__size_;
                    }

                    if (size >= 43)
                    {
                      v43 = v41 + size;
                      v44 = size;
                      v45 = v41;
                      do
                      {
                        v46 = memchr(v45, 117, v44 - 42);
                        if (!v46)
                        {
                          break;
                        }

                        v47 = v46;
                        if (!memcmp(v46, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg", 0x2BuLL))
                        {
                          if (v47 != v43 && v47 - v41 != -1)
                          {
                            LOBYTE(v89) = 1;
                          }

                          break;
                        }

                        v45 = (v47 + 1);
                        v44 = v43 - (v47 + 1);
                      }

                      while (v44 >= 43);
                      if (size > 47)
                      {
                        v48 = size;
                        v49 = v41;
                        do
                        {
                          v50 = memchr(v49, 117, v48 - 47);
                          if (!v50)
                          {
                            break;
                          }

                          v51 = v50;
                          if (!memcmp(v50, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.largemsg", 0x30uLL))
                          {
                            if (v51 != v43 && v51 - v41 != -1)
                            {
                              BYTE1(v89) = 1;
                            }

                            break;
                          }

                          v49 = (v51 + 1);
                          v48 = v43 - (v51 + 1);
                        }

                        while (v48 >= 48);
                        v52 = size;
                        v53 = v41;
                        do
                        {
                          v54 = memchr(v53, 117, v52 - 47);
                          if (!v54)
                          {
                            break;
                          }

                          v55 = v54;
                          if (!memcmp(v54, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.deferred", 0x30uLL))
                          {
                            if (v55 != v43 && v55 - v41 != -1)
                            {
                              BYTE2(v89) = 1;
                            }

                            break;
                          }

                          v53 = (v55 + 1);
                          v52 = v43 - (v55 + 1);
                        }

                        while (v52 >= 48);
                      }

                      if (size > 46)
                      {
                        v56 = size;
                        v57 = v41;
                        do
                        {
                          v58 = memchr(v57, 117, v56 - 46);
                          if (!v58)
                          {
                            break;
                          }

                          v59 = v58;
                          if (!memcmp(v58, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session", 0x2FuLL))
                          {
                            if (v59 != v43 && v59 - v41 != -1)
                            {
                              BYTE4(v89) = 1;
                            }

                            break;
                          }

                          v57 = (v59 + 1);
                          v56 = v43 - (v59 + 1);
                        }

                        while (v56 > 46);
                      }

                      if (size >= 46)
                      {
                        v60 = size;
                        v61 = v41;
                        do
                        {
                          v62 = memchr(v61, 117, v60 - 45);
                          if (!v62)
                          {
                            break;
                          }

                          v63 = v62;
                          if (!memcmp(v62, "urn:urn-7:3gpp-application.ims.iari.rcs.fthttp", 0x2EuLL))
                          {
                            if (v63 != v43 && v63 - v41 != -1)
                            {
                              BYTE6(v89) = 1;
                            }

                            break;
                          }

                          v61 = (v63 + 1);
                          v60 = v43 - (v63 + 1);
                        }

                        while (v60 >= 46);
                        if (size > 46)
                        {
                          v64 = size;
                          v65 = v41;
                          do
                          {
                            v66 = memchr(v65, 117, v64 - 46);
                            if (!v66)
                            {
                              break;
                            }

                            v67 = v66;
                            if (!memcmp(v66, "urn:urn-7:3gpp-application.ims.iari.rcs.geopush", 0x2FuLL))
                            {
                              if (v67 != v43 && v67 - v41 != -1)
                              {
                                BYTE7(v89) = 1;
                              }

                              break;
                            }

                            v65 = (v67 + 1);
                            v64 = v43 - (v67 + 1);
                          }

                          while (v64 >= 47);
                        }

                        v68 = size;
                        v69 = v41;
                        do
                        {
                          v70 = memchr(v69, 117, v68 - 45);
                          if (!v70)
                          {
                            break;
                          }

                          v71 = v70;
                          if (!memcmp(v70, "urn:urn-7:3gpp-application.ims.iari.rcs.geosms", 0x2EuLL))
                          {
                            if (v71 != v43 && v71 - v41 != -1)
                            {
                              BYTE8(v89) = 1;
                            }

                            break;
                          }

                          v69 = (v71 + 1);
                          v68 = v43 - (v71 + 1);
                        }

                        while (v68 >= 46);
                        if (size > 46)
                        {
                          v72 = size;
                          v73 = v41;
                          do
                          {
                            v74 = memchr(v73, 117, v72 - 46);
                            if (!v74)
                            {
                              break;
                            }

                            v75 = v74;
                            if (!memcmp(v74, "urn:urn-7:3gpp-application.ims.iari.rcs.chatbot", 0x2FuLL))
                            {
                              if (v75 != v43 && v75 - v41 != -1)
                              {
                                BYTE10(v89) = 1;
                              }

                              break;
                            }

                            v73 = (v75 + 1);
                            v72 = v43 - (v75 + 1);
                          }

                          while (v72 >= 47);
                          if (size >= 50)
                          {
                            v76 = v41;
                            do
                            {
                              v77 = memchr(v76, 117, size - 49);
                              if (!v77)
                              {
                                break;
                              }

                              v78 = v77;
                              if (!memcmp(v77, "urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa", 0x32uLL))
                              {
                                if (v78 != v43 && v78 - v41 != -1)
                                {
                                  BYTE11(v89) = 1;
                                }

                                break;
                              }

                              v76 = (v78 + 1);
                              size = v43 - (v78 + 1);
                            }

                            while (size >= 50);
                          }
                        }
                      }
                    }

                    if (v40 < 0)
                    {
                      operator delete(__p);
                    }

                    goto LABEL_199;
                  }

                  goto LABEL_104;
                }

                switch(v88[0].__r_.__value_.__l.__size_)
                {
                  case 0x13uLL:
                    if (*v88[0].__r_.__value_.__l.__data_ != 0x2E616D73672E672BLL || *(v88[0].__r_.__value_.__r.__words[0] + 8) != 0x6D6970632E736372 || *(v88[0].__r_.__value_.__r.__words[0] + 11) != 0x7478656D6970632ELL)
                    {
                      break;
                    }

LABEL_82:
                    BYTE12(v89) = 1;
                    break;
                  case 0x16uLL:
                    if (*v88[0].__r_.__value_.__l.__data_ != 0x2E616D73672E672BLL || *(v88[0].__r_.__value_.__r.__words[0] + 8) != 0x76746F622E736372 || *(v88[0].__r_.__value_.__r.__words[0] + 14) != 0x6E6F697372657674)
                    {
                      break;
                    }

LABEL_91:
                    std::string::operator=(v90, &v88[1]);
                    break;
                  case 0x17uLL:
                    goto LABEL_55;
                }

LABEL_199:
                if (SHIBYTE(v88[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v88[1].__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v88[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v88[0].__r_.__value_.__l.__data_);
                }

                v79 = *(v14 + 1);
                if (v79)
                {
                  do
                  {
                    v80 = v79;
                    v79 = *v79;
                  }

                  while (v79);
                }

                else
                {
                  do
                  {
                    v80 = *(v14 + 2);
                    v15 = *v80 == v14;
                    v14 = v80;
                  }

                  while (!v15);
                }

                v14 = v80;
                if (v80 == (a3 + 432))
                {
                  goto LABEL_209;
                }
              }

              if (HIBYTE(v88[0].__r_.__value_.__r.__words[2]) > 0x12u)
              {
                if (HIBYTE(v88[0].__r_.__value_.__r.__words[2]) != 19)
                {
                  if (HIBYTE(v88[0].__r_.__value_.__r.__words[2]) != 22)
                  {
                    goto LABEL_199;
                  }

                  v19 = v88[0].__r_.__value_.__r.__words[0] == 0x2E616D73672E672BLL && v88[0].__r_.__value_.__l.__size_ == 0x76746F622E736372;
                  if (!v19 || *(&v88[0].__r_.__value_.__r.__words[1] + 6) != 0x6E6F697372657674)
                  {
                    goto LABEL_199;
                  }

                  goto LABEL_91;
                }

                if (v88[0].__r_.__value_.__r.__words[0] != 0x2E616D73672E672BLL || v88[0].__r_.__value_.__l.__size_ != 0x6D6970632E736372 || *(&v88[0].__r_.__value_.__r.__words[1] + 3) != 0x7478656D6970632ELL)
                {
                  goto LABEL_199;
                }

                goto LABEL_82;
              }

              if (HIBYTE(v88[0].__r_.__value_.__r.__words[2]) != 16)
              {
                if (HIBYTE(v88[0].__r_.__value_.__r.__words[2]) != 17)
                {
                  goto LABEL_199;
                }

                v18 = v88;
LABEL_46:
                v21 = v18->__r_.__value_.__r.__words[0];
                v22 = v18->__r_.__value_.__l.__size_;
                v23 = v18->__r_.__value_.__s.__data_[16];
                if (v21 == 0x2E616D73672E672BLL && v22 == 0x6F6273692E736372 && v23 == 116)
                {
                  BYTE5(v92) = 1;
                  goto LABEL_199;
                }

                if ((*(&v88[0].__r_.__value_.__s + 23) & 0x80) != 0 && v88[0].__r_.__value_.__l.__size_ == 23)
                {
LABEL_55:
                  if (*v88[0].__r_.__value_.__l.__data_ == 0x2E616D73672E672BLL && *(v88[0].__r_.__value_.__r.__words[0] + 8) == 0x2E736C6D2E736372 && *(v88[0].__r_.__value_.__r.__words[0] + 15) == 0x73646B2D736C6D2ELL)
                  {
                    BYTE6(v92) = 1;
                  }

                  goto LABEL_199;
                }

                if ((*(&v88[0].__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  if (v88[0].__r_.__value_.__l.__size_ != 16)
                  {
                    goto LABEL_199;
                  }

                  goto LABEL_100;
                }

                if (HIBYTE(v88[0].__r_.__value_.__r.__words[2]) != 16)
                {
                  goto LABEL_199;
                }
              }

              if (v88[0].__r_.__value_.__r.__words[0] == 0x2E707067332E672BLL && v88[0].__r_.__value_.__l.__size_ == 0x6665722D69736369)
              {
                goto LABEL_109;
              }

              v35 = v88;
LABEL_104:
              v38 = v35->__r_.__value_.__r.__words[0];
              v37 = v35->__r_.__value_.__l.__size_;
              if (v38 == 0x2E707067332E672BLL && v37 == 0x6665722D69726169)
              {
                goto LABEL_109;
              }

              goto LABEL_199;
            }
          }

LABEL_209:
          BYTE9(v91) = 1;
          v81 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          v82 = off_1EE2BBBC0;
          if (!off_1EE2BBBC0)
          {
            IMSMetricsManager::create_default_global(v81);
          }

          v85 = *(&off_1EE2BBBC0 + 1);
          if (*(&off_1EE2BBBC0 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
          (*(**(v82 + 184) + 216))(*(v82 + 184), &v89);
        }

        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        if (SBYTE7(v91) < 0)
        {
          operator delete(v90[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_1E4C6CFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void SipLazuliManager::handleOptionsError(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a1[29];
  if (v9)
  {
    v17 = std::__shared_weak_count::lock(v9);
    if (v17)
    {
      v18 = a1[28];
      if (v18)
      {
        v34 = a8;
        v19 = a1[31];
        if (v19)
        {
          v20 = std::__shared_weak_count::lock(v19);
          if (v20)
          {
            v21 = a1[30];
            if (v21)
            {
              v33 = v20;
              if (*(v18 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *(v18 + 4432), *(v18 + 4440));
              }

              else
              {
                __p = *(v18 + 4432);
              }

              (*(*v21 + 48))(v21, &__p, a4, a5, a6, a7);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = v33;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }

        if (a3 == 504 || a3 == 403)
        {
          v24 = a1[29];
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            if (v25)
            {
              v26 = v25;
              v27 = a1[28];
              if (v27)
              {
                v28 = (*(a1[4] + 64))(a1 + 4);
                (*(a1[4] + 16))(a1 + 4, v28);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "SIP OPTIONS response ", 21);
                *(v28 + 17) = 0;
                MEMORY[0x1E6923350](*(v28 + 8), a3);
                *(v28 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ": Triggering lazuli registration termination", 44);
                *(v28 + 17) = 0;
                (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v28 + 17) = 0;
                SipStack::terminateLazuliRegistration(v27, 5);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }
          }
        }

        v29 = *(a4 + 16);
        v30 = SipMessage::header<SipContactHeader>(*a2);
        if (v30)
        {
          if (v30[9] == v30[10])
          {
            v31 = 0;
          }

          else
          {
            v31 = v30[9];
          }
        }

        else
        {
          v31 = 0;
        }

        SipLazuliManager::logSipOptionsEvent(a1, v29, v31, 0, v34);
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        goto LABEL_37;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = a1[27];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    (*(a1[22] + 16))(&__p, a1 + 22);
    v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v37 = 1752392040;
    v38 = 2081;
    v39 = v23;
    _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v17)
  {
    goto LABEL_36;
  }

LABEL_37:
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E4C6D400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void SipLazuliManager::getPowerAssertionTag(int a1@<W1>, int a2@<W2>, std::string *a3@<X8>)
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, "com.apple.ipTelephony");
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (a1)
  {
    v7 = ".msrpIncoming";
  }

  else
  {
    v7 = ".msrpOutgoing";
  }

  std::string::basic_string[abi:ne200100]<0>(v16, v7);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2)
  {
    v8 = ".wifi";
  }

  else
  {
    v8 = ".cell";
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, v8);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, v16, &__p);
  if (v15 >= 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13;
  }

  if (v15 >= 0)
  {
    v10 = HIBYTE(v15);
  }

  else
  {
    v10 = v14;
  }

  v11 = std::string::append(&__p, v9, v10);
  *a3 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1E4C6D5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 1;
  return a1;
}

void std::__list_imp<SipLazuliManager::DeferredMessage>::clear(char *a1)
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
        SipUri::~SipUri((v2 + 408));
        LazuliSendParams::~LazuliSendParams(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(uint64_t *a1)
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
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C6D970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SipUri::~SipUri(SipUri *this)
{
  *this = &unk_1F5EC6940;
  *(this + 46) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 376, *(this + 48));
  *(this + 41) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 336, *(this + 43));
  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  SipHop::~SipHop(this);
}

{
  SipUri::~SipUri(this);

  JUMPOUT(0x1E69235B0);
}

void SipHop::~SipHop(SipHop *this)
{
  *this = &unk_1F5EBEF00;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHost::~SipHost((this + 8));
}

ImsOutStream *SipHop::toStream(SipHop *this, ImsOutStream *a2)
{
  SipHost::ipAddress((this + 8), &v4);
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a2;
}

void sub_1E4C6DBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void LazuliReceiveParams::~LazuliReceiveParams(LazuliReceiveParams *this)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 968);
  v2 = *(this + 117);
  if (v2)
  {
    *(this + 118) = v2;
    operator delete(v2);
  }

  if (*(this + 935) < 0)
  {
    operator delete(*(this + 114));
  }

  if (*(this + 911) < 0)
  {
    operator delete(*(this + 111));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  SipUri::~SipUri((this + 432));
  SipUri::~SipUri((this + 24));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
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

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void LazuliSendParams::LazuliSendParams(std::string *this, const LazuliSendParams *a2)
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

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[6], *(a2 + 18), *(a2 + 19), *(a2 + 19) - *(a2 + 18));
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v10 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v10;
  }

  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[8], *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  this[9].__r_.__value_.__r.__words[0] = *(a2 + 27);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v11 = *(a2 + 14);
    this[10].__r_.__value_.__r.__words[0] = *(a2 + 30);
    *&this[9].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v12 = *(a2 + 248);
    this[11].__r_.__value_.__r.__words[0] = *(a2 + 33);
    *&this[10].__r_.__value_.__r.__words[1] = v12;
  }

  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v13 = *(a2 + 17);
    this[12].__r_.__value_.__r.__words[0] = *(a2 + 36);
    *&this[11].__r_.__value_.__r.__words[1] = v13;
  }

  if (*(a2 + 319) < 0)
  {
    std::string::__init_copy_ctor_external((this + 296), *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v14 = *(a2 + 296);
    this[13].__r_.__value_.__r.__words[0] = *(a2 + 39);
    *&this[12].__r_.__value_.__r.__words[1] = v14;
  }

  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external((this + 320), *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v15 = *(a2 + 20);
    this[14].__r_.__value_.__r.__words[0] = *(a2 + 42);
    *&this[13].__r_.__value_.__r.__words[1] = v15;
  }

  this[14].__r_.__value_.__l.__size_ = 0;
  this[14].__r_.__value_.__r.__words[2] = 0;
  this[15].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[14].__r_.__value_.__l.__size_, *(a2 + 43), *(a2 + 44), *(a2 + 44) - *(a2 + 43));
  if (*(a2 + 391) < 0)
  {
    std::string::__init_copy_ctor_external((this + 368), *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = *(a2 + 23);
    this[16].__r_.__value_.__r.__words[0] = *(a2 + 48);
    *&this[15].__r_.__value_.__r.__words[1] = v16;
  }
}

void sub_1E4C6E064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 344);
  if (v6)
  {
    *(v2 + 352) = v6;
    operator delete(v6);
  }

  if (*(v2 + 343) < 0)
  {
    operator delete(*(v2 + 320));
  }

  if (*(v2 + 319) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 295) < 0)
  {
    operator delete(*(v2 + 272));
  }

  if (*(v2 + 271) < 0)
  {
    operator delete(*(v2 + 248));
  }

  if (*(v2 + 247) < 0)
  {
    operator delete(*(v2 + 224));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 152) = v7;
    operator delete(v7);
  }

  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C6E22C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C6E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
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

void LazuliSendParams::~LazuliSendParams(void **this)
{
  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  v2 = this[43];
  if (v2)
  {
    this[44] = v2;
    operator delete(v2);
  }

  if (*(this + 343) < 0)
  {
    operator delete(this[40]);
  }

  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  v4 = this + 24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  v3 = this[18];
  if (v3)
  {
    this[19] = v3;
    operator delete(v3);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
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

uint64_t std::vector<SipUri>::__emplace_back_slow_path<SipUri const&>(uint64_t a1, const SipUri *a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(a1, v6);
  }

  v13 = 0;
  v14 = 408 * v2;
  SipUri::SipUri((408 * v2), a2);
  v15 = 408 * v2 + 408;
  v7 = *(a1 + 8);
  v8 = (408 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SipUri>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4C6E7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SipUri>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(int a1, SipUri *a2, SipUri *a3, SipUri *this)
{
  if (a2 != a3)
  {
    v4 = this;
    v6 = a2;
    v7 = 0;
    v8 = this - 408;
    v9 = a2;
    do
    {
      SipUri::SipUri(v4, v9);
      v9 = (v9 + 408);
      v4 = (v4 + 408);
      v7 -= 408;
      v8 += 408;
    }

    while (v9 != a3);
    v10 = v6;
    do
    {
      result = (**v6)(v6);
      v6 = (v6 + 408);
      v10 = (v10 + 408);
    }

    while (v6 != a3);
  }

  return result;
}

void sub_1E4C6E8F8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 408);
    do
    {
      (**v5)(v5);
      v5 -= 51;
      v3 -= 408;
      v2 += 408;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SipUri>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 408;
    (**(i - 408))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<SipUri>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 51;
      v7 = v4 - 51;
      do
      {
        (**v7)(v7);
        v6 -= 51;
        v8 = v7 == v2;
        v7 -= 51;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **xpc::array::iterator::iterator(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void ims::CFMutableDictionary::~CFMutableDictionary(ims::CFMutableDictionary *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::vector<SipUri>::__emplace_back_slow_path<SipUri>(uint64_t a1, const SipUri *a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipUri>>(a1, v6);
  }

  v13 = 0;
  v14 = 408 * v2;
  SipUri::SipUri((408 * v2), a2);
  v15 = 408 * v2 + 408;
  v7 = *(a1 + 8);
  v8 = (408 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipUri>,SipUri*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SipUri>::~__split_buffer(&v13);
  return v12;
}

void sub_1E4C6EC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SipUri>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

ImsResult *std::__optional_copy_base<ImsResult,false>::__optional_copy_base[abi:ne200100](ImsResult *this, const ImsResult *a2)
{
  *this = 0;
  *(this + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    ImsResult::ImsResult(this, a2);
    *(this + 88) = 1;
  }

  return this;
}

void sub_1E4C6ECC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    ImsResult::~ImsResult(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__list_imp<SipLazuliManager::OutgoingMsrp>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    v3[1] = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        std::__list_imp<SipLazuliManager::OutgoingMsrp>::__delete_node[abi:ne200100](result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__list_imp<SipLazuliManager::OutgoingMsrp>::__delete_node[abi:ne200100](void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  return this;
}

void sub_1E4C6EE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

void sub_1E4C6EEB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ims::analytics::RCSSendReceiveInfo::~RCSSendReceiveInfo(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t ims::SharedLoggable<SipLazuliManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipLazuliManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>(uint64_t a1)
{
  std::__list_imp<SipLazuliManager::OutgoingMsrp>::clear((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(void **a1)
{
  if (a1[5])
  {
    v2 = (a1 + 3);
    v3 = a1[4];
    v4 = *(a1[3] + 1);
    v5 = *v3;
    v5[1] = v4;
    *v4 = v5;
    a1[5] = 0;
    if (v3 != a1 + 3)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[13];
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v9 = v3 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v3 + 63) < 0)
        {
          operator delete(v3[5]);
        }

        if (*(v3 + 39) < 0)
        {
          operator delete(v3[2]);
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    v8 = *a1;

    operator delete(v8);
  }
}

void std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(void **a1)
{
  if (a1[5])
  {
    v2 = a1 + 3;
    v3 = a1[4];
    v4 = *(a1[3] + 1);
    v5 = *v3;
    v5[1] = v4;
    *v4 = v5;
    a1[5] = 0;
    if (v3 != a1 + 3)
    {
      do
      {
        v6 = v3[1];
        LazuliSendParams::~LazuliSendParams(v3 + 2);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    v7 = *a1;

    operator delete(v7);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipClientTransaction>> const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipClientTransaction>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<SipClientTransaction>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E4C6F900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MessageSession>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipServerTransaction>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<SipServerTransaction>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipServerTransaction>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<SipServerTransaction>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E4C6FD28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::__function::__func<SipLazuliManager::handleRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0,std::allocator<SipLazuliManager::handleRequest(std::shared_ptr<SipRequest const>,std::shared_ptr<SipServerTransaction>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
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

uint64_t *std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E69235B0](v2, 0x60C40A44E5E0CLL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,dispatch_queue_s *::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>)::{lambda(void *)#1}::__invoke(IPTelephonyManager *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(a1, &v9);
  v2 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "UserTriggered");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v2, v1, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E4C70104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0>(SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0,std::default_delete<SipLazuliManager::handleOutgoingMessageSuccess(SipUri const&,std::string const&,unsigned int,std::string const&,BOOL,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(IPTelephonyManager *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(a1, &v9);
  v2 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "UserTriggered");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v2, v1, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E4C70260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0>(SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0,std::default_delete<SipLazuliManager::handleOutgoingMessageError(SipUri const&,std::string const&,unsigned int,ImsResult)::$_0>>)::{lambda(void *)#1}::__invoke(IPTelephonyManager *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v9 = 0;
  v10 = 0;
  IPTelephonyManager::getCallManager(a1, &v9);
  v2 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, "MediaTimeout");
  object = xpc_null_create();
  IMSCallManager::terminateLazuli(v2, v1, __p, &object, 0);
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E4C70364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  object = 0;
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0,std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SipLazuliManager::OutgoingPager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBEBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipLazuliManager::OutgoingPager>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 160))
  {
    ImsPowerAssertion::deinitialize(a1 + 136);
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(v2 + 344);
    *(v2 + 336) = 0;
    *(v2 + 344) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  ImsPowerAssertion::~ImsPowerAssertion((a1 + 136));
  v4 = *(a1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void LazuliSendParams::LazuliSendParams(std::string *this, __int128 *a2)
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

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[6], *(a2 + 18), *(a2 + 19), *(a2 + 19) - *(a2 + 18));
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v10 = *(a2 + 168);
    this[7].__r_.__value_.__r.__words[2] = *(a2 + 23);
    *&this[7].__r_.__value_.__l.__data_ = v10;
  }

  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[8], *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  this[9].__r_.__value_.__r.__words[0] = *(a2 + 27);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v11 = a2[14];
    this[10].__r_.__value_.__r.__words[0] = *(a2 + 30);
    *&this[9].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v12 = *(a2 + 248);
    this[11].__r_.__value_.__r.__words[0] = *(a2 + 33);
    *&this[10].__r_.__value_.__r.__words[1] = v12;
  }

  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v13 = a2[17];
    this[12].__r_.__value_.__r.__words[0] = *(a2 + 36);
    *&this[11].__r_.__value_.__r.__words[1] = v13;
  }

  if (*(a2 + 319) < 0)
  {
    std::string::__init_copy_ctor_external((this + 296), *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v14 = *(a2 + 296);
    this[13].__r_.__value_.__r.__words[0] = *(a2 + 39);
    *&this[12].__r_.__value_.__r.__words[1] = v14;
  }

  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external((this + 320), *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v15 = a2[20];
    this[14].__r_.__value_.__r.__words[0] = *(a2 + 42);
    *&this[13].__r_.__value_.__r.__words[1] = v15;
  }

  this[14].__r_.__value_.__l.__size_ = 0;
  this[14].__r_.__value_.__r.__words[2] = 0;
  this[15].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&this[14].__r_.__value_.__l.__size_, *(a2 + 43), *(a2 + 44), *(a2 + 44) - *(a2 + 43));
  if (*(a2 + 391) < 0)
  {
    std::string::__init_copy_ctor_external((this + 368), *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = a2[23];
    this[16].__r_.__value_.__r.__words[0] = *(a2 + 48);
    *&this[15].__r_.__value_.__r.__words[1] = v16;
  }
}

void sub_1E4C707A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = *(v2 + 344);
  if (v6)
  {
    *(v2 + 352) = v6;
    operator delete(v6);
  }

  if (*(v2 + 343) < 0)
  {
    operator delete(*(v2 + 320));
  }

  if (*(v2 + 319) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 295) < 0)
  {
    operator delete(*(v2 + 272));
  }

  if (*(v2 + 271) < 0)
  {
    operator delete(*(v2 + 248));
  }

  if (*(v2 + 247) < 0)
  {
    operator delete(*(v2 + 224));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 152) = v7;
    operator delete(v7);
  }

  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::processLargeMsgQueue(void)::$_0>(SipLazuliManager::processLargeMsgQueue(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,dispatch_queue_s *::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v4 = v3;
    if (v3 && *v1)
    {
      IPTelephonyManager::getCallManager(v3, &v10);
      IMSCallManager::initializeMOLazuliSession(v10, (v1 + 2), 0, 0);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = std::string::basic_string[abi:ne200100]<0>(&v15, "laz.mgr");
  LOBYTE(v10) = 0;
  v14 = 0;
  v6 = ims::error(v5, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Instance lost. Stack teardown?", 30);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v4)
  {
    goto LABEL_13;
  }

LABEL_14:
  std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,std::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>::~unique_ptr[abi:ne200100](&v9);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_1E4C70A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,std::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SipLazuliManager::processLargeMsgQueue(void)::$_0,std::default_delete<SipLazuliManager::processLargeMsgQueue(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LazuliSendParams::~LazuliSendParams((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E69235B0](v2, 0x1032C408BDCE2A7);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
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

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
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

  return *v3;
}

void sub_1E4C70C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBEC38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EBEC38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EBEC38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        if (*(a2 + 23) < 0 && *(a2 + 8) == 23 && (**a2 == 0x3330357265676150 ? (v8 = *(*a2 + 8) == 0x7466417972746552) : (v8 = 0), v8 ? (v9 = *(*a2 + 15) == 0x72656D6954726574) : (v9 = 0), v9))
        {
          v14 = v5 + 32;
          v13 = *(v5 + 32);
          if (*(v5 + 432))
          {
            v15 = (*(v13 + 64))(v5 + 32);
            (*(*v14 + 16))(v5 + 32, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Retrying pager MESSAGE again as recommended by Server", 53);
            *(v15 + 17) = 0;
            (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v15 + 17) = 0;
            v17 = *(v5 + 432);
            v16 = *(v5 + 440);
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v18 = *(v5 + 424);
            *(v5 + 416) = v17;
            *(v5 + 424) = v16;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v19 = *(v5 + 440);
            *(v5 + 432) = 0;
            *(v5 + 440) = 0;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            SipLazuliManager::OutgoingPager::send(*(v5 + 416));
          }

          else
          {
            v20 = (*(v13 + 48))(v5 + 32);
            (*(*v14 + 16))(v5 + 32, v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Lost track of previous throttled pager MESSAGE. Processing send queue...", 72);
            *(v20 + 17) = 0;
            (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v20 + 17) = 0;
            SipLazuliManager::processSendQueue(v5);
          }
        }

        else
        {
          v11 = *(v5 + 32);
          v10 = v5 + 32;
          v12 = (*(v11 + 48))(v10);
          (*(*v10 + 16))(v10, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Timer fired for unknown id ", 27);
          *(v12 + 17) = 0;
          (*(*v12 + 32))(v12, a2);
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0,std::allocator<SipLazuliManager::handleServiceUnavailableResponse(std::shared_ptr<SipResponse const>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>(SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,dispatch_queue_s *::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>)::{lambda(void *)#1}::__invoke(IPTelephonyManager *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  IPTelephonyManager::getCallManager(a1, &v5);
  IMSCallManager::initializeMOLazuliSession(v5, v1, 0, *(v1 + 392));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,std::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>::~unique_ptr[abi:ne200100](&v4);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1E4C712A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,std::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0,std::default_delete<SipLazuliManager::send(LazuliSendParams const&,SipUri const&)::$_0>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LazuliSendParams::~LazuliSendParams(v2);
    MEMORY[0x1E69235B0]();
  }

  return a1;
}

void sub_1E4C713A8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBECB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C714A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
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

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
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

  return *v3;
}

void sub_1E4C71618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1E4C71774(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::list<LazuliSendParams>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::list<LazuliSendParams>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E4C71C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::__erase_unique<std::string>(void *a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::OutgoingMsrp>>,0>((v4 + 4));

    operator delete(v4);
  }
}

void std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::__erase_unique<std::string>(void *a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<SipLazuliManager::DeferredGroupModification>>,0>((v4 + 32));

    operator delete(v4);
  }
}

void std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::__erase_unique<std::string>(void *a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::list<LazuliSendParams>>,0>((v4 + 32));

    operator delete(v4);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 1);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](v13);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t SipStringHeader::SipStringHeader(uint64_t a1, const std::string *a2, const std::string *a3)
{
  v5 = SipHeader::SipHeader(a1, a2);
  *v5 = &unk_1F5EBEF98;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  std::string::operator=((v5 + 64), a3);
  return a1;
}

void sub_1E4C722D8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  SipHeader::~SipHeader(v1);
  _Unwind_Resume(a1);
}

void SipHeader::~SipHeader(void **this)
{
  *this = &unk_1F5EC4F20;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void SipStringHeader::SipStringHeader(SipStringHeader *this, const SipStringHeader *a2)
{
  SipHeader::SipHeader(this, a2);
  *v4 = &unk_1F5EBEF98;
  v5 = (v4 + 8);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 10);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(this + 88) = 0;
}

uint64_t SipStringHeader::encodeValue(SipStringHeader *this, ImsOutStream *a2)
{
  if (*(this + 88) == 1)
  {
    ObfuscatedString::ObfuscatedString(v4, (this + 64));
    (*(*a2 + 56))(a2, v4);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    (*(*a2 + 32))(a2, this + 64);
  }

  return 1;
}

void SipStringHeader::~SipStringHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipPrivateTokenAuthScheme::~SipPrivateTokenAuthScheme(SipPrivateTokenAuthScheme *this)
{
  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 8);
}

{
  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 8);

  JUMPOUT(0x1E69235B0);
}

char *SipPrivateTokenAuthScheme::name(SipPrivateTokenAuthScheme *this)
{
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], SipPrivateTokenAuthScheme::name(void)const::scheme, &dword_1E4C3F000);
  }

  return SipPrivateTokenAuthScheme::name(void)const::scheme;
}

BOOL SipPrivateTokenAuthScheme::isValid(SipPrivateTokenAuthScheme *this)
{
  std::string::basic_string[abi:ne200100]<0>(v8, "token-key");
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, v8))
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "challenge");
    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, v6))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "extensions");
      v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p) != 0;
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v2 = 0;
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return v2;
}

void sub_1E4C729B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void SipPrivateTokenAuthScheme::patKey(SipPrivateTokenAuthScheme *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "token-key");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p);
  v5 = (v4 + 5);
  if (!v4)
  {
    v5 = &ims::kEmptyString;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C72A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipPrivateTokenAuthScheme::patChallenge(SipPrivateTokenAuthScheme *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "challenge");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p);
  v5 = (v4 + 5);
  if (!v4)
  {
    v5 = &ims::kEmptyString;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C72B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipPrivateTokenAuthScheme::extensions(SipPrivateTokenAuthScheme *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "extensions");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 1, __p);
  v5 = (v4 + 5);
  if (!v4)
  {
    v5 = &ims::kEmptyString;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C72BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t XmlParserGenericItem::XmlParserGenericItem(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(a1 + 8, a2, 0);
  *a1 = &unk_1F5EBF0B0;
  *(a1 + 8) = &unk_1F5EBF130;
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::string::operator=((a1 + 64), a2);
  return a1;
}

void sub_1E4C72D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = *v6;
  if (*v6)
  {
    *(v3 + 168) = v8;
    operator delete(v8);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v5, *(v3 + 144));
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 111) < 0)
  {
    operator delete(*(v3 + 88));
  }

  if (*(v3 + 87) < 0)
  {
    operator delete(*v4);
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
  _Unwind_Resume(a1);
}

void XmlParserGenericItem::XmlParserGenericItem(XmlParserGenericItem *this, const XmlParserGenericItem *a2)
{
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, a2 + 4, 0);
  *this = &unk_1F5EBF0B0;
  *(this + 1) = &unk_1F5EBF130;
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 20) = 0;
  *(this + 19) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::string::operator=((this + 64), (a2 + 64));
  std::string::operator=((this + 88), (a2 + 88));
  if (this != a2)
  {
    std::vector<bambi::XmlParserNamespace>::__assign_with_size[abi:ne200100]<bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(this + 14, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 4));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 17, *(a2 + 17), a2 + 18);
  }

  v4 = *(a2 + 20);
  if (v4 != *(a2 + 21))
  {
    v5 = *v4;
    operator new();
  }
}

void sub_1E4C72F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12)
{
  v17 = *v15;
  if (*v15)
  {
    *(v12 + 168) = v17;
    operator delete(v17);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v14, *(v12 + 144));
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (*(v12 + 111) < 0)
  {
    operator delete(*(v12 + 88));
  }

  if (*(v12 + 87) < 0)
  {
    operator delete(*v13);
  }

  bambi::XmlTreeItem::~XmlTreeItem(a10);
  _Unwind_Resume(a1);
}

void XmlParserGenericItem::~XmlParserGenericItem(XmlParserGenericItem *this)
{
  *this = &unk_1F5EBF0B0;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EBF130;
  v3 = *(this + 20);
  v4 = *(this + 21);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 20);
  }

  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 136, *(this + 18));
  v5 = (this + 112);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  XmlParserGenericItem::~XmlParserGenericItem(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXmlParserGenericItem::~XmlParserGenericItem(XmlParserGenericItem *this)
{
  XmlParserGenericItem::~XmlParserGenericItem((this - 8));
}

{
  XmlParserGenericItem::~XmlParserGenericItem((this - 8));

  JUMPOUT(0x1E69235B0);
}

BOOL XmlParserGenericItem::getAttribute(uint64_t a1, void **a2, std::string *a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 136, a2);
  v6 = v5;
  v7 = a1 + 144;
  if (v7 != v5)
  {
    std::string::operator=(a3, (v5 + 56));
  }

  return v7 != v6;
}

void XmlParserGenericItem::setNamespace(uint64_t a1, std::string **a2)
{
  v2 = (a1 + 112);
  if (v2 != a2)
  {
    std::vector<bambi::XmlParserNamespace>::__assign_with_size[abi:ne200100]<bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }
}

void std::vector<XmlParserGenericItem *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
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

uint64_t XmlParserGenericItem::firstChildAtPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = std::string::find(a2, 47, 0);
  if (v6 == -1)
  {

    return XmlParserGenericItem::firstChildWithName(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    memset(&v13, 0, sizeof(v13));
    std::string::basic_string(&v13, a2, 0, v6, &v12);
    ChildWithName = XmlParserGenericItem::firstChildWithName(a1, &v13.__r_.__value_.__l.__data_, a3);
    v9 = ChildWithName;
    v10 = *(a2 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    if (v7 < v10 - 1)
    {
      if (ChildWithName)
      {
        std::string::basic_string(&v12, a2, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
        v9 = XmlParserGenericItem::firstChildAtPath(v9, &v12, a3);
        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (a3)
        {
          operator new();
        }

        v9 = 0;
      }
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    return v9;
  }
}

void sub_1E4C73544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1E69235B0](v21, 0x10B3C403C8F4F1BLL);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E4C735E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XmlParserGenericItem::firstChildWithName(uint64_t a1, const void **a2, int a3)
{
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  if (v4 == v5)
  {
LABEL_16:
    if (a3)
    {

      XmlParserGenericItem::addChildWithName();
    }

    return 0;
  }

  else
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    while (1)
    {
      v9 = *v4;
      v10 = *(*v4 + 87);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(*v4 + 72);
      }

      if (v10 == v7)
      {
        v12 = v11 >= 0 ? (v9 + 64) : *(v9 + 64);
        if (!memcmp(v12, v8, v7))
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  return v9;
}

void XmlParserGenericItem::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E4C73C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v30 = *(v28 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<bambi::XmlParserNamespace>::__assign_with_size[abi:ne200100]<bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 48;
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x555555555555555)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(a1, v14);
      }
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v15 >> 4) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<bambi::XmlParserNamespace *,bambi::XmlParserNamespace *,bambi::XmlParserNamespace *>(__str, a3, v9);
    for (i = a1[1]; i != v16; std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(i))
    {
      i -= 48;
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<bambi::XmlParserNamespace *,bambi::XmlParserNamespace *,bambi::XmlParserNamespace *>(__str, (__str + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(__str + v15, a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*,bambi::XmlParserNamespace*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v7->__r_.__value_.__l.__data_ = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v6 += 48;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1E4C73FF4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__copy_impl::operator()[abi:ne200100]<bambi::XmlParserNamespace *,bambi::XmlParserNamespace *,bambi::XmlParserNamespace *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<bambi::XmlTreeNs>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 += 48;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t bambi::XmlTreeNs::XmlTreeNs(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), a3);
  return a1;
}

void sub_1E4C742D0(_Unwind_Exception *exception_object)
{
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

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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
          std::string::operator=((v8 + 7), (v9 + 7));
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

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
}

void sub_1E4C74628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseAMRFormatParameters(uint64_t a1, __int16 a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v5 = parseAMRFormatParametersHelper(a1, a2, 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1E4C74734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t parseAMRFormatParametersHelper(uint64_t a1, __int16 a2, int a3, std::string *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&v32, a2, a3);
  std::string::basic_string[abi:ne200100]<0>(&__str, "\t ;");
  ims::tokenize(a4, &v36, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v6 = v36;
  v7 = v37;
  if (v36 == v37)
  {
    goto LABEL_35;
  }

  v8 = 1;
  do
  {
    memset(&__str, 0, sizeof(__str));
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v6, *(v6 + 1));
    }

    else
    {
      v9 = *v6;
      __str.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__str.__r_.__value_.__l.__data_ = v9;
    }

    v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v12 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v13 = memchr(v12, 61, size);
      v14 = v13 - v12;
      if (v13 && v14 != -1)
      {
        memset(&v31, 0, sizeof(v31));
        std::string::basic_string(&v31, &__str, 0, v14, &v30);
        memset(&v30, 0, sizeof(v30));
        std::string::basic_string(&v30, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, &v39);
        ims::chomp(&v30, "\r\n\t ;", 3);
        v16 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&SDPParser::amrFormatParameters, &v31.__r_.__value_.__l.__data_);
        v17 = (v16 == &qword_1EE2BD050) & v8;
        if (v16 != &qword_1EE2BD050 && ((v8 ^ 1) & 1) == 0)
        {
          v39 = &v31;
          v18 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&SDPParser::amrFormatParameters, &v31.__r_.__value_.__l.__data_) + 56);
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v29, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = v30;
          }

          v17 = v18(&v32, &v29);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v8 = v17;
      }
    }

    if (v10 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v6 = (v6 + 24);
  }

  while (v6 != v7);
  if (v8)
  {
LABEL_35:
    SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(&__str, &v32);
    v41 = 1;
    SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &__str);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__str);
    v19 = 1;
  }

  else
  {
    v20 = std::string::basic_string[abi:ne200100]<0>(&__str, "sdp.parser");
    v25[0] = 0;
    v28 = 0;
    v21 = ims::error(v20, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Failed to parse AMR codec with format parameters '", 50);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, a4);
    v22 = *(v21 + 8);
    v31.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v31, 1);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v19 = 0;
  }

  *&v32 = &unk_1F5EF5FB8;
  if (SBYTE7(v34) < 0)
  {
    operator delete(v33);
  }

  __str.__r_.__value_.__r.__words[0] = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1E4C74B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  *(v53 - 240) = &a53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v53 - 240));
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseAMRWBFormatParameters(uint64_t a1, __int16 a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v5 = parseAMRFormatParametersHelper(a1, a2, 1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1E4C74CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseEVSFormatParameters(uint64_t a1, __int16 a2, std::string *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v24 = 0u;
  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&v24, a2);
  std::string::basic_string[abi:ne200100]<0>(&__str, "\t ;");
  ims::tokenize(a3, &v32, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v20 = a1;
  v5 = v32;
  v6 = v33;
  for (i = 1; v5 != v6; v5 = (v5 + 24))
  {
    memset(&__str, 0, sizeof(__str));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v5, *(v5 + 1));
    }

    else
    {
      v8 = *v5;
      __str.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&__str.__r_.__value_.__l.__data_ = v8;
    }

    v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v11 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v12 = memchr(v11, 61, size);
      v13 = v12 - v11;
      if (v12 && v13 != -1)
      {
        memset(&v23, 0, sizeof(v23));
        std::string::basic_string(&v23, &__str, 0, v13, &v22);
        memset(&v22, 0, sizeof(v22));
        std::string::basic_string(&v22, &__str, v13 + 1, 0xFFFFFFFFFFFFFFFFLL, &v35);
        ims::chomp(&v22, "\r\n\t ;", 3);
        v15 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&SDPParser::evsFormatParameters, &v23.__r_.__value_.__l.__data_);
        v16 = (v15 == &qword_1EE2BD038) & i;
        if (v15 != &qword_1EE2BD038 && ((i ^ 1) & 1) == 0)
        {
          v35 = &v23;
          v17 = *(std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&SDPParser::evsFormatParameters, &v23.__r_.__value_.__l.__data_) + 56);
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v21, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
          }

          else
          {
            v21 = v22;
          }

          v16 = v17(&v24, &v21);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        i = v16;
      }
    }

    if (v9 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(&__str, &v24);
  v37 = 2;
  SDPMediaFormatInfo::setSDPMediaFormatParams(v20, &__str);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__str);
  *&v24 = &unk_1F5EF5FB8;
  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  __str.__r_.__value_.__r.__words[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  v18 = *MEMORY[0x1E69E9840];
  return i & 1;
}

void sub_1E4C74FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v48 - 224));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  *(v48 - 224) = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v48 - 224));
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseDTMFFormatParameters(uint64_t a1, __int16 a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  SDPMediaFormatParams::SDPMediaFormatParams(&v14, a2);
  v14 = &unk_1F5EBF210;
  LOBYTE(v19) = v15;
  v18 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = v17;
  v18 = &unk_1F5EBF210;
  v22 = 3;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &v18);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
  v14 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ims::chomp("\r\n\t ", a3, 3, &v18);
  if ((v20.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if (v20.__r_.__value_.__s.__data_[7] != 4 || v18 != 892415280)
    {
      goto LABEL_14;
    }

LABEL_12:
    result = 1;
    goto LABEL_20;
  }

  if (v19 == 4)
  {
    v5 = *v18;
    operator delete(v18);
    if (v5 == 892415280)
    {
      goto LABEL_12;
    }
  }

  else
  {
    operator delete(v18);
  }

LABEL_14:
  std::string::basic_string[abi:ne200100]<0>(&v18, "sdp.parser");
  v10[0] = 0;
  v13 = 0;
  v7 = ims::warn(&v18, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "DTMF with unexpected format parameters parsed: '", 48);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a3);
  v8 = *(v7 + 8);
  LOBYTE(v14) = 39;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v20.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v18);
  }

  result = 0;
LABEL_20:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C75364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaFormatDTMFParams::~SDPMediaFormatDTMFParams(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPParser::parseTTYFormatParameters(uint64_t a1, __int16 a2, const std::string *__s)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = 0;
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v7 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = __s;
  }

  if (size >= 3)
  {
    v8 = v7 + size;
    v9 = v7;
    do
    {
      v10 = memchr(v9, 99, size - 2);
      if (!v10)
      {
        break;
      }

      if (*v10 == 28771 && v10[2] == 115)
      {
        v12 = 0;
        if (v10 != v8 && v10 - v7 != -1)
        {
          memset(v29, 0, sizeof(v29));
          *v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v22 = 0u;
          std::string::basic_string(&v15, __s, v10 - v7 + 4, 0xFFFFFFFFFFFFFFFFLL, &v21);
          std::istringstream::basic_istringstream[abi:ne200100](&v22, &v15);
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }

          MEMORY[0x1E6923290](&v22, &v20);
          *&v22 = *MEMORY[0x1E69E54E0];
          *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E0] + 24);
          *&v23 = MEMORY[0x1E69E5548] + 16;
          if (SBYTE7(v28) < 0)
          {
            operator delete(v27[0]);
          }

          *&v23 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v23 + 1);
          std::istream::~istream();
          MEMORY[0x1E6923510](v29 + 8);
          v12 = v20;
        }

        goto LABEL_13;
      }

      v9 = (v10 + 1);
      size = v8 - v9;
    }

    while (v8 - v9 >= 3);
  }

  v12 = 0;
LABEL_13:
  SDPMediaFormatParams::SDPMediaFormatParams(&v15, a2);
  v15.__r_.__value_.__r.__words[0] = &unk_1F5EF24A0;
  v18 = v12;
  v19 = 0;
  SDPMediaFormatParams::SDPMediaFormatParams(&v22, v17);
  *&v22 = &unk_1F5EF24A0;
  HIDWORD(v24) = v18;
  *&v25 = v19;
  DWORD2(v29[0]) = 4;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &v22);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22);
  v15.__r_.__value_.__r.__words[0] = &unk_1F5EF5FB8;
  if (v16 < 0)
  {
    operator delete(v15.__r_.__value_.__r.__words[2]);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  a1[21] = 0;
  v4 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v5 = *(MEMORY[0x1E69E54E0] + 16);
  v6 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5568] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[15] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, 8);
  return a1;
}

void sub_1E4C75920(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1E6923510](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1E6923510](a1 + 120);
  return a1;
}

uint64_t SDPParser::parseTTYRedFormatParameters(uint64_t a1, __int16 a2, std::string *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = 255;
  v14 = 255;
  v7 = std::string::find(this, 47, 0);
  if (v7 != -1)
  {
    memset(v23, 0, 160);
    __p = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    std::string::basic_string(&v10, this, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v15);
    std::istringstream::basic_istringstream[abi:ne200100](&v16, &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    MEMORY[0x1E69232A0](&v16, &v14);
    *&v16 = *MEMORY[0x1E69E54E0];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E0] + 24);
    *&v17 = MEMORY[0x1E69E5548] + 16;
    if (SBYTE7(v22) < 0)
    {
      operator delete(__p);
    }

    *&v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v17 + 1);
    std::istream::~istream();
    MEMORY[0x1E6923510](&v23[2]);
    v6 = v14;
  }

  SDPMediaFormatParams::SDPMediaFormatParams(&v10, a2);
  v10.__r_.__value_.__r.__words[0] = &unk_1F5EF2518;
  v13 = v6;
  SDPMediaFormatParams::SDPMediaFormatParams(&v16, v12);
  *&v16 = &unk_1F5EF2518;
  WORD5(v18) = v13;
  v23[2] = 5;
  SDPMediaFormatInfo::setSDPMediaFormatParams(a1, &v16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v16);
  v10.__r_.__value_.__r.__words[0] = &unk_1F5EF5FB8;
  if (v11 < 0)
  {
    operator delete(v10.__r_.__value_.__r.__words[2]);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1E4C75ED0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(SDPMediaFormatAMRParams *this, const SDPMediaFormatAMRParams *a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, *(a2 + 20));
  *v3 = &unk_1F5EF2350;
  *(v3 + 42) = *(a2 + 42);
  *(v3 + 43) = *(a2 + 43);
  *(v3 + 46) = *(a2 + 46);
  *(v3 + 50) = *(a2 + 50);
  *(v3 + 52) = *(a2 + 26);
  *(v3 + 54) = *(a2 + 54);
  *(v3 + 56) = *(a2 + 28);
  *(v3 + 58) = *(a2 + 58);
  *(v3 + 60) = *(a2 + 30);
  *(v3 + 62) = *(a2 + 62);
  *(v3 + 63) = *(a2 + 63);
}

void SDPMediaFormatParams::SDPMediaFormatParams(SDPMediaFormatParams *this, __int16 a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fmtp");
  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(this + 1) = *__p;
    *(this + 4) = v5;
  }

  *this = &unk_1F5EF23B0;
  *(this + 20) = a2;
}

void sub_1E4C760A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(SDPMediaFormatEVSParams *this, __int16 a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, a2);
  *v2 = &unk_1F5EF2428;
  *(v2 + 42) = 0;
  *(v2 + 45) = 0;
  *(v2 + 50) = 220;
  *(v2 + 56) = vdupq_n_s64(0x1FFE00uLL);
  *(v2 + 72) = 2096640;
  *(v2 + 80) = 511;
  *(v2 + 84) = 0x600000006;
  *(v2 + 92) = 6;
  *(v2 + 96) = 257;
  *(v2 + 100) = 0;
  *(v2 + 102) = 131074;
  *(v2 + 110) = 0;
  *(v2 + 111) = 257;
  *(v2 + 114) = 255;
}

void SDPMediaFormatEVSParams::SDPMediaFormatEVSParams(SDPMediaFormatEVSParams *this, const SDPMediaFormatEVSParams *a2)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, *(a2 + 20));
  *v3 = &unk_1F5EF2428;
  *(v3 + 42) = *(a2 + 21);
  *(v3 + 44) = *(a2 + 22);
  *(v3 + 46) = *(a2 + 23);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 50) = *(a2 + 25);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 72) = *(a2 + 9);
  *(v3 + 80) = *(a2 + 40);
  *(v3 + 84) = *(a2 + 84);
  *(v3 + 92) = *(a2 + 23);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 97) = *(a2 + 97);
  *(v3 + 98) = *(a2 + 49);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 102) = *(a2 + 51);
  *(v3 + 104) = *(a2 + 26);
  *(v3 + 108) = *(a2 + 27);
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 114) = *(a2 + 57);
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[30];
  if (v2 != -1)
  {
    result = (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100IZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRSE_EEEDcOSF_DpOT0____fmatrix + v2))(&v3, result);
  }

  v1[30] = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJ27SDPMediaFormatUnknownParams23SDPMediaFormatAMRParams23SDPMediaFormatEVSParams24SDPMediaFormatDTMFParams23SDPMediaFormatTTYParams26SDPMediaFormatTTYRedParamsEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_S9_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5EF5FB8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(void **this)
{
  *this = &unk_1F5EBF288;
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
  SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaFormatUnknownParams::formatParameters(SDPMediaFormatUnknownParams *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

uint64_t std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatEVSParams *,std::string)>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1E4C76650(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69234C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  v6 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1E4C76714(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t ImsSocket::_createSocketWithDispatch(void *a1, int a2, dispatch_object_t *a3, uint64_t a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  *a1[8] = a2;
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v10 = a1[10];
  a1[10] = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    v12 = *v11;
    if (*v11 != -1)
    {
      *v36 = 128;
      getsockname(v12, (v11 + 8), v36);
      *(a1 + 22) = *(v11 + 9);
      IpAddress::createAddress(v11 + 8, __p);
      v13 = a1[7];
      v14 = *__p;
      *(a1 + 3) = *__p;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (a1[6])
        {
          goto LABEL_9;
        }
      }

      else if (v14)
      {
LABEL_9:
        if (a5)
        {
          v15 = a1[10];
          object = v15;
          if (v15)
          {
            dispatch_retain(v15);
          }

          ImsSocket::attachDispatchSource(a1, &object, v35);
          ImsResult::~ImsResult(v35);
          if (object)
          {
            dispatch_release(object);
          }
        }

        memset(uu, 0, sizeof(uu));
        if (*(a4 + 23) < 0)
        {
          if (!*(a4 + 8))
          {
            goto LABEL_23;
          }

          v16 = *a4;
        }

        else
        {
          v16 = a4;
          if (!*(a4 + 23))
          {
            goto LABEL_23;
          }
        }

        if (!uuid_parse(v16, uu))
        {
          v25 = setsockopt(a2, 0xFFFF, 4360, uu, 0x10u);
          v26 = a1[5];
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (!v27)
            {
              goto LABEL_56;
            }

            (*(*a1 + 16))(v36, a1);
            if (v39 >= 0)
            {
              v28 = v36;
            }

            else
            {
              v28 = *v36;
            }

            if (*(a4 + 23) >= 0)
            {
              v29 = a4;
            }

            else
            {
              v29 = *a4;
            }

            *__p = 141559299;
            *&__p[4] = 1752392040;
            *&__p[12] = 2081;
            *&__p[14] = v28;
            v41 = 2080;
            v42 = "Failed to Set UUID ";
            v43 = 2080;
            v44 = v29;
            v45 = 2080;
            v46 = " on socket fd=";
            v47 = 1024;
            v48 = a2;
            v22 = "%{private, mask.hash}s%s%s%s%d";
          }

          else
          {
            if (!v27)
            {
              goto LABEL_56;
            }

            (*(*a1 + 16))(v36, a1);
            if (v39 >= 0)
            {
              v31 = v36;
            }

            else
            {
              v31 = *v36;
            }

            if (*(a4 + 23) >= 0)
            {
              v32 = a4;
            }

            else
            {
              v32 = *a4;
            }

            *__p = 141559299;
            *&__p[4] = 1752392040;
            *&__p[12] = 2081;
            *&__p[14] = v31;
            v41 = 2080;
            v42 = "Set UUID ";
            v43 = 2080;
            v44 = v32;
            v45 = 2080;
            v46 = " on socket fd=";
            v47 = 1024;
            v48 = a2;
            v22 = "%{private, mask.hash}s%s%s%s%d";
          }

          v23 = v26;
          v24 = 58;
LABEL_54:
          _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_DEFAULT, v22, __p, v24);
          if (v39 < 0)
          {
            operator delete(*v36);
          }

          goto LABEL_56;
        }

LABEL_23:
        v19 = a1[5];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 16))(v36, a1);
          if (v39 >= 0)
          {
            v20 = v36;
          }

          else
          {
            v20 = *v36;
          }

          if (*(a4 + 23) >= 0)
          {
            v21 = a4;
          }

          else
          {
            v21 = *a4;
          }

          *__p = 141558787;
          *&__p[4] = 1752392040;
          *&__p[12] = 2081;
          *&__p[14] = v20;
          v41 = 2080;
          v42 = "Failed to parse UUID ";
          v43 = 2080;
          v44 = v21;
          v22 = "%{private, mask.hash}s%s%s";
          v23 = v19;
          v24 = 42;
          goto LABEL_54;
        }

LABEL_56:
        ImsSocket::_setDscpOnSocket(a1, a2);
        result = 1;
        goto LABEL_57;
      }
    }
  }

  v17 = a1[5];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 16))(__p, a1);
    v30 = v41 >= 0 ? __p : *__p;
    *v36 = 141558275;
    *&v36[4] = 1752392040;
    v37 = 2081;
    v38 = v30;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}ssetLocalAddressFromSocket failed", v36, 0x16u);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(*__p);
    }
  }

  (*(*a1 + 32))(a1);
  result = 0;
LABEL_57:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C76C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ImsSocket::attachDispatchSource(uint64_t a1@<X0>, dispatch_queue_t *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      dispatch_retain(*(a1 + 80));
      v10 = *a2;
      *a2 = v9;
      if (v10)
      {
        dispatch_release(v10);
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    (*(*a1 + 16))(&v30, a1);
    if (v32 >= 0)
    {
      v12 = &v30;
    }

    else
    {
      v12 = v30;
    }

    *buf = 141558275;
    v34 = 1752392040;
    v35 = 2081;
    v36 = v12;
    v13 = "#E %{private, mask.hash}sUnable to attach to NULL socket descriptor object";
LABEL_23:
    _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
LABEL_24:
    if (v32 < 0)
    {
      operator delete(v30);
    }

    goto LABEL_26;
  }

  if (!*a2)
  {
    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    (*(*a1 + 16))(&v30, a1);
    if (v32 >= 0)
    {
      v14 = &v30;
    }

    else
    {
      v14 = v30;
    }

    *buf = 141558275;
    v34 = 1752392040;
    v35 = 2081;
    v36 = v14;
    v13 = "#E %{private, mask.hash}sUnable to attach to NULL dispatch queue";
    goto LABEL_23;
  }

  if (*(v6 + 136))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 16))(&v30, a1);
      if (v32 >= 0)
      {
        v8 = &v30;
      }

      else
      {
        v8 = v30;
      }

      *buf = 141558275;
      v34 = 1752392040;
      v35 = 2081;
      v36 = v8;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}ssocket already attached to dispatch queue", buf, 0x16u);
      goto LABEL_24;
    }

LABEL_26:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0x40000000;
    goto LABEL_27;
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v30, (a1 + 8));
  v17 = v30;
  v16 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v18 = dispatch_source_create(MEMORY[0x1E69E96F8], **(a1 + 64), 0, *a2);
  *(*(a1 + 64) + 136) = v18;
  if (v18)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN9ImsSocket20attachDispatchSourceEN8dispatch5queueE_block_invoke;
    handler[3] = &__block_descriptor_tmp_30;
    handler[4] = a1;
    handler[5] = v17;
    v29 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_source_set_event_handler(v18, handler);
    v19 = *(a1 + 64);
    v20 = *(a1 + 72);
    v21 = v19;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *(a1 + 64);
    }

    v22 = *(v21 + 136);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1174405120;
    v23[2] = ___ZN9ImsSocket20attachDispatchSourceEN8dispatch5queueE_block_invoke_19;
    v23[3] = &__block_descriptor_tmp_22_2;
    v23[4] = a1;
    v23[5] = v19;
    v24 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = v17;
    v26 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = v22;
    dispatch_source_set_cancel_handler(v22, v23);
    dispatch_resume(*(*(a1 + 64) + 136));
    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
}

void ImsSocket::_setDscpOnSocket(ImsSocket *this, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (this + 92);
  v31 = *(this + 23);
  v5 = *(this + 22);
  if (v5 == 30)
  {
    v10 = setsockopt(a2, 41, 36, &v31, 4u);
    v7 = *(this + 5);
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      (*(*this + 16))(v29, this);
      if (v30 >= 0)
      {
        v12 = v29;
      }

      else
      {
        v12 = v29[0];
      }

      *buf = 141559299;
      v33 = 1752392040;
      v34 = 2081;
      v35 = v12;
      v36 = 2080;
      v37 = "Failed to Set IPV6_TCLASS on IPv6 socket fd=";
      v38 = 1024;
      *v39 = a2;
      *&v39[4] = 2080;
      *&v39[6] = " DSCP = 0x";
      *&v39[14] = 1024;
      *&v39[16] = v31;
      goto LABEL_15;
    }

    if (!v11)
    {
      goto LABEL_34;
    }

    (*(*this + 16))(v29, this);
    v17 = v30;
    v18 = v29[0];
    ims::toString<DscpClass>(v4, __p);
    v19 = v29;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if (v28 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 141559299;
    v33 = 1752392040;
    v34 = 2081;
    v35 = v19;
    v36 = 2080;
    v37 = "Set IPV6_TCLASS to ";
    v38 = 2080;
    *v39 = v20;
    *&v39[8] = 2080;
    *&v39[10] = " on IPv6 socket fd=";
    *&v39[18] = 1024;
    v40 = a2;
LABEL_30:
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%s%s%d", buf, 0x3Au);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_32;
  }

  if (v5 != 2)
  {
    goto LABEL_34;
  }

  v6 = setsockopt(a2, 0, 3, &v31, 4u);
  v7 = *(this + 5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_34;
    }

    (*(*this + 16))(v29, this);
    v13 = v30;
    v14 = v29[0];
    ims::toString<DscpClass>(v4, __p);
    v15 = v29;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v28 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 141559299;
    v33 = 1752392040;
    v34 = 2081;
    v35 = v15;
    v36 = 2080;
    v37 = "Set IP_TOS to ";
    v38 = 2080;
    *v39 = v16;
    *&v39[8] = 2080;
    *&v39[10] = " on IPv4 socket fd=";
    *&v39[18] = 1024;
    v40 = a2;
    goto LABEL_30;
  }

  if (!v8)
  {
    goto LABEL_34;
  }

  (*(*this + 16))(v29, this);
  if (v30 >= 0)
  {
    v9 = v29;
  }

  else
  {
    v9 = v29[0];
  }

  *buf = 141559299;
  v33 = 1752392040;
  v34 = 2081;
  v35 = v9;
  v36 = 2080;
  v37 = "Failed to Set IP_TOS on IPv4 socket fd=";
  v38 = 1024;
  *v39 = a2;
  *&v39[4] = 2080;
  *&v39[6] = " DSCP = 0x";
  *&v39[14] = 1024;
  *&v39[16] = v31;
LABEL_15:
  _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d%s%x", buf, 0x36u);
LABEL_32:
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

LABEL_34:
  LODWORD(__p[0]) = 800;
  v21 = setsockopt(a2, 0xFFFF, 4230, __p, 4u);
  v22 = *(this + 5);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_47;
    }

    (*(*this + 16))(v29, this);
    if (v30 >= 0)
    {
      v24 = v29;
    }

    else
    {
      v24 = v29[0];
    }

    *buf = 141558787;
    v33 = 1752392040;
    v34 = 2081;
    v35 = v24;
    v36 = 2080;
    v37 = "Failed to Set SO_TRAFFIC_CLASS on socket fd=";
    v38 = 1024;
    *v39 = a2;
  }

  else
  {
    if (!v23)
    {
      goto LABEL_47;
    }

    (*(*this + 16))(v29, this);
    if (v30 >= 0)
    {
      v25 = v29;
    }

    else
    {
      v25 = v29[0];
    }

    *buf = 141558787;
    v33 = 1752392040;
    v34 = 2081;
    v35 = v25;
    v36 = 2080;
    v37 = "Set SO_TRAFFIC_CLASS on socket fd=";
    v38 = 1024;
    *v39 = a2;
  }

  _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

LABEL_47:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4C776EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsSocket::ImsSocket(void *a1)
{
  v1 = ims::SharedLoggable<ImsSocket>::SharedLoggable(a1, "net");
  *v1 = &unk_1F5EBF300;
  v1[6] = 0;
  v1[7] = 0;
  operator new();
}

void sub_1E4C777E8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E69225A0](v1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v1 + 8));
  _Unwind_Resume(a1);
}

void *ims::SharedLoggable<ImsSocket>::SharedLoggable(void *a1, const char *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<ImsSocket,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EBF450;
  return a1;
}

void sub_1E4C77888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ImsSocket::close(ImsSocket *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      v4 = *(this + 5);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      (*(*this + 16))(__p, this);
      v5 = v17 >= 0 ? __p : *__p;
      v6 = **(this + 8);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v19 = 2081;
      v20 = v5;
      v21 = 2080;
      v22 = "ImsSocket detach source for fd ";
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
      if (v17 < 0)
      {
        operator delete(*__p);
      }

      v7 = *(this + 8);
      if (v7)
      {
        v3 = *(v7 + 136);
        if (v3)
        {
LABEL_11:
          dispatch_source_cancel(v3);
          *(*(this + 8) + 136) = 0;
        }
      }
    }

    else
    {
      v8 = *v2;
      v9 = *(this + 5);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8 == -1)
      {
        if (v10)
        {
          (*(*this + 16))(buf, this);
          v13 = v21 >= 0 ? buf : *buf;
          *__p = 141558275;
          *&__p[4] = 1752392040;
          v15 = 2081;
          v16 = v13;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sClosed", __p, 0x16u);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        if (v10)
        {
          (*(*this + 16))(__p, this);
          if (v17 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = **(this + 8);
          *buf = 141558787;
          *&buf[4] = 1752392040;
          v19 = 2081;
          v20 = v11;
          v21 = 2080;
          v22 = "Closing fd ";
          v23 = 1024;
          v24 = v12;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s%d", buf, 0x26u);
          if (v17 < 0)
          {
            operator delete(*__p);
          }

          v8 = **(this + 8);
        }

        close(v8);
        **(this + 8) = -1;
      }
    }
  }

  operator new();
}

double ImsSocket::allowPortReuse@<D0>(ImsSocket *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 8);
  if (!v2 || (v3 = *v2, v3 == -1))
  {
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741827;
  }

  else
  {
    ImsSocket::setReusePortOptionForSocket(v3, a2);
  }

  return result;
}

void ImsSocket::setReusePortOptionForSocket(ImsSocket *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v11 = *MEMORY[0x1E69E9840];
  v8 = 1;
  if (setsockopt(this, 0xFFFF, 512, &v8, 4u) == -1)
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v5 = *__error();
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_posixDomain;
    *(a2 + 16) = v5;
    ims::getStaticLoggerFor("net", buf);
    v6 = *&v10[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ImsResult::logStr(a2);
    }
  }

  else
  {
    ims::getStaticLoggerFor("net", buf);
    v4 = *&v10[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v10 = "ImsSocket: reuse port enabled for fd=";
      *&v10[8] = 1024;
      *&v10[10] = v2;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%s%d", buf, 0x12u);
    }

    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t ImsSocket::socketDescriptor(ImsSocket *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (!v2 || (result = *v2, result == -1))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      (*(*this + 16))(__p, this);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 141558275;
      v10 = 1752392040;
      v11 = 2081;
      v12 = v6;
      _os_log_error_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}s_sock is empty...", buf, 0x16u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}