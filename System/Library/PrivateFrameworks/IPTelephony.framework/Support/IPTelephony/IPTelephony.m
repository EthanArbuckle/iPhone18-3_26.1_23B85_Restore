void ImsSleepWakeMonitor::_powerChanged(ImsSleepWakeMonitor *this, void *a2, int a3, intptr_t a4, void *a5)
{
  if (this)
  {
    HIDWORD(v7) = a3 + 536870288;
    LODWORD(v7) = a3 + 536870288;
    v6 = v7 >> 4;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v18 = std::string::basic_string[abi:ne200100]<0>(v29, "power");
        LOBYTE(v25[0]) = 0;
        v28 = 0;
        v19 = ims::debug(v18, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "system will not sleep", 21);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        v20 = *(this + 3);
        if (v20)
        {
          (*(*v20 + 24))(v20);
        }
      }

      else if (v6 == 9)
      {
        v13 = std::string::basic_string[abi:ne200100]<0>(v29, "power");
        LOBYTE(v25[0]) = 0;
        v28 = 0;
        v14 = ims::debug(v13, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "system has powered on", 21);
        *(v14 + 17) = 0;
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v14 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        v15 = *(this + 3);
        if (v15)
        {
          (*(*v15 + 32))(v15);
        }
      }
    }

    else
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return;
        }

        v9 = std::string::basic_string[abi:ne200100]<0>(v29, "power");
        LOBYTE(v25[0]) = 0;
        v28 = 0;
        v10 = ims::debug(v9, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "system will sleep", 17);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        v11 = *(this + 3);
        if (v11)
        {
          (*(*v11 + 16))(v11);
        }
      }

      else
      {
        v16 = std::string::basic_string[abi:ne200100]<0>(v29, "power");
        LOBYTE(v25[0]) = 0;
        v28 = 0;
        v17 = ims::debug(v16, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "system can sleep", 16);
        *(v17 + 17) = 0;
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v17 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }
      }

      IOAllowPowerChange(*(this + 4), a4);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "power");
    v21[0] = 0;
    v24 = 0;
    v12 = ims::debug(v25, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "context parameter is NULL", 25);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(__p) < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_1E4C40D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t ims::debug(uint64_t a1, uint64_t a2)
{
  pthread_once(&ims::_driverInit, ims::createInstance);
  v4 = ims::_logger;
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v7, a2);
  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v11, v7);
  ImsLogger::getFacilityWithClientConfig(v11, a1, &v15);
  v5 = ImsLogger::streamForFacilityAndPriority(v4, &v15, 7);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_1E4C40F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1 && a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[48] = 0;
  if (*(a2 + 48) == 1)
  {
    std::construct_at[abi:ne200100]<ClientConfig,ClientConfig const&,ClientConfig*>(a1, a2);
    a1[48] = 1;
  }

  return a1;
}

void sub_1E4C4102C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLock::set@<X0>(pthread_mutex_t **this@<X0>, pthread_mutex_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *this;
  if (v6)
  {
    v7 = pthread_mutex_unlock(v6);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    if (v7)
    {
      v8 = &_posixDomain;
    }

    else
    {
      v8 = &_bambiDomain;
    }

    v11[0] = &unk_1F5EBDEF8;
    v11[1] = v8;
    v12 = v7;
    ImsResult::~ImsResult(v11);
  }

  *this = a2;
  if (a2)
  {
    result = pthread_mutex_lock(a2);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    if (result)
    {
      v10 = &_posixDomain;
    }

    else
    {
      v10 = &_bambiDomain;
    }
  }

  else
  {
    result = 0;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    v10 = &_bambiDomain;
  }

  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = v10;
  *(a3 + 16) = result;
  return result;
}

uint64_t ImsLogger::streamForFacilityAndPriority(uint64_t a1, uint64_t a2, int a3)
{
  v17 = 0;
  ImsLock::set(&v17, (a1 + 376), v18);
  ImsResult::~ImsResult(v18);
  if (*(a1 + 16))
  {
    ImsLock::~ImsLock(&v17);
    v7 = ImsLogger::facilityWithName(a1, a2, 1);
    v8 = v7;
    if (*(v7 + 80) >= a3)
    {
      v17 = 0;
      ImsLock::set(&v17, (v7 + 88), v18);
      ImsResult::~ImsResult(v18);
      v10 = *(v8 + 48);
      if (!v10)
      {
        goto LABEL_23;
      }

      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = a3;
        if (v10 <= a3)
        {
          v12 = a3 % v10;
        }
      }

      else
      {
        v12 = (v10 - 1) & a3;
      }

      v13 = *(*(v8 + 40) + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        v15 = v14[1];
        if (v15 == a3)
        {
          if (*(v14 + 4) == a3)
          {
            v9 = v14[3];
            goto LABEL_24;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v12)
          {
            goto LABEL_23;
          }
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_23;
        }
      }
    }

    v9 = *(*(v7 + 32) + 264);
    if (!v9)
    {
      ims::createNullStream(v7);
    }
  }

  else
  {
    v9 = *(a1 + 264);
    if (!v9)
    {
      ims::createNullStream(v6);
    }

LABEL_24:
    ImsLock::~ImsLock(&v17);
  }

  return v9;
}

void ImsLogger::getFacilityWithClientConfig(ClientConfig *this@<X2>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (*(this + 48) == 1)
  {
    ClientConfig::getLogTag(this, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4C419D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void ImsResult::~ImsResult(ImsResult *this)
{
  *this = &unk_1F5EBDEF8;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  ImsResult::~ImsResult(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t ImsLogger::facilityWithName(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a1 + 127);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a1 + 112);
    }

    if (v6 != v8 || (v5 >= 0 ? (v10 = a2) : (v10 = *a2), v9 >= 0 ? (v11 = (a1 + 104)) : (v11 = *(a1 + 104)), memcmp(v10, v11, v6)))
    {
      v16 = 0;
      ImsLock::set(&v16, (a1 + 312), v17);
      ImsResult::~ImsResult(v17);
      v12 = *(a1 + 272);
      if (v12)
      {
        v13 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v12, a2);
        if (v13)
        {
          v14 = v13[5];
LABEL_24:
          ImsLock::~ImsLock(&v16);
          return v14;
        }

        if (a3)
        {
          ImsLogger::addFacility(a1);
        }
      }

      else if (a3)
      {
        ImsLogger::addFacility(a1);
      }

      v14 = 0;
      goto LABEL_24;
    }
  }

  return a1 + 96;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x1E69232E0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
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

  MEMORY[0x1E69232F0](v13);
  return a1;
}

void sub_1E4C4224C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1E69232F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1E4C4222CLL);
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
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
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

void sub_1E4C42488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void ImsLoggerStreambuf::dump(ImsLoggerStreambuf *this, char *a2)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if ((*(**(this + 9) + 24))(*(this + 9)))
  {
    v35.tv_sec = 0;
    *&v35.tv_usec = 0;
    gettimeofday(&v35, 0);
    memset(&v34, 0, sizeof(v34));
    ims::localtime(&v35, &v34, v4);
    v33 = 0;
    v31 = 0u;
    memset(v32, 0, sizeof(v32));
    *__p = 0u;
    v30 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
    v5 = v27;
    v6 = &v28[-1] + *(v27 - 24);
    if (*(v6 + 36) == -1)
    {
      std::ios_base::getloc((&v28[-1] + *(v27 - 24)));
      v7 = std::locale::use_facet(v25, MEMORY[0x1E69E5318]);
      (v7->__vftable[2].~facet_0)(v7, 32);
      std::locale::~locale(v25);
      v5 = v27;
    }

    *(v6 + 36) = 48;
    *(v28 + *(v5 - 24) + 8) = 2;
    v8 = MEMORY[0x1E6923340](&v27, v34.tm_hour);
    LOBYTE(v25[0].__locale_) = 58;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v25, 1);
    *(v9 + *(*v9 - 24) + 24) = 2;
    v10 = MEMORY[0x1E6923340]();
    LOBYTE(v25[0].__locale_) = 58;
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v25, 1);
    *(v11 + *(*v11 - 24) + 24) = 2;
    v12 = MEMORY[0x1E6923340]();
    LOBYTE(v25[0].__locale_) = 46;
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v25, 1);
    *(v13 + *(*v13 - 24) + 24) = 3;
    v14 = MEMORY[0x1E6923340]();
    LOBYTE(v25[0].__locale_) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v25, 1);
    std::ostringstream::str[abi:ne200100](&v27, v25);
    *v23 = *&v25[0].__locale_;
    v24 = v26;
    if (*&v34.tm_mon != qword_1EE2BC824 || v34.tm_mday != _MergedGlobals_19)
    {
      v25[0].__locale_ = 0;
      v25[1].__locale_ = 0;
      v26 = 0;
      ims::ctime(&v35, v15, v25);
      if ((*(**(this + 9) + 32))(*(this + 9)))
      {
        v16 = (*(**(this + 9) + 32))(*(this + 9));
        v17 = HIBYTE(v26);
        if (v26 >= 0)
        {
          locale = v25;
        }

        else
        {
          locale = v25[0].__locale_;
        }

        if (v26 < 0)
        {
          v17 = v25[1].__locale_;
        }

        ImsLogger::output(v16, v23, 6, "date", locale, v17 + locale, v16);
      }

      HIDWORD(qword_1EE2BC824) = v34.tm_year;
      _MergedGlobals_19 = *&v34.tm_mday;
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0].__locale_);
      }
    }

    *&v27 = *MEMORY[0x1E69E54E8];
    *(&v28[-1] + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v27 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v27 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v28);
    std::ostream::~ostream();
    MEMORY[0x1E6923510](v32);
  }

  v19 = (*(**(this + 9) + 16))(*(this + 9), v23, *(this + 16), *(this + 5), a2);
  if (v19 == *(this + 5))
  {
    *a2++ = 10;
    v19 = (*(**(this + 9) + 16))(*(this + 9), v23, *(this + 16), *(this + 5), a2);
  }

  v20 = &a2[-v19];
  if (&a2[-v19] < 1)
  {
    v20 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v21[*(this + 10)] = v21[v19];
      ++v21;
    }

    while (v20 != v21);
    v20 = v20;
  }

  v22 = *(this + 10);
  *(this + 5) = v22;
  *(this + 6) = &v20[v22];
  *(this + 7) = v22 + 1024;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_1E4C42AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::ostringstream::~ostringstream(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

tm *ims::localtime(ims *this, tm *a2, tm *a3)
{
  result = 0;
  if (this)
  {
    if (a2)
    {
      v6 = [MEMORY[0x1E695DFE8] localTimeZone];
      v7 = [v6 secondsFromGMT];
      v8 = *this + v7;
      gmtime_r(&v8, a2);
      a2->tm_gmtoff = v7;
      a2->tm_isdst = [v6 isDaylightSavingTime];

      return a2;
    }
  }

  return result;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1E4C42D30(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69234C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1E4C42DEC(_Unwind_Exception *a1)
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

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
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

_BYTE *ImsLogger::output(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6, uint64_t a7)
{
  v7 = a5;
  if (a5 < a6)
  {
    v14 = a5;
    do
    {
      v15 = *v14;
      if (v15 == 10)
      {
        v19 = 0;
        ImsLock::set(&v19, (a1 + 376), v20);
        ImsResult::~ImsResult(v20);
        *v14 = 0;
        for (i = *(a7 + 8); i != a7; i = *(i + 8))
        {
          v17 = *(i + 16);
          if (v17[4] >= a3)
          {
            (*(*v17 + 40))(v17, a2, a3, a4, v7);
          }
        }

        v7 = v14 + 1;
        ImsLock::~ImsLock(&v19);
      }

      else if (v15 == 13)
      {
        *v14 = 0;
      }

      ++v14;
    }

    while (v14 != a6);
  }

  return v7;
}

void ImsLogDestinationOslog::output(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = a4[1];
  }

  if (a3 == 6)
  {
    v16 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      v17 = *a4;
      if (v8 >= 0)
      {
        v17 = a4;
      }

      v26 = 136446466;
      v27 = v17;
      v28 = 2082;
      v29 = a5;
      v18 = "I [%{public}s]: %{public}s";
      v19 = v7;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_38;
    }

    if (!v16)
    {
      goto LABEL_40;
    }

    v26 = 136446210;
    v27 = a5;
    v18 = "%{public}s";
    v19 = v7;
    v20 = OS_LOG_TYPE_INFO;
LABEL_32:
    v23 = 12;
LABEL_39:
    _os_log_impl(&dword_1E4C3F000, v19, v20, v18, &v26, v23);
    goto LABEL_40;
  }

  if (a3 != 3)
  {
    if (v9)
    {
      v21 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (a3 == 4)
      {
        if (!v21)
        {
          goto LABEL_40;
        }

        v22 = *a4;
        if (v8 >= 0)
        {
          v22 = a4;
        }

        v26 = 136446466;
        v27 = v22;
        v28 = 2082;
        v29 = a5;
        v18 = "W [%{public}s]: %{public}s";
      }

      else
      {
        if (!v21)
        {
          goto LABEL_40;
        }

        v24 = *a4;
        if (v8 >= 0)
        {
          v24 = a4;
        }

        v26 = 136446466;
        v27 = v24;
        v28 = 2082;
        v29 = a5;
        v18 = "[%{public}s]: %{public}s";
      }

      v19 = v7;
      v20 = OS_LOG_TYPE_DEFAULT;
LABEL_38:
      v23 = 22;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    v26 = 136446210;
    v27 = a5;
    v18 = "%{public}s";
    v19 = v7;
    v20 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_32;
  }

  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      v12 = *a4;
      if (v8 >= 0)
      {
        v12 = a4;
      }

      v26 = 136446466;
      v27 = v12;
      v28 = 2082;
      v29 = a5;
      v13 = "E [%{public}s]: %{public}s";
      v14 = v7;
      v15 = 22;
      goto LABEL_27;
    }
  }

  else if (v11)
  {
    v26 = 136446210;
    v27 = a5;
    v13 = "%{public}s";
    v14 = v7;
    v15 = 12;
LABEL_27:
    _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, v13, &v26, v15);
  }

LABEL_40:
  v25 = *MEMORY[0x1E69E9840];
}

void BambiClient::systemHasPoweredOn(BambiClient *this)
{
  *(this + 696) = 0;
  for (i = *(this + 33); i; i = *i)
  {
    v12 = 0;
    *__p = 0u;
    v11 = 0u;
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, i + 1);
    v3 = *(&v11 + 1);
    v4 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3 && *(v3 + 320) == 2)
    {
      SipStack::handleSystemWake(v3);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (SBYTE7(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(this + 29);
  if (*(v5 + 320) == 2)
  {
    SipStack::handleSystemWake(v5);
  }

  v6 = *(this + 93);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 92);
      if (v9)
      {
        (*(*v9 + 136))(v9);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

std::string *std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void IPTelephonyManager::handleSystemWake(IPTelephonyManager *this)
{
  v1 = (this + 24);
  v2 = (*(*(this + 3) + 64))(this + 24);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "handleSystemWake: requesting Barring Info", 41);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = v1[46];
  if (v3)
  {

    IMSNasDeviceClient::requestCurrentBarringInfo(v3);
  }
}

void *non-virtual thunk toIPTelephonyManager::logPrefix(IPTelephonyManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "IPTelephonyManager: ", 20);
  *(a2 + 17) = 0;
  return result;
}

uint64_t ImsLogContainer::debugStream(ImsLogContainer *this)
{
  result = *(this + 15);
  if (!result)
  {
    std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v3, this + 32);
    result = ims::debug(this + 8, v3);
    *(this + 15) = result;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p);
      return *(this + 15);
    }
  }

  return result;
}

void sub_1E4C4384C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSNasDeviceClient::requestCurrentBarringInfo(IMSNasDeviceClient *this)
{
  v2 = *(this + 1);
  if (v2 && *(this + 72) == 1)
  {
    v3 = *(*v2 + 88);

    v3();
  }

  else
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v10, "nas");
    v6[0] = 0;
    v9 = 0;
    v5 = ims::debug(v4, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "No Baseband for architecture or Baseband is currently not available: skip requestCurrentBarringInfo", 99);
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
  }
}

void sub_1E4C43994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void ImsTlsNw::logPrefixStr(ImsTlsNw *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C43B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void ___ZN8ImsTcpNw11receiveDataEv_block_invoke(void *a1, char *a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (!v10)
      {
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_53;
      }

      if (a3)
      {
        v11 = nw_connection_copy_description(*(v7 + 80));
        v12 = dispatch::queue::get(v10 + 6);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          (*(*v10 + 27))(__p, v10);
          v31 = v38;
          v32 = *__p;
          v33 = strerror(a3);
          v34 = __p;
          *buf = 141558787;
          if (v31 < 0)
          {
            v34 = v32;
          }

          *&buf[4] = 1752392040;
          v40 = 2081;
          v41 = v34;
          v42 = 2080;
          v43 = v33;
          v44 = 2080;
          v45 = v11;
          _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sConnection read error: %s %s", buf, 0x2Au);
          if (v38 < 0)
          {
            operator delete(*__p);
          }
        }

        free(v11);
      }

      v13 = dispatch::queue::get(v10 + 6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v10 + 27))(__p, v10);
        v14 = v38 >= 0 ? __p : *__p;
        *buf = 141558531;
        *&buf[4] = 1752392040;
        v40 = 2081;
        v41 = v14;
        v42 = 2048;
        v43 = a2;
        _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReceived data length=%zu", buf, 0x20u);
        if (v38 < 0)
        {
          operator delete(*__p);
        }
      }

      if (!a2)
      {
        *(v7 + 264) = 1;
      }

      v15 = *(v7 + 232);
      if (v15)
      {
        v16 = std::__shared_weak_count::lock(v15);
        if (v16)
        {
          v17 = *(v7 + 224);
LABEL_20:
          if (*(v7 + 264) == 1)
          {
            v18 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v10 + 27))(buf, v10);
              v19 = v42 >= 0 ? buf : *buf;
              *__p = 141558275;
              *&__p[4] = 1752392040;
              v36 = 2081;
              v37 = v19;
              _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sImsTcpNw: remote end closed connection", __p, 0x16u);
              if (SHIBYTE(v42) < 0)
              {
                operator delete(*buf);
              }
            }

            if (v17)
            {
              v20 = dispatch::queue::get((v7 + 192));
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v21 = v20;
              operator new();
            }

            v28 = dispatch::queue::get(v10 + 6);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              (*(*v10 + 27))(buf, v10);
              v29 = v42 >= 0 ? buf : *buf;
              *__p = 141558275;
              *&__p[4] = 1752392040;
              v36 = 2081;
              v37 = v29;
              _os_log_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sImsTcpNw: no delegate to handle, closing myself", __p, 0x16u);
              if (SHIBYTE(v42) < 0)
              {
                operator delete(*buf);
              }
            }

            (*(*v7 + 72))(v7);
          }

          else
          {
            if (v17)
            {
              v23 = *(v7 + 120);
              v22 = *(v7 + 128);
              if (v22)
              {
                atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
              }

              v24 = dispatch::queue::get((v7 + 192));
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v26 = a1[7];
              v25 = a1[8];
              if (v25)
              {
                atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
              }

              if (v22)
              {
                atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
              }

              v27 = v24;
              operator new();
            }

            if (*(v7 + 88) == 3)
            {
              ImsTcpNw::receiveData(v7);
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          goto LABEL_52;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = 0;
      goto LABEL_20;
    }
  }

LABEL_53:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1E4C44244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void ImsOutStream::putUnknownString(uint64_t a1, uint64_t a2)
{
  if (ImsOutStream::isRedacting(a1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    ImsOutStream::putRedactedString(a1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
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
      v6 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), v5, v6);
    *(a1 + 17) = 0;
  }
}

void sub_1E4C44368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *ImsStringOutStream::str@<X0>(ImsStringOutStream *this@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](*(this + 3) + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void ims::ClientHandle::reportDeviceEvent(ims::ClientHandle *this, const unsigned int *a2)
{
  v2 = *a2;
  memset(&v6, 0, sizeof(v6));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 3), *(this + 4));
  }

  else
  {
    v6 = *(this + 1);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1174405120;
  v3[2] = ___ZNK3ims12ClientHandle17reportDeviceEventERKj_block_invoke;
  v3[3] = &__block_descriptor_tmp_54_0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v6;
  }

  v5 = v2;
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

void sub_1E4C44520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 25) < 0)
  {
    operator delete(*(v18 - 48));
  }

  _Unwind_Resume(exception_object);
}

void IMSClientManager::callOnImsQueue(void *a1)
{
  ims::getQueue(&queue);
  v2 = queue;
  dispatch_async(queue, a1);
  if (v2)
  {

    dispatch_release(v2);
  }
}

void ims::getQueue(NSObject **a1@<X8>)
{
  v3 = sImsDispatchQueue;
  if (sImsDispatchQueue)
  {
    *a1 = sImsDispatchQueue;
LABEL_6:

    dispatch_retain(v3);
    return;
  }

  v3 = dispatch_queue_create("com.apple.ipTelephony.queue", 0);
  v4 = sImsDispatchQueue;
  sImsDispatchQueue = v3;
  if (v4)
  {
    dispatch_release(v4);
    v3 = sImsDispatchQueue;
  }

  *a1 = v3;
  if (v3)
  {
    goto LABEL_6;
  }
}

void ___ZNK3ims12ClientHandle17reportDeviceEventERKj_block_invoke(uint64_t a1)
{
  IPTelephonyManager::instance(&v3);
  IPTelephonyManager::handleDeviceEvents(v3, a1 + 32, (a1 + 56));
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E4C446A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void IPTelephonyManager::handleDeviceEvents(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 232);
  if (!v4)
  {
    return;
  }

  v7 = *a3;
  if ((*a3 & 0x10) != 0)
  {
    v9 = 0;
  }

  else if ((v7 & 0x400) != 0)
  {
    v9 = 1;
  }

  else
  {
    if ((v7 & 0x800) == 0)
    {
      if ((v7 & 0x1000) != 0)
      {
        v8 = (*(*(a1 + 24) + 64))(a1 + 24);
        (*(*(a1 + 24) + 16))(a1 + 24, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "IPTelephonyManager::handleDeviceEvents: KeepAlive wakeup received", 65);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        BambiClient::handleKeepAliveWake(*(a1 + 232));
      }

      goto LABEL_12;
    }

    v9 = 2;
  }

  BambiClient::handleNetworkEvents(v4, a2, v9);
LABEL_12:
  v10 = *(a1 + 232);
  v11 = *a3;

  BambiClient::handleDeviceEvents(v10, a2, v11);
}

void IPTelephonyManager::instance(uint64_t *__return_ptr a1@<X8>)
{
  {
    _ZNSt3__115allocate_sharedB8ne200100I18IPTelephonyManagerNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void BambiClient::handleKeepAliveWake(BambiClient *this)
{
  v1 = (this + 16);
  v2 = (*(*(this + 2) + 64))(this + 16);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Keepalive wakeup received", 25);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  for (i = v1[31]; i; i = *i)
  {
    if (*(i[5] + 2817) == 1)
    {
      v4 = (*(*v1 + 64))(v1);
      (*(*v1 + 16))(v1, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "keepAlive wake for stack ", 25);
      *(v4 + 17) = 0;
      (*(*v4 + 32))(v4, i + 2);
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
      SipStack::handleKeepAliveWake(i[5]);
    }
  }
}

void SipStack::handleKeepAliveWake(SipStack *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 2817) != 1)
  {
LABEL_14:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = *(this + 31);
  v4 = *(v2 + 336);
  v3 = *(v2 + 344);
  if (!v3)
  {
    if (*(v4 + 716) == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(v4 + 716);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (v5 != 2)
  {
LABEL_8:
    v8 = *(this + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(__p, this);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v14 = 1752392040;
      v15 = 2081;
      v16 = v9;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdropping keepalive from APNS since we're not registered", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_14;
  }

LABEL_4:
  v6 = *(this + 35);
  v7 = *MEMORY[0x1E69E9840];

  SipTransportLayer::handleKeepAliveWake(v6);
}

void *_ZNSt3__110unique_ptrIZZN8ImsTcpNw11receiveDataEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x1E69235B0](v2, 0x1030C40C4577E57);
  }

  return a1;
}

void ImsTcpNw::receiveData(ImsTcpNw *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 10) && *(this + 22) == 3)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 2);
    v2 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator new();
  }

  v3 = dispatch::queue::get(this + 6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 216))(&__p, this);
    v5 = v8 >= 0 ? &__p : __p;
    *buf = 141558275;
    v10 = 1752392040;
    v11 = 2081;
    v12 = v5;
    _os_log_error_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sConnection is not ready to receive data", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4C44EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void *__copy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c29_ZTSNSt3__110shared_ptrIA_hEE(void *result, void *a2)
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

void *_ZZN8dispatch5asyncIZZN8ImsTcpNw11receiveDataEvEUb1_E3__3EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_(void *a1)
{
  v2 = a1;
  (*(**a1 + 48))(*a1, a1[2], a1[4], a1 + 5);
  return _ZNSt3__110unique_ptrIZZN8ImsTcpNw11receiveDataEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&v2);
}

void sub_1E4C4501C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZN8ImsTcpNw11receiveDataEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void SipTcpConnection::processDataFromSocket(int8x8_t *a1, const void *a2, size_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a1[31];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_22;
  }

  p_dst = &__dst;
  (*(*a1 + 112))(&__dst, a1);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v8 = a1[36];
  if (*(*&v8 + 24))
  {
    goto LABEL_7;
  }

  if ((*(*&v8 + 23) & 0x8000000000000000) != 0)
  {
    if (*(*&v8 + 8))
    {
      goto LABEL_7;
    }

LABEL_86:
    v9 = "false";
    goto LABEL_8;
  }

  if (!*(*&v8 + 23))
  {
    goto LABEL_86;
  }

LABEL_7:
  v9 = "true";
LABEL_8:
  std::string::basic_string[abi:ne200100]<0>(&v37, v9);
  v10 = SHIBYTE(v39);
  v11 = v37;
  if (a1[64].i8[4])
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

  if (v42 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = *__p;
  }

  *buf = 141558787;
  *&buf[4] = 1752392040;
  *&buf[12] = 2081;
  *&buf[14] = p_dst;
  v44 = 2080;
  v45 = v13;
  v46 = 2080;
  v47 = v14;
  _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTcpConnection::processDataFromSocket hasPartial=%s crlfInFlight=%s", buf, 0x2Au);
  if (v42 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_22:
  memset(&__dst, 0, sizeof(__dst));
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a3;
  if (a3)
  {
    memcpy(&__dst, a2, a3);
  }

  __dst.__r_.__value_.__s.__data_[a3] = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (a1[64].i8[4] == 1)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v16 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
      v16 = __dst.__r_.__value_.__r.__words[0];
    }

    *buf = v16;
    *&buf[8] = size;
    if (std::string_view::starts_with[abi:ne200100](buf, "\r\n", 2uLL))
    {
      v17 = a1[31];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 112))(buf, a1);
        v18 = v44 >= 0 ? buf : *buf;
        *__p = 141558275;
        *&__p[4] = 1752392040;
        *&__p[12] = 2081;
        *&__p[14] = v18;
        _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReceived CRLF pong", __p, 0x16u);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(*buf);
        }
      }

      a1[64].i8[4] = 0;
      v19 = a1[65].i32[1];
      if (v19)
      {
        a1[65].i32[1] = v19 - 1;
      }

      if (SHIBYTE(v39) < 0)
      {
        v38 = 13;
        v20 = v37;
      }

      else
      {
        HIBYTE(v39) = 13;
        v20 = &v37;
      }

      strcpy(v20, "pong received");
      goto LABEL_53;
    }

    if (a1[64].i8[4])
    {
      v21 = a1[31];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        (*(*a1 + 112))(__p, a1);
        if (v42 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = *__p;
        }

        v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v35;
        v44 = 2048;
        v45 = v36;
        _os_log_error_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sReceived unexpected payload while waiting for pong; size %zu", buf, 0x20u);
        if (v42 < 0)
        {
          operator delete(*__p);
        }
      }

      a1[64].i8[4] = 0;
    }
  }

  if (SHIBYTE(v39) < 0)
  {
    v38 = 7;
    v22 = v37;
  }

  else
  {
    HIBYTE(v39) = 7;
    v22 = &v37;
  }

  strcpy(v22, "MT-Data");
  if (SipTcpConnection::isTransient(a1))
  {
    SipTcpConnection::scheduleTcpIdleTimer(a1);
    std::string::basic_string[abi:ne200100]<0>(buf, "MT-Data");
    SipTcpConnection::reportTcpIdleRescheduleEvent(a1, buf);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_53:
  SipTcpConnection::scheduleCrlfKeepAlive(a1);
  SipTcpConnection::reportKeepaliveRescheduleEvent(a1, v23, &v37);
  v24 = a1[35];
  if (v24)
  {
    v25 = std::__shared_weak_count::lock(v24);
    if (v25)
    {
      v26 = v25;
      v27 = a1[34];
      if (v27)
      {
        *__p = 0;
        *&__p[8] = 0;
        IPTelephonyManager::getBambiClient(__p);
        v28 = *__p;
        if (*__p)
        {
          (*(**&v27 + 80))(buf, v27);
          BambiClient::releaseKeepAliveAssertion(v28, buf);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*&__p[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  v29 = a1[36];
  if (!*(*&v29 + 24))
  {
    if ((*(*&v29 + 23) & 0x8000000000000000) != 0)
    {
      if (*(*&v29 + 8))
      {
        goto LABEL_68;
      }
    }

    else if (*(*&v29 + 23))
    {
      goto LABEL_68;
    }

    ims::chomp(&__dst, "\r\n", 1);
  }

LABEL_68:
  v30 = a1[35];
  if (v30)
  {
    v31 = std::__shared_weak_count::lock(v30);
    if (v31)
    {
      v32 = *&a1[34] != 0;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = __dst.__r_.__value_.__l.__size_;
  }

  if (v33 && (SipTcpConnection::decodeMessage(a1, &__dst) & v32) == 1)
  {
      ;
    }
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1E4C456B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpConnection::logPrefixStr(SipTcpConnection *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C45848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void SipTcpConnection::logPrefix(SipTcpConnection *this, ImsOutStream *a2)
{
  (*(*this + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C4594C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpConnection::loggableName(SipTcpConnection *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C45A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
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

ImsOutStream *SipTcpConnection::toStream(SipTcpConnection *this, ImsOutStream *a2)
{
  v4 = *(this + 32);
  if (!v4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "(not connected)", 15);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_15:
    *(a2 + 17) = 0;
    return a2;
  }

  (*(*v4 + 144))(&v8);
  v5 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v5)
  {
    (*(**(this + 32) + 144))(&v8);
    (*(*v8 + 40))(v8, a2);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "unknown", 7);
    *(a2 + 17) = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " <-> ", 5);
  *(a2 + 17) = 0;
  (*(**(this + 32) + 104))(&v8);
  v6 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v6)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "unknown", 7);
    goto LABEL_15;
  }

  (*(**(this + 32) + 104))(&v8);
  (*(*v8 + 40))(v8, a2);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a2;
}

void sub_1E4C45D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsTcpNw::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

ImsOutStream *Ip4Address::toStream(Ip4Address *this, ImsOutStream *a2, char a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *v16 = 0;
  v17 = 0;
  v6 = inet_ntop(2, this + 32, v16, 0x10u);
  if (v6)
  {
    if (*(a2 + 18) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v11, IpAddress::kAnonymousIPv4);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v11, v6);
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, "x.x.x.x");
    PIIString::PIIString(v12, &v11, &v10);
    (*(*a2 + 48))(a2, v12);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
      if ((a3 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (*(this + 15))
    {
      v7 = *(a2 + 1);
      LOBYTE(v12[0]) = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v12, 1);
      *(a2 + 17) = 0;
      MEMORY[0x1E6923390](*(a2 + 1), bswap32(*(this + 15)) >> 16);
      *(a2 + 17) = 0;
    }
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1E4C45F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  ims::AccessNetwork::~AccessNetwork(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c32_ZTSNSt3__18weak_ptrI8ImsTcpNwEE56c29_ZTSNSt3__110shared_ptrIA_hEE(uint64_t a1)
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

uint64_t PIIString::PIIString(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), a3);
  return a1;
}

void sub_1E4C46034(_Unwind_Exception *exception_object)
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

BOOL ImsOutStream::isRedacting(ImsOutStream *this)
{
  v1 = (*(*this + 24))(this);
  if (v1)
  {
    return 0;
  }

  v3 = ims::logger(v1);

  return ImsLogger::isRedacting(v3);
}

void SipTransportLayer::handleKeepAliveWake(SipTransportLayer *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *(this + 138);
        if (v6)
        {
          if (*(v5 + 2192))
          {
            v7 = *(this + 29);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              (*(*this + 224))(__p, this);
              if (v11 >= 0)
              {
                v8 = __p;
              }

              else
              {
                v8 = __p[0];
              }

              *buf = 141558275;
              v13 = 1752392040;
              v14 = 2081;
              v15 = v8;
              _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTransportLayer::handleKeepAliveWake()", buf, 0x16u);
              if (v11 < 0)
              {
                operator delete(__p[0]);
              }

              v6 = *(this + 138);
            }

            (*(*v6 + 296))(v6);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void SipTransportLayer::logPrefixStr(SipTransportLayer *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C46324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void SipTransportLayer::logPrefix(SipTransportLayer *this, ImsOutStream *a2)
{
  (*(*this + 232))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C46428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportLayer::loggableName(SipTransportLayer *this@<X0>, LoggableString *a2@<X8>)
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
    LoggableString::LoggableString(a2, "TransportLayer");
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  LoggableString::LoggableString(a2, "TransportLayer(EMERGENCY)");
LABEL_8:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void LoggableString::LoggableString(LoggableString *this, const char *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::string::__assign_external(this, a2);
}

void sub_1E4C46538(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpConnection::handleKeepAliveWake(SipTcpConnection *this)
{
  if (SipTcpConnection::crlfKeepAliveAllowed(this))
  {
    if ((*(this + 516) & 1) == 0)
    {
      v2 = *(this + 35);
      if (v2)
      {
        v3 = std::__shared_weak_count::lock(v2);
        if (v3)
        {
          v4 = v3;
          v5 = *(this + 34);
          if (!v5)
          {
            goto LABEL_14;
          }

          (*(*v5 + 32))(&v9);
          if (!v10)
          {
            goto LABEL_14;
          }

          v6 = std::__shared_weak_count::lock(v10);
          v7 = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_weak(v10);
          }

          if (v6 && v7)
          {
            (*(*this + 40))(v8, this, 0);
            ImsResult::~ImsResult(v8);
          }

          else if (!v6)
          {
LABEL_14:
            std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            return;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          goto LABEL_14;
        }
      }
    }
  }
}

void sub_1E4C4664C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipTlsTransportGroup::handleKeepAliveWake(SipTlsTransportGroup *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    SipTcpConnection::handleKeepAliveWake(v1);
  }
}

void SipTcpConnection::sendPing(int8x8_t *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  if (SipTcpConnection::isLazuliConnection(this) && ((v6 = time(0), v7 = this[68], !SipTcpConnection::isOnWiFi(this)) ? (v8 = 540) : (v8 = (80 * this[67].i32[0]) / 0x64uLL), (this[64].i8[4] & 1) != 0 || (v8 + *&v7) > v6))
  {
    v19 = this[31];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v20 = v23 >= 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v20;
      _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}stoo soon to send another keepalive. skipping.", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741826;
  }

  else
  {
    v9 = this[35];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = this[34];
        if (v12)
        {
          *buf = 0;
          *&buf[8] = 0;
          IPTelephonyManager::getBambiClient(buf);
          v13 = *buf;
          if (*buf)
          {
            (*(**&v12 + 80))(__p, v12);
            BambiClient::acquireKeepAliveAssertion(v13, __p, this[42].u32[0], a2);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[44], "KeepaliveTimeout"))
    {
      SipTimerContainer::cancelTimer(this + 43, "KeepaliveTimeout");
    }

    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[44], "PongReceiveTimeout"))
    {
      SipTimerContainer::cancelTimer(this + 43, "PongReceiveTimeout");
    }

    this[64].i8[4] = 1;
    if (SipTcpConnection::isLazuliConnection(this))
    {
      v14 = this[28];
      if (v14)
      {
        v15 = this[27];
        v16 = std::__shared_weak_count::lock(v14);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v17 = this[31];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v18 = v23 >= 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v18;
      _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssending CRLF ping", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    SipTcpConnection::sendData(this, a3);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E4C46A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void *ImsOutStream::putLoggableString(ImsOutStream *this, const LoggableString *a2)
{
  v2 = *(this + 1);
  v3 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, a2, v4);
}

uint64_t SipTcpConnection::crlfKeepAliveAllowed(SipTcpConnection *this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 134))
  {
    goto LABEL_35;
  }

  v2 = *(this + 35);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 34);
      if (v5)
      {
        (*(*v5 + 32))(buf);
        if (*&buf[8])
        {
          v6 = std::__shared_weak_count::lock(*&buf[8]);
          if (v6)
          {
            v7 = *buf;
          }

          else
          {
            v7 = 0;
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }

          if (v7)
          {
            (*(*v7 + 128))(buf, v7);
            if (*&buf[8])
            {
              v8 = std::__shared_weak_count::lock(*&buf[8]);
              if (v8)
              {
                v9 = *buf;
              }

              else
              {
                v9 = 0;
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_weak(*&buf[8]);
              }

              if (v9)
              {
                v10 = (*(*v7 + 160))(v7);
                *(this + 134) = v10;
                if (v10)
                {
                  v11 = *(this + 31);
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*this + 112))(__p, this);
                    v12 = v19 >= 0 ? __p : __p[0];
                    v13 = *(this + 134);
                    *buf = 141558531;
                    *&buf[4] = 1752392040;
                    *&buf[12] = 2081;
                    *&buf[14] = v12;
                    v21 = 1024;
                    v22 = v13;
                    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUsing last known current keepalive interval  %u", buf, 0x1Cu);
                    if (v19 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }

                else
                {
                  v14 = 2176;
                  if (*(this + 517))
                  {
                    v14 = 2172;
                  }

                  *(this + 134) = *(v9 + v14);
                  (*(*v7 + 168))(v7);
                }
              }

              if (v8)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v8);
              }
            }
          }

          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v15 = *(this + 134);
  if (v15)
  {
LABEL_35:
    if (SipTcpConnection::isLazuliConnection(this))
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      LOBYTE(v15) = *(this + 517);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

void sub_1E4C46DAC(_Unwind_Exception *a1)
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

uint64_t SipTcpConnection::isLazuliConnection(SipTcpConnection *this)
{
  v3 = 0;
  v4 = 0;
  SipTcpConnection::stack(&v3, this);
  if (v3)
  {
    v1 = *(v3 + 2817);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1 & 1;
}

uint64_t SipTcpConnection::isOnWiFi(SipTcpConnection *this)
{
  v4 = 0;
  v5 = 0;
  SipTcpConnection::stack(&v4, this);
  v2 = v4;
  if (v4)
  {
    isCampedOnWifi = SipStack::isCampedOnWifi(v4);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (v2 != 0) & isCampedOnWifi;
}

void sub_1E4C46EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ims::AccessNetwork::isWifi(ims::AccessNetwork *this)
{
  v1 = this;
  v2 = *(this + 23);
  if (v2 < 0)
  {
    v1 = *this;
    v2 = *(this + 1);
  }

  v3 = v1 + v2;
  if (v2 >= 8)
  {
    v4 = v1;
    do
    {
      v5 = memchr(v4, 73, v2 - 7);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x3230382D45454549)
      {
        return v5 != v3 && v5 - v1 != -1;
      }

      v4 = (v5 + 1);
      v2 = v3 - v4;
    }

    while (v3 - v4 > 7);
  }

  v5 = v3;
  return v5 != v3 && v5 - v1 != -1;
}

const void **SipTimerContainer::cancelTimer(int8x8_t *a1, std::string *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&a1[1], &a2->__r_.__value_.__l.__data_);
  if (result)
  {
    v5 = result;
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v10, &a1[9]);
    v6 = ims::debug(&a1[6], v10);
    (*(*a1 + 24))(v8, a1);
    (*(*v6 + 40))(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": canceling timer ", 18);
    *(v6 + 17) = 0;
    LoggableString::LoggableString(&__p, a2);
    (*(*v6 + 40))(v6, &__p);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }

    return SipTimerContainer::cancelTimer(a1, v5[5]);
  }

  return result;
}

void sub_1E4C471E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void AssertionCounter::initialize(atomic_uint *this@<X0>, double a2@<D0>, char a3@<W1>, uint64_t a4@<X8>)
{
  atomic_fetch_add(this + 6, 1u);
  std::string::basic_string[abi:ne200100]<0>(v15, "power");
  v11[0] = 0;
  v14 = 0;
  v8 = ims::debug(v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "AssertionCounter increased count - ", 35);
  *(v8 + 17) = 0;
  (*(*v8 + 32))(v8, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ":", 1);
  *(v8 + 17) = 0;
  v9 = atomic_load(this + 6);
  MEMORY[0x1E6923350](*(v8 + 8), v9);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v10 = *(this + 4);
  if (*(v10 + 6))
  {
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else
  {
    ImsPowerAssertion::initialize(v10, a2, a3, a4);
  }
}

void sub_1E4C47524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void BambiClient::acquireKeepAliveAssertion(void *a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = a1 + 2;
  v9 = (*(a1[2] + 64))(a1 + 2);
  (*(*v8 + 16))(v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Acquire KeepAlive power assertion for stackId=", 46);
  *(v9 + 17) = 0;
  (*(*v9 + 32))(v9, a2);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  *&v32.__r_.__value_.__l.__data_ = 0uLL;
  (*(*a1 + 184))(&v32, a1, a2);
  if (v32.__r_.__value_.__r.__words[0])
  {
    isWifi = ims::AccessNetwork::isWifi((v32.__r_.__value_.__r.__words[0] + 3432));
  }

  else
  {
    isWifi = 0;
  }

  if (v32.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32.__r_.__value_.__l.__size_);
  }

  memset(&v32, 0, sizeof(v32));
  std::to_string(&v32, a3);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a4)
  {
    v11 = ".ipt";
  }

  else
  {
    v11 = ".apns";
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, v11);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (isWifi)
  {
    v12 = ".wifi";
  }

  else
  {
    v12 = ".cell";
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, v12);
  std::operator+<char>();
  if (v28 >= 0)
  {
    v13 = &v26;
  }

  else
  {
    v13 = v26;
  }

  if (v28 >= 0)
  {
    v14 = HIBYTE(v28);
  }

  else
  {
    v14 = v27;
  }

  v15 = std::string::append(&v24, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v17 = &v29;
  }

  else
  {
    v17 = v29;
  }

  if (v31 >= 0)
  {
    v18 = HIBYTE(v31);
  }

  else
  {
    v18 = v30;
  }

  v19 = std::string::append(&v25, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (a1 + 55 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 54), &__str.__r_.__value_.__l.__data_))
  {
    v32.__r_.__value_.__r.__words[0] = &__str;
    v21 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 54), &__str.__r_.__value_.__l.__data_);
    AssertionCounter::initialize(*(v21 + 56), 30.0, !isWifi, v22);
    ImsResult::~ImsResult(v22);
    *&v32.__r_.__value_.__l.__data_ = 0uLL;
    (*(*a1 + 184))(&v32, a1, a2);
    if (v32.__r_.__value_.__r.__words[0])
    {
      std::string::operator=((v32.__r_.__value_.__r.__words[0] + 4480), &__str);
    }

    if (v32.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C478E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v40 = *(v38 - 80);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::sipStack(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1 + 31, a2);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    goto LABEL_3;
  }

  v9 = a1[29];
  if (!v9)
  {
    goto LABEL_27;
  }

  if (*(v9 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
  }

  else
  {
    __p = *(v9 + 4432);
  }

  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = *(a2 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (size != v12)
  {
    v16 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  v16 = memcmp(p_p, v15, size) == 0;
  if ((v10 & 0x80000000) == 0)
  {
LABEL_24:
    if (v16)
    {
      goto LABEL_25;
    }

LABEL_27:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

LABEL_26:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_25:
  v8 = a1[29];
  v7 = a1[30];
LABEL_3:
  *a3 = v8;
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }
}

{
  v6 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 31), a2);
  v7 = a1[32];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(a1[31] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_17:
    v15 = a1[29];
    if (v15)
    {
      if (*(v15 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v15 + 4432), *(v15 + 4440));
      }

      else
      {
        __p = *(v15 + 4432);
      }

      v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v18 = *(a2 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a2 + 8);
      }

      if (size == v18)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v19 >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        v22 = memcmp(p_p, v21, size) == 0;
        if (v16 < 0)
        {
LABEL_40:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v22)
          {
            goto LABEL_41;
          }

LABEL_37:
          v24 = a1[29];
          v23 = a1[30];
          goto LABEL_38;
        }
      }

      else
      {
        v22 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_40;
        }
      }

      if (v22)
      {
        goto LABEL_37;
      }
    }

LABEL_41:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  while (1)
  {
    v14 = v13[1];
    if (v8 == v14)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100]((a1 + 31), v13 + 2, a2))
  {
    goto LABEL_16;
  }

  v24 = v13[5];
  v23 = v13[6];
LABEL_38:
  *a3 = v24;
  a3[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
  }
}

void ImsPowerAssertion::initialize(ImsPowerAssertion *this@<X0>, double a2@<D0>, char a3@<W1>, uint64_t a4@<X8>)
{
  ImsPowerAssertion::deinitialize(this);
  v38[0] = 0;
  v38[1] = 0;
  ims::CFString::CFString(v38, this);
  v37 = 1;
  if (IOPMAssertionDeclareSystemActivity())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "power");
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = &unk_1F5EBDEF8;
    v21 = &_bambiDomain;
    v22 = 0x40000000;
    v8 = ImsResult::operator<<<char [34]>(&v20, "Unable to create power assertion ");
    v9 = ImsResult::operator<<<std::string>(v8, this);
    v10 = ims::result::log(&__p, v9);
    ImsResult::ImsResult(a4, v10);
    ImsResult::~ImsResult(&v20);
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v20, "power");
    v33[0] = 0;
    v36 = 0;
    v11 = ims::warn(&v20, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Sleep not reverted system state returned for power assertion ", 61);
    *(v11 + 17) = 0;
    (*(*v11 + 32))(v11, this);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v23 < 0)
    {
      operator delete(v20);
    }

    v31 = 0;
    theValue = 0;
    ims::CFNumber::CFNumber(&v31, a2);
    if (IOPMAssertionSetProperty(*(this + 6), @"TimeoutSeconds", theValue))
    {
      IOPMAssertionRelease(*(this + 6));
      *(this + 6) = 0;
      std::string::basic_string[abi:ne200100]<0>(&__p, "power");
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = &unk_1F5EBDEF8;
      v21 = &_bambiDomain;
      v22 = 0x40000000;
      v12 = ImsResult::operator<<<char [43]>(&v20, "Unable to set timeout for power assertion ");
      v13 = ImsResult::operator<<<std::string>(v12, this);
      v14 = ims::result::log(&__p, v13);
      ImsResult::ImsResult(a4, v14);
      ImsResult::~ImsResult(&v20);
      if (v30 < 0)
      {
        operator delete(__p);
      }

      ims::CFType::~CFType(&v31);
    }

    else
    {
      __p = &unk_1F5EBE6A8;
      v29 = 0;
      ims::CFMutableArray::create(&__p);
      if (a3)
      {
        ims::CFMutableArray::appendValue(&__p, @"baseband");
      }

      if ((a3 & 2) != 0)
      {
        ims::CFMutableArray::appendValue(&__p, @"audio-in");
      }

      if ((a3 & 4) != 0)
      {
        ims::CFMutableArray::appendValue(&__p, @"audio-out");
      }

      if (IOPMAssertionSetProperty(*(this + 6), @"ResourcesUsed", v29))
      {
        std::string::basic_string[abi:ne200100]<0>(&v20, "power");
        v16[0] = 0;
        v19 = 0;
        v15 = ims::warn(&v20, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Unable to set assertion resources for power assertion ", 54);
        *(v15 + 17) = 0;
        (*(*v15 + 32))(v15, this);
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
        if (v19 == 1 && v18 < 0)
        {
          operator delete(v17);
        }

        if (v23 < 0)
        {
          operator delete(v20);
        }
      }

      ims::CFType::~CFType(&__p);
      ims::CFType::~CFType(&v31);
      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      *a4 = &unk_1F5EBDEF8;
      *(a4 + 8) = &_bambiDomain;
      *(a4 + 16) = 0;
    }
  }

  ims::CFType::~CFType(v38);
}

void sub_1E4C47FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  ims::CFType::~CFType(&a33);
  ims::CFType::~CFType(&a39);
  ims::CFType::~CFType((v50 - 80));
  _Unwind_Resume(a1);
}

void *ims::CFString::CFString(void *a1, char *a2)
{
  *a1 = &unk_1F5EF36B0;
  a1[1] = 0;
  ims::CFString::set(a1, a2);
  return a1;
}

void ims::CFString::set(uint64_t a1, char *cStr)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cStr[23] < 0)
  {
    if (!*(cStr + 1))
    {
LABEL_11:
      v6 = &stru_1F5EFB6F8;
      goto LABEL_12;
    }

    cStr = *cStr;
  }

  else if (!cStr[23])
  {
    goto LABEL_11;
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F5EFB6F8;
  }

LABEL_12:
  *(a1 + 8) = v6;
}

uint64_t ImsPowerAssertion::deinitialize(uint64_t this)
{
  if (*(this + 24))
  {
    v1 = this;
    v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "power");
    v4[0] = 0;
    v7 = 0;
    v3 = ims::debug(v2, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "released power assertion ", 25);
    *(v3 + 17) = 0;
    (*(*v3 + 32))(v3, v1);
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

    this = IOPMAssertionRelease(*(v1 + 24));
    *(v1 + 24) = 0;
  }

  return this;
}

void sub_1E4C482E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

ims::CFNumber *ims::CFNumber::CFNumber(ims::CFNumber *this, double a2)
{
  *this = &unk_1F5EF3708;
  *(this + 1) = 0;
  valuePtr = a2;
  *(this + 1) = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  return this;
}

CFMutableArrayRef ims::CFMutableArray::create(ims::CFMutableArray *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  result = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(this + 1) = result;
  return result;
}

void ims::CFType::~CFType(ims::CFType *this)
{
  *this = &unk_1F5EF3658;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void SipTimerInfo::~SipTimerInfo(SipTimerInfo *this)
{
  if (*(this + 3))
  {
    v2 = *(this + 4);
    v3 = *(this + 6);
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v13, (v3 + 72));
    v4 = ims::debug(v3 + 48, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Canceling system wake for timer ", 32);
    *(v4 + 17) = 0;
    ims::CFString::asString(*(this + 3), 0x8000100, &v11);
    LoggableString::LoggableString(&__p, &v11);
    (*(*v4 + 40))(v4, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " at ", 4);
    v5 = v2 + -4.0;
    *(v4 + 17) = 0;
    ims::formatTimeAndIntervalFromNow((v5 + *MEMORY[0x1E695E468]), v4, v6);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
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

    v7 = CFDateCreate(0, v5);
    v8 = *(this + 3);
    CPCancelWakeAtDateWithIdentifier();
    CFRelease(v7);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  v9 = *(this + 5);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10 == (this + 64))
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](this + 64);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_1E4C48650(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t SipTimerContainer::startTimer(int8x8_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    SipTimerContainer::cancelTimer(a1, a2);
    operator new();
  }

  result = 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__value_func<void ()(std::string &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void SipTcpConnection::sendData(int8x8_t *this@<X0>, uint64_t a2@<X8>)
{
  v5 = this[32];
  if (v5)
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    (*(**&v5 + 32))(a2);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    __p = &unk_1F5EBDEF8;
    v10 = &_bambiDomain;
    v11 = 1073741840;
    if (*(a2 + 8) == &_bambiDomain)
    {
      v7 = *(a2 + 16);
      ImsResult::~ImsResult(&__p);
      if (v7 == 1073741840)
      {
        SipTcpConnection::removeFromTransport(this);
      }
    }

    else
    {
      ImsResult::~ImsResult(&__p);
    }

    if (((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)) & 1) == 0 && (this[64].i8[4] & 1) == 0)
    {
      SipTcpConnection::scheduleCrlfKeepAlive(this);
      std::string::basic_string[abi:ne200100]<0>(&__p, "MO-Data");
      SipTcpConnection::reportKeepaliveRescheduleEvent(this, v8, &__p);
      if (v12 < 0)
      {
        operator delete(__p);
      }

      if (SipTcpConnection::isTransient(this))
      {
        SipTcpConnection::scheduleTcpIdleTimer(this);
        std::string::basic_string[abi:ne200100]<0>(&__p, "MO-Data");
        SipTcpConnection::reportTcpIdleRescheduleEvent(this, &__p);
        if (v12 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    __p = &unk_1F5EBDEF8;
    v10 = &_bambiDomain;
    v11 = 1073741827;
    v6 = ImsResult::operator<<<char [33]>(&__p, "send: connection not initialized");
    ImsResult::ImsResult(a2, v6);
    ImsResult::~ImsResult(&__p);
  }
}

void sub_1E4C49DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(v15);
  _Unwind_Resume(a1);
}

void ImsTcpNw::sendOverSocket(id *this@<X0>, const unsigned __int8 *a2@<X1>, size_t a3@<X2>, ImsTcpNw *a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = dispatch::queue::get(this + 6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 27))(__p, this);
    v9 = v12 >= 0 ? __p : __p[0];
    *buf = 141558531;
    v14 = 1752392040;
    v15 = 2081;
    v16 = v9;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}ssendOverSocket %zu bytes", buf, 0x20u);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 22) != 3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, a2, &a2[a3], a3);
    std::__list_imp<std::vector<unsigned char>>::__create_node[abi:ne200100]<std::vector<unsigned char> const&>();
  }

  ImsTcpNw::writeToNw(a4, this, a2, a3);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E4C4A0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ImsTcpNw::writeToNw(ImsTcpNw *this, id *a2, const void *a3, size_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2[10])
  {
    v8 = dispatch::queue::get(a2 + 6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 27))(__p, a2);
      v9 = v19 >= 0 ? __p : __p[0];
      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v9;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swriteToNw %zu", buf, 0x20u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = dispatch_data_create(a3, a4, 0, 0);
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, a2 + 2);
    v12 = *buf;
    v11 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v13 = a2[10];
    v14 = *MEMORY[0x1E6977E90];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = ___ZN8ImsTcpNw9writeToNwEPKhm_block_invoke;
    v16[3] = &__block_descriptor_56_ea8_40c33_ZTSKNSt3__18weak_ptrI8ImsTcpNwEE_e31_v16__0__NSObject_OS_nw_error__8l;
    v16[4] = a2;
    v16[5] = v12;
    v17 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    nw_connection_send(v13, v10, v14, 0, v16);
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0x40000000;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void SipTimerContainer::loggableName(SipTimerContainer *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C4A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
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

uint64_t ImsTcpNw::remoteEndAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 128);
  *a2 = *(this + 120);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

std::string *LoggableString::LoggableString(std::string *a1, const std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(a1, a2);
  return a1;
}

void sub_1E4C4A6B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void *ImsOutStream::putPIIString(uint64_t a1, uint64_t a2)
{
  if (ImsOutStream::isRedacting(a1))
  {

    return ImsOutStream::putRedactedString(a1, a2 + 24);
  }

  else
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), v6, v7);
    *(a1 + 17) = 0;
  }

  return result;
}

uint64_t SipTcpConnection::scheduleCrlfKeepAlive(SipTcpConnection *this)
{
  v38 = *MEMORY[0x1E69E9840];
  result = SipTcpConnection::crlfKeepAliveAllowed(this);
  if (result)
  {
    v3 = SipTcpConnection::isOnWiFi(this);
    v4 = *(this + 70);
    if (v3)
    {
      if (v4)
      {
        goto LABEL_22;
      }

      v5 = *(this + 31);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        (*(*this + 112))(__p, this);
        v7 = v32 >= 0 ? __p : *__p;
        *buf = 141558275;
        *&buf[4] = 1752392040;
        v35 = 2081;
        v36 = v7;
        _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCreating WoW assertion", buf, 0x16u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(*__p);
        }
      }

      WakeOnWifiAssertion::get(v6, __p);
      v8 = *__p;
      *__p = 0;
      *&__p[8] = 0;
      v9 = *(this + 71);
      *(this + 35) = v8;
      if (!v9)
      {
        goto LABEL_22;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v10 = *&__p[8];
      if (!*&__p[8])
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_22;
      }

      v11 = *(this + 31);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(__p, this);
        v12 = v32 >= 0 ? __p : *__p;
        *buf = 141558275;
        *&buf[4] = 1752392040;
        v35 = 2081;
        v36 = v12;
        _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReleasing WoW assertion", buf, 0x16u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(*__p);
        }
      }

      v10 = *(this + 71);
      *(this + 35) = 0u;
      if (!v10)
      {
LABEL_22:
        if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 44, "KeepaliveTimeout"))
        {
          SipTimerContainer::cancelTimer(this + 43, "KeepaliveTimeout");
        }

        if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 44, "PongReceiveTimeout"))
        {
          SipTimerContainer::cancelTimer(this + 43, "PongReceiveTimeout");
        }

        if (!*(this + 131))
        {
          if (*(this + 130))
          {
            v19 = *(this + 35);
            if (v19)
            {
              v20 = std::__shared_weak_count::lock(v19);
              if (v20)
              {
                v21 = v20;
                v22 = *(this + 34);
                if (v22)
                {
                  (*(*v22 + 32))(__p);
                  if (*&__p[8])
                  {
                    v23 = std::__shared_weak_count::lock(*&__p[8]);
                    if (v23)
                    {
                      v24 = *__p;
                    }

                    else
                    {
                      v24 = 0;
                    }

                    if (*&__p[8])
                    {
                      std::__shared_weak_count::__release_weak(*&__p[8]);
                    }

                    if (v24)
                    {
                      *(this + 130) = 0;
                      (*(*v24 + 128))(__p, v24);
                      if (*&__p[8])
                      {
                        v25 = std::__shared_weak_count::lock(*&__p[8]);
                        if (v25)
                        {
                          v26 = *__p;
                        }

                        else
                        {
                          v26 = 0;
                        }

                        if (*&__p[8])
                        {
                          std::__shared_weak_count::__release_weak(*&__p[8]);
                        }

                        if (v26)
                        {
                          *(this + 131) = *(v26 + 2188);
                        }

                        if (v25)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                        }
                      }

                      v27 = *(this + 31);
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*this + 112))(buf, this);
                        v28 = v37 >= 0 ? buf : *buf;
                        v29 = *(this + 131);
                        *__p = 141558531;
                        *&__p[4] = 1752392040;
                        *&__p[12] = 2081;
                        *&__p[14] = v28;
                        v32 = 1024;
                        LODWORD(v33) = v29;
                        _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSet next CRLF threshold to %u pings", __p, 0x1Cu);
                        if (v37 < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      if (*(this + 131))
                      {
                        (*(*v24 + 176))(v24, *(this + 517));
                        *(this + 134) = (*(*v24 + 160))(v24);
                      }
                    }

                    if (v23)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
                    }
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }
            }
          }

          else
          {
            *(this + 131) = 1;
          }
        }

        v13 = time(0);
        if (os_log_type_enabled(*(this + 31), OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 112))(buf, this);
          v30[0] = v13 + *(this + 134);
          ims::TimeAndIntervalFromNow::logStr(v30);
        }

        v14 = *(this + 28);
        if (v14)
        {
          v15 = *(this + 27);
          v16 = std::__shared_weak_count::lock(v14);
          if (v16)
          {
            p_shared_weak_owners = &v16->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            *(this + 68) = v13;
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            v30[7] = 0;
            operator new();
          }
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_22;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C4AEEC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipTcpConnection::stack(SipTcpConnection *this, uint64_t a2)
{
  v3 = *(a2 + 280);
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *(a2 + 272);
  if (!v7 || ((*(*v7 + 32))(&v11), !v12))
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_22:
    *this = 0;
    *(this + 1) = 0;
    return;
  }

  v8 = std::__shared_weak_count::lock(v12);
  if (v8)
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (!v9)
  {
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    goto LABEL_21;
  }

  (*(*v9 + 128))(&v11, v9);
  *this = 0;
  *(this + 1) = 0;
  if (v12)
  {
    v10 = std::__shared_weak_count::lock(v12);
    *(this + 1) = v10;
    if (v10)
    {
      *this = v11;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4C4B094(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL SipStack::isCampedOnWifi(SipStack *this)
{
  if ((*(this + 3527) & 0x8000000000000000) != 0)
  {
    if (!*(this + 439))
    {
      goto LABEL_7;
    }
  }

  else if (!*(this + 3527))
  {
    goto LABEL_7;
  }

  v1 = (this + 3504);
  if ((*(this + 3551) & 0x8000000000000000) != 0)
  {
    if (*(this + 442))
    {
      return ims::AccessNetwork::isWifi(v1);
    }

    goto LABEL_7;
  }

  if (!*(this + 3551))
  {
LABEL_7:
    v1 = (this + 3432);
  }

  return ims::AccessNetwork::isWifi(v1);
}

void ClientConfig::getLogTag(ClientConfig *this@<X0>, std::string *a2@<X8>)
{
  ims::asString(*(this + 1), &v22);
  v4 = std::string::insert(&v22, 0, ".", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v23, ".", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *this - 1;
  if (v8 > 2)
  {
    v9 = "0";
  }

  else
  {
    v9 = off_1E876CBC8[v8];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v9);
  if ((v21 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v11 = v21;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v24, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v25, ".", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *(this + 2));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v26, v16, size);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C4B2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *ims::asString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "none";
  }

  else
  {
    v2 = off_1E876C000[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t __copy_helper_block_ea8_40c33_ZTSKNSt3__18weak_ptrI8ImsTcpNwEE(uint64_t result, uint64_t a2)
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

void BambiClient::handleDeviceEvents(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x20) != 0)
  {
    BambiAirplaneMode::set((a1 + 724), 1);
    v7 = *(a1 + 304);
    __p[1] = 0;
    v31 = 0;
    __p[0] = 0;
    IMSNasDeviceClient::setBasebandAvailable(v7, 0, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v9 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v8);
    }

    v12 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v13 = v9 + 240;
    for (i = *(v9 + 248); i != v13; i = *(i + 8))
    {
      (*(**(i + 16) + 256))(*(i + 16), 0);
    }
  }

  else
  {
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    BambiAirplaneMode::set((a1 + 724), 0);
    v6 = *(a1 + 304);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
    }

    else
    {
      v29 = *a2;
    }

    IMSNasDeviceClient::setBasebandAvailable(v6, 1, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v10 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v11 = off_1EE2BBBC0;
    if (!off_1EE2BBBC0)
    {
      IMSMetricsManager::create_default_global(v10);
    }

    v12 = *(&off_1EE2BBBC0 + 1);
    if (*(&off_1EE2BBBC0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
    v15 = v11 + 240;
    for (j = *(v11 + 248); j != v15; j = *(j + 8))
    {
      (*(**(j + 16) + 256))(*(j + 16), 1);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_26:
  v27 = 0;
  v28 = 0;
  (*(*a1 + 184))(&v27, a1, a2);
  if (v27)
  {
    if (a3)
    {
      v17 = *(v27 + 31);
      v18 = *(v27 + 32);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipUserAgent::clearLastPreferredPublicUri(v17);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    if ((a3 & 8) != 0)
    {
      v22 = *(a1 + 216);
      if (v22)
      {
        if ((v23 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v22 + 280, a2), v22 + 288 != v23) && *(v23 + 56) == 1 || (v24 = SipStack::prefs(v27), ImsPrefs::EnableAPOnlyMode(v24)))
        {
          RTPManager::handleAudioReadyEvent(*(a1 + 216));
        }
      }
    }

    else
    {
      SipStack::handleDeviceEvents(v27, a3 & 0xFFFD);
    }
  }

  else
  {
    v20 = *(a1 + 16);
    v19 = a1 + 16;
    v21 = (*(v20 + 56))(v19);
    (*(*v19 + 16))(v19, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "No stack for ", 13);
    *(v21 + 17) = 0;
    (*(*v21 + 32))(v21, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), ". Ignoring device events - ", 27);
    *(v21 + 17) = 0;
    deviceEventsToString(a3 & 0xFFFFFFFD, v25);
    (*(*v21 + 32))(v21, v25);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void SipStack::handleDeviceEvents(SipStack *this, __int16 a2)
{
  SipStack::carrierIdentifier(this, &__p);
  v4 = ImsPrefsManager::prefsValid(&__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = !v4;
  if ((a2 & 2) == 0)
  {
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    v6 = SipStack::prefs(this);
    if (ImsPrefs::DropRegistrationOnAirplaneModeToggle(v6))
    {
      BambiDeregisterHandler::start(*(this + 566), 3, 0);
    }
  }

  v7 = *(this + 31);
  if (v7)
  {
    v9 = *(v7 + 336);
    v8 = *(v7 + 344);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *(this + 31);
      v9 = *(v10 + 336);
      v11 = *(v10 + 344);
      if (v11)
      {
        v12 = 0;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_16;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v11 = 0;
    }

    v12 = 1;
LABEL_16:
    SipRegistrationClient::handleDeviceEvents(v9, a2);
    if ((v12 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

LABEL_18:
  if (a2 & 0x100) != 0 && (*(this + 2817))
  {
    SipStack::endRegistration(this);
  }
}

void sub_1E4C4BA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::carrierIdentifier(SipStack *this@<X0>, std::string *a2@<X8>)
{
  v2 = this + 4456;
  if (*(this + 4479) < 0)
  {
    v3 = *(this + 558);
    if (v3)
    {
      v4 = *v2;
      goto LABEL_10;
    }
  }

  else if (*(this + 4479))
  {
LABEL_8:
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    return;
  }

  if ((*(this + 4455) & 0x80000000) == 0)
  {
    v2 = this + 4432;
    goto LABEL_8;
  }

  v4 = *(this + 554);
  v3 = *(this + 555);
LABEL_10:
  std::string::__init_copy_ctor_external(a2, v4, v3);
}

BOOL ImsPrefsManager::prefsValid(void **a1)
{
  if (!ImsPrefsManager::exists(a1))
  {
    return 0;
  }

  ImsPrefsManager::instance(&v4);
  v6 = a1;
  v2 = *(std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, a1) + 88) != 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void sub_1E4C4BB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefsManager::exists(void **a1)
{
  ImsPrefsManager::instance(&v7);
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v7, a1);
  ImsPrefsManager::instance(&v5);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v3 + 8 != v2;
}

void sub_1E4C4BBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefsManager::instance(void *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    __cxa_atexit(std::shared_ptr<ImsPrefsManager>::~shared_ptr[abi:ne200100], &qword_1EE2BC180, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  if (!qword_1EE2BC180)
  {
    operator new();
  }

  v3 = qword_1EE2BC188;
  *a1 = qword_1EE2BC180;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1E4C4BCD8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::destroy(*(v1 + 32));
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,ImsCarrierPrefs>,std::__map_value_compare<std::string,std::__value_type<std::string,ImsCarrierPrefs>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ImsCarrierPrefs>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
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

void SipRegistrationClient::handleDeviceEvents(SipRegistrationClient *this, __int16 a2)
{
  v3 = *(this + 480);
  if (v3)
  {
    v5 = (*(*v3 + 456))(v3);
    (*(**(this + 480) + 496))();
    if ((a2 & 0x200) != 0)
    {
      if (v5)
      {

        SipRegistrationClient::performDeferredAction(this);
      }
    }
  }
}

uint64_t SipRegistrationPolicy::shouldDeferRegistration(SipRegistrationPolicy *this)
{
  if (*(this + 2265) == 1)
  {
    v1 = *(this + 1851);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void SipRegistrationPolicy::handleDeviceEvents(SipRegistrationPolicy *this, unsigned int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(this + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 184))(v25, this);
    v5 = v26;
    v6 = v25[0];
    deviceEventsToString(a2, __p);
    v7 = v25;
    if (v5 < 0)
    {
      v7 = v6;
    }

    if (v24 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 141558531;
    v28 = 1752392040;
    v29 = 2081;
    v30 = v7;
    v31 = 2080;
    v32 = v8;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandling device events: %s", buf, 0x20u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  v9 = *(this + 453) & a2;
  if (v9)
  {
    v10 = *(this + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 184))(v25, this);
      v11 = v26;
      v12 = v25[0];
      deviceEventsToString(v9, __p);
      v13 = v25;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v24 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 141558531;
      v28 = 1752392040;
      v29 = 2081;
      v30 = v13;
      v31 = 2080;
      v32 = v14;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sresetting registration errors due to event: %s", buf, 0x20u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    (*(*this + 568))(this);
  }

  if (*(this + 112) != SipRegistrationMode::kModeNormal)
  {
    v15 = *(this + 452) & a2;
    if (v15)
    {
      v16 = *(this + 24);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 184))(v25, this);
        v17 = v26;
        v18 = v25[0];
        deviceEventsToString(v15, __p);
        v19 = v25;
        if (v17 < 0)
        {
          v19 = v18;
        }

        if (v24 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 141558531;
        v28 = 1752392040;
        v29 = 2081;
        v30 = v19;
        v31 = 2080;
        v32 = v20;
        _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sresetting registration mode due to event: %s", buf, 0x20u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }
      }

      SipRegistrationPolicy::setRegistrationMode(this, &SipRegistrationMode::kModeNormal, 200);
    }
  }

  if ((a2 & 0x100) != 0)
  {
    v21 = 1;
    goto LABEL_40;
  }

  if ((a2 & 0x200) != 0)
  {
    v21 = 0;
LABEL_40:
    *(this + 2265) = v21;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E4C4C2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRegistrationPolicy::logPrefixStr(SipRegistrationPolicy *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C4C3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void SipRegistrationPolicy::logPrefix(SipRegistrationPolicy *this, ImsOutStream *a2)
{
  (*(*this + 472))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C4C4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTimerContainer::cancelTimer(int8x8_t *this, dispatch_source_t *a2)
{
  IMSClientManager::instance(&v19);
  v4 = *(v19 + 80);
  SipTimerContainer::fullTimerId(this, a2, __p);
  (*(*v4 + 24))(v4, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  dispatch_source_cancel(a2[5]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[1], a2);
  if (v5)
  {
    v6 = this[2];
    v7 = *v5;
    v8 = v5[1];
    v9 = vcnt_s8(v6);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v6)
      {
        v8 %= *&v6;
      }
    }

    else
    {
      v8 &= *&v6 - 1;
    }

    v10 = this[1];
    v11 = *(*&v10 + 8 * v8);
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11 != v5);
    if (v12 == &this[3])
    {
      goto LABEL_23;
    }

    v13 = v12[1];
    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v8)
    {
LABEL_23:
      if (v7)
      {
        v14 = v7[1];
        if (v9.u32[0] > 1uLL)
        {
          v15 = v7[1];
          if (v14 >= *&v6)
          {
            v15 = v14 % *&v6;
          }
        }

        else
        {
          v15 = v14 & (*&v6 - 1);
        }

        if (v15 == v8)
        {
          goto LABEL_27;
        }
      }

      *(*&v10 + 8 * v8) = 0;
      v7 = *v5;
    }

    if (!v7)
    {
LABEL_33:
      *v12 = v7;
      *v5 = 0;
      --*&this[4];
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SipBody *>,void *>>>::operator()[abi:ne200100](1, v5);
      goto LABEL_34;
    }

    v14 = v7[1];
LABEL_27:
    if (v9.u32[0] > 1uLL)
    {
      if (v14 >= *&v6)
      {
        v14 %= *&v6;
      }
    }

    else
    {
      v14 &= *&v6 - 1;
    }

    if (v14 != v8)
    {
      *(*&this[1] + 8 * v14) = v12;
      v7 = *v5;
    }

    goto LABEL_33;
  }

LABEL_34:
  SipTimerInfo::~SipTimerInfo(a2);
  return MEMORY[0x1E69235B0]();
}

void sub_1E4C4C708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

uint64_t IMSClientManager::instance@<X0>(void *a1@<X8>)
{
  v3 = pthread_mutex_lock(&ctu::Singleton<IMSClientManager,IMSClientManager,ctu::PthreadMutexGuardPolicy<IMSClientManager>>::sInstance);
  if (!xmmword_1EE2BBC10)
  {
    IMSClientManager::create_default_global(v3);
  }

  v4 = *(&xmmword_1EE2BBC10 + 1);
  *a1 = xmmword_1EE2BBC10;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return pthread_mutex_unlock(&ctu::Singleton<IMSClientManager,IMSClientManager,ctu::PthreadMutexGuardPolicy<IMSClientManager>>::sInstance);
}

void SipRegistrationPolicy::loggableName(SipRegistrationPolicy *this@<X0>, std::string *a2@<X8>)
{
  if ((*(*this + 536))(this))
  {
    v4 = (*(*this + 376))(this);
    v5 = v4;
    if (*(v4 + 23) >= 0)
    {
      v6 = *(v4 + 23);
    }

    else
    {
      v6 = *(v4 + 8);
    }

    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v6 + 30);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (v5[23] >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(p_p, v8, v6);
    }

    strcpy(p_p + v6, " RegistrationPolicy(EMERGENCY)");
    LoggableString::LoggableString(a2, &__p);
  }

  else
  {
    v9 = (*(*this + 376))(this);
    v10 = v9;
    if (*(v9 + 23) >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    memset(&__p, 0, sizeof(__p));
    v12 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v11 + 19);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __p.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (v10[23] >= 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = *v10;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, " RegistrationPolicy");
    LoggableString::LoggableString(a2, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C4C9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTimerContainer::fullTimerId@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v26 = 0;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  if (a2)
  {
    v8 = *(a1 + 136);
    v7 = a1 + 136;
    v6 = v8;
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = *(v7 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v10, v11);
    v27 = 46;
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v27, 1);
    v14 = MEMORY[0x1E6923310](v13, a2);
    v27 = 46;
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v27, 1);
    v16 = *(a2 + 23);
    if (v16 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  }

  std::ostringstream::str[abi:ne200100](&v20, a3);
  *&v20 = *MEMORY[0x1E69E54E8];
  *(&v21[-1] + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v20 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v20 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v25);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void IMSTimerManager::unregisterTimer(uint64_t a1, void **a2)
{
  v11 = 0;
  ImsLock::set(&v11, (a1 + 8), v12);
  ImsResult::~ImsResult(v12);
  if (a1 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 72, a2))
  {
    v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 72, a2);
    if (a1 + 80 != v4)
    {
      v5 = v4;
      v6 = *(v4 + 8);
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
        v8 = v4;
        do
        {
          v7 = v8[2];
          v9 = *v7 == v8;
          v8 = v7;
        }

        while (!v9);
      }

      if (*(a1 + 72) == v4)
      {
        *(a1 + 72) = v7;
      }

      v10 = *(a1 + 80);
      --*(a1 + 88);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v5 + 4));
      operator delete(v5);
    }
  }

  ImsLock::~ImsLock(&v11);
}

int *LazuliRegistrationPolicy::name(LazuliRegistrationPolicy *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_29, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_29))
  {
    byte_1EE2BC9FF = 6;
    strcpy(&dword_1EE2BC9E8, "Lazuli");
    __cxa_atexit(MEMORY[0x1E69E52C0], &dword_1EE2BC9E8, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_29);
  }

  return &dword_1EE2BC9E8;
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

void deviceEventsToString(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if ((a1 & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "SimInserted"), std::vector<std::string>::push_back[abi:ne200100](&v12, __p), SHIBYTE(v6[0].__locale_) < 0))
  {
    operator delete(__p[0]);
    if ((a1 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AirplaneModeToggled");
  std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
  if (SHIBYTE(v6[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_7:
  if ((a1 & 4) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "AccessNetworkChanged"), std::vector<std::string>::push_back[abi:ne200100](&v12, __p), SHIBYTE(v6[0].__locale_) < 0))
  {
    operator delete(__p[0]);
    if ((a1 & 8) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AudioReady");
  std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
  if (SHIBYTE(v6[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  if ((a1 & 0x10) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "SRVCCHandoverStarted"), std::vector<std::string>::push_back[abi:ne200100](&v12, __p), SHIBYTE(v6[0].__locale_) < 0))
  {
    operator delete(__p[0]);
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((a1 & 0x80) == 0)
  {
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ServingNetworkChanged");
  std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
  if (SHIBYTE(v6[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  if ((a1 & 0x40) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "AirplaneModeDisabled"), std::vector<std::string>::push_back[abi:ne200100](&v12, __p), SHIBYTE(v6[0].__locale_) < 0))
  {
    operator delete(__p[0]);
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AirplaneModeEnabled");
  std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
  if (SHIBYTE(v6[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_25:
  if ((a1 & 0x200) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "SubEnabled"), std::vector<std::string>::push_back[abi:ne200100](&v12, __p), SHIBYTE(v6[0].__locale_) < 0))
  {
    operator delete(__p[0]);
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SubDisabled");
  std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
  if (SHIBYTE(v6[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_31:
  if ((a1 & 0x400) != 0 && (std::string::basic_string[abi:ne200100]<0>(__p, "IMSHandoverStarted"), std::vector<std::string>::push_back[abi:ne200100](&v12, __p), SHIBYTE(v6[0].__locale_) < 0))
  {
    operator delete(__p[0]);
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((a1 & 0x800) == 0)
  {
    goto LABEL_37;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "IMSHandoverCompleted");
  std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
  if (SHIBYTE(v6[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  if ((a1 & 0x1000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "KeepAliveWakeup");
    std::vector<std::string>::push_back[abi:ne200100](&v12, __p);
    if (SHIBYTE(v6[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v12 != v13)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ",");
    ims::join<std::__wrap_iter<std::string const*>>();
  }

  if (a1)
  {
    v11 = 0;
    v9 = 0u;
    memset(v10, 0, sizeof(v10));
    *v7 = 0u;
    v8 = 0u;
    *__p = 0u;
    memset(v6, 0, sizeof(v6));
    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v4 = __p[0];
    *(&__p[1] + *(__p[0] - 3)) |= 0x200u;
    *(&__p[1] + *(v4 - 3)) = *(&__p[1] + *(v4 - 3)) & 0xFFFFFFB5 | 8;
    MEMORY[0x1E69233B0](__p, a1);
    std::ostringstream::str[abi:ne200100](__p, a2);
    __p[0] = *MEMORY[0x1E69E54E8];
    *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    __p[1] = (MEMORY[0x1E69E5548] + 16);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[1]);
    }

    __p[1] = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v6);
    std::ostream::~ostream();
    MEMORY[0x1E6923510](v10);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "[none]");
  }

  __p[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1E4C4D3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = (v14 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
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

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SipBody *>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void ims::CFString::asString(const __CFString *this@<X0>, const void *a2@<X1>, std::string *a3@<X8>)
{
  if (this && (v4 = a2, v6 = CFGetTypeID(this), v6 == CFStringGetTypeID()))
  {
    memset(&__p, 0, sizeof(__p));
    if (ims::convertCFString(this, &__p, v4))
    {
      *a3 = __p;
    }

    else
    {
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      a3->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_1E4C4DB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::join<std::__wrap_iter<std::string const*>>()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4C4DC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t ims::join<std::__wrap_iter<std::string const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v7 = result;
    v8 = 1;
    do
    {
      if ((v8 & 1) == 0)
      {
        (*(*a3 + 32))(a3, a4);
      }

      result = (*(*a3 + 32))(a3, v7);
      v8 = 0;
      v7 += 24;
    }

    while (v7 != a2);
  }

  return result;
}

BOOL ims::convertCFString(const __CFString *a1, std::string *a2, CFStringEncoding a3)
{
  if (!a1)
  {
    return 0;
  }

  memset(&v10, 0, sizeof(v10));
  Length = CFStringGetLength(a1);
  std::vector<char>::__append(&v10, Length + 1);
  CString = CFStringGetCString(a1, v10.__begin_, v10.__end_ - v10.__begin_, a3);
  v8 = CString != 0;
  if (CString)
  {
    std::string::__assign_external(a2, v10.__begin_);
  }

  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }

  return v8;
}

void sub_1E4C4DE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
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

void ___ZN8ImsTcpNw9writeToNwEPKhm_block_invoke(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = a1[5];
      if (v7)
      {
        if (v3)
        {
          v8 = dispatch::queue::get(v7 + 6);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            (*(*v7 + 27))(buf, v7);
            nw_error_get_error_code(v3);
            ims::detail::to_string_impl<int,std::integral_constant<BOOL,false>>::operator()();
          }

          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          *buf = &unk_1F5EBDEF8;
          *&buf[8] = &_posixDomain;
          *&buf[16] = nw_error_get_error_code(v3);
          v9 = a1[6];
          if (v9)
          {
            v10 = std::__shared_weak_count::lock(v9);
            if (v10)
            {
              v11 = v10;
              if (a1[5])
              {
                v12 = *(v5 + 232);
                if (v12)
                {
                  v13 = std::__shared_weak_count::lock(v12);
                  if (v13)
                  {
                    v14 = v13;
                    v15 = *(v5 + 224);
                    if (v15)
                    {
                      v16 = dispatch::queue::get((v5 + 192));
                      __p = v15;
                      v23 = v14;
                      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
                      ImsResult::ImsResult(&v24, buf);
                      v17 = v16;
                      operator new();
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                  }
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }
          }

          ImsResult::~ImsResult(buf);
        }

        else
        {
          v20 = dispatch::queue::get(v7 + 6);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v7 + 27))(&__p, v7);
            v21 = v24 >= 0 ? &__p : __p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v21;
            _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snw_connection_send success", buf, 0x16u);
            if (SHIBYTE(v24) < 0)
            {
              operator delete(__p);
            }
          }
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_21;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  ims::getStaticLoggerFor("net.tcpnw", &__p);
  v18 = v23;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E ImsTcpNw is null", &__p, 2u);
  }

  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4C4E560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    v36 = *(v34 + 8);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::formatTimeAndIntervalFromNow(ims *this, uint64_t a2, tm *a3)
{
  ims::formatTime(this, a2, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), " (", 2);
  *(a2 + 17) = 0;
  v5 = time(0);
  if (v5 >= this)
  {
    if (v5 <= this)
    {
      v7 = *(a2 + 8);
      v8 = "now";
      v9 = 3;
    }

    else
    {
      ims::formatTimeIntervalMillis(1000 * (v5 - this), a2, v6);
      v7 = *(a2 + 8);
      v8 = " ago";
      v9 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    *(a2 + 17) = 0;
  }

  else
  {
    ims::formatTimeIntervalMillis(1000 * (this - v5), a2, v6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ")", 1);
  *(a2 + 17) = 0;
  return a2;
}

uint64_t ims::formatTime(ims *this, uint64_t a2, tm *a3)
{
  v9 = 0;
  v10 = this;
  __p[0] = 0;
  __p[1] = 0;
  v4 = __p;
  ims::ctime(&v10, a3, __p);
  v5 = __p[0];
  *(__p[0] + 24) = 0;
  if (v9 < 0)
  {
    v4 = v5;
  }

  v6 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), v4, v6);
  *(a2 + 17) = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1E4C4E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *ims::ctime@<X0>(ims *this@<X0>, tm *a2@<X2>, _BYTE *a3@<X8>)
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (this)
  {
    memset(&v40, 0, sizeof(v40));
    ims::localtime(this, &v40, a2);
    if ((atomic_load_explicit(&_MergedGlobals_8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_8))
    {
      std::string::basic_string[abi:ne200100]<0>(&v42, "Sun");
      std::string::basic_string[abi:ne200100]<0>(&v43 + 8, "Mon");
      std::string::basic_string[abi:ne200100]<0>(__src, "Tue");
      std::string::basic_string[abi:ne200100]<0>(&__p[1], "Wed");
      std::string::basic_string[abi:ne200100]<0>(&v48, "Thu");
      std::string::basic_string[abi:ne200100]<0>(v49 + 8, "Fri");
      std::string::basic_string[abi:ne200100]<0>(v50, "Sat");
      qword_1EE2BC300 = 0;
      *algn_1EE2BC308 = 0;
      qword_1EE2BC310 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&qword_1EE2BC300, &v42, &v50[1] + 8, 7uLL);
      for (i = 0; i != -168; i -= 24)
      {
        if (*(&v50[1] + i + 7) < 0)
        {
          operator delete(*(v50 + i));
        }
      }

      __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_1EE2BC300, &dword_1E4C3F000);
      __cxa_guard_release(&_MergedGlobals_8);
    }

    if ((atomic_load_explicit(&qword_1EE2BC2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE2BC2F8))
    {
      std::string::basic_string[abi:ne200100]<0>(&v42, "Jan");
      std::string::basic_string[abi:ne200100]<0>(&v43 + 8, "Feb");
      std::string::basic_string[abi:ne200100]<0>(__src, "Mar");
      std::string::basic_string[abi:ne200100]<0>(&__p[1], "Apr");
      std::string::basic_string[abi:ne200100]<0>(&v48, "May");
      std::string::basic_string[abi:ne200100]<0>(v49 + 8, "Jun");
      std::string::basic_string[abi:ne200100]<0>(v50, "Jul");
      std::string::basic_string[abi:ne200100]<0>(&v50[1] + 8, "Aug");
      std::string::basic_string[abi:ne200100]<0>(v51, "Sep");
      std::string::basic_string[abi:ne200100]<0>(&v51[1] + 8, "Oct");
      std::string::basic_string[abi:ne200100]<0>(&v52, "Nov");
      std::string::basic_string[abi:ne200100]<0>(v54, "Dec");
      qword_1EE2BC318 = 0;
      unk_1EE2BC320 = 0;
      qword_1EE2BC328 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&qword_1EE2BC318, &v42, v55, 0xCuLL);
      v39 = 288;
      do
      {
        if (*(&v42 + v39 - 1) < 0)
        {
          operator delete(*(&v40.tm_gmtoff + v39));
        }

        v39 -= 24;
      }

      while (v39);
      __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_1EE2BC318, &dword_1E4C3F000);
      __cxa_guard_release(&qword_1EE2BC2F8);
    }

    v53 = 0;
    v52 = 0u;
    memset(v51, 0, sizeof(v51));
    memset(v50, 0, sizeof(v50));
    v48 = 0u;
    memset(v49, 0, sizeof(v49));
    *__p = 0u;
    v47 = 0u;
    v44 = 0u;
    *__src = 0u;
    v42 = 0u;
    v43 = 0u;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
    v5 = qword_1EE2BC300 + 24 * v40.tm_wday;
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = qword_1EE2BC300 + 24 * v40.tm_wday;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v7, v8);
    LOBYTE(v41.__locale_) = 32;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v41, 1);
    v11 = qword_1EE2BC318 + 24 * v40.tm_mon;
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = qword_1EE2BC318 + 24 * v40.tm_mon;
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, v14);
    LOBYTE(v41.__locale_) = 32;
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v41, 1);
    *(v16 + *(*v16 - 24) + 24) = 2;
    v17 = MEMORY[0x1E6923340]();
    LOBYTE(v41.__locale_) = 32;
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v41, 1);
    v19 = v18;
    v20 = *v18;
    v21 = v18 + *(*v18 - 24);
    if (*(v21 + 36) == -1)
    {
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v22 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
      v23 = (v22->__vftable[2].~facet_0)(v22, 32);
      std::locale::~locale(&v41);
      *(v21 + 36) = v23;
      v20 = *v19;
    }

    *(v21 + 36) = 48;
    *(v19 + *(v20 - 24) + 24) = 2;
    v24 = MEMORY[0x1E6923340](v19, v40.tm_hour);
    LOBYTE(v41.__locale_) = 58;
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v41, 1);
    *(v25 + *(*v25 - 24) + 24) = 2;
    v26 = MEMORY[0x1E6923340]();
    LOBYTE(v41.__locale_) = 58;
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v41, 1);
    *(v27 + *(*v27 - 24) + 24) = 2;
    v28 = MEMORY[0x1E6923340]();
    LOBYTE(v41.__locale_) = 32;
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, &v41, 1);
    *(v29 + *(*v29 - 24) + 24) = 4;
    v30 = MEMORY[0x1E6923340]();
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v31 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v41);
    std::ostream::put();
    std::ostream::flush();
    if ((BYTE8(v48) & 0x10) != 0)
    {
      v35 = v48;
      if (v48 < __src[1])
      {
        *&v48 = __src[1];
        v35 = __src[1];
      }

      v36 = __src[0];
    }

    else
    {
      if ((BYTE8(v48) & 8) == 0)
      {
        v32 = 0;
        a3[23] = 0;
LABEL_34:
        a3[v32] = 0;
        *&v42 = *MEMORY[0x1E69E54E8];
        *(&v42 + *(v42 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        *(&v42 + 1) = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[1]);
        }

        *(&v42 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v43);
        std::ostream::~ostream();
        result = MEMORY[0x1E6923510](v49);
        v37 = *MEMORY[0x1E69E9840];
        return result;
      }

      v36 = *(&v43 + 1);
      v35 = *(&v44 + 1);
    }

    v32 = v35 - v36;
    if ((v35 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v32 >= 0x17)
    {
      operator new();
    }

    a3[23] = v32;
    if (v32)
    {
      memmove(a3, v36, v32);
    }

    goto LABEL_34;
  }

  v33 = *MEMORY[0x1E69E9840];

  return std::string::basic_string[abi:ne200100]<0>(a3, "");
}

void sub_1E4C4EFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, char a17)
{
  v19 = (v17 + 287);
  v20 = -288;
  v21 = (v17 + 287);
  while (1)
  {
    v22 = *v21;
    v21 -= 24;
    if (v22 < 0)
    {
      operator delete(*(v19 - 23));
    }

    v19 = v21;
    v20 += 24;
    if (!v20)
    {
      __cxa_guard_abort(&qword_1EE2BC2F8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t ims::formatTimeIntervalMillis(unint64_t this, uint64_t a2, ImsOutStream *a3)
{
  if (!this)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "0s", 2);
    v5 = (a2 + 17);
LABEL_22:
    *v5 = 0;
    return a2;
  }

  v4 = this % 0x3E8;
  if (this <= 0x3E7)
  {
    MEMORY[0x1E69233B0](*(a2 + 8), v4, a3);
    *(a2 + 17) = 0;
    v5 = (a2 + 17);
    v6 = *(a2 + 8);
    v7 = "ms";
    v8 = 2;
LABEL_21:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    goto LABEL_22;
  }

  v9 = this / 0x3E8 - 86400 * (((this / 0x3E8 * 0x308B91419CA253uLL) >> 64) >> 6);
  if (this < 0x5265C00)
  {
    v10 = v9 % 0xE10;
    if (v9 < 0xE10)
    {
      v11 = v9 % 0xE10;
      v12 = v11 % 0x3C;
      if (v10 < 0x3C)
      {
        if (!v12)
        {
          return a2;
        }

        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  MEMORY[0x1E69233B0](*(a2 + 8), this / 0x5265C00, a3);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "d", 1);
  *(a2 + 17) = 0;
  v10 = v9 % 0xE10;
  if (v9 >= 0xE10)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), " ", 1);
    *(a2 + 17) = 0;
LABEL_12:
    MEMORY[0x1E69233B0](*(a2 + 8), v9 / 0xE10uLL);
    *(a2 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "h", 1);
    *(a2 + 17) = 0;
  }

  v11 = v10;
  v12 = v10 % 0x3Cu;
  if (v10 < 0x3C)
  {
    goto LABEL_16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), " ", 1);
  *(a2 + 17) = 0;
LABEL_15:
  MEMORY[0x1E69233B0](*(a2 + 8), (71582789 * v11) >> 32);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), "m", 1);
  *(a2 + 17) = 0;
LABEL_16:
  if (v12)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), " ", 1);
    *(a2 + 17) = 0;
LABEL_18:
    MEMORY[0x1E69233B0](*(a2 + 8), v12, a3);
    *(a2 + 17) = 0;
    v5 = (a2 + 17);
    if (v4)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 8), ".", 1);
      *(a2 + 17) = 0;
      MEMORY[0x1E69233B0](*(a2 + 8), v4);
      *(a2 + 17) = 0;
    }

    v6 = *(a2 + 8);
    v7 = "s";
    v8 = 1;
    goto LABEL_21;
  }

  return a2;
}

void ims::TimeAndIntervalFromNow::logStr(ims::TimeAndIntervalFromNow *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C4F474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void __destroy_helper_block_ea8_40c33_ZTSKNSt3__18weak_ptrI8ImsTcpNwEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void IMSTimerManager::registerTimer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = 0;
  ImsLock::set(&v41, (a1 + 8), &v42);
  ImsResult::~ImsResult(&v42);
  if (!a2)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(v6, "timer");
    v37[0] = 0;
    v40 = 0;
    v11 = ims::warn(v10, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "ignoring timer with no timer information", 40);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v40 != 1 || (v39 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v12 = v38;
    goto LABEL_20;
  }

  if (!a3)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v6, "timer");
    v33[0] = 0;
    v36 = 0;
    v14 = ims::warn(v13, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "ignoring timer with no container", 32);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v36 != 1 || (v35 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v12 = v34;
LABEL_20:
    operator delete(v12);
LABEL_21:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v15 = v42.__r_.__value_.__r.__words[0];
    goto LABEL_39;
  }

  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if (!*(a2 + 8))
  {
LABEL_24:
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v29, (a3 + 72));
    v16 = ims::warn(a3 + 48, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "ignoring timer with no timerId", 30);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v32 != 1 || (v31 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v15 = v30;
LABEL_39:
    operator delete(v15);
    goto LABEL_40;
  }

LABEL_5:
  memset(&v28, 0, sizeof(v28));
  SipTimerContainer::fullTimerId(a3, a2, &v28);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v24, (a3 + 72));
  v7 = ims::debug(a3 + 48, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "registering timer ", 18);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, &v28);
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  v8 = (a1 + 80);
  if (a1 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 72, &v28.__r_.__value_.__l.__data_))
  {
    std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v20, (a3 + 72));
    v9 = ims::warn(a3 + 48, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "overwriting timer for ", 22);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, &v28);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v28;
  }

  *&v43 = a2;
  *(&v43 + 1) = a3;
  v17 = *v8;
  if (!*v8)
  {
    goto LABEL_34;
  }

  while (1)
  {
    while (1)
    {
      v18 = v17;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v28, (v17 + 32)) & 0x80) == 0)
      {
        break;
      }

      v17 = *v18;
      v8 = v18;
      if (!*v18)
      {
        goto LABEL_34;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18 + 4, &v28.__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      break;
    }

    v8 = v18 + 1;
    v17 = v18[1];
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  v19 = *v8;
  if (!*v8)
  {
LABEL_34:
    operator new();
  }

  if (*(v19 + 79) < 0)
  {
    operator delete(*(v19 + 56));
  }

  *(v19 + 56) = v42;
  *(v19 + 80) = v43;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    v15 = v28.__r_.__value_.__r.__words[0];
    goto LABEL_39;
  }

LABEL_40:
  ImsLock::~ImsLock(&v41);
}

void sub_1E4C4FAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v55 - 88);
  if (*(v55 - 153) < 0)
  {
    operator delete(*(v55 - 176));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  ImsLock::~ImsLock((v55 - 184));
  _Unwind_Resume(a1);
}

BOOL ImsLogger::isRedacting(ImsLogger *this)
{
  if (*(this + 476))
  {
    return 0;
  }

  has_internal_content = os_variant_has_internal_content();
  return (has_internal_content & 1) == 0 && !ims::isCarrierInstall(has_internal_content);
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void IPTelephonyManager::getBambiClient(uint64_t *__return_ptr a1@<X8>)
{
  IPTelephonyManager::instance(&v5);
  v3 = *(v5 + 240);
  *a1 = *(v5 + 232);
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void SipTlsTransportGroup::stackId(SipTlsTransportGroup *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 31);
  if (!v4)
  {
    v5 = 0;
LABEL_14:
    v7 = 0;
LABEL_15:
    *(a2 + 23) = 0;
    *a2 = 0;
    goto LABEL_16;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(this + 30);
  if (!v6)
  {
    goto LABEL_14;
  }

  (*(*v6 + 128))(&v10);
  if (!v11)
  {
    goto LABEL_14;
  }

  v7 = std::__shared_weak_count::lock(v11);
  if (v7)
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  if (*(v8 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v8 + 4432), *(v8 + 4440));
  }

  else
  {
    v9 = *(v8 + 4432);
    *(a2 + 16) = *(v8 + 4448);
    *a2 = v9;
  }

LABEL_16:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4C4FFEC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BambiClient::releaseKeepAliveAssertion(void *a1, uint64_t a2)
{
  v4 = a1 + 2;
  v5 = (*(a1[2] + 64))(a1 + 2);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Release KeepAlive power assertion for stackId=", 46);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  memset(&__p, 0, sizeof(__p));
  v7 = 0;
  v8 = 0;
  (*(*a1 + 184))(&v7, a1, a2);
  if (v7)
  {
    if (*(v7 + 4503) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, *(v7 + 4480), *(v7 + 4488));
    }

    else
    {
      v6 = *(v7 + 4480);
    }

    __p = v6;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (a1 + 55 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 54), &__p.__r_.__value_.__l.__data_))
  {
    PowerAssertionLock::deinitialize(a1 + 54, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C501F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::logPrefix(uint64_t a1, uint64_t a2)
{
  LoggableString::LoggableString(__p, "BambiClient: ");
  (*(*a2 + 40))(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4C5029C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void PowerAssertionLock::deinitialize(void *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AssertionCounter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AssertionCounter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
    AssertionCounter::deinitialize(*(v3 + 56));
  }

  else
  {
    v4 = a1 + 1;
    v5 = *a1;
    if (*a1 != a1 + 1)
    {
      do
      {
        AssertionCounter::deinitialize(v5[7]);
        v6 = v5[1];
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
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
    }
  }
}

void AssertionCounter::deinitialize(AssertionCounter *this)
{
  if (atomic_load(this + 6))
  {
    if (atomic_fetch_add(this + 6, 0xFFFFFFFF) == 1)
    {
      v3 = *(this + 4);

      ImsPowerAssertion::deinitialize(v3);
    }

    else
    {
      v4 = std::string::basic_string[abi:ne200100]<0>(&v11, "power");
      v7[0] = 0;
      v10 = 0;
      v5 = ims::debug(v4, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "AssertionCounter decreased count - ", 35);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, this);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ":", 1);
      *(v5 + 17) = 0;
      v6 = atomic_load(this + 6);
      MEMORY[0x1E6923350](*(v5 + 8), v6);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v10 == 1 && v9 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11);
      }
    }
  }
}

void sub_1E4C50590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void ims::chomp(std::string *__str, char *__s, char a3)
{
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v6 & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v8 = 0;
  if (a3)
  {
    while (1)
    {
      v9 = v6;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = __str->__r_.__value_.__l.__size_;
      }

      if (v8 >= v9)
      {
        break;
      }

      v10 = __str;
      if ((v6 & 0x80000000) != 0)
      {
        v10 = __str->__r_.__value_.__r.__words[0];
      }

      if (!strchr(__s, v10->__r_.__value_.__s.__data_[v8]))
      {
        break;
      }

      ++v8;
    }
  }

  if (v8 == size)
  {
    if ((v6 & 0x80000000) != 0)
    {
      *__str->__r_.__value_.__l.__data_ = 0;
      __str->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __str->__r_.__value_.__s.__data_[0] = 0;
      *(&__str->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if ((a3 & 2) != 0 && size >= 2)
    {
      while (1)
      {
        v11 = __str;
        if ((v6 & 0x80000000) != 0)
        {
          v11 = __str->__r_.__value_.__r.__words[0];
        }

        if (!strchr(__s, v11->__r_.__value_.__s.__data_[size - 1]))
        {
          break;
        }

        if (--size <= 1)
        {
          size = 1;
          break;
        }
      }
    }

    std::string::basic_string(&v12, __str, v8, size - v8, &v13);
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str->__r_.__value_.__l.__data_);
    }

    *__str = v12;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void *std::__shared_ptr_emplace<MessageSession>::__shared_ptr_emplace[abi:ne200100]<std::weak_ptr<SipLazuliManager> &,ClientConfig const&,std::allocator<MessageSession>,0>(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EBDEA8;
  std::construct_at[abi:ne200100]<MessageSession,std::weak_ptr<SipLazuliManager> &,ClientConfig const&,MessageSession*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<MessageSession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EBDEA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<MessageSession,std::weak_ptr<SipLazuliManager> &,ClientConfig const&,MessageSession*>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  MessageSession::MessageSession(a1, v6, a3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1E4C5121C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<MessageSession>::__enable_weak_this[abi:ne200100]<MessageSession,MessageSession,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void ImsResultDomainPosix::~ImsResultDomainPosix(void **this)
{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void ImsResultDomainBambi::~ImsResultDomainBambi(void **this)
{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EBE0A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void *ims::SharedLoggable<SharedImsResultItem>::SharedLoggable(void *a1, const char *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<SharedImsResultItem,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EBE0D0;
  return a1;
}

void sub_1E4C513D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ImsResult::ImsResult(ImsResult *this, const ImsResult *a2)
{
  *this = &unk_1F5EBDEF8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  std::string::operator=((this + 64), (a2 + 64));
  if (*(a2 + 3))
  {
    operator new();
  }

  *v4 = 0;
  if (*(a2 + 4))
  {
    operator new();
  }

  *(this + 4) = 0;
  v5 = *(a2 + 7);
  if (v5)
  {
    v5 = (*(*v5 + 32))(v5);
  }

  *(this + 7) = v5;
  v6 = *(a2 + 5);
  if (!v6)
  {
    v9 = *(this + 6);
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_10;
  }

  (*(*v6 + 24))(&v10);
  v7 = v10;
  v10 = 0uLL;
  v8 = *(this + 6);
  *(this + 40) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v9 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4C5157C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResult::ImsResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_1E4C516A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResult::setItem(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 32))(a2);
  result = *(a1 + 56);
  if (result != v3)
  {
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(a1 + 56) = v3;
  }

  return result;
}

const void *ImsResult::description@<X0>(ImsResult *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    return std::ostringstream::str[abi:ne200100](*(v2 + 24), a2);
  }

  else
  {
    return (*(**(this + 1) + 16))(*(this + 1), *(this + 4));
  }
}

uint64_t ImsResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    std::string::operator=((a1 + 64), (a2 + 64));
    v4 = *(a1 + 24);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (*(a2 + 24))
    {
      operator new();
    }

    *(a1 + 24) = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (*(a2 + 32))
    {
      operator new();
    }

    *(a1 + 32) = 0;
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(a2 + 56);
    if (v7)
    {
      v7 = (*(*v7 + 32))(v7);
    }

    *(a1 + 56) = v7;
    v8 = *(a2 + 40);
    if (!v8)
    {
      v11 = *(a1 + 48);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      if (!v11)
      {
        return a1;
      }

      goto LABEL_17;
    }

    (*(*v8 + 24))(&v13);
    v9 = v13;
    v13 = 0uLL;
    v10 = *(a1 + 48);
    *(a1 + 40) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v11 = *(&v13 + 1);
      if (*(&v13 + 1))
      {
LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    std::string::operator=((a1 + 64), (a2 + 64));
    v4 = *(a1 + 24);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 48);
    *(a1 + 40) = v8;
    *(a1 + 48) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v10 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  return a1;
}

ImsOutStream *ImsResult::log(ImsResult *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(&__p, (*(this + 1) + 8));
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *(this + 3);
  if (v4)
  {
    ImsStringOutStream::loggableStr(v4, &__p);
    (*(*a2 + 40))(a2, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    v5 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_10;
  }

  v6 = *(this + 4);
  (*(**(this + 1) + 16))(&v8);
  LoggableString::LoggableString(&__p, &v8);
  (*(*a2 + 40))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v8.__r_.__value_.__r.__words[0];
LABEL_10:
    operator delete(v5);
  }

LABEL_11:
  if (*(this + 4))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ", caused by ", 12);
    *(a2 + 17) = 0;
    (*(**(this + 4) + 16))(*(this + 4), a2);
  }

  return a2;
}

void sub_1E4C51D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void ImsStringOutStream::loggableStr(ImsStringOutStream *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::str[abi:ne200100](*(this + 3), &__p);
  LoggableString::LoggableString(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C51DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsResult::loggableName(ImsResult *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C51EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
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

void ImsResult::logStr(ImsResult *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4C52028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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