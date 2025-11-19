void sub_1E4FCE824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  std::__shared_weak_count::__release_weak(v43);
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  _Unwind_Resume(a1);
}

uint64_t AVCRTPStackController::audioSessionCount(AVCRTPStackController *this)
{
  v1 = *(this + 12);
  v2 = this + 104;
  if (v1 == (this + 104))
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v14 = 0u;
    v15 = 0u;
    *__p = 0u;
    std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>::pair[abi:ne200100](__p, v1 + 2);
    v4 = *(&v14 + 1);
    if (*(&v14 + 1) != &v15)
    {
      do
      {
        v5 = *(v4 + 6);
        if (v5)
        {
          v6 = std::__shared_weak_count::lock(v5);
          if (v6)
          {
            if (*(v4 + 5))
            {
              ++v3;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }
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

      while (v8 != &v15);
    }

    std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(&v14 + 8, v15);
    if (SBYTE7(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = *(v1 + 1);
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
      do
      {
        v11 = *(v1 + 2);
        v9 = *v11 == v1;
        v1 = v11;
      }

      while (!v9);
    }

    v1 = v11;
  }

  while (v11 != v2);
  return v3;
}

uint64_t AVCRTPStackController::removeSessionFromCache(uint64_t a1, void **a2, unint64_t a3)
{
  v16 = a3;
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 96, a2);
  if (a1 + 104 != result)
  {
    v17 = a2;
    v7 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 96, a2);
    v10 = *(v7 + 64);
    v8 = v7 + 64;
    v9 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = v8;
    do
    {
      v12 = *(v9 + 32);
      v13 = v12 >= a3;
      v14 = v12 < a3;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * v14);
    }

    while (v9);
    if (v11 == v8 || *(v11 + 32) > a3)
    {
LABEL_10:
      v11 = v8;
    }

    v17 = a2;
    result = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 96, a2);
    if (v11 != result + 64)
    {
      v17 = a2;
      v15 = std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 96, a2);
      return std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::__erase_unique<unsigned long long>((v15 + 56), &v16);
    }
  }

  return result;
}

BOOL AVCRTPStackController::sessionExists(uint64_t a1, void **a2, unint64_t a3)
{
  v3 = a1 + 104;
  v4 = *(a1 + 104);
  if (!v4)
  {
    return 0;
  }

  v7 = a1 + 104;
  do
  {
    v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v4 + 32), a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v4;
    }

    v4 = *(v4 + ((v8 >> 4) & 8));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v7 + 32)) & 0x80) != 0)
  {
    return 0;
  }

  v11 = *(v7 + 64);
  v10 = (v7 + 64);
  v9 = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  do
  {
    v13 = v9[4];
    v14 = v13 >= a3;
    v15 = v13 < a3;
    if (v14)
    {
      v12 = v9;
    }

    v9 = v9[v15];
  }

  while (v9);
  if (v12 == v10)
  {
    return 0;
  }

  if (v12[4] > a3)
  {
    return 0;
  }

  v16 = v12[6];
  if (!v16)
  {
    return 0;
  }

  v17 = std::__shared_weak_count::lock(v16);
  if (!v17)
  {
    return 0;
  }

  v18 = v12[5] != 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  return v18;
}

void AVCRTPStackController::setRelayMode(uint64_t a1, void **a2, unint64_t a3, uint64_t a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
  v40[0] = 0;
  v43 = 0;
  v9 = ims::debug(v8, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "setRelayMode", 12);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [stackId=", 10);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " sessionId=", 11);
  *(v9 + 17) = 0;
  MEMORY[0x1E69233B0](*(v9 + 8), a3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " isRelayMode=", 13);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923320](*(v9 + 8), a4);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  v10 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 96, a2);
  if (a1 + 104 == v10)
  {
    v21 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
    v36[0] = 0;
    v39 = 0;
    v22 = ims::error(v21, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Audio sessions not found by stack ID", 36);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v39 != 1 || (v38 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v20 = __p;
    goto LABEL_21;
  }

  v13 = *(v10 + 64);
  v11 = (v10 + 64);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v11;
  do
  {
    v15 = v12[4];
    v16 = v15 >= a3;
    v17 = v15 < a3;
    if (v16)
    {
      v14 = v12;
    }

    v12 = v12[v17];
  }

  while (v12);
  if (v14 == v11 || v14[4] > a3)
  {
LABEL_15:
    v18 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
    v32[0] = 0;
    v35 = 0;
    v19 = ims::error(v18, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Audio session not found by session ID", 37);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v35 != 1 || (v34 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v20 = v33;
LABEL_21:
    operator delete(v20);
LABEL_22:
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    return;
  }

  v23 = v14[6];
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = v14[5];
      if (v25)
      {
        AVCAudioSession::setRelayMode(v25, a4);
LABEL_35:
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        return;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
  v28[0] = 0;
  v31 = 0;
  v27 = ims::error(v26, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Audio session expired", 21);
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v27 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v24)
  {
    goto LABEL_35;
  }
}

void AVCRTPStackController::setScreeningMode(uint64_t a1, void **a2, unint64_t a3, uint64_t a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
  v40[0] = 0;
  v43 = 0;
  v9 = ims::debug(v8, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "setScreeningMode", 16);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [stackId=", 10);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " sessionId=", 11);
  *(v9 + 17) = 0;
  MEMORY[0x1E69233B0](*(v9 + 8), a3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " isScreeningMode=", 17);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923320](*(v9 + 8), a4);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  v10 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 96, a2);
  if (a1 + 104 == v10)
  {
    v21 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
    v36[0] = 0;
    v39 = 0;
    v22 = ims::error(v21, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Audio sessions not found by stack ID", 36);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v39 != 1 || (v38 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v20 = __p;
    goto LABEL_21;
  }

  v13 = *(v10 + 64);
  v11 = (v10 + 64);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v11;
  do
  {
    v15 = v12[4];
    v16 = v15 >= a3;
    v17 = v15 < a3;
    if (v16)
    {
      v14 = v12;
    }

    v12 = v12[v17];
  }

  while (v12);
  if (v14 == v11 || v14[4] > a3)
  {
LABEL_15:
    v18 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
    v32[0] = 0;
    v35 = 0;
    v19 = ims::error(v18, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Audio session not found by session ID", 37);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v35 != 1 || (v34 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v20 = v33;
LABEL_21:
    operator delete(v20);
LABEL_22:
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    return;
  }

  v23 = v14[6];
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = v14[5];
      if (v25)
      {
        AVCAudioSession::setScreeningMode(v25, a4);
LABEL_35:
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        return;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = std::string::basic_string[abi:ne200100]<0>(v44, "avc.rtp.controller");
  v28[0] = 0;
  v31 = 0;
  v27 = ims::error(v26, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Audio session expired", 21);
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v27 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v24)
  {
    goto LABEL_35;
  }
}

std::string *std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1E4FCF72C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__tree_node<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__tree_node<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::weak_ptr<AVCAudioSession>> const&>(v5, v5 + 1, v4 + 4);
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

void *std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::weak_ptr<AVCAudioSession>> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = a2;
  v4 = *a3;
  v5 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v6 = a2[4];
    if (v6 <= v4)
    {
      if (v6 >= v4)
      {
        return v3;
      }

      v10 = a2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
          v12 = v11;
        }

        while (v10);
      }

      else
      {
        v12 = a2;
        do
        {
          v19 = v12;
          v12 = v12[2];
        }

        while (*v12 != v19);
      }

      if (v12 == v5 || v12[4] > v4 || (v20 = *v5) == 0)
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v21 <= v4)
          {
            break;
          }

          v20 = *v20;
          if (!*v17)
          {
            goto LABEL_38;
          }
        }

        if (v21 >= v4)
        {
          return v17;
        }

        v20 = v20[1];
        if (!v20)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
    goto LABEL_16;
  }

  if (v7)
  {
    v8 = *a2;
    do
    {
      v9 = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    v13 = a2;
    do
    {
      v9 = v13[2];
      v14 = *v9 == v13;
      v13 = v9;
    }

    while (v14);
  }

  if (v9[4] >= v4)
  {
    v16 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = v16[4];
        if (v18 <= v4)
        {
          break;
        }

        v16 = *v16;
        if (!*v17)
        {
          goto LABEL_38;
        }
      }

      if (v18 >= v4)
      {
        return v17;
      }

      v16 = v16[1];
      if (!v16)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_16:
  if (v7)
  {
    v15 = v9 + 1;
  }

  else
  {
    v15 = a2;
  }

  v3 = *v15;
  if (!*v15)
  {
    goto LABEL_38;
  }

  return v3;
}

void std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<audio::tlv::IpVersionInfo>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 11;
  *v3 = v2;
  *(v3 + 1) = 8;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN5audio15NotifyIpVersion8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    QMIServiceMsg::serialize(&__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p);
    qmi::MessageBase::validateMsgId(v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_1E4FCFCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>>>::__erase_unique<std::string>(void *a1, void **a2)
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
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,0>((v4 + 4));

    operator delete(v4);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCRTTSession>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
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

void sub_1E4FD00B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<unsigned long long,std::weak_ptr<AVCAudioSession>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AVCRTTSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE5C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<AVCAudioSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE5C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::__erase_unique<unsigned long long>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::weak_ptr<AVCAudioSession>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

void SipAkaAuthChallenge::SipAkaAuthChallenge(SipAkaAuthChallenge *this, SipAkaDigestAuthScheme *a2)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F5EE5D80;
  if (!a2)
  {
    operator new();
  }

  *(this + 8) = a2;
}

void sub_1E4FD0330(_Unwind_Exception *a1)
{
  MEMORY[0x1E69235B0](v2, 0x10B3C4074E51C00);
  SipAuthChallenge::~SipAuthChallenge(v1);
  _Unwind_Resume(a1);
}

SipAuthChallenge *SipAkaAuthChallenge::SipAkaAuthChallenge(SipAuthChallenge *a1, const SipAuthChallenge *a2)
{
  SipAuthChallenge::SipAuthChallenge(a1, a2);
  *v4 = &unk_1F5EE5D80;
  *(a1 + 8) = (*(**(a2 + 8) + 32))(*(a2 + 8));
  return a1;
}

void SipAkaAuthChallenge::~SipAkaAuthChallenge(SipAkaAuthChallenge *this)
{
  *this = &unk_1F5EE5D80;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  SipAuthChallenge::~SipAuthChallenge(this);
}

{
  SipAkaAuthChallenge::~SipAkaAuthChallenge(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipAkaAuthChallenge::scheme(SipAkaAuthChallenge *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t SipAkaAuthChallenge::isValid(SipAkaAuthChallenge *this)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t SipTransactionLayer::SipTransactionLayer(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v27 = *a2;
  v28 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipStackLayer::SipStackLayer(a1, &v27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  *(a1 + 24) = &unk_1F5EE5FF8;
  std::string::basic_string[abi:ne200100]<0>(&v30, "sip.txn");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v23, (*a2 + 200));
  ImsLogContainer::ImsLogContainer(a1 + 32, &v30, v23);
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "sip.txn");
  v5 = *a2;
  v17 = *(*a2 + 200);
  v18 = *(v5 + 208);
  if (*(v5 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(v5 + 216), *(v5 + 224));
  }

  else
  {
    v19 = *(v5 + 216);
  }

  v20 = *(v5 + 240);
  ims::getQueue(&v32);
  ClientConfig::getLogTag(&v17, &v29);
  if ((v22 & 0x80u) == 0)
  {
    v6 = v21;
  }

  else
  {
    v6 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v7 = v22;
  }

  else
  {
    v7 = v21[1];
  }

  v8 = std::string::insert(&v29, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v31 = v8->__r_.__value_.__r.__words[2];
  v30 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v10 = &v30;
  }

  else
  {
    v10 = v30;
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v11 = v32;
  *(a1 + 192) = v32;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 200) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 208), "com.apple.ipTelephony", v10);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  *(a1 + 168) = &unk_1F5EE6028;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = &unk_1F5EE5DD8;
  *(a1 + 24) = &unk_1F5EE5E10;
  *(a1 + 32) = &unk_1F5EE5E40;
  *(a1 + 168) = &unk_1F5EE5EA0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v12 = *a2;
  v13 = *(v12 + 200);
  *(a1 + 240) = *(v12 + 208);
  *(a1 + 232) = v13;
  if (*(v12 + 239) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 248), *(v12 + 216), *(v12 + 224));
    v14 = *(a1 + 224);
  }

  else
  {
    v14 = 0;
    v15 = *(v12 + 216);
    *(a1 + 264) = *(v12 + 232);
    *(a1 + 248) = v15;
  }

  *(a1 + 272) = *(v12 + 240);
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return a1;
}

void sub_1E4FD0B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = v24[28];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  MEMORY[0x1E69225A0](v24 + 26);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v24 + 22);
  ImsLogContainer::~ImsLogContainer(v25);
  *v24 = &unk_1F5ED34B0;
  v28 = v24[2];
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1E4FD0BE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  JUMPOUT(0x1E4FD0BB0);
}

void SipTransactionLayer::~SipTransactionLayer(SipTransactionLayer *this)
{
  *this = &unk_1F5EE5DD8;
  *(this + 3) = &unk_1F5EE5E10;
  *(this + 4) = &unk_1F5EE5E40;
  *(this + 21) = &unk_1F5EE5EA0;
  v2 = *(this + 27);
  if (v2)
  {
    v3 = *(v2 + 352);
    *(v2 + 344) = 0;
    *(v2 + 352) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  SipTransactionLayer::deinitialize(this);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(this + 320);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(this + 280);
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v4 = *(this + 28);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x1E69225A0](this + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 22);
  *(this + 4) = &unk_1F5ED7318;
  if (*(this + 112) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_1F5ED34B0;
  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  SipTransactionLayer::~SipTransactionLayer(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipTransactionLayer::deinitialize(SipTransactionLayer *this)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(&v22, this + 280);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(&v19, this + 320);
  v2 = v23;
  if (v23)
  {
    v3 = this + 32;
    do
    {
      v5 = v2[5];
      v4 = v2[6];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = (*(*v3 + 64))(this + 32);
      (*(*v3 + 16))(this + 32, v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "forcing termination of transaction ", 35);
      *(v6 + 17) = 0;
      (*(*v5 + 144))(__p, v5);
      (*(*v6 + 40))(v6, __p);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v5 + 32))(v5, 7);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v2 = *v2;
    }

    while (v2);
  }

  v7 = v20;
  if (v20)
  {
    v8 = this + 32;
    do
    {
      v10 = v7[5];
      v9 = v7[6];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = (*(*v8 + 64))(this + 32);
      (*(*v8 + 16))(this + 32, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "forcing termination of transaction ", 35);
      *(v11 + 17) = 0;
      (*(*v10 + 152))(__p, v10);
      (*(*v11 + 40))(v11, __p);
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v10 + 32))(v10, 7);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v7 = *v7;
    }

    while (v7);
  }

  if (*(this + 38))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(this + 280, *(this + 37));
    *(this + 37) = 0;
    v12 = *(this + 36);
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        *(*(this + 35) + 8 * i) = 0;
      }
    }

    *(this + 38) = 0;
  }

  if (*(this + 43))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::__deallocate_node(this + 320, *(this + 42));
    *(this + 42) = 0;
    v14 = *(this + 41);
    if (v14)
    {
      for (j = 0; j != v14; ++j)
      {
        *(*(this + 40) + 8 * j) = 0;
      }
    }

    *(this + 43) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v19);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v22);
}

void non-virtual thunk toSipTransactionLayer::~SipTransactionLayer(SipTransactionLayer *this)
{
  SipTransactionLayer::~SipTransactionLayer((this - 24));
}

{
  SipTransactionLayer::~SipTransactionLayer((this - 32));
}

{
  SipTransactionLayer::~SipTransactionLayer((this - 168));
}

{
  SipTransactionLayer::~SipTransactionLayer((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionLayer::~SipTransactionLayer((this - 32));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionLayer::~SipTransactionLayer((this - 168));

  JUMPOUT(0x1E69235B0);
}

void SipTransactionLayer::initialize(SipTransactionLayer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (!v5)
      {
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      v7 = *(v5 + 280);
      v6 = *(v5 + 288);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(this + 28);
      *(this + 27) = v7;
      *(this + 28) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        v7 = *(this + 27);
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, this + 22);
      v9 = v17;
      if (v17)
      {
        v10 = v16;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        v11 = std::__shared_weak_count::lock(v9);
        v12 = v11;
        if (v11)
        {
          if (v10)
          {
            v13 = v10 + 24;
          }

          else
          {
            v13 = 0;
          }

          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v9);
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          v14 = 0;
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
LABEL_17:
          v15 = *(v7 + 352);
          *(v7 + 344) = v13;
          *(v7 + 352) = v12;
          if (v15)
          {
            std::__shared_weak_count::__release_weak(v15);
          }

          if ((v14 & 1) == 0)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          goto LABEL_21;
        }

        std::__shared_weak_count::__release_weak(v9);
      }

      else
      {
        v12 = 0;
      }

      v13 = 0;
      v14 = 1;
      goto LABEL_17;
    }
  }
}

uint64_t SipTransactionLayer::errorOutAllTransactions(SipTransactionLayer *this, const ImsResult *a2)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(&v26, this + 280);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(&v23, this + 320);
  v4 = v27;
  if (v27)
  {
    v5 = this + 32;
    do
    {
      v7 = v4[5];
      v6 = v4[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v8 = (*(*v7 + 136))(v7);
      v9 = *(*v5 + 64);
      if (v8)
      {
        v10 = v9(this + 32);
        (*(*v5 + 16))(this + 32, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "forcing termination of completed transaction ", 45);
        *(v10 + 17) = 0;
        (*(*v7 + 144))(__p, v7);
        (*(*v10 + 40))(v10, __p);
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v7 + 32))(v7, 7);
      }

      else
      {
        v11 = v9(this + 32);
        (*(*v5 + 16))(this + 32, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Error out transaction ", 22);
        *(v11 + 17) = 0;
        (*(*v7 + 144))(__p, v7);
        (*(*v11 + 40))(v11, __p);
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v7 + 104))(v7, a2);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v4 = *v4;
    }

    while (v4);
  }

  v12 = v24;
  if (v24)
  {
    v13 = this + 32;
    do
    {
      v15 = v12[5];
      v14 = v12[6];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v16 = (*(*v15 + 136))(v15);
      v17 = *(*v13 + 64);
      if (v16)
      {
        v18 = v17(v13);
        (*(*v13 + 16))(v13, v18);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "forcing termination of completed transaction ", 45);
        *(v18 + 17) = 0;
        (*(*v15 + 152))(__p, v15);
        (*(*v18 + 40))(v18, __p);
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v15 + 32))(v15, 7);
      }

      else
      {
        v19 = v17(v13);
        (*(*v13 + 16))(v13, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error out transaction ", 22);
        *(v19 + 17) = 0;
        (*(*v15 + 152))(__p, v15);
        (*(*v19 + 40))(v19, __p);
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v15 + 104))(v15, a2);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v12 = *v12;
    }

    while (v12);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v23);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v26);
}

void SipTransactionLayer::clientTransactionFromFirstViaHop(void *a1, uint64_t a2, uint64_t *a3)
{
  HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(*a3);
  if (!HeaderWith || (v7 = HeaderWith[8], v7 == HeaderWith[9]) || (v8 = *v7) == 0)
  {
    v15 = *(a2 + 32);
    v14 = a2 + 32;
    v16 = (*(v15 + 56))(v14);
    (*(*v14 + 16))(v14, v16);
    v17 = *(v16 + 8);
    v18 = "couldn't get first via header from message";
    v19 = 42;
LABEL_14:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v9 = SipViaHop::branch(*v7);
  v10 = *(v9 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 1);
  }

  if (!v10)
  {
    v21 = *(a2 + 32);
    v20 = a2 + 32;
    v16 = (*(v21 + 56))(v20);
    (*(*v20 + 16))(v20, v16);
    v17 = *(v16 + 8);
    v18 = "no branch param in Via header";
    v19 = 29;
    goto LABEL_14;
  }

  v11 = SipViaHop::branch(v8);
  v12 = SipMessage::header<SipCSeqHeader>(*a3);
  if (v12)
  {
    v13 = (v12 + 64);
  }

  else
  {
    v13 = &ims::kEmptyString;
  }

  SipTransactionLayer::clientTransactionWithIdAndMethod(a1, a2, v11, v13);
}

void SipTransactionLayer::clientTransactionWithIdAndMethod(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  SipTransaction::transactionMapKey(a3, a4, __p);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a2 + 280), __p);
  if (v8)
  {
    v9 = v8[6];
    *a1 = v8[5];
    a1[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = *(a2 + 32);
    v10 = a2 + 32;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "can't find client transaction with id ", 38);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " and method ", 12);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a4);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4FD1E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransactionLayer::serverTransactionFromFirstViaHop(void *a1, uint64_t a2, uint64_t *a3)
{
  HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(*a3);
  if (!HeaderWith || (v7 = HeaderWith[8], v7 == HeaderWith[9]) || (v8 = *v7) == 0)
  {
    v16 = *(a2 + 32);
    v15 = a2 + 32;
    v17 = (*(v16 + 56))(v15);
    (*(*v15 + 16))(v15, v17);
    v18 = *(v17 + 8);
    v19 = "couldn't get first via header from message";
    v20 = 42;
LABEL_13:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v9 = SipViaHop::branch(*v7);
  v10 = *(v9 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 1);
  }

  if (!v10)
  {
    v22 = *(a2 + 32);
    v21 = a2 + 32;
    v17 = (*(v22 + 56))(v21);
    (*(*v21 + 16))(v21, v17);
    v18 = *(v17 + 8);
    v19 = "no branch param in Via header";
    v20 = 29;
    goto LABEL_13;
  }

  v11 = SipViaHop::branch(v8);
  v12 = SipMessage::header<SipCSeqHeader>(*a3);
  if (v12)
  {
    v13 = (v12 + 64);
  }

  else
  {
    v13 = &ims::kEmptyString;
  }

  memset(&v32, 0, sizeof(v32));
  LODWORD(v14) = *(v13 + 23);
  if ((v14 & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v32, *v13, *(v13 + 1));
    LOBYTE(v14) = *(v13 + 23);
  }

  else
  {
    v32 = *v13;
  }

  v23 = v14;
  __p[1] = 0;
  v31 = 0;
  __p[0] = 0;
  v14 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v13 + 1);
  }

  if (v14 == 3)
  {
    v24 = *v13;
    if (v23 >= 0)
    {
      v24 = v13;
    }

    v25 = *v24;
    v26 = *(v24 + 2);
    if (v25 == SipRequest::kMethodAck && v26 == BYTE2(SipRequest::kMethodAck))
    {
      std::string::operator=(&v32, "INVITE");
    }
  }

  SipTransaction::transactionMapKey(v11, &v32, __p);
  v28 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a2 + 320), __p);
  if (v28)
  {
    v29 = v28[6];
    *a1 = v28[5];
    a1[1] = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1E4FD2144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTransactionLayer::updateViaHeaderForRequest(uint64_t a1, SipMessage **a2)
{
  HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(*a2, 0);
  if (!HeaderWith || (v5 = HeaderWith[8], v5 == HeaderWith[9]))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  (*(**(a1 + 216) + 128))(&__p);
  if (v15)
  {
    v7 = std::__shared_weak_count::lock(v15);
    if (v7)
    {
      v8 = __p;
    }

    else
    {
      v8 = 0;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v8)
    {
      v10 = *(v8 + 31);
      v9 = *(v8 + 32);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        v11 = (*(**a2 + 64))();
        v12 = v6 ? v11 : 1;
        if (v12 == 1)
        {
          SipMessage::removeHeadersWithName(*a2, &SipHeader::kHeaderVia);
          operator new();
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return v6;
}

void sub_1E4FD2424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (!v16)
    {
LABEL_3:
      if (!v15)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (!v15)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  goto LABEL_5;
}

void SipTransactionLayer::sendRequest(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 216) + 128))(v17);
  if (v17[1])
  {
    v6 = std::__shared_weak_count::lock(v17[1]);
    if (v6)
    {
      v7 = v17[0];
    }

    else
    {
      v7 = 0;
    }

    if (v17[1])
    {
      std::__shared_weak_count::__release_weak(v17[1]);
    }

    if (v7)
    {
      shared_owners = v7[10].__shared_owners_;
      shared_weak_owners = v7[10].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        atomic_fetch_add_explicit(&shared_weak_owners->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = shared_weak_owners;
      if (shared_owners)
      {
        v19 = 0;
        v20 = 0;
        v10 = *a2;
        std::allocate_shared[abi:ne200100]<SipRequest,std::allocator<SipRequest>,SipRequest::EnforcePrivateConstructor,SipRequest const&,0>();
      }

      v12 = *(a1 + 208);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        (*(*(a1 + 168) + 16))(v17, a1 + 168);
        v15 = v18 >= 0 ? v17 : v17[0];
        buf = 141558275;
        buf_4 = 1752392040;
        buf_12 = 2081;
        buf_14 = v15;
        _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }
      }

      *a3 = 0;
      a3[1] = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *(a1 + 208);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 168) + 16))(v17, a1 + 168);
    v13 = v18 >= 0 ? v17 : v17[0];
    buf = 141558275;
    buf_4 = 1752392040;
    buf_12 = 2081;
    buf_14 = v13;
    _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_24:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4FD31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v69 - 185) < 0)
  {
    operator delete(*(v69 - 208));
  }

  v71 = *(a11 + 8);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  ImsResult::~ImsResult(&a50);
  if (a63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a63);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  v72 = *(v69 - 232);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void ___ZN19SipTransactionLayer11sendRequestENSt3__110shared_ptrIK10SipRequestEENS1_I18SipTransactionUserEENS1_I21SipTransportInterfaceEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 32;
  v4 = (*(*(v2 + 32) + 64))(v2 + 32);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "triggering error in client transaction ", 39);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " method ", 8);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
  v5 = *(a1 + 88);
  *(v4 + 17) = 0;
  (*(v5 + 16))(a1 + 88, v4);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v8 = 0;
  v9 = 0;
  SipTransactionLayer::clientTransactionWithIdAndMethod(&v8, v2, a1 + 40, a1 + 64);
  if (v8)
  {
    (*(*v8 + 104))(v8, a1 + 88);
  }

  else
  {
    v6 = (*(*v3 + 64))(v3);
    (*(*v3 + 16))(v3, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "triggerClientTransactionError: client transaction ", 50);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a1 + 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " no longer exists", 17);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
  }

  v7 = v9;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4FD3740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c14_ZTS9ImsResult(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  ImsResult::ImsResult((a1 + 88), (a2 + 88));
}

void sub_1E4FD37D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c14_ZTS9ImsResult(uint64_t a1)
{
  ImsResult::~ImsResult((a1 + 88));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void SipTransactionLayer::sendAck(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ImsResult *a4@<X8>)
{
  v8 = *(a2 + 8);
  v13[0] = *a2;
  v13[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  SipTransactionLayer::updateViaHeaderForRequest(a1, v13);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(a1 + 216);
  v10 = *(a2 + 8);
  v11 = *a2;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::sendMessage(v9, &v11, a3, 0, a4);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E4FD391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTransactionLayer::processMessageFromTransportLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_29;
  }

  v8 = *v5;
  v9 = **v5;
  if (!v10)
  {
    v23 = *v8;
    if (v24)
    {
      v25 = v24;
      v12 = *(a2 + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *a4;
      v13 = a4[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v24 + 80))(v92, v24);
      v27 = (v92[1]->__get_deleter)(v92[1], v93);
      ImsResult::~ImsResult(v92);
      if (v27)
      {
        v29 = *(a1 + 32);
        v28 = a1 + 32;
        v30 = (*(v29 + 48))(v28);
        (*(*v28 + 16))(v28, v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "dropping invalid response", 25);
        *(v30 + 17) = 0;
        (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v30 + 17) = 0;
        goto LABEL_135;
      }

      v92[0] = 0;
      v92[1] = 0;
      *buf = v25;
      *&buf[8] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipTransactionLayer::clientTransactionFromFirstViaHop(v92, a1, buf);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v61 = v92[0];
      if (v92[0])
      {
        if (v26)
        {
          v62 = v92[0] + 3;
          v90 = v26;
          v91 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (v62->__vftable[1].~__shared_weak_count_0)(v62, &v90, 1);
          if (v91)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v91);
          }
        }

        v88 = v25;
        v89 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SipClientTransaction::handleResponse(v61, &v88);
      }

      v63 = v92[1];
      if (v92[1])
      {
        goto LABEL_134;
      }

      goto LABEL_135;
    }

LABEL_29:
    v32 = *(a1 + 32);
    v31 = a1 + 32;
    v33 = (*(v32 + 56))(v31);
    (*(*v31 + 16))(v31, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "unknown sip message type: ", 26);
    *(v33 + 17) = 0;
    v34 = strlen(("NSt3__110shared_ptrIK10SipMessageEE" & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "NSt3__110shared_ptrIK10SipMessageEE" & 0x7FFFFFFFFFFFFFFFLL, v34);
    *(v33 + 17) = 0;
    (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v33 + 17) = 0;
LABEL_141:
    v78 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = v10;
  v12 = *(a2 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  v13 = a4[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = (*(*v10 + 120))(v10);
  v16 = *(v15 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v15 + 8);
  }

  if (v16 != 3 || (v17 >= 0 ? (v18 = v15) : (v18 = *v15), (v19 = *v18, v20 = *(v18 + 2), v19 == SipRequest::kMethodAck) ? (v21 = v20 == BYTE2(SipRequest::kMethodAck)) : (v21 = 0), !v21))
  {
    v86 = 0;
    v87 = 0;
    v85[0] = v11;
    v85[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipTransactionLayer::serverTransactionFromFirstViaHop(&v86, a1, v85);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v22 = v86;
      if (!v86)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_31;
      }
    }

    else
    {
      v22 = v86;
      if (!v86)
      {
LABEL_31:
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(**(a1 + 216) + 128))(v92);
        if (v92[1])
        {
          v35 = std::__shared_weak_count::lock(v92[1]);
          if (v35)
          {
            v36 = v92[0];
          }

          else
          {
            v36 = 0;
          }

          if (v92[1])
          {
            std::__shared_weak_count::__release_weak(v92[1]);
          }

          if (v36)
          {
            shared_owners = v36[10].__shared_owners_;
            shared_weak_owners = v36[10].__shared_weak_owners_;
            if (shared_weak_owners)
            {
              atomic_fetch_add_explicit(&shared_weak_owners->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v84 = shared_weak_owners;
            if (shared_owners)
            {
              HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(v11);
              if (HeaderWith && (v40 = HeaderWith[8], v40 != HeaderWith[9]) && (v41 = *v40) != 0)
              {
                v42 = SipViaHop::branch(*v40);
                v43 = *(v42 + 23);
                if ((v43 & 0x80u) != 0)
                {
                  v43 = *(v42 + 1);
                }

                if (v43)
                {
                  v44 = (*(*v11 + 120))(v11);
                  v45 = *(v44 + 23);
                  v46 = v45;
                  if ((v45 & 0x80u) != 0)
                  {
                    v45 = *(v44 + 8);
                  }

                  if (v45 != 6 || (v46 >= 0 ? (v47 = v44) : (v47 = *v44), (v48 = *v47, v49 = *(v47 + 4), v48 == *"INVITE") ? (v50 = v49 == *"TE") : (v50 = 0), !v50))
                  {
                    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v90, (a1 + 176));
                    v88 = v11;
                    v89 = v12;
                    if (v12)
                    {
                      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    (*(*v41 + 48))(buf, v41);
                    SipViaHop::branch(v41);
                    SipServerNonInviteTransaction::create(v92);
                  }

                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v90, (a1 + 176));
                  v88 = v11;
                  v89 = v12;
                  if (v12)
                  {
                    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v41 + 48))(buf, v41);
                  SipViaHop::branch(v41);
                  SipServerInviteTransaction::create(v92);
                }

                v68 = (*(*(a1 + 32) + 48))(a1 + 32);
                (*(*(a1 + 32) + 16))(a1 + 32, v68);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v68 + 8), "incoming request has no branch in via header: ", 46);
                *(v68 + 17) = 0;
                (*(*v41 + 40))(v41, v68);
                (*(*v68 + 64))(v68, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              }

              else
              {
                v68 = (*(*(a1 + 32) + 48))(a1 + 32);
                (*(*(a1 + 32) + 16))(a1 + 32, v68);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v68 + 8), "incoming request has no via header", 34);
                *(v68 + 17) = 0;
                (*(*v68 + 64))(v68, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              }

              v65 = 0;
              *(v68 + 17) = 0;
            }

            else
            {
              v69 = *(a1 + 208);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                (*(*(a1 + 168) + 16))(v92);
                v83 = (SBYTE7(v93) & 0x80u) == 0 ? v92 : v92[0];
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v83;
                _os_log_error_impl(&dword_1E4C3F000, v69, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
                if (SBYTE7(v93) < 0)
                {
                  operator delete(v92[0]);
                }
              }

              v65 = 0;
            }

            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

LABEL_114:
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v35);
            }

            v70 = v87;
            v87 = 0;
            if (v70)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v70);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

LABEL_132:
            if (!v65)
            {
              goto LABEL_135;
            }

            v63 = v65;
            goto LABEL_134;
          }
        }

        else
        {
          v35 = 0;
        }

        v64 = *(a1 + 208);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          (*(*(a1 + 168) + 16))(v92);
          v81 = (SBYTE7(v93) & 0x80u) == 0 ? v92 : v92[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v81;
          _os_log_error_impl(&dword_1E4C3F000, v64, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
          if (SBYTE7(v93) < 0)
          {
            operator delete(v92[0]);
          }
        }

        v65 = 0;
        goto LABEL_114;
      }
    }

    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    *v92 = 0u;
    (*(*v11 + 80))(v92, v11);
    if ((v92[1]->__get_deleter)(v92[1], v93))
    {
      v72 = *(a1 + 32);
      v71 = a1 + 32;
      v73 = (*(v72 + 64))(v71);
      (*(*v71 + 16))(v71, v73);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "request is not valid: ", 22);
      *(v73 + 17) = 0;
      (v92[0]->__shared_weak_owners_)(v92, v73);
      (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v73 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(buf, "");
      SipServerTransaction::rejectTransactionWithStatus();
    }

    if (!SipUri::isValidUri((v11 + 152)))
    {
      v75 = *(a1 + 32);
      v74 = a1 + 32;
      v76 = (*(v75 + 64))(v74);
      (*(*v74 + 16))(v74, v76);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "request URI is not valid", 24);
      *(v76 + 17) = 0;
      (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v76 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(buf, "");
      SipServerTransaction::rejectTransactionWithStatus();
    }

    *buf = v11;
    *&buf[8] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipServerTransaction::handleRequest(v22, buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    ImsResult::~ImsResult(v92);
    v65 = v87;
    goto LABEL_132;
  }

  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(**(a1 + 216) + 128))(v92);
  if (v92[1])
  {
    v51 = std::__shared_weak_count::lock(v92[1]);
    if (v51)
    {
      v52 = v92[0];
    }

    else
    {
      v52 = 0;
    }

    if (v92[1])
    {
      std::__shared_weak_count::__release_weak(v92[1]);
    }

    if (v52)
    {
      v54 = v52[10].__shared_owners_;
      v53 = v52[10].__shared_weak_owners_;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v54)
      {
        v79 = *(a1 + 208);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          (*(*(a1 + 168) + 16))(v92, a1 + 168);
          v80 = (SBYTE7(v93) & 0x80u) == 0 ? v92 : v92[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v80;
          _os_log_error_impl(&dword_1E4C3F000, v79, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (SBYTE7(v93) < 0)
          {
            operator delete(v92[0]);
          }
        }

        goto LABEL_170;
      }

      v92[0] = 0;
      v92[1] = 0;
      *buf = v11;
      *&buf[8] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipTransactionLayer::serverTransactionFromFirstViaHop(v92, a1, buf);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v55 = v92[0];
      if (v92[0])
      {
        v56 = v92[0][23].__shared_weak_owners_;
        v57 = v92[0][24].__vftable;
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v56)
          {
            v58 = v55[24].__vftable;
            v59 = v55[23].__shared_weak_owners_;
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              v60 = *(v59 + 128);
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

            else
            {
              v60 = *(v59 + 128);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
            if (v60 > 0x12B)
            {
LABEL_160:
              v90 = v11;
              v91 = v12;
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              SipServerTransaction::handleRequest(v55, &v90);
              v82 = v91;
              if (!v91)
              {
                goto LABEL_168;
              }

              goto LABEL_167;
            }
          }

          else
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }
        }

        else if (v56 && *(v56 + 128) >= 0x12Cu)
        {
          goto LABEL_160;
        }
      }

      v90 = v11;
      v91 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipUserAgent::handleAck(v54, &v90);
      v82 = v12;
      if (!v12)
      {
        goto LABEL_168;
      }

LABEL_167:
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
LABEL_168:
      if (v92[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92[1]);
      }

LABEL_170:
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      goto LABEL_172;
    }
  }

  else
  {
    v51 = 0;
  }

  v66 = *(a1 + 208);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 168) + 16))(v92, a1 + 168);
    v67 = (SBYTE7(v93) & 0x80u) == 0 ? v92 : v92[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v67;
    _os_log_error_impl(&dword_1E4C3F000, v66, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstaclk", buf, 0x16u);
    if (SBYTE7(v93) < 0)
    {
      operator delete(v92[0]);
    }
  }

LABEL_172:
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v12)
  {
    v63 = v12;
LABEL_134:
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

LABEL_135:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (!v12)
  {
    goto LABEL_141;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v77 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
}

void sub_1E4FD4DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, char a27, uint64_t a28)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    if (!v30)
    {
LABEL_7:
      if (!v29)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if (!v30)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (!v29)
  {
LABEL_8:
    if (!v28)
    {
LABEL_14:
      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      _Unwind_Resume(exception_object);
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    goto LABEL_14;
  }

LABEL_12:
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  if (!v28)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t SipTransactionLayer::determineIncomingMessageCategory(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 32);
  v5 = (*(*(a1 + 32) + 64))(a1 + 32);
  ((*v4)[2])(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "SipTransactionLayer::determineIncomingMessageCategory", 53);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  (*(*v4[23] + 128))(&v130);
  if (!v131)
  {
    return 0;
  }

  v6 = std::__shared_weak_count::lock(v131);
  if (v6)
  {
    v7 = v130;
  }

  else
  {
    v7 = 0;
  }

  if (v131)
  {
    std::__shared_weak_count::__release_weak(v131);
  }

  if (!v7)
  {
    v72 = 0;
    goto LABEL_189;
  }

  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_124;
  }

  v9 = *v8;
  v10 = **v8;
  if (!v11)
  {
    v75 = *v9;
    if (v76)
    {
      v77 = v76;
      v13 = a2[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = ((*v4)[8])(v4);
      ((*v4)[2])(v4, v78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v78 + 8), "Is a SipResponse", 16);
      *(v78 + 17) = 0;
      (*(*v78 + 64))(v78, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v78 + 17) = 0;
      v130 = 0;
      v131 = 0;
      v125[0] = v77;
      v125[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipTransactionLayer::clientTransactionFromFirstViaHop(&v130, a1, v125);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v130)
      {
        v80 = *(v130 + 264);
        v79 = *(v130 + 272);
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81 = SipMessage::header<SipConversationIdHeader>(v80);
        v82 = (v81 + 64);
        if (!v81)
        {
          v82 = &ims::kEmptyString;
        }

        v83 = *(v82 + 23);
        v84 = *(v82 + 1);
        if ((v83 & 0x80u) == 0)
        {
          v84 = v83;
        }

        if (v84)
        {
          goto LABEL_121;
        }

        v85 = SipMessage::header<SipContributionIdHeader>(v80);
        v86 = (v85 + 64);
        if (!v85)
        {
          v86 = &ims::kEmptyString;
        }

        v87 = *(v86 + 23);
        v88 = *(v86 + 1);
        if ((v87 & 0x80u) == 0)
        {
          v88 = v87;
        }

        if (v88)
        {
LABEL_121:
          v89 = 1;
        }

        else
        {
          v115 = SipMessage::header<SipInReplyToContributionIdHeader>(v80);
          v116 = (v115 + 64);
          if (!v115)
          {
            v116 = &ims::kEmptyString;
          }

          v117 = *(v116 + 23);
          v118 = *(v116 + 1);
          if ((v117 & 0x80u) == 0)
          {
            v118 = v117;
          }

          v89 = v118 != 0;
        }

        v90 = ((*v4)[8])(v4);
        ((*v4)[2])(v4, v90);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v90 + 8), "Has Lazuli headers? : ", 22);
        *(v90 + 17) = 0;
        MEMORY[0x1E6923320](*(v90 + 8), v89);
        *(v90 + 17) = 0;
        (*(*v90 + 64))(v90, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v90 + 17) = 0;
        if (v89)
        {
          v72 = 3;
        }

        else
        {
          v104 = (*(*v80 + 120))(v80);
          v105 = *(v104 + 23);
          v106 = v105;
          if ((v105 & 0x80u) != 0)
          {
            v105 = *(v104 + 8);
          }

          if (v105 == 7 && (v106 >= 0 ? (v107 = v104) : (v107 = *v104), (v108 = *v107, v109 = *(v107 + 3), v108 == *"MESSAGE") ? (v110 = v109 == *"SAGE") : (v110 = 0), v110))
          {
            v72 = 1;
          }

          else
          {
            v111 = ((*v4)[8])(v4);
            ((*v4)[2])(v4, v111);
            v132 = "determining based on transaction";
            v112 = ImsOutStream::putStreamable<char const*&>(v111, &v132);
            (*(*v112 + 64))(v112, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v112[17] = 0;
            v113 = *(v7 + 248);
            v114 = *(v7 + 256);
            if (v114)
            {
              atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v113)
            {
              v123 = v80;
              v124 = v79;
              if (v79)
              {
                atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v121 = v77;
              v122 = v13;
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v72 = SipUserAgent::determineIncomingMessageCategory(v113, &v123, &v121);
              if (v122)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v122);
              }

              if (v124)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v124);
              }
            }

            else
            {
              v72 = 0;
            }

            if (v114)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v114);
            }
          }
        }

        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }
      }

      else
      {
        v99 = ((*v4)[8])(v4);
        ((*v4)[2])(v4, v99);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v99 + 8), "Didn't get a client transaction", 31);
        *(v99 + 17) = 0;
        (*(*v99 + 64))(v99, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v72 = 0;
        *(v99 + 17) = 0;
      }

      v119 = v131;
      if (v131)
      {
        goto LABEL_186;
      }

      goto LABEL_187;
    }

LABEL_124:
    v91 = ((*v4)[8])(v4);
    ((*v4)[2])(v4, v91);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v91 + 8), "Not a SipRequest or SipResponse", 31);
    *(v91 + 17) = 0;
    (*(*v91 + 64))(v91, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v72 = 0;
    *(v91 + 17) = 0;
    goto LABEL_189;
  }

  v12 = v11;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = ((*v4)[8])(v4);
  ((*v4)[2])(v4, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Is a SipRequest", 15);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  v15 = SipMessage::header<SipConversationIdHeader>(*a2);
  v16 = (v15 + 64);
  if (!v15)
  {
    v16 = &ims::kEmptyString;
  }

  v17 = *(v16 + 23);
  v18 = *(v16 + 1);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  if (v18)
  {
    goto LABEL_22;
  }

  v19 = SipMessage::header<SipContributionIdHeader>(*a2);
  v20 = (v19 + 64);
  if (!v19)
  {
    v20 = &ims::kEmptyString;
  }

  v21 = *(v20 + 23);
  v22 = *(v20 + 1);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  if (v22)
  {
LABEL_22:
    v23 = 1;
  }

  else
  {
    v100 = SipMessage::header<SipInReplyToContributionIdHeader>(*a2);
    v101 = (v100 + 64);
    if (!v100)
    {
      v101 = &ims::kEmptyString;
    }

    v102 = *(v101 + 23);
    v103 = *(v101 + 1);
    if ((v102 & 0x80u) == 0)
    {
      v103 = v102;
    }

    v23 = v103 != 0;
  }

  v24 = (*(*v12 + 120))(v12);
  v25 = *(v24 + 23);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(v24 + 8);
  }

  if (v25 == 6)
  {
    v27 = v26 >= 0 ? v24 : *v24;
    v28 = *v27;
    v29 = *(v27 + 4);
    if (v28 == *"INVITE" && v29 == *"TE")
    {
      goto LABEL_98;
    }
  }

  v31 = (*(*v12 + 120))(v12);
  v32 = *(v31 + 23);
  v33 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(v31 + 8);
  }

  if (v32 == 3)
  {
    v34 = v33 >= 0 ? v31 : *v31;
    v35 = *v34;
    v36 = *(v34 + 2);
    if (v35 == SipRequest::kMethodBye && v36 == BYTE2(SipRequest::kMethodBye))
    {
      goto LABEL_98;
    }
  }

  v38 = (*(*v12 + 120))(v12);
  v39 = *(v38 + 23);
  v40 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v38 + 8);
  }

  if (v39 == 5)
  {
    v41 = v40 >= 0 ? v38 : *v38;
    v42 = *v41;
    v43 = *(v41 + 4);
    if (v42 == *"REFER" && v43 == SipRequest::kMethodRefer[4])
    {
      goto LABEL_98;
    }
  }

  v45 = (*(*v12 + 120))(v12);
  v46 = *(v45 + 23);
  v47 = v46;
  if ((v46 & 0x80u) != 0)
  {
    v46 = *(v45 + 8);
  }

  if (v46 == 6)
  {
    v48 = v47 >= 0 ? v45 : *v45;
    v49 = *v48;
    v50 = *(v48 + 4);
    if (v49 == *"CANCEL" && v50 == *"EL")
    {
      goto LABEL_98;
    }
  }

  v52 = (*(*v12 + 120))(v12);
  v53 = *(v52 + 23);
  v54 = v53;
  if ((v53 & 0x80u) != 0)
  {
    v53 = *(v52 + 8);
  }

  if (v53 == 7)
  {
    v55 = v54 >= 0 ? v52 : *v52;
    v56 = *v55;
    v57 = *(v55 + 3);
    if (v56 == *"MESSAGE" && v57 == *"SAGE")
    {
      goto LABEL_98;
    }
  }

  v59 = (*(*v12 + 120))(v12);
  v60 = *(v59 + 23);
  v61 = v60;
  if ((v60 & 0x80u) != 0)
  {
    v60 = *(v59 + 8);
  }

  if (v60 == 4)
  {
    v62 = v61 >= 0 ? v59 : *v59;
    if (*v62 == *"INFO")
    {
LABEL_98:
      v73 = ((*v4)[8])(v4);
      ((*v4)[2])(v4, v73);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "Is a ", 5);
      *(v73 + 17) = 0;
      v74 = (*(*v12 + 120))(v12);
      (*(*v73 + 32))(v73, v74);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), ". HasLazuliHeaders: ", 20);
      *(v73 + 17) = 0;
      MEMORY[0x1E6923320](*(v73 + 8), v23);
      *(v73 + 17) = 0;
      (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v73 + 17) = 0;
      if (v23)
      {
        v72 = 3;
        if (!v13)
        {
          goto LABEL_189;
        }

        goto LABEL_188;
      }

      v92 = (*(*v12 + 120))(v12);
      v93 = *(v92 + 23);
      v94 = v93;
      if ((v93 & 0x80u) != 0)
      {
        v93 = *(v92 + 8);
      }

      if (v93 == 7)
      {
        if (v94 >= 0)
        {
          v95 = v92;
        }

        else
        {
          v95 = *v92;
        }

        v96 = bswap32(*v95);
        v97 = bswap32(*"MESSAGE");
        if (v96 == v97 && (v96 = bswap32(*(v95 + 3)), v97 = bswap32(*"SAGE"), v96 == v97))
        {
          v98 = 0;
        }

        else if (v96 < v97)
        {
          v98 = -1;
        }

        else
        {
          v98 = 1;
        }

        if (v98)
        {
          v72 = 2;
        }

        else
        {
          v72 = 1;
        }

        if (!v13)
        {
          goto LABEL_189;
        }

        goto LABEL_188;
      }

LABEL_134:
      v72 = 2;
      if (!v13)
      {
        goto LABEL_189;
      }

LABEL_188:
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      goto LABEL_189;
    }
  }

  v63 = (*(*v12 + 120))(v12);
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v63, "PRACK"))
  {
    goto LABEL_134;
  }

  v64 = (*(*v12 + 120))(v12);
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v64, "UPDATE"))
  {
    goto LABEL_134;
  }

  v65 = (*(*v12 + 120))(v12);
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v65, &SipRequest::kMethodAck) || (v66 = (*(*v12 + 120))(v12), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v66, "NOTIFY")) || (v67 = (*(*v12 + 120))(v12), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v67, "OPTIONS")) || (v68 = (*(*v12 + 120))(v12), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v68, "REGISTER")) || (v69 = (*(*v12 + 120))(v12), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v69, "SUBSCRIBE")))
  {
    v70 = *(v7 + 248);
    v71 = *(v7 + 256);
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v70)
    {
      v128 = v12;
      v129 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v126 = 0;
      v127 = 0;
      v72 = SipUserAgent::determineIncomingMessageCategory(v70, &v128, &v126);
      if (v127)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v127);
      }

      if (v129)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v129);
      }
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v119 = v71;
LABEL_186:
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

LABEL_187:
    if (!v13)
    {
      goto LABEL_189;
    }

    goto LABEL_188;
  }

  v72 = 0;
  if (v13)
  {
    goto LABEL_188;
  }

LABEL_189:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v72;
}

void sub_1E4FD5FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void SipTransactionLayer::transactionTerminated(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  SipTransaction::transactionMapKey(a2, a3, __p);
  v4 = a1 + 35;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1 + 35, __p);
  if (v5)
  {
    v6 = a1[36];
    v7 = v5[1];
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v6)
      {
        v7 %= *&v6;
      }
    }

    else
    {
      v7 &= *&v6 - 1;
    }

    v14 = *(*v4 + 8 * v7);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14 != v5);
    if (v15 == a1 + 37)
    {
      goto LABEL_28;
    }

    v16 = v15[1];
    if (v8.u32[0] > 1uLL)
    {
      if (v16 >= *&v6)
      {
        v16 %= *&v6;
      }
    }

    else
    {
      v16 &= *&v6 - 1;
    }

    if (v16 != v7)
    {
LABEL_28:
      if (!*v5)
      {
        goto LABEL_29;
      }

      v17 = *(*v5 + 1);
      if (v8.u32[0] > 1uLL)
      {
        if (v17 >= *&v6)
        {
          v17 %= *&v6;
        }
      }

      else
      {
        v17 &= *&v6 - 1;
      }

      if (v17 != v7)
      {
LABEL_29:
        *(*v4 + 8 * v7) = 0;
      }
    }

    v25 = *v5;
    if (*v5)
    {
      v26 = v25[1];
      if (v8.u32[0] > 1uLL)
      {
        if (v26 >= *&v6)
        {
          v26 %= *&v6;
        }
      }

      else
      {
        v26 &= *&v6 - 1;
      }

      if (v26 != v7)
      {
        *(*v4 + 8 * v26) = v15;
        v25 = *v5;
      }
    }

    *v15 = v25;
    *v5 = 0;
    --a1[38];
    v35 = v5;
    v36 = a1 + 35;
    v37 = 1;
    memset(v38, 0, sizeof(v38));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](&v35);
  }

  else
  {
    v9 = a1 + 40;
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1 + 40, __p);
    if (v10)
    {
      v11 = a1[41];
      v12 = v10[1];
      v13 = vcnt_s8(v11);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        if (v12 >= *&v11)
        {
          v12 %= *&v11;
        }
      }

      else
      {
        v12 &= *&v11 - 1;
      }

      v27 = *(*v9 + 8 * v12);
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27 != v10);
      if (v28 == a1 + 42)
      {
        goto LABEL_53;
      }

      v29 = v28[1];
      if (v13.u32[0] > 1uLL)
      {
        if (v29 >= *&v11)
        {
          v29 %= *&v11;
        }
      }

      else
      {
        v29 &= *&v11 - 1;
      }

      if (v29 != v12)
      {
LABEL_53:
        if (!*v10)
        {
          goto LABEL_54;
        }

        v30 = *(*v10 + 1);
        if (v13.u32[0] > 1uLL)
        {
          if (v30 >= *&v11)
          {
            v30 %= *&v11;
          }
        }

        else
        {
          v30 &= *&v11 - 1;
        }

        if (v30 != v12)
        {
LABEL_54:
          *(*v9 + 8 * v12) = 0;
        }
      }

      v31 = *v10;
      if (*v10)
      {
        v32 = v31[1];
        if (v13.u32[0] > 1uLL)
        {
          if (v32 >= *&v11)
          {
            v32 %= *&v11;
          }
        }

        else
        {
          v32 &= *&v11 - 1;
        }

        if (v32 != v12)
        {
          *(*v9 + 8 * v32) = v28;
          v31 = *v10;
        }
      }

      *v28 = v31;
      *v10 = 0;
      --a1[43];
      v35 = v10;
      v36 = a1 + 40;
      v37 = 1;
      memset(v38, 0, sizeof(v38));
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](&v35);
    }

    else
    {
      v18 = a1[2];
      if (v18)
      {
        v19 = std::__shared_weak_count::lock(v18);
        if (v19)
        {
          v20 = v19;
          v21 = a1[1];
          if (v21 && *(v21 + 320) == 2)
          {
            v23 = a1[4];
            v22 = a1 + 4;
            v24 = (*(v23 + 56))(v22);
            (*(*v22 + 16))(v22, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "transactionTerminated: unknown transaction ", 43);
            *(v24 + 17) = 0;
            (*(*v24 + 32))(v24, __p);
            (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v24 + 17) = 0;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }
      }
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4FD64B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTransactionLayer::printTransactions(uint64_t this, ImsOutStream *a2)
{
  v3 = this;
  if (*(this + 304) || *(this + 344))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Current transactions:", 21);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    for (i = *(v3 + 296); i; i = *i)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v15, i + 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  ", 2);
      *(a2 + 17) = 0;
      (*(**&v15[24] + 144))(v13);
      (*(*a2 + 40))(a2, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      v5 = *&v15[24];
      v6 = (*(**&v15[24] + 24))(*&v15[24]);
      v7 = (*(*v5 + 16))(v5, v6);
      LoggableString::LoggableString(&__p, v7);
      (*(*a2 + 40))(a2, &__p);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((v15[23] & 0x80000000) != 0)
      {
        operator delete(*v15);
      }
    }

    for (j = *(v3 + 336); j; j = *j)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v15, j + 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  ", 2);
      *(a2 + 17) = 0;
      (*(**&v15[24] + 152))(v13);
      (*(*a2 + 40))(a2, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      v9 = *&v15[24];
      v10 = (*(**&v15[24] + 24))(*&v15[24]);
      v11 = (*(*v9 + 16))(v9, v10);
      LoggableString::LoggableString(&__p, v11);
      (*(*a2 + 40))(a2, &__p);
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((v15[23] & 0x80000000) != 0)
      {
        operator delete(*v15);
      }
    }

    this = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  return this;
}

void SipTransactionLayer::sendMessageInTransaction(uint64_t a1@<X0>, SipMessage **a2@<X1>, const std::string **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*a3)[4].__r_.__value_.__r.__words[2];
  if (v8)
  {
    size = (*a3)[4].__r_.__value_.__l.__size_;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v30 = 0;
    v31 = std::__shared_weak_count::lock(v8);
    if (v31)
    {
      v30 = size;
    }

    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v28 = 0;
  v29 = 0;
  SipMessage::clone(*a2, &v28);
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v10 = *(a1 + 216);
  v26 = v28;
  v27 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransportLayer::sendMessage(v10, &v26, &v30, 0, a4);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v11 = (*a3)[4].__r_.__value_.__r.__words[2];
  if (v11)
  {
    v12 = (*a3)[4].__r_.__value_.__l.__size_;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = std::__shared_weak_count::lock(v11);
    v14 = v30;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      std::__shared_weak_count::__release_weak(v11);
      if (v14 == v12)
      {
        goto LABEL_27;
      }
    }

    else
    {
      std::__shared_weak_count::__release_weak(v11);
      if (!v14)
      {
        goto LABEL_27;
      }
    }

    v15 = v30;
    if (!v30)
    {
      goto LABEL_23;
    }
  }

  else if (!v30)
  {
    goto LABEL_27;
  }

  v17 = *(a1 + 32);
  v16 = a1 + 32;
  v18 = (*(v17 + 64))(v16);
  (*(*v16 + 16))(v16, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "changed to ", 11);
  *(v18 + 17) = 0;
  (*(*v30 + 80))(v30, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " for transaction ", 17);
  *(v18 + 17) = 0;
  ObfuscatedString::ObfuscatedString(v22, *a3 + 13);
  (*(*v18 + 56))(v18, v22);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v15 = v30;
LABEL_23:
  v19 = &(*a3)[3];
  v20 = v15;
  v21 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v19 + 48))(v19, &v20, 1);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_27:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_1E4FD6CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  ImsResult::~ImsResult(v20);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  v23 = *(v21 - 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTransactionLayer::messageEncoding(SipTransactionLayer *this)
{
  (*(**(this + 27) + 128))(&v7);
  if (!v8)
  {
    v1 = 0;
    goto LABEL_12;
  }

  v1 = std::__shared_weak_count::lock(v8);
  if (v1)
  {
    v2 = v7;
  }

  else
  {
    v2 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v2)
  {
    v4 = *(v2 + 248);
    v3 = *(v2 + 256);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else if (!v4)
    {
      goto LABEL_12;
    }

    v5 = v4 + 384;
    if (!v1)
    {
      return v5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if (v1)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v5;
}

void SipTransactionLayer::logPrefix(SipTransactionLayer *this, ImsOutStream *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 1)) == 0 || *(v6 + 296) != 1)
  {
LABEL_7:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "TransactionLayer: ", 18);
    *(a2 + 17) = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "TransactionLayer(EMERGENCY): ", 29);
  *(a2 + 17) = 0;
LABEL_8:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

uint64_t SipTransactionLayer::activeTransactionCount(SipTransactionLayer *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    LODWORD(v3) = 0;
    do
    {
      v10 = 0;
      *__p = 0u;
      v9 = 0u;
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, v2 + 1);
      v4 = (*(**(&v9 + 1) + 136))(*(&v9 + 1));
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (SBYTE7(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v3 = v3 + (v4 ^ 1);
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  for (i = *(this + 42); i; i = *i)
  {
    v10 = 0;
    *__p = 0u;
    v9 = 0u;
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, i + 1);
    v6 = (*(**(&v9 + 1) + 136))(*(&v9 + 1));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (SBYTE7(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v3 = v3 + (v6 ^ 1);
  }

  return v3;
}

uint64_t ims::SharedLoggable<SipTransactionLayer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipTransactionLayer>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19SipTransactionLayerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19SipTransactionLayerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *ims::SharedLoggable<IBISessionHelper>::SharedLoggable(void *a1, const char *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<IBISessionHelper,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EE6160;
  return a1;
}

void sub_1E4FD719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void IBISessionHelper::sendCreateMediaRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(&v14, "ibi.session");
        v43[0] = 0;
        v46 = 0;
        v7 = ims::debug(&v14, v43);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendCreateMediaRequest", 22);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v46 == 1 && v45 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v15) < 0)
        {
          operator delete(v14);
        }

        v37 = 0u;
        v38 = 0u;
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
        v14 = 0u;
        AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK::ARI_IBIImsMECreateAudioMediaSessionReq_SDK(&v14);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v14, "ibi.session");
  v39[0] = 0;
  v42 = 0;
  v10 = ims::debug(&v14, v39);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendCreateMediaRequest", 22);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(v14);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4FD7E68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E4FD8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (LOBYTE(STACK[0x298]) == 1 && SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  JUMPOUT(0x1E4FD8080);
}

void ibiUtils::ibiSetValue<IBIImsMEAudioCodec,4ul,std::vector<IBIImsMEAudioCodec>>(Ari *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = a3 - a2;
  if (a3 != a2)
  {
    std::vector<IBIImsMEAudioCodec>::__vallocate[abi:ne200100](&v14, 0xAAAAAAAAAAAAAAABLL * (v4 >> 4));
  }

  v5 = 0;
  if (0xAAAAAAAAAAAAAAABLL * (v4 >> 4) < 5)
  {
    v11 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v11;
      operator delete(v11);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v5 = v14;
      v4 = v15;
    }

    *a1 = v5;
    *(a1 + 1) = v4;
    *(a1 + 2) = v16;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v17, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v8);
        v13 = v18 >= 0 ? v17 : v17[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v20 = 2080;
        v21 = v13;
        v22 = 1024;
        v23 = 360;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4);
        v28 = 2048;
        v29 = 4;
        _os_log_error_impl(&dword_1E4C3F000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v8);
      if (v22 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v9, v10, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 4), 4);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4FD83B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ibiUtils::ibiSetValue<IBIImsMEAudioEVSCodec,2ul,std::vector<IBIImsMEAudioEVSCodec>>(Ari *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = a3 - a2;
  if (a3 != a2)
  {
    std::vector<IBIImsMEAudioEVSCodec>::__vallocate[abi:ne200100](&v14, 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4));
  }

  v5 = 0;
  if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 4) < 3)
  {
    v11 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v11;
      operator delete(v11);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v5 = v14;
      v4 = v15;
    }

    *a1 = v5;
    *(a1 + 1) = v4;
    *(a1 + 2) = v16;
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v17, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v8);
        v13 = v18 >= 0 ? v17 : v17[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v20 = 2080;
        v21 = v13;
        v22 = 1024;
        v23 = 360;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 4);
        v28 = 2048;
        v29 = 2;
        _os_log_error_impl(&dword_1E4C3F000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v8);
      if (v22 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v9, v10, 360, a1, 0xCCCCCCCCCCCCCCCDLL * ((v15 - v14) >> 4), 2);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4FD866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void IBISessionHelper::sendConfigureRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(&v14, "ibi.session");
        v40[0] = 0;
        v43 = 0;
        v7 = ims::debug(&v14, v40);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendConfigureRequest", 20);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v43 == 1 && v42 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v15) < 0)
        {
          operator delete(v14);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
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
        AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK::ARI_IBIImsMEConfigureAudioMediaReq_SDK(&v14);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v14, "ibi.session");
  v36[0] = 0;
  v39 = 0;
  v10 = ims::debug(&v14, v36);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendConfigureRequest", 20);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(v14);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4FD92AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E4FD94F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (LOBYTE(STACK[0x288]) == 1 && SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  JUMPOUT(0x1E4FD94DCLL);
}

void IBISessionHelper::sendTerminateRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
        v22[0] = 0;
        v25 = 0;
        v7 = ims::debug(v13, v22);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendTerminateRequest", 20);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v25 == 1 && v24 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v14) < 0)
        {
          operator delete(v13[0]);
        }

        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        *v13 = 0u;
        v14 = 0u;
        AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK::ARI_IBIImsMETerminateMediaSessionReq_SDK(v13);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
  v18[0] = 0;
  v21 = 0;
  v10 = ims::debug(v13, v18);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendTerminateRequest", 20);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4FD9B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, void *aBlock, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{
  v62 = *(v60 - 80);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
    if (!v59)
    {
LABEL_3:
      if (!v58)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v59)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v59);
  if (!v58)
  {
LABEL_4:
    if (!v57)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (!v57)
  {
LABEL_6:
    MEMORY[0x1E6922DE0](&a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  goto LABEL_6;
}

void IBISessionHelper::sendStartRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
        v22[0] = 0;
        v25 = 0;
        v7 = ims::debug(v13, v22);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendStartRequest", 16);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v25 == 1 && v24 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v14) < 0)
        {
          operator delete(v13[0]);
        }

        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        *v13 = 0u;
        v14 = 0u;
        AriSdk::ARI_IBIImsMEStartMediaReq_SDK::ARI_IBIImsMEStartMediaReq_SDK(v13);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
  v18[0] = 0;
  v21 = 0;
  v10 = ims::debug(v13, v18);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendStartRequest", 16);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4FDA35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, void *aBlock, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{
  v62 = *(v60 - 80);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
    if (!v59)
    {
LABEL_3:
      if (!v58)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v59)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v59);
  if (!v58)
  {
LABEL_4:
    if (!v57)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (!v57)
  {
LABEL_6:
    MEMORY[0x1E69229D0](&a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  goto LABEL_6;
}

void IBISessionHelper::sendStopRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
        v22[0] = 0;
        v25 = 0;
        v7 = ims::debug(v13, v22);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendStopRequest", 15);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v25 == 1 && v24 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v14) < 0)
        {
          operator delete(v13[0]);
        }

        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        *v13 = 0u;
        v14 = 0u;
        AriSdk::ARI_IBIImsMEStopMediaReq_SDK::ARI_IBIImsMEStopMediaReq_SDK(v13);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
  v18[0] = 0;
  v21 = 0;
  v10 = ims::debug(v13, v18);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendStopRequest", 15);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4FDAB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, void *aBlock, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{
  v62 = *(v60 - 80);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
    if (!v59)
    {
LABEL_3:
      if (!v58)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v59)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v59);
  if (!v58)
  {
LABEL_4:
    if (!v57)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (!v57)
  {
LABEL_6:
    MEMORY[0x1E6922990](&a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  goto LABEL_6;
}

void IBISessionHelper::sendStartDTMFDigitRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
        v22[0] = 0;
        v25 = 0;
        v7 = ims::debug(v13, v22);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendStartDTMFDigitRequest", 25);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v25 == 1 && v24 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v14) < 0)
        {
          operator delete(v13[0]);
        }

        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        *v13 = 0u;
        AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK::ARI_IBIImsMEStartDTMFCodeReq_SDK(v13);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
  v18[0] = 0;
  v21 = 0;
  v10 = ims::debug(v13, v18);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendStartDTMFDigitRequest", 25);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4FDB370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *aBlock, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  v64 = *(v62 - 80);
  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
    if (!v61)
    {
LABEL_3:
      if (!v60)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v61)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v61);
  if (!v60)
  {
LABEL_4:
    if (!v59)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  if (!v59)
  {
LABEL_6:
    MEMORY[0x1E6922AA0](&a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  goto LABEL_6;
}

void IBISessionHelper::sendStopDTMFDigitRequest(IBISessionHelper *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 7);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 6);
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
        v22[0] = 0;
        v25 = 0;
        v7 = ims::debug(v13, v22);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sendStopDTMFDigitRequest", 24);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
        *(v7 + 17) = 0;
        MEMORY[0x1E69233B0](*(v7 + 8), *(v6 + 32));
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v25 == 1 && v24 < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v14) < 0)
        {
          operator delete(v13[0]);
        }

        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        *v13 = 0u;
        v14 = 0u;
        AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK::ARI_IBIImsMEStopDTMFCodeReq_SDK(v13);
        AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "ibi.session");
  v18[0] = 0;
  v21 = 0;
  v10 = ims::debug(v13, v18);
  v11 = *(*(*this - 8) + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "sendStopDTMFDigitRequest", 24);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=0]", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0x40000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4FDBB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, void *aBlock, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char a56)
{
  v62 = *(v60 - 80);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
    if (!v59)
    {
LABEL_3:
      if (!v58)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v59)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v59);
  if (!v58)
  {
LABEL_4:
    if (!v57)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (!v57)
  {
LABEL_6:
    MEMORY[0x1E6922A50](&a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    _Unwind_Resume(a1);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  goto LABEL_6;
}

void IBISessionHelper::~IBISessionHelper(IBISessionHelper *this)
{
  *this = &unk_1F5EE6088;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  *this = &unk_1F5EE6088;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);

  JUMPOUT(0x1E69235B0);
}

void *ctu::SharedLoggable<IBISessionHelper,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, NSObject **a2, char *a3, const char **a4)
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

uint64_t ims::SharedLoggable<IBISessionHelper>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<IBISessionHelper>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk42ARI_IBIImsMECreateAudioMediaSessionReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDBF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk38ARI_IBIImsMEConfigureAudioMediaReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDC014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk40ARI_IBIImsMETerminateMediaSessionReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDC0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk29ARI_IBIImsMEStartMediaReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDC174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk28ARI_IBIImsMEStopMediaReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDC224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk32ARI_IBIImsMEStartDTMFCodeReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDC2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk31ARI_IBIImsMEStopDTMFCodeReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4FDC384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t SipUint32ParameterHeader::encodeValue(SipUint32ParameterHeader *this, ImsOutStream *a2)
{
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 26));
  *(a2 + 17) = 0;
  return 1;
}

uint64_t SipUint32ParameterHeader::setValueFromString(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  *(a1 + 104) = strtoul(v3, 0, 10);
  return 1;
}

uint64_t ImsTcpNw::ImsTcpNw(uint64_t a1, void *a2, __int128 *a3, int a4, uint64_t a5)
{
  *a1 = &unk_1F5EE65F0;
  ims::getQueue(&v15);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 48), "com.apple.ipTelephony", "net.tcp.nw");

  *a1 = &unk_1F5EE62F0;
  *(a1 + 8) = &unk_1F5EE63E8;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 136), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 152) = *(a3 + 2);
    *(a1 + 136) = v11;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  *(a1 + 184) = dispatch_queue_create("com.apple.ipTelephony.nwconnection", v12);

  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  v13 = a2[1];
  *(a1 + 224) = *a2;
  *(a1 + 232) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = a4;
  *(a1 + 280) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 288), "00000000-0000-0000-0000-000000000000");
  (*(*a1 + 168))(a1, a5);
  return a1;
}

void sub_1E4FDC618(_Unwind_Exception *a1)
{
  v4 = *(v2 + 128);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v2 + 112);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MEMORY[0x1E69225A0](v1 + 32);
  _Unwind_Resume(a1);
}

void ImsTcpNw::~ImsTcpNw(ImsTcpNw *this)
{
  *this = &unk_1F5EE62F0;
  *(this + 1) = &unk_1F5EE63E8;
  ImsTcpNw::closeSocket(this);
  v2 = *(this + 12);
  if (v2)
  {
    nw_listener_cancel(v2);
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  std::__list_imp<std::vector<unsigned char>>::clear(this + 30);
  v3 = *(this + 29);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 26);
  *(this + 26) = 0;

  v5 = *(this + 24);
  *(this + 24) = 0;

  v6 = *(this + 23);
  *(this + 23) = 0;

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  v7 = *(this + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 14);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  MEMORY[0x1E69225A0](this + 48);
}

{
  ImsTcpNw::~ImsTcpNw(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toImsTcpNw::~ImsTcpNw(ImsTcpNw *this)
{
  ImsTcpNw::~ImsTcpNw((this - 8));
}

{
  ImsTcpNw::~ImsTcpNw((this - 8));

  JUMPOUT(0x1E69235B0);
}

void ImsTcpNw::initializeSocket(ImsTcpNw *this@<X0>, ImsTcpSocketInterface::TcpTlsInitParams *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 14);
  *(this + 13) = v7;
  *(this + 14) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::string::operator=((this + 160), (a2 + 64));
  std::string::operator=((this + 136), (a2 + 32));
  objc_storeStrong(this + 24, *(a2 + 7));
  *(this + 50) = *(a2 + 35);
  *(this + 280) = *(a2 + 144);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  ImsTcpNw::configureEndpoint(&v23, this);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = &unk_1F5EBDEF8;
  v17 = &_bambiDomain;
  v18 = 0;
  if (*(&v23 + 1) != &_bambiDomain)
  {
    goto LABEL_6;
  }

  v9 = v24;
  ImsResult::~ImsResult(&v16);
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 3);
  v15[0] = *(a2 + 2);
  v15[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsTcpNw::connect(this, v15, &v16);
  ImsResult::operator=(&v23, &v16);
  ImsResult::~ImsResult(&v16);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = &unk_1F5EBDEF8;
  v17 = &_bambiDomain;
  v18 = 0;
  if (*(&v23 + 1) != &_bambiDomain)
  {
LABEL_6:
    ImsResult::~ImsResult(&v16);
LABEL_8:
    ImsResult::ImsResult(a3, &v23);
    goto LABEL_9;
  }

  v11 = v24;
  ImsResult::~ImsResult(&v16);
  if (v11)
  {
    goto LABEL_8;
  }

  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(this + 16);
  *(this + 15) = v13;
  *(this + 16) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
LABEL_9:
  ImsResult::~ImsResult(&v23);
}

void sub_1E4FDCAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  ImsResult::~ImsResult(va1);
  _Unwind_Resume(a1);
}

double ImsTcpNw::configureEndpoint(ImsTcpNw *this, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(a2 + 200) && *(a2 + 272) == 1)
  {
    v4 = v53;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v5 = ___ZN8ImsTcpNw17configureEndpointEv_block_invoke;
  }

  else
  {
    v4 = v52;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v5 = ___ZN8ImsTcpNw17configureEndpointEv_block_invoke_4;
  }

  v4[2] = v5;
  v4[3] = &__block_descriptor_40_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
  v4[4] = a2;
  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  v7 = *(a2 + 56);
  *(a2 + 56) = legacy_tcp_socket;

  v8 = *(a2 + 56) == 0;
  v9 = dispatch::queue::get((a2 + 48));
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      (*(*a2 + 216))(buf, a2);
      v48 = v57 >= 0 ? buf : *buf;
      *v59 = 141558275;
      *&v59[4] = 1752392040;
      v60 = 2081;
      v61 = v48;
      _os_log_error_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sFailed to create TCP nw_parameters", v59, 0x16u);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(*buf);
      }
    }

    v25 = 1073741842;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 216))(v59, a2);
      v11 = v62 >= 0 ? v59 : *v59;
      v12 = *(a2 + 280) ? "Enable" : "Disable";
      *buf = 141558531;
      *&buf[4] = 1752392040;
      v55 = 2081;
      v56 = v11;
      v57 = 2080;
      v58[0] = v12;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s ultra constrained interface", buf, 0x20u);
      if (v62 < 0)
      {
        operator delete(*v59);
      }
    }

    v13 = *(a2 + 56);
    v14 = *(a2 + 280);
    nw_parameters_set_allow_ultra_constrained();
    v15 = *(a2 + 56);
    nw_parameters_set_traffic_class();
    v16 = *(a2 + 183);
    if (v16 < 0)
    {
      v16 = *(a2 + 168);
    }

    v17 = v16 == 0;
    v18 = dispatch::queue::get((a2 + 48));
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        (*(*a2 + 216))(buf, a2);
        v26 = v57 >= 0 ? buf : *buf;
        *v59 = 141558275;
        *&v59[4] = 1752392040;
        v60 = 2081;
        v61 = v26;
        _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sDid not set bundle UUID", v59, 0x16u);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v20 = (a2 + 160);
      if (v19)
      {
        (*(*a2 + 216))(v59, a2);
        if (v62 >= 0)
        {
          v21 = v59;
        }

        else
        {
          v21 = *v59;
        }

        v22 = a2 + 160;
        if (*(a2 + 183) < 0)
        {
          v22 = *v20;
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        v55 = 2081;
        v56 = v21;
        v57 = 2080;
        v58[0] = v22;
        _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSet UUID %s", buf, 0x20u);
        if (v62 < 0)
        {
          operator delete(*v59);
        }
      }

      v23 = *(a2 + 56);
      if (*(a2 + 183) < 0)
      {
        v24 = *v20;
      }

      nw_parameters_set_source_application_by_bundle_id();
    }

    v27 = *(a2 + 159);
    if (v27 < 0)
    {
      v27 = *(a2 + 144);
    }

    v28 = v27 == 0;
    v29 = dispatch::queue::get((a2 + 48));
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v30)
      {
        (*(*a2 + 216))(buf, a2);
        v35 = v57 >= 0 ? buf : *buf;
        *v59 = 141558275;
        *&v59[4] = 1752392040;
        v60 = 2081;
        v61 = v35;
        _os_log_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sDid not set required interface", v59, 0x16u);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      v31 = (a2 + 136);
      if (v30)
      {
        (*(*a2 + 216))(v59, a2);
        if (v62 >= 0)
        {
          v32 = v59;
        }

        else
        {
          v32 = *v59;
        }

        v33 = a2 + 136;
        if (*(a2 + 159) < 0)
        {
          v33 = *v31;
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        v55 = 2081;
        v56 = v32;
        v57 = 2080;
        v58[0] = v33;
        _os_log_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sRequire interface %s", buf, 0x20u);
        if (v62 < 0)
        {
          operator delete(*v59);
        }
      }

      if (*(a2 + 159) < 0)
      {
        v34 = *v31;
      }

      v29 = nw_interface_create_with_name();
      nw_parameters_require_interface(*(a2 + 56), v29);
    }

    v36 = *(a2 + 104);
    if (!v36 || !(*(*v36 + 56))(v36))
    {
      ImsTcpNw::bind(a2, v51);
      ImsResult::~ImsResult(v51);
    }

    if (*(a2 + 104))
    {
      IpAddress::asString(buf);
    }

    v37 = *(a2 + 64);
    if (v37)
    {
      nw_parameters_set_local_endpoint(*(a2 + 56), v37);
    }

    if (!*(a2 + 268))
    {
      v25 = 0;
      goto LABEL_83;
    }

    v38 = nw_parameters_copy_default_protocol_stack(*(a2 + 56));
    v10 = v38;
    if (v38)
    {
      v39 = nw_protocol_stack_copy_internet_protocol(v38);
      if (v39)
      {
        v40 = *(a2 + 268);
        v41 = dispatch::queue::get((a2 + 48));
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a2 + 216))(v59, a2);
          v42 = v62;
          v43 = *v59;
          ctu::hex0((v40 >> 2));
          v44 = v59;
          if (v42 < 0)
          {
            v44 = v43;
          }

          if (v50 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 141558787;
          *&buf[4] = 1752392040;
          v55 = 2081;
          v56 = v44;
          v57 = 1024;
          LODWORD(v58[0]) = (v40 >> 2);
          WORD2(v58[0]) = 2080;
          *(v58 + 6) = p_p;
          _os_log_impl(&dword_1E4C3F000, v41, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSet DSCP to %u hex=%s", buf, 0x26u);
          if (v50 < 0)
          {
            operator delete(__p);
          }

          if (v62 < 0)
          {
            operator delete(*v59);
          }
        }

        nw_ip_options_set_dscp_value();
      }
    }

    v25 = 0;
  }

LABEL_83:
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5EBDEF8;
  *(this + 1) = &_bambiDomain;
  *(this + 4) = v25;
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4FDD3A0(_Unwind_Exception *a1)
{
  if (*(v4 - 105) < 0)
  {
    operator delete(*(v4 - 128));
  }

  _Unwind_Resume(a1);
}

void ImsTcpNw::connect(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 88) - 1) > 2)
  {
    if (*(a1 + 56))
    {
      v7 = *a2;
      IpAddress::asString(&__p);
    }

    v8 = dispatch::queue::get((a1 + 48));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 216))(&__p, a1);
      v10 = v12 >= 0 ? &__p : __p;
      buf[0] = 141558275;
      *&buf[1] = 1752392040;
      v14 = 2081;
      v15 = v10;
      _os_log_error_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sFailed to create nw_connection due to invalid parameters", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p);
      }
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0x40000000;
  }

  else
  {
    v5 = dispatch::queue::get((a1 + 48));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 216))(&__p, a1);
      if (v12 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      buf[0] = 141558275;
      *&buf[1] = 1752392040;
      v14 = 2081;
      v15 = p_p;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sConnection is being attempted", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p);
      }
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4FDDBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  _Unwind_Resume(a1);
}

void ___ZN8ImsTcpNw17configureEndpointEv_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 200);
  MEMORY[0x1E6923EE0]();
  v6 = dispatch::queue::get((v4 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v4 + 216))(__p, v4);
    v7 = v15 >= 0 ? __p : __p[0];
    v8 = *(v4 + 200);
    *buf = 141558531;
    v17 = 1752392040;
    v18 = 2081;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sTCP KeepAlive time = %u seconds", buf, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  MEMORY[0x1E6923EF0](v3, 10);
  v9 = dispatch::queue::get((v4 + 48));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v4 + 216))(__p, v4);
    v10 = v15 >= 0 ? __p : __p[0];
    *buf = 141558531;
    v17 = 1752392040;
    v18 = 2081;
    v19 = v10;
    v20 = 1024;
    v21 = 10;
    _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUnresponsive peer detection interval = %u seconds", buf, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  MEMORY[0x1E6923ED0](v3, 4);
  v11 = dispatch::queue::get((v4 + 48));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v4 + 216))(__p, v4);
    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 141558531;
    v17 = 1752392040;
    v18 = 2081;
    v19 = v12;
    v20 = 1024;
    v21 = 4;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUnresponsive peer detection probe count = %u", buf, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  MEMORY[0x1E6923EC0](v3, 1);
  MEMORY[0x1E6923F00](v3, *(v4 + 276));
  MEMORY[0x1E6923EB0](v3, 8);

  v13 = *MEMORY[0x1E69E9840];
}

void ___ZN8ImsTcpNw17configureEndpointEv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 276);
  v5 = v3;
  MEMORY[0x1E6923F00]();
  MEMORY[0x1E6923EB0](v5, 8);
}

void ImsTcpNw::bind(ImsTcpNw *this@<X0>, uint64_t a2@<X8>)
{
  v4 = nw_listener_create(*(this + 7));
  v5 = *(this + 12);
  *(this + 12) = v4;

  v6 = *(this + 7);
  v7 = *(this + 12);
  nw_parameters_allow_sharing_port_with_listener();
  nw_listener_set_new_connection_limit(*(this + 12), 0);
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, this + 2);
  v9 = v15;
  v8 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10 = *(this + 12);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3321888768;
  handler[2] = ___ZN8ImsTcpNw4bindEv_block_invoke;
  handler[3] = &__block_descriptor_56_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE_e34_v20__0i8__NSObject_OS_nw_error__12l;
  handler[4] = this;
  handler[5] = v9;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  nw_listener_set_state_changed_handler(v10, handler);
  nw_listener_set_new_connection_handler(*(this + 12), &__block_literal_global_8);
  v11 = *(this + 12);
  v12 = dispatch::queue::get(this + 23);
  nw_listener_set_queue(v11, v12);

  nw_listener_start(*(this + 12));
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1E4FDE1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void ___ZN8ImsTcpNw4bindEv_block_invoke(void *a1, int a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1[6];
  if (v6)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        switch(a2)
        {
          case 4:
            v11 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v10 + 27))(__p, v10);
              v18 = v33 >= 0 ? __p : *__p;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              v29 = 2081;
              v30 = v18;
              _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNW listener cancelled", buf, 0x16u);
              if (SHIBYTE(v33) < 0)
              {
                operator delete(*__p);
              }
            }

            break;
          case 2:
            port = nw_listener_get_port(*(v7 + 96));
            v14 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v10 + 27))(buf, v10);
              v15 = v31 >= 0 ? buf : *buf;
              *__p = 141558531;
              *&__p[4] = 1752392040;
              *&__p[12] = 2081;
              *&__p[14] = v15;
              v33 = 1024;
              v34 = port;
              _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNW listener ready on port %u", __p, 0x1Cu);
              if (v31 < 0)
              {
                operator delete(*buf);
              }
            }

            v16 = *(v7 + 104);
            if (v16)
            {
              v17 = nw_listener_get_port(*(v7 + 96));
              (*(*v16 + 64))(v16, v17);
            }

            else
            {
              v19 = *(v7 + 96);
              v20 = nw_listener_copy_local_endpoint();
              v27 = 0u;
              *__p = 0u;
              if (v20)
              {
                ImsTcpNw::ipAddressFromEndpoint(__p, v20);
                v27 = *__p;
              }

              v21 = *(v7 + 112);
              *(v7 + 104) = v27;
              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }
            }

            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, (v7 + 16));
            v22 = *&__p[8];
            if (*&__p[8])
            {
              atomic_fetch_add_explicit((*&__p[8] + 16), 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              v23 = dispatch::queue::get((v7 + 192));
              atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              v23 = dispatch::queue::get((v7 + 192));
            }

            v24 = v23;
            operator new();
          case 1:
            v11 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v10 + 27))(__p, v10);
              if (v33 >= 0)
              {
                v12 = __p;
              }

              else
              {
                v12 = *__p;
              }

              *buf = 141558275;
              *&buf[4] = 1752392040;
              v29 = 2081;
              v30 = v12;
              _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNW listener waiting", buf, 0x16u);
              if (SHIBYTE(v33) < 0)
              {
                operator delete(*__p);
              }
            }

            break;
          default:
            v11 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              (*(*v10 + 27))(__p, v10);
              v26 = v33 >= 0 ? __p : *__p;
              *buf = 141558275;
              *&buf[4] = 1752392040;
              v29 = 2081;
              v30 = v26;
              _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNW listener failed", buf, 0x16u);
              if (SHIBYTE(v33) < 0)
              {
                operator delete(*__p);
              }
            }

            break;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1E4FDE780(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN8ImsTcpNw7connectENSt3__110shared_ptrI9IpAddressEE_block_invoke(void *a1, int a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1[6];
  if (v6)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        if (v5)
        {
          error_code = nw_error_get_error_code(v5);
          if (error_code)
          {
            v12 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              (*(*v10 + 27))(buf, v10);
              v39 = buf[23] >= 0 ? buf : *buf;
              *__p = 141558531;
              *&__p[4] = 1752392040;
              *&__p[12] = 2081;
              *&__p[14] = v39;
              v43 = 1024;
              LODWORD(v44) = error_code;
              _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}snw_connection failed with error=%du", __p, 0x1Cu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }
        }

        else
        {
          error_code = 0;
        }

        v13 = *(v7 + 88);
        *(v7 + 88) = a2;
        if (a2 > 2)
        {
          switch(a2)
          {
            case 3:
              v19 = dispatch::queue::get(v10 + 6);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                (*(*v10 + 27))(__p, v10);
                v20 = v43 >= 0 ? __p : *__p;
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v20;
                _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sconnection ready", buf, 0x16u);
                if (SHIBYTE(v43) < 0)
                {
                  operator delete(*__p);
                }
              }

              ImsTcpNw::receiveData(v7);
              if (*(v7 + 256))
              {
                for (i = *(v7 + 248); i != (v7 + 240); i = i[1])
                {
                  v23 = i[2];
                  v22 = i[3];
                  v24 = dispatch::queue::get((v7 + 48));
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*v7 + 216))(buf, v7);
                    v25 = *(v7 + 120);
                    IpAddress::asString(v41);
                  }

                  ImsTcpNw::writeToNw(__p, v7, v23, v22 - v23);
                  v26 = (*(**&__p[8] + 24))(*&__p[8], *&__p[16]);
                  ImsResult::~ImsResult(__p);
                  if (v26)
                  {
                    v27 = dispatch::queue::get((v7 + 48));
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      (*(*v7 + 216))(buf, v7);
                      v28 = *(v7 + 120);
                      IpAddress::asString(v41);
                    }
                  }
                }

                std::__list_imp<std::vector<unsigned char>>::clear((v7 + 240));
              }

              else
              {
                v36 = dispatch::queue::get((v7 + 48));
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*v7 + 216))(__p, v7);
                  v37 = v43 >= 0 ? __p : *__p;
                  *buf = 141558275;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2081;
                  *&buf[14] = v37;
                  _os_log_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNothing to send", buf, 0x16u);
                  if (SHIBYTE(v43) < 0)
                  {
                    operator delete(*__p);
                  }
                }
              }

              break;
            case 4:
              v29 = dispatch::queue::get(v10 + 6);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                (*(*v10 + 27))(__p, v10);
                v40 = v43 >= 0 ? __p : *__p;
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v40;
                _os_log_error_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sfailed connection", buf, 0x16u);
                if (SHIBYTE(v43) < 0)
                {
                  operator delete(*__p);
                }
              }

              *&buf[16] = 0;
              v30 = nw_error_get_error_code(v5);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              *buf = &unk_1F5EBDEF8;
              *&buf[8] = &_posixDomain;
              *&buf[16] = v30;
              std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, (v7 + 16));
              v32 = *__p;
              v31 = *&__p[8];
              if (*&__p[8])
              {
                atomic_fetch_add_explicit((*&__p[8] + 16), 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v31);
              }

              v33 = dispatch::queue::get((v7 + 192));
              *__p = v32;
              *&__p[8] = v31;
              if (v31)
              {
                atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              ImsResult::ImsResult(&__p[16], buf);
              v45 = error_code;
              v46 = v13;
              v47 = 4;
              v34 = v33;
              operator new();
            case 5:
              v14 = dispatch::queue::get(v10 + 6);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                (*(*v10 + 27))(__p, v10);
                v15 = v43 >= 0 ? __p : *__p;
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v15;
                _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}scancelled connection", buf, 0x16u);
                if (SHIBYTE(v43) < 0)
                {
                  operator delete(*__p);
                }
              }

              if (*(v7 + 216) == 1)
              {
                v16 = dispatch::queue::get((v7 + 208));
                dispatch_semaphore_signal(v16);
              }

              break;
          }

          goto LABEL_67;
        }

        if (a2 == 1)
        {
          v17 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v10 + 27))(__p, v10);
            v35 = v43 >= 0 ? __p : *__p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v35;
            _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swaiting connection", buf, 0x16u);
            if (SHIBYTE(v43) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_29;
        }

        if (a2 == 2)
        {
          v17 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v10 + 27))(__p, v10);
            v18 = v43 >= 0 ? __p : *__p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v18;
            _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}spreparing connection", buf, 0x16u);
            if (SHIBYTE(v43) < 0)
            {
              operator delete(*__p);
            }
          }

LABEL_29:
        }
      }

LABEL_67:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1E4FDF2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);

  _Unwind_Resume(a1);
}

void ___ZN8ImsTcpNw7connectENSt3__110shared_ptrI9IpAddressEE_block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        std::string::operator=(v3 + 12, (a1 + 56));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __copy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1E4FDF4E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ImsTcpNw::initializeIncomingNw(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  *uu = 0;
  v25 = 0;
  nw_connection_get_uuid();
  memset(&v23, 0, sizeof(v23));
  memset(out, 0, sizeof(out));
  uuid_unparse(uu, out);
  std::string::basic_string[abi:ne200100]<0>(&v23, out);
  objc_storeStrong((a1 + 80), a2);
  v7 = nw_connection_copy_endpoint(v6);
  *out = 0;
  *&out[8] = 0;
  ImsTcpNw::ipAddressFromEndpoint(out, v7);

  v8 = *(a1 + 128);
  *(a1 + 120) = *out;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = dispatch::queue::get((a1 + 48));
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 216))(__p, a1);
    if (v22 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v23.__r_.__value_.__r.__words[0];
    }

    *out = 141558531;
    *&out[4] = 1752392040;
    *&out[12] = 2081;
    *&out[14] = v10;
    *&out[22] = 2080;
    *&out[24] = v11;
    _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snew incoming connection Id=%s", out, 0x20u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a1 + 80);
  v13 = dispatch::queue::get((a1 + 184));
  nw_connection_set_queue(v12, v13);

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(out, (a1 + 16));
  v15 = *out;
  v14 = *&out[8];
  if (*&out[8])
  {
    atomic_fetch_add_explicit((*&out[8] + 16), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v16 = *(a1 + 80);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = ___ZN8ImsTcpNw20initializeIncomingNwEPU27objcproto16OS_nw_connection8NSObject_block_invoke;
  v18[3] = &__block_descriptor_80_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e34_v20__0i8__NSObject_OS_nw_error__12l;
  v18[4] = a1;
  v18[5] = v15;
  v19 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v23;
  }

  nw_connection_set_state_changed_handler(v16, v18);
  nw_connection_start(v6);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E4FDF87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN8ImsTcpNw20initializeIncomingNwEPU27objcproto16OS_nw_connection8NSObject_block_invoke(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 40);
      if (!v10)
      {
LABEL_7:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_8;
      }

      *(v7 + 88) = a2;
      if (v5)
      {
        v11 = dispatch::queue::get(v10 + 6);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        (*(*v10 + 27))(__p, v10);
        v16 = v23;
        v17 = __p[0];
        error_code = nw_error_get_error_code(v5);
        v19 = __p;
        *buf = 141558531;
        if (v16 < 0)
        {
          v19 = v17;
        }

        v25 = 1752392040;
        v26 = 2081;
        v27 = v19;
        v28 = 1024;
        LODWORD(v29) = error_code;
        _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sconnection receive error: %dl", buf, 0x1Cu);
      }

      else
      {
        if (a2 != 3)
        {
          if (a2 != 5)
          {
            goto LABEL_7;
          }

          v13 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            (*(*v10 + 27))(__p, v10);
            v20 = __p[0];
            if (v23 >= 0)
            {
              v20 = __p;
            }

            v21 = (a1 + 56);
            if (*(a1 + 79) < 0)
            {
              v21 = *v21;
            }

            *buf = 141558531;
            v25 = 1752392040;
            v26 = 2081;
            v27 = v20;
            v28 = 2080;
            v29 = v21;
            _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}scancelled connectionId=%s", buf, 0x20u);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (*(v7 + 216) != 1)
          {
            goto LABEL_7;
          }

          v11 = dispatch::queue::get((v7 + 208));
          dispatch_semaphore_signal(v11);
          goto LABEL_6;
        }

        ImsTcpNw::receiveData(v7);
        v11 = dispatch::queue::get(v10 + 6);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_6:

          goto LABEL_7;
        }

        (*(*v10 + 27))(__p, v10);
        v14 = __p[0];
        if (v23 >= 0)
        {
          v14 = __p;
        }

        v15 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v15 = *v15;
        }

        *buf = 141558531;
        v25 = 1752392040;
        v26 = 2081;
        v27 = v14;
        v28 = 2080;
        v29 = v15;
        _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sready connectionId=%s", buf, 0x20u);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_6;
    }
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4FDFC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1E4FDFD38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t ImsTcpNw::sendOverSocket(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return (*(*a1 + 32))(a1, a2, v3);
}

void ImsTcpNw::shutdownSocket(ImsTcpNw *this@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 10))
  {
    v4 = *(this + 22) == 3;
    v5 = dispatch::queue::get(this + 6);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        (*(*this + 216))(__p, this);
        if (v11 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 141558275;
        v13 = 1752392040;
        v14 = 2081;
        v15 = v7;
        _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sshutting down socket", buf, 0x16u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ImsTcpNw::cancelNwConnection(a2, this);
    }

    else
    {
      if (v6)
      {
        (*(*this + 216))(__p, this);
        v8 = v11 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v13 = 1752392040;
        v14 = 2081;
        v15 = v8;
        _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSocket not  yet connected. Queue up shutdown", buf, 0x16u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(this + 265) = 1;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_bambiDomain;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741827;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void ImsTcpNw::cancelNwConnection(ImsTcpNw *this, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a2 + 80))
  {
    v4 = dispatch_semaphore_create(0);
    v5 = *(a2 + 208);
    *(a2 + 208) = v4;

    v6 = dispatch::queue::get((a2 + 48));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 216))(__p, a2);
      v7 = v14 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v7;
      _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}scancel connection", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a2 + 216) = 1;
    nw_connection_cancel(*(a2 + 80));
    v8 = dispatch_time(0, 1000000000);
    v9 = dispatch::queue::get((a2 + 208));
    dispatch_semaphore_wait(v9, v8);

    v10 = dispatch::queue::get((a2 + 48));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 216))(__p, a2);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v11;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}scancel complete connection", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a2 + 216) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
  }

  else
  {
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 1073741827;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ImsTcpNw::closeSocket(ImsTcpNw *this)
{
  if (*(this + 10))
  {
    ImsTcpNw::cancelNwConnection(v1, this);
    ImsResult::~ImsResult(v1);
  }
}

void ImsTcpNw::resetSocket(ImsTcpNw *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    nw_connection_force_cancel(v2);
    ImsTcpNw::cancelNwConnection(v3, this);
    ImsResult::~ImsResult(v3);
  }
}

void ImsTcpNw::socketName(ImsTcpNw *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4FE0560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

double ImsTcpNw::isPortReuseAllowed@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void ImsTcpNw::setSocketLocalAddress(void *a1, uint64_t *a2)
{
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    v5 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a1[14];
    a1[13] = v5;
    a1[14] = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    ImsTcpNw::configureEndpoint(v7, a1);
    ImsResult::~ImsResult(v7);
  }
}

void ImsTcpNw::setSocketDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  *(a1 + 232) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void ImsTcpNw::resetSocketDelegate(ImsTcpNw *this)
{
  v2 = *(this + 29);
  *(this + 28) = 0;
  *(this + 29) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void ImsTcpNw::ipAddressFromEndpoint(void *a1, void *a2)
{
  v4 = a2;
  address = nw_endpoint_get_address(v4);
  IpAddress::createAddress(address, a1);
}

void ImsTcpNw::ipAddressPortStringFromConnection(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = nw_connection_copy_endpoint(a1);
  v4 = nw_endpoint_copy_address_string(v3);
  port = nw_endpoint_get_port(v3);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>(a2, v4);
  ims::detail::to_string_impl<unsigned short,std::integral_constant<BOOL,false>>::operator()();
}

void sub_1E4FE0874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

void ImsTcpNw::logPrefixStr(ImsTcpNw *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4FE0A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

double ImsTcpNw::initializeSocket@<D0>(uint64_t a1@<X8>)
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

double ImsTcpNw::initializeIncomingSocket@<D0>(uint64_t a1@<X8>)
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

double ImsTcpNw::_handshakeDone@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void dispatch::semaphore::~semaphore(id *this)
{
  v2 = *this;
  *this = 0;
}

uint64_t *_ZNSt3__110unique_ptrIZZN8ImsTcpNw4bindEvEUb_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E69235B0](v2, 0x1020C40839F2BD9);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN8ImsTcpNw4bindEvEUb_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = *(v4 + 232);
        if (v5)
        {
          v6 = std::__shared_weak_count::lock(v5);
          if (v6)
          {
            v7 = *(v4 + 224);
            if (v7)
            {
              (*(*v7 + 56))(v7, *(a1 + 16));
LABEL_21:
              std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_22:
              std::__shared_weak_count::__release_shared[abi:ne200100](v3);
              goto LABEL_23;
            }
          }
        }

        else
        {
          v6 = 0;
        }

        v9 = dispatch::queue::get((v4 + 48));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 216))(buf, v4);
          if (v16 >= 0)
          {
            v10 = buf;
          }

          else
          {
            v10 = *buf;
          }

          *v17 = 141558275;
          v18 = 1752392040;
          v19 = 2081;
          v20 = v10;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sImsTcpNw delegate is null", v17, 0x16u);
          if (v16 < 0)
          {
            operator delete(*buf);
          }
        }

        if (!v6)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  ims::getStaticLoggerFor("net.tcpnw", buf);
  v8 = v15;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "#W ImsTcpNw is null", buf, 2u);
  }

  if (v3)
  {
    goto LABEL_22;
  }

LABEL_23:
  result = _ZNSt3__110unique_ptrIZZN8ImsTcpNw4bindEvEUb_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(&v13);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4FE0E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _ZNSt3__110unique_ptrIZZN8ImsTcpNw4bindEvEUb_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN8ImsTcpNw7connectENS_10shared_ptrI9IpAddressEEEUb0_E3__1NS_14default_deleteIS5_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ImsResult::~ImsResult((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E69235B0](v2, 0x10F2C40038BF47CLL);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN8ImsTcpNw7connectENSt3__110shared_ptrI9IpAddressEEEUb0_E3__1EEvPU28objcproto17OS_dispatch_queue8NSObjectNS2_10unique_ptrIT_NS2_14default_deleteISB_EEEEENUlPvE_8__invokeESF_(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = dispatch::queue::get((v4 + 48));
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 216))(__p, v4);
          v6 = v24 >= 0 ? __p : *__p;
          v7 = *(a1 + 104);
          v8 = *(a1 + 108);
          v9 = *(a1 + 112);
          *buf = 141559043;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v6;
          v26 = 1024;
          v27 = v7;
          v28 = 1024;
          v29 = v8;
          v30 = 1024;
          v31 = v9;
          _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}serr=%d prevState=%u state=%u", buf, 0x28u);
          if (v24 < 0)
          {
            operator delete(*__p);
          }
        }

        v10 = *(v4 + 232);
        if (v10)
        {
          v11 = std::__shared_weak_count::lock(v10);
          if (v11)
          {
            v12 = *(v4 + 224);
            if (v12)
            {
              v13 = *(a1 + 104);
              if (v13 == 60)
              {
                if (*(a1 + 108) != 3)
                {
                  (*(*v12 + 16))(v12);
                  goto LABEL_35;
                }
              }

              else
              {
                if (v13 == 54)
                {
                  (*(*v12 + 24))(v12);
                  goto LABEL_35;
                }

                if (*(a1 + 108) != 3)
                {
                  (*(*v12 + 32))(v12, a1 + 16);
LABEL_35:
                  v17 = *(v4 + 232);
                  *(v4 + 224) = 0;
                  *(v4 + 232) = 0;
                  if (v17)
                  {
                    std::__shared_weak_count::__release_weak(v17);
                  }

LABEL_37:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_38:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
                  goto LABEL_39;
                }
              }

              (*(*v12 + 40))(v12, a1 + 16);
              goto LABEL_35;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v15 = dispatch::queue::get((v4 + 48));
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 216))(buf, v4);
          v16 = v26 >= 0 ? buf : *buf;
          *__p = 141558275;
          *&__p[4] = 1752392040;
          v22 = 2081;
          v23 = v16;
          _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sImsTcpNw delegate is null", __p, 0x16u);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(*buf);
          }
        }

        if (!v11)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  ims::getStaticLoggerFor("net.tcpnw", buf);
  v14 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "#W ImsTcpNw is null", buf, 2u);
  }

  if (v3)
  {
    goto LABEL_38;
  }

LABEL_39:
  result = _ZNSt3__110unique_ptrIZZN8ImsTcpNw7connectENS_10shared_ptrI9IpAddressEEEUb0_E3__1NS_14default_deleteIS5_EEED1B8ne200100Ev(&v20);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4FE1260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _ZNSt3__110unique_ptrIZZN8ImsTcpNw7connectENS_10shared_ptrI9IpAddressEEEUb0_E3__1NS_14default_deleteIS5_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void std::__unbounded_array_control_block<unsigned char []>::~__unbounded_array_control_block(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t *_ZNSt3__110unique_ptrIZZN8ImsTcpNw11receiveDataEvEUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E69235B0](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN8ImsTcpNw11receiveDataEvEUb1_E3__2EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(void *a1)
{
  v2 = a1;
  (*(**a1 + 16))(*a1);
  return _ZNSt3__110unique_ptrIZZN8ImsTcpNw11receiveDataEvEUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(&v2);
}

void sub_1E4FE13AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZN8ImsTcpNw11receiveDataEvEUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN8ImsTcpNw9writeToNwEPKhmEUb2_E3__4NS_14default_deleteIS4_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ImsResult::~ImsResult((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E69235B0](v2, 0x10F2C40B611AC23);
  }

  return a1;
}

uint64_t *_ZZN8dispatch5asyncIZZN8ImsTcpNw9writeToNwEPKhmEUb2_E3__4EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NS8_14default_deleteISA_EEEEENUlPvE_8__invokeESE_(void *a1)
{
  v2 = a1;
  (*(**a1 + 40))(*a1, a1 + 2);
  return _ZNSt3__110unique_ptrIZZN8ImsTcpNw9writeToNwEPKhmEUb2_E3__4NS_14default_deleteIS4_EEED1B8ne200100Ev(&v2);
}

void sub_1E4FE1478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZN8ImsTcpNw9writeToNwEPKhmEUb2_E3__4NS_14default_deleteIS4_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ims::detail::to_string_impl<unsigned short,std::integral_constant<BOOL,false>>::operator()()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4FE1550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t ImsListenNw::ImsListenNw(uint64_t a1, void *a2, int a3, char a4, uint64_t a5, __int128 *a6)
{
  *a1 = &unk_1F5EE6940;
  ims::SharedLoggable<ImsListenNw>::SharedLoggable((a1 + 8), "net.listen.nw");
  *a1 = &unk_1F5EE6728;
  *(a1 + 8) = &unk_1F5EE6790;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a6, *(a6 + 1));
  }

  else
  {
    v11 = *a6;
    *(a1 + 72) = *(a6 + 2);
    *(a1 + 56) = v11;
  }

  *(a1 + 80) = a4;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 133) = 0;
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  *(a1 + 160) = dispatch_queue_create("com.apple.ipTelephony.nwlistener", v12);

  v13 = a2[1];
  *(a1 + 168) = *a2;
  *(a1 + 176) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 184) = a3;
  *(a1 + 188) = a4;
  return a1;
}

void *ims::SharedLoggable<ImsListenNw>::SharedLoggable(void *a1, const char *a2)
{
  v6 = a2;
  ims::getQueue(&v5);
  ctu::SharedLoggable<ImsListenNw,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &v5, "com.apple.ipTelephony", &v6);
  v3 = v5;
  v5 = 0;

  *a1 = &unk_1F5EE69A0;
  return a1;
}

void ImsListenNw::~ImsListenNw(ImsListenNw *this)
{
  *this = &unk_1F5EE6728;
  *(this + 1) = &unk_1F5EE6790;
  v2 = *(this + 16);
  if (v2)
  {
    nw_listener_cancel(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;

  v5 = *(this + 18);
  *(this + 18) = 0;

  v6 = *(this + 12);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x1E69225A0](this + 48);
}

{
  ImsListenNw::~ImsListenNw(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toImsListenNw::~ImsListenNw(ImsListenNw *this)
{
  ImsListenNw::~ImsListenNw((this - 8));
}

{
  ImsListenNw::~ImsListenNw((this - 8));

  JUMPOUT(0x1E69235B0);
}

double ImsListenNw::initializeSocket@<D0>(uint64_t a1@<X8>)
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

void ImsListenNw::initializeSocket(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v12 = dispatch::queue::get((a1 + 48));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 80))(buf, a1);
      v48 = buf[23] >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v48;
      _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sFailed to initialize nw_listener with null local address", __p, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    v13 = 1073741825;
    goto LABEL_39;
  }

  if (*(a1 + 80) == 1)
  {
    configure_tls[0] = MEMORY[0x1E69E9820];
    configure_tls[1] = 3321888768;
    configure_tls[2] = ___ZN11ImsListenNw16initializeSocketERKNSt3__110shared_ptrI9IpAddressEERKN8dispatch5queueERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN3ims14CFMutableArrayESH_SH_b_block_invoke;
    configure_tls[3] = &__block_descriptor_65_ea8_48c26_ZTSN3ims14CFMutableArrayE_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
    configure_tls[4] = a1;
    configure_tls[5] = a5;
    v54 = a3;
    v9 = *(a4 + 8);
    v53[0] = &unk_1F5EF3658;
    v53[1] = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v53[0] = &unk_1F5EBE6A8;
    secure_tcp = nw_parameters_create_secure_tcp(configure_tls, *MEMORY[0x1E6977EB8]);
    v11 = *(a1 + 120);
    *(a1 + 120) = secure_tcp;

    ims::CFType::~CFType(v53);
  }

  else
  {
    v14 = *MEMORY[0x1E6977EB8];
    legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
    v16 = *(a1 + 120);
    *(a1 + 120) = legacy_tcp_socket;
  }

  if (!*(a1 + 120))
  {
    v17 = dispatch::queue::get((a1 + 48));
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    (*(*a1 + 80))(buf, a1);
    v49 = buf[23] >= 0 ? buf : *buf;
    *__p = 141558275;
    *&__p[4] = 1752392040;
    *&__p[12] = 2081;
    *&__p[14] = v49;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sFailed to create TLS nw_parameters", __p, 0x16u);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_73:
    operator delete(*buf);
LABEL_38:

    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    v13 = 0x40000000;
LABEL_39:
    *(a6 + 16) = v13;
    goto LABEL_53;
  }

  if ((*(a1 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_27;
    }
  }

  else if (!*(a1 + 79))
  {
    goto LABEL_27;
  }

  v18 = dispatch::queue::get((a1 + 48));
  v19 = (a1 + 56);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 80))(__p, a1);
    if (__p[23] >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = *__p;
    }

    v21 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v21 = *v19;
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v20;
    *&buf[22] = 2080;
    v67 = v21;
    _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}srequire interface %s", buf, 0x20u);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 79) < 0)
  {
    v22 = *v19;
  }

  v23 = nw_interface_create_with_name();
  nw_parameters_require_interface(*(a1 + 120), v23);

LABEL_27:
  v24 = *a2;
  if (*a2)
  {
    v25 = a2[1];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(a1 + 96);
    *(a1 + 88) = v24;
    *(a1 + 96) = v25;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      v27 = *(a1 + 88);
    }

    IpAddress::asString(buf);
  }

  v28 = *(a1 + 112);
  if (!v28)
  {
    v17 = dispatch::queue::get((a1 + 48));
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    (*(*a1 + 80))(buf, a1);
    v51 = buf[23] >= 0 ? buf : *buf;
    *__p = 141558275;
    *&__p[4] = 1752392040;
    *&__p[12] = 2081;
    *&__p[14] = v51;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sFailed to create nw_endpoint for listener", __p, 0x16u);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

  nw_parameters_set_local_endpoint(*(a1 + 120), v28);
  v29 = dispatch_semaphore_create(0);
  if (*(a1 + 128))
  {
    v30 = dispatch::queue::get((a1 + 48));
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 80))(buf, a1);
      v50 = buf[23] >= 0 ? buf : *buf;
      *__p = 141558275;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v50;
      _os_log_error_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNW listener already initialized", __p, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    *(a6 + 16) = 0x40000000;
  }

  else
  {
    v31 = nw_listener_create(*(a1 + 120));
    v32 = *(a1 + 128);
    *(a1 + 128) = v31;

    v33 = *(a1 + 120);
    v34 = *(a1 + 128);
    nw_parameters_allow_sharing_port_with_listener();
    nw_listener_set_new_connection_limit(*(a1 + 128), 0xFFFFFFFF);
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    port = nw_endpoint_get_port(*(a1 + 112));
    v35 = *(a1 + 24);
    if (!v35 || (v36 = *(a1 + 16), (v37 = std::__shared_weak_count::lock(v35)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v38 = v37;
    p_shared_weak_owners = &v37->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    v40 = *(a1 + 128);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3321888768;
    *&buf[16] = ___ZN11ImsListenNw13bindAndAcceptEv_block_invoke;
    v67 = &unk_1F5EE6800;
    v70 = a1;
    v71 = v36;
    v72 = v38;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v68 = &v57;
    v41 = v29;
    v73 = v41;
    v69 = v55;
    nw_listener_set_state_changed_handler(v40, buf);
    v42 = *(a1 + 128);
    *__p = MEMORY[0x1E69E9820];
    *&__p[8] = 3321888768;
    *&__p[16] = ___ZN11ImsListenNw13bindAndAcceptEv_block_invoke_6;
    v62 = &__block_descriptor_56_ea8_40c36_ZTSNSt3__18weak_ptrI11ImsListenNwEE_e36_v16__0__NSObject_OS_nw_connection__8l;
    v63 = a1;
    v64 = v36;
    v65 = v38;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    nw_listener_set_new_connection_handler(v42, __p);
    *(a1 + 152) = 0;
    v43 = *(a1 + 128);
    v44 = dispatch::queue::get((a1 + 160));
    nw_listener_set_queue(v43, v44);

    nw_listener_start(*(a1 + 128));
    dispatch_semaphore_wait(v41, 0xFFFFFFFFFFFFFFFFLL);
    if (v58[3])
    {
      v45 = 0;
    }

    else
    {
      if ((*(a1 + 152) & 1) == 0)
      {
        nw_listener_cancel(*(a1 + 128));
      }

      v45 = 0x40000000;
    }

    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    *(a6 + 16) = v45;
    if (v65)
    {
      std::__shared_weak_count::__release_weak(v65);
    }

    v46 = v73;
    v73 = 0;

    if (v72)
    {
      std::__shared_weak_count::__release_weak(v72);
    }

    std::__shared_weak_count::__release_weak(v38);
    _Block_object_dispose(v55, 8);
    _Block_object_dispose(&v57, 8);
  }

LABEL_53:
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1E4FE22CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a33)
  {
    std::__shared_weak_count::__release_weak(a33);
  }

  v38 = *(v36 - 120);
  *(v36 - 120) = 0;

  v39 = *(v36 - 128);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  std::__shared_weak_count::__release_weak(v34);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void ___ZN11ImsListenNw16initializeSocketERKNSt3__110shared_ptrI9IpAddressEERKN8dispatch5queueERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN3ims14CFMutableArrayESH_SH_b_block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  options = a2;
  v4 = dispatch::queue::get((v3 + 160));
  sec_protocol_options_set_verify_block(options, &__block_literal_global_9, v4);

  v5 = *(a1 + 40);
  if (v5[23] < 0)
  {
    if (!*(v5 + 1))
    {
      goto LABEL_7;
    }

    v5 = *v5;
    goto LABEL_6;
  }

  if (v5[23])
  {
LABEL_6:
    sec_protocol_options_set_tls_server_name(options, v5);
  }

LABEL_7:
  if (*(v3 + 188) == 1)
  {
    sec_protocol_options_set_min_tls_protocol_version(options, tls_protocol_version_TLSv13);
  }

  if (*(a1 + 64) == 1 && (v6 = *(a1 + 56)) != 0 && CFArrayGetCount(v6) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0);
    v8 = sec_identity_create(ValueAtIndex);
    sec_protocol_options_set_local_identity(options, v8);
  }

  else
  {
    v8 = 0;
  }
}

CFTypeRef __copy_helper_block_ea8_48c26_ZTSN3ims14CFMutableArrayE(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 48);
  result = *(a2 + 56);
  *(a1 + 48) = &unk_1F5EF3658;
  *(a1 + 56) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *v3 = &unk_1F5EBE6A8;
  return result;
}

void ___ZN11ImsListenNw13bindAndAcceptEv_block_invoke(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 56);
      if (!v10)
      {
LABEL_32:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_33;
      }

      *(v7 + 136) = a2;
      switch(a2)
      {
        case 4:
          v15 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v10 + 10))(__p, v10);
            v16 = v29 >= 0 ? __p : *__p;
            *v22 = 141558275;
            *&v22[4] = 1752392040;
            v23 = 2081;
            v24 = v16;
            _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNW listener cancelled", v22, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(*__p);
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = 1;
          *(v7 + 152) = 1;
          if (*(v7 + 153) == 1)
          {
            v17 = dispatch::queue::get((v7 + 144));
            dispatch_semaphore_signal(v17);
          }

          goto LABEL_31;
        case 2:
          v11 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v10 + 10))(v22, v10);
            v13 = v25 >= 0 ? v22 : *v22;
            v14 = *(*(*(a1 + 40) + 8) + 24);
            *__p = 141558531;
            *&__p[4] = 1752392040;
            v27 = 2081;
            v28 = v13;
            v29 = 1024;
            v30 = v14;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sPort is available %u", __p, 0x1Cu);
            if (v25 < 0)
            {
              operator delete(*v22);
            }
          }

          break;
        case 1:
          v11 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v10 + 10))(__p, v10);
            if (v29 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = *__p;
            }

            *v22 = 141558275;
            *&v22[4] = 1752392040;
            v23 = 2081;
            v24 = v12;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNW listener waiting", v22, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(*__p);
            }
          }

          break;
        default:
          v18 = dispatch::queue::get(v10 + 6);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            (*(*v10 + 10))(__p, v10);
            v21 = v29 >= 0 ? __p : *__p;
            *v22 = 141558275;
            *&v22[4] = 1752392040;
            v23 = 2081;
            v24 = v21;
            _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNW listener failed", v22, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(*__p);
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = 0;
          goto LABEL_31;
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_31:
      v19 = dispatch::queue::get((a1 + 72));
      dispatch_semaphore_signal(v19);

      goto LABEL_32;
    }
  }

LABEL_33:

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E4FE29E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_56c36_ZTSNSt3__18weak_ptrI11ImsListenNwEE72c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  a1[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 72);
  a1[9] = result;
  return result;
}

void __destroy_helper_block_ea8_56c36_ZTSNSt3__18weak_ptrI11ImsListenNwEE72c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;

  v3 = *(a1 + 64);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN11ImsListenNw13bindAndAcceptEv_block_invoke_6(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (v8)
      {
        v9 = dispatch::queue::get(v8 + 6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v8 + 10))(&v22, v8);
          v10 = v23;
          v11 = v22;
          ImsListenNw::uuidStringFromConnection(__p, v3);
          v12 = &v22;
          if (v10 < 0)
          {
            v12 = v11;
          }

          if (v21 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          buf[0] = 141558531;
          *&buf[1] = 1752392040;
          v25 = 2081;
          v26 = v12;
          v27 = 2080;
          v28 = v13;
          _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sHandle incoming connection connectionId=%s", buf, 0x20u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22);
          }
        }

        if ((*(v5 + 153) & 1) == 0)
        {
          operator new();
        }

        v14 = dispatch::queue::get(v8 + 6);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v8 + 10))(&v22, v8);
          v15 = v23;
          v16 = v22;
          ImsListenNw::uuidStringFromConnection(__p, v3);
          v17 = &v22;
          if (v15 < 0)
          {
            v17 = v16;
          }

          if (v21 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          buf[0] = 141558531;
          *&buf[1] = 1752392040;
          v25 = 2081;
          v26 = v17;
          v27 = 2080;
          v28 = v18;
          _os_log_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sskipping incoming connection id=%s", buf, 0x20u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22);
          }
        }

        nw_connection_cancel(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4FE2EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);

  _Unwind_Resume(a1);
}

void ImsListenNw::uuidStringFromConnection(_BYTE *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    *uu = 0;
    v7 = 0;
    nw_connection_get_uuid();
    memset(v5, 0, sizeof(v5));
    uuid_unparse(uu, v5);
    std::string::basic_string[abi:ne200100]<0>(a1, v5);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "00000000-0000-0000-0000-000000000000");
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __copy_helper_block_ea8_40c36_ZTSNSt3__18weak_ptrI11ImsListenNwEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_40c36_ZTSNSt3__18weak_ptrI11ImsListenNwEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ImsListenNw::setDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 176);
  *(a1 + 168) = v3;
  *(a1 + 176) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void ImsListenNw::resetSocketDelegate(ImsListenNw *this)
{
  v2 = *(this + 22);
  *(this + 21) = 0;
  *(this + 22) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t ImsListenNw::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  *a2 = *(this + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ImsListenNw::closeSocket(ImsListenNw *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 22);
  *(this + 21) = 0;
  *(this + 22) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 16) && (*(this + 153) & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = *(this + 18);
    *(this + 18) = v3;

    v5 = dispatch::queue::get(this + 6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(__p, this);
      v6 = v20 >= 0 ? __p : *__p;
      *v13 = 141558275;
      *&v13[4] = 1752392040;
      v14 = 2081;
      v15 = v6;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}scancel listener", v13, 0x16u);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*__p);
      }
    }

    *(this + 153) = 1;
    nw_listener_cancel(*(this + 16));
    v7 = dispatch_time(0, 1000000000);
    v8 = dispatch::queue::get(this + 18);
    v9 = dispatch_semaphore_wait(v8, v7);

    v10 = dispatch::queue::get(this + 6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(v13, this);
      if (v16 >= 0)
      {
        v11 = v13;
      }

      else
      {
        v11 = *v13;
      }

      *__p = 141558531;
      *&__p[4] = 1752392040;
      v18 = 2081;
      v19 = v11;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}scancel listener complete result = %lu", __p, 0x20u);
      if (v16 < 0)
      {
        operator delete(*v13);
      }
    }

    *(this + 153) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ImsListenNw::logPrefixStr(ImsListenNw *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4FE352C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

double ImsListenNw::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
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

void *ctu::SharedLoggable<ImsListenNw,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, id *a2, const char *a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = *a2;
  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, *a4);
  return a1;
}

uint64_t ims::SharedLoggable<ImsListenNw>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  return a1;
}

void ims::SharedLoggable<ImsListenNw>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsTlsNw::ImsTlsNw(uint64_t a1, uint64_t *a2, __int128 *a3, char a4, uint64_t *a5, int a6, uint64_t a7)
{
  v10 = a2[1];
  v12 = *a2;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsTcpNw::ImsTcpNw(a1, &v12, a3, a6, a7);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *a1 = &unk_1F5EE69C8;
  *(a1 + 8) = &unk_1F5EE6AC0;
  *(a1 + 312) = a4;
  *(a1 + 313) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 320, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  return a1;
}

void ImsTlsNw::~ImsTlsNw(ImsTlsNw *this)
{
  *this = &unk_1F5EE69C8;
  *(this + 1) = &unk_1F5EE6AC0;
  v2 = (this + 320);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  ImsTcpNw::~ImsTcpNw(this);
}

{
  ImsTlsNw::~ImsTlsNw(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toImsTlsNw::~ImsTlsNw(ImsTlsNw *this)
{
  ImsTlsNw::~ImsTlsNw((this - 8));
}

{
  ImsTlsNw::~ImsTlsNw((this - 8));

  JUMPOUT(0x1E69235B0);
}